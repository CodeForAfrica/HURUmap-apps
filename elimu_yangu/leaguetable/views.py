import logging
import json
from django.utils import translation

from django.http import HttpResponse
from django.shortcuts import render_to_response, render, redirect
from django.utils.module_loading import import_string
from django.utils.safestring import SafeString
from django.core.serializers.json import DjangoJSONEncoder
from django.views.generic import View, TemplateView
from django.conf import settings

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields, get_model_for_db_table
from wazimap.profiles import enhance_api_data
from wazimap.data.base import Base
from wazimap.data.utils import (LocationNotFound, calculate_median, get_session, get_stat_data,
                                merge_dicts, get_objects_by_geo, group_remainder)

from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast

from census.views import GeographyDetailView as BaseGeographyDetailView


def index(request):
    #Getting the session
    schools = {}
    template_name = 'leaguetable/homepage.html'
    geo_level = "country"
    geo_code = "TZ"

    if request.method == 'POST':
        params = json.loads(request.body)
        year = params['year'].encode("utf8")
        schools = get_overall_topschools(year, geo_level, geo_code)
        return HttpResponse(json.dumps({'schools': schools}), content_type='application/json')
    else:
        year = '2017'
        #Getting Schools from overall top schools method
        schools = get_overall_topschools(year, geo_level, geo_code)
        return render(request,'leaguetable/homepage.html',{'schools':schools, 'root_geo': geo_data.root_geography()})

# handling schools page
def schools(request):
    # Getting the session
    session = get_session()
    year = '2017'

    # Fetching schools
    schools = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == "country")\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .order_by(asc(cast(Base.metadata.tables['secondary_school'].c.national_rank_all, Integer)))\
                    .all()

    return render(request,'leaguetable/schools.html',{'schools':schools})

# handling specific school page
class SchoolPageView(TemplateView):
    template_name = 'leaguetable/specific_school.html'

    def get_context_data(self, *args, **kwargs):
        session = get_session()
        page_context = {}
        year = '2017'
        code = self.kwargs.get('code', None)

        #Fetch school perfromance over the year
        school_results = session.query(Base.metadata.tables['secondary_school'])\
                        .filter(Base.metadata.tables['secondary_school'].c.geo_level == "region")\
                        .filter(Base.metadata.tables['secondary_school'].c.code == code)\
                        .all()
        # Fetching schools
        school = session.query(Base.metadata.tables['secondary_school'])\
                        .filter(Base.metadata.tables['secondary_school'].c.geo_level == "region")\
                        .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                        .filter(Base.metadata.tables['secondary_school'].c.code == code)\
                        .one()

        #Fetch the region where school is
        try:
            self.geo_level = 'region'
            self.geo_code = school.geo_code
            version = '2009'
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level, version)
        except (ValueError, LocationNotFound):
            raise Http404
        # load the profile
        profile_method = settings.WAZIMAP.get('profile_builder', None)
        self.profile_name = settings.WAZIMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError("You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)
        profile_data = profile_method(self.geo, self.profile_name, self.request)

        profile_data['geography'] = self.geo.as_dict_deep()

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(json.dumps(profile_data, cls=DjangoJSONEncoder))
        return {
            'school':school,
            'school_results': school_results,
            'profile_data_json': profile_data_json,
        }

# embed league table
def embed(request, geo_level, geo_code):
    # Getting the session
    session = get_session()
    year = '2017'
    schools = get_overall_topschools(year, geo_level, geo_code)


    return render(request, 'leaguetable/embed.html',{'schools':schools})

class EmbedGeographyDetailView(BaseGeographyDetailView):
    adjust_slugs = True
    default_geo_version = None

    def dispatch(self, *args, **kwargs):
        request = args[0]
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)

        try:
            self.geo_level, self.geo_code = self.geo_id.split('-', 1)
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level, version)
        except (ValueError, LocationNotFound):
            raise Http404

        # check slug
        if self.adjust_slugs and (kwargs.get('slug') or self.geo.slug):
            if kwargs['slug'] != self.geo.slug:
                kwargs['slug'] = self.geo.slug
                url = '/leaguetable/profiles/%s-%s-%s' % (self.geo_level, self.geo_code, self.geo.slug)
                return redirect(url, permanent=True)

        # Skip the parent class's logic completely and go back to basics
        return TemplateView.dispatch(self, *args, **kwargs)

    def get_context_data(self, *args, **kwargs):
        page_context = {}

        # load the profile
        profile_method = settings.WAZIMAP.get('profile_builder', None)
        self.profile_name = settings.WAZIMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError("You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)
        profile_data = profile_method(self.geo, self.profile_name, self.request)

        profile_data['geography'] = self.geo.as_dict_deep()

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(json.dumps(profile_data, cls=DjangoJSONEncoder))

        page_context.update({
            'profile_data_json': profile_data_json
        })

        # is this a head-to-head view?
        page_context['head2head'] = 'h2h' in self.request.GET

        return page_context

    def get_geography(self, geo_id):
        # stub this out to prevent the subclass for calling out to CR
        pass

    def get_template_names(self):
        return ['leaguetable/profile/profile_detail_%s.html' % self.profile_name, 'leaguetable/embed_map.html']




class GeographyDetailView(BaseGeographyDetailView):
    adjust_slugs = True
    default_geo_version = None

    def dispatch(self, *args, **kwargs):
        request = args[0]
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)

        try:
            self.geo_level, self.geo_code = self.geo_id.split('-', 1)
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level, version)
        except (ValueError, LocationNotFound):
            raise Http404

        # check slug
        if self.adjust_slugs and (kwargs.get('slug') or self.geo.slug):
            if kwargs['slug'] != self.geo.slug:
                kwargs['slug'] = self.geo.slug
                url = '/leaguetable/profiles/%s-%s-%s' % (self.geo_level, self.geo_code, self.geo.slug)
                return redirect(url, permanent=True)

        # Skip the parent class's logic completely and go back to basics
        return TemplateView.dispatch(self, *args, **kwargs)

    def get_context_data(self, *args, **kwargs):
        page_context = {}

        # load the profile
        profile_method = settings.WAZIMAP.get('profile_builder', None)
        self.profile_name = settings.WAZIMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError("You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)
        profile_data = profile_method(self.geo, self.profile_name, self.request)

        profile_data['geography'] = self.geo.as_dict_deep()

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(json.dumps(profile_data, cls=DjangoJSONEncoder))

        page_context.update({
            'profile_data_json': profile_data_json
        })

        # is this a head-to-head view?
        page_context['head2head'] = 'h2h' in self.request.GET

        return page_context

    def get_geography(self, geo_id):
        # stub this out to prevent the subclass for calling out to CR
        pass

    def get_template_names(self):
        return ['leaguetable/profile/profile_detail_%s.html' % self.profile_name, 'leaguetable/profile/profile_detail.html']

class GeographyCompareView(TemplateView):
    template_name = 'leaguetable/profile/head2head.html'

    def get_context_data(self, geo_id1, geo_id2):
        page_context = {
            'geo_id1': geo_id1,
            'geo_id2': geo_id2,
        }

        try:
            level, code = geo_id1.split('-', 1)
            page_context['geo1'] = geo_data.get_geography(code, level)

            level, code = geo_id2.split('-', 1)
            page_context['geo2'] = geo_data.get_geography(code, level)
        except (ValueError, LocationNotFound):
            raise Http404

        return page_context






def get_overall_topschools(year, geo_level, geo_code):
    schools = {}
    session = get_session()
    # Choosing sorting option
    rank_column = Base.metadata.tables['secondary_school'].c.national_rank_all
    # Fetching schools
    top_schools_40_more = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo_level)\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo_code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .filter(Base.metadata.tables['secondary_school'].c.more_than_40.like("yes%"))\
                    .order_by(asc(cast(rank_column, Integer)))\
                    .all()[:10]
    # Getting top for schools with less than 40 students
    top_schools_40_less = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo_level)\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo_code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .filter(Base.metadata.tables['secondary_school'].c.more_than_40.like("no%"))\
                    .order_by(asc(cast(rank_column, Integer)))\
                    .all()[:10]

    # limitting lowest schools with more than 40 students
    lowest_schools_40_more = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo_level)\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo_code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .filter(Base.metadata.tables['secondary_school'].c.more_than_40.like("yes%"))\
                    .order_by(desc(cast(rank_column, Integer)))\
                    .all()[:10]
    # Getting lowest for schools with less than 40 students
    lowest_schools_40_less = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo_level)\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo_code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .filter(Base.metadata.tables['secondary_school'].c.more_than_40.like("no%"))\
                    .order_by(desc(cast(rank_column, Integer)))\
                    .all()[:10]

    schools['best_schools_more_40'] = top_schools_40_more
    schools['worst_schools_more_40'] = lowest_schools_40_more
    schools['best_schools_less_40'] = top_schools_40_less
    schools['worst_schools_less_40'] = lowest_schools_40_less

    return schools
