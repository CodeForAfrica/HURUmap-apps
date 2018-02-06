import logging
import json

from django.http import HttpResponse
from django.shortcuts import render_to_response, render
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

# handling schools page
def schools(request):
    # Getting the session
    session = get_session()

    # Fetching schools
    schools = session.query(Base.metadata.tables['secondary_schools'])\
                    .filter(Base.metadata.tables['secondary_schools'].c.geo_level == "country")\
                    .order_by(asc(cast(Base.metadata.tables['secondary_schools'].c.national_rank_all, Integer)))\
                    .all()

    return render(request,'schools.html',{'schools':schools})

# handling specific school page
def specific_school(request, code):
    # Getting the session
    session = get_session()

    # Fetching schools
    school = session.query(Base.metadata.tables['secondary_schools'])\
                    .filter(Base.metadata.tables['secondary_schools'].c.geo_level == "country")\
                    .filter(Base.metadata.tables['secondary_schools'].c.code == code)\
                    .one()

    return render(request, 'specific_school.html',{'school':school})


# embed league table
def embed(request, geo_level, geo_code):
    # Getting the session
    session = get_session()
    
    schools = {}

    # Choosing sorting option
    if geo_level == "country":
        rank_column = Base.metadata.tables['secondary_schools'].c.national_rank_all
    elif geo_level == "region":
        rank_column = Base.metadata.tables['secondary_schools'].c.regional_rank_all
    elif geo_level == "district":
        rank_column = Base.metadata.tables['secondary_schools'].c.district_rank_all

    # Fetching schools
    best_schools = session.query(Base.metadata.tables['secondary_schools'])\
                    .filter(Base.metadata.tables['secondary_schools'].c.geo_level == geo_level)\
                    .filter(Base.metadata.tables['secondary_schools'].c.geo_code == geo_code)\
                    .order_by(asc(cast(rank_column, Integer)))\
                    .all()

    worst_schools = session.query(Base.metadata.tables['secondary_schools'])\
                    .filter(Base.metadata.tables['secondary_schools'].c.geo_level == geo_level)\
                    .filter(Base.metadata.tables['secondary_schools'].c.geo_code == geo_code)\
                    .order_by(desc(cast(rank_column, Integer)))\
                    .all()
    
    schools['best_schools'] = best_schools
    schools['worst_schools'] = worst_schools
    
    return render(request, 'embed.html',{'schools':schools})

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
                url = '/profiles/%s-%s-%s' % (self.geo_level, self.geo_code, self.geo.slug)
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
        return ['profile/profile_detail_%s.html' % self.profile_name, 'embed_map.html']