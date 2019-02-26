import logging
import json
from django.utils import translation

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response, render, redirect
from django.utils.module_loading import import_string
from django.utils.safestring import SafeString
from django.core.serializers.json import DjangoJSONEncoder
from django.views.generic import View, TemplateView
from django.conf import settings

from census.views import render_json_to_response

from wazimap.geo import geo_data
from wazimap.models import Geography
from wazimap.profiles import enhance_api_data
from wazimap.data.base import Base
from wazimap.data.utils import (get_session)

from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast

from census.views import GeographyDetailView as BaseGeographyDetailView


def index(request):
    #Getting the session
    session = get_session()
    schools = {}
    template_name = 'leaguetable/homepage.html'
    geo_level = "country"
    geo_code = "TZ"

    if request.method == 'POST':
        try:
            params = json.loads(request.body)
            year = params['year'].encode("utf8")
            schools = get_overall_topschools(year, geo_level, geo_code, session)

        finally:
            session.close()

        return HttpResponse(json.dumps({'schools': schools}), content_type='application/json')
    else:
        year = '2017'
        #Getting Schools from overall top schools method
        try:
            schools = get_overall_topschools(year, geo_level, geo_code, session)
        finally:
            session.close()

        return render(request,'leaguetable/homepage.html',{'schools':schools, 'root_geo': geo_data.root_geography()})

# handling schools page
def schools(request):
    # Getting the session
    session = get_session()
    year = '2017'
    schools = []

    # Fetching schools
    try:
        schools = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == "country")\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .order_by(asc(cast(Base.metadata.tables['secondary_school'].c.national_rank_all, Integer)))\
                    .all()
    finally:
            session.close()

    return render(request,'leaguetable/schools.html',{'schools':schools})

# handling specific school page
class SchoolPageView(TemplateView):
    template_name = 'leaguetable/specific_school.html'
    year = '2017'

    def get_context_data(self, *args, **kwargs):
        session = get_session()
        page_context = {}
        code = self.kwargs.get('code', None)

        #Fetch school perfromance over the year
        school_results = session.query(Base.metadata.tables['secondary_school'])\
                        .filter(Base.metadata.tables['secondary_school'].c.geo_level == "region")\
                        .filter(Base.metadata.tables['secondary_school'].c.code == code)\
                        .all()
        # Fetching schools
        school = session.query(Base.metadata.tables['secondary_school'])\
                        .filter(Base.metadata.tables['secondary_school'].c.geo_level == "region")\
                        .filter(Base.metadata.tables['secondary_school'].c.year_of_result == self.year)\
                        .filter(Base.metadata.tables['secondary_school'].c.code == code)\
                        .one()
        #get school coordinates
        coordinates = session.query(Base.metadata.tables['secondary_school'].c.code, Base.metadata.tables['secondary_school'].c.name, Base.metadata.tables['secondary_school'].c.longitude, Base.metadata.tables['secondary_school'].c.latitude )\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == "region")\
                    .filter(Base.metadata.tables['secondary_school'].c.code == code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == self.year)\
                    .filter(Base.metadata.tables['secondary_school'].c.longitude != 'UNKNOWN')\
                    .filter(Base.metadata.tables['secondary_school'].c.latitude != 'UNKNOWN')\
                    .all()
        #Fetch the region where school is
        try:
            self.geo_level = 'region'
            self.geo_code = school.geo_code
            version = '2009'
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level, version)
        except (ValueError, Exception):
            raise Http404
        # load the profile
        # profile_method = settings.WAZIMAP.get('profile_builder', None)
        # self.profile_name = settings.WAZIMAP.get('default_profile', 'default')
        #
        # if not profile_method:
        #     raise ValueError("You must define WAZIMAP.profile_builder in settings.py")
        # profile_method = import_string(profile_method)
        # profile_data = profile_method(self.geo, self.profile_name, self.request)
        profile_data = {}
        profile_data['geography'] = self.geo.as_dict_deep()
        profile_data['coordinates'] = json.dumps(coordinates, cls=DjangoJSONEncoder)
        profile_data['school'] = school
        profile_data['year'] = self.year
        profile_data['school_results'] = school_results

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(json.dumps(profile_data, cls=DjangoJSONEncoder))
        page_context.update({
            'profile_data_json': profile_data_json
        })
        session.close()
        return page_context

# embed league table
def embed(request, geo_level, geo_code):
    # Getting the session
    session = get_session()
    year = '2017'
    schools = []
    try:
        schools = get_overall_topschools(year, geo_level, geo_code, session)
    finally:
            session.close()

    return render(request, 'leaguetable/embed.html',{'schools':schools})

class EmbedGeographyDetailView(BaseGeographyDetailView):
    adjust_slugs = True
    default_geo_version = None
    year = '2017'

    def dispatch(self, *args, **kwargs):
        request = args[0]
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)

        try:
            self.geo_level, self.geo_code = self.geo_id.split('-', 1)
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level, version)
        except (ValueError, Exception):
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
        session = get_session()
        try:
            request = self.request
            year = request.GET.get('year') or self.year
            # load the profile
            profile_method = settings.WAZIMAP.get('profile_builder', None)
            self.profile_name = settings.WAZIMAP.get('default_profile', 'default')

            if not profile_method:
                raise ValueError("You must define WAZIMAP.profile_builder in settings.py")
            profile_method = import_string(profile_method)
            profile_data = profile_method(self.geo, self.profile_name, self.request, year)

            profile_data['geography'] = self.geo.as_dict_deep()
            coordinates, totalschools = get_schools_coordinates(self.geo, self.year, session)
            profile_data['coordinates'] = json.dumps(coordinates, cls=DjangoJSONEncoder)
            profile_data['totalschools'] = totalschools
            profile_data['year'] = self.year

            profile_data = enhance_api_data(profile_data)
            page_context.update(profile_data)

            profile_data_json = SafeString(json.dumps(profile_data, cls=DjangoJSONEncoder))

            page_context.update({
                'profile_data_json': profile_data_json
            })

            # is this a head-to-head view?
            page_context['head2head'] = 'h2h' in self.request.GET
        finally:
            session.close()

        return page_context

    def get_geography(self, geo_id):
        # stub this out to prevent the subclass for calling out to CR
        pass

    def get_template_names(self):
        return ['leaguetable/profile/profile_detail_%s.html' % self.profile_name, 'leaguetable/embed_map.html']


class GeographyDetailView(BaseGeographyDetailView):
    adjust_slugs = True
    default_geo_version = None
    year = '2017'

    def dispatch(self, *args, **kwargs):
        request = args[0]
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)

        try:
            self.geo_level, self.geo_code = self.geo_id.split('-', 1)
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level, version)
        except (ValueError, Exception):
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
        session = get_session()
        try:
            request = self.request
            year = request.GET.get('year') or self.year
            # load the profile
            profile_method = settings.WAZIMAP.get('profile_builder', None)
            self.profile_name = settings.WAZIMAP.get('default_profile', 'default')

            if not profile_method:
                raise ValueError("You must define WAZIMAP.profile_builder in settings.py")
            profile_method = import_string(profile_method)
            profile_data = profile_method(self.geo, self.profile_name, self.request, year)
            profile_data['geography'] = self.geo.as_dict_deep()
            coordinates, totalschools = get_schools_coordinates(self.geo, year, session)
            profile_data['coordinates'] = json.dumps(coordinates, cls=DjangoJSONEncoder)
            profile_data['totalschools'] = totalschools
            profile_data['year'] = year

            profile_data = enhance_api_data(profile_data)
            page_context.update(profile_data)

            profile_data_json = SafeString(json.dumps(profile_data, cls=DjangoJSONEncoder))

            page_context.update({
                'profile_data_json': profile_data_json
            })

            # is this a head-to-head view?
            page_context['head2head'] = 'h2h' in self.request.GET
        finally:
            session.close()

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
        except (ValueError, Exception):
            raise Http404

        return page_context

class PlaceSearchJson(View):
    def get(self, request, *args, **kwargs):
        geo_levels = request.GET.get('geolevels', None)
        geo_version = request.GET.get('geo_version', None)
        if geo_levels:
            geo_levels = [lev.strip() for lev in geo_levels.split(',')]
            geo_levels = [lev for lev in geo_levels if lev]

        if 'q' in request.GET:
            search_term = request.GET['q']
            places = geo_data.get_locations(search_term, geo_levels, geo_version)
            return render_json_to_response(
                {'results': [p.as_dict() for p in places]}
            )

        elif 'coords' in request.GET and ',' in request.GET['coords']:
            lat, lon = self.request.GET['coords'].split(',', 1)
            try:
                lat = float(lat)
                lon = float(lon)
            except ValueError as e:
                return HttpResponseBadRequest('bad parameter: %s' % e.message)

            places = geo_data.get_locations_from_coords(latitude=lat, longitude=lon, levels=geo_levels, version=geo_version)
            return render_json_to_response({'results': [p.as_dict() for p in places]})

        else:
            return HttpResponseBadRequest('"q" or "coords" parameter is required')

def get_overall_topschools(year, geo_level, geo_code, session):
    schools = {}
    # Choosing sorting option

    Base.metadata.reflect()
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

def get_schools_coordinates(geo, year, session):
    coordinates = session.query(Base.metadata.tables['secondary_school'].c.code, Base.metadata.tables['secondary_school'].c.name, Base.metadata.tables['secondary_school'].c.longitude, Base.metadata.tables['secondary_school'].c.latitude )\
                .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo.geo_level)\
                .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code)\
                .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                .filter(Base.metadata.tables['secondary_school'].c.longitude != 'UNKNOWN')\
                .filter(Base.metadata.tables['secondary_school'].c.latitude != 'UNKNOWN')\
                .all()

    totalschools = session.query(func.count(Base.metadata.tables['secondary_school'].c.code)\
                .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo.geo_level)\
                .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code)\
                .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year))\
                .scalar()
    return coordinates, totalschools
