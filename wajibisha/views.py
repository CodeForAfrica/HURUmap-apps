import json

from census.profile import enhance_api_data
from census.views import GeographyDetailView
from django.core.serializers.json import DjangoJSONEncoder
from django.http import Http404
from django.shortcuts import render, redirect
from django.utils.module_loading import import_string
from django.utils.safestring import SafeString
from django.views.generic.base import ContextMixin, TemplateView
from wazimap.data import LocationNotFound
from wazimap.geo import geo_data

from utils.view_helpers import get_promises_by_category, get_promises_by_status
from wajibisha import settings

SLUG_MAPPING_STATUS = {
    'not_done': 'Not done',
    'in_progress': 'In Progress',
    'done': 'Done',
    'five_yr_plans': 'Five years plans',
    'altered_promise': 'Altered Promise'
}

SLUG_MAPPING_CATEGORY = {
    'housing': 'Housing',
    'health': 'Health',
    'jobs': 'Jobs, Business Creation',
    'governance': 'Governance',
    'traffic': 'Traffic Management',
    'environment': 'Environment and Sanitation',
    'women': 'Women, Yout, Persons With Disabilities'
}

class ArticlesView(TemplateView):
    template_name = 'articles.html'


class AboutView(TemplateView):
    template_name = 'about.html'


class PromisesView(TemplateView):
    template_name = 'promises.html'


class CategoriesView(TemplateView):
    template_name = 'categories.html'


class FulfilledView(TemplateView):
    template_name = 'fulfilled.html'


class HealthView(TemplateView):
    template_name = 'health.html'


class PromisesByStatusDetailView(GeographyDetailView):
    template_name = 'profile/promises_by_status.html'

    adjust_slugs = True
    default_geo_version = None

    def dispatch(self, *args, **kwargs):
        request = args[0]
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)
        print self.geo_id
        print self.kwargs['geography_id']
        self.status = SLUG_MAPPING_STATUS.get(self.kwargs['status'], None)
        try:
            self.geo_level, self.geo_code = self.geo_id.split('-', 1)
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level,
                                              version)
        except (ValueError, LocationNotFound):
            raise Http404

        # check slug
        if self.adjust_slugs and (kwargs.get('slug') or self.geo.slug):
            if kwargs['slug'] != self.geo.slug:
                kwargs['slug'] = self.geo.slug
                url = '/profiles/%s-%s-%s' % (
                self.geo_level, self.geo_code, self.geo.slug)
                return redirect(url, permanent=True)

        # Skip the parent class's logic completely and go back to basics
        return TemplateView.dispatch(self, *args, **kwargs)

    def get_context_data(self, *args, **kwargs):
        page_context = {}

        # load the profile
        profile_method = settings.WAZIMAP.get('profile_builder', None)
        self.profile_name = settings.WAZIMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError(
                "You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)
        profile_data = profile_method(self.geo, self.profile_name, self.request)

        profile_data['geography'] = self.geo.as_dict_deep()

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(
            json.dumps(profile_data, cls=DjangoJSONEncoder))

        page_context.update({
            'profile_data_json': profile_data_json
        })

        promises = get_promises_by_status(self.geo_code, self.geo_level, self.status)

        print promises

        page_context.update({
            'promises': promises
        })

        page_context.update(
            {'status': self.status}
        )


        return page_context

    def get_geography(self, geo_id):
        # stub this out to prevent the subclass for calling out to CR
        pass


class PromisesByCategoryDetailView(GeographyDetailView):
    template_name = 'profile/promises_by_sector.html'

    adjust_slugs = True
    default_geo_version = None

    def dispatch(self, *args, **kwargs):
        request = args[0]
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)
        print self.geo_id
        print self.kwargs['geography_id']
        self.category = SLUG_MAPPING_CATEGORY.get(self.kwargs['category'], None)
        try:
            self.geo_level, self.geo_code = self.geo_id.split('-', 1)
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level,
                                              version)
        except (ValueError, LocationNotFound):
            raise Http404

        # check slug
        if self.adjust_slugs and (kwargs.get('slug') or self.geo.slug):
            if kwargs['slug'] != self.geo.slug:
                kwargs['slug'] = self.geo.slug
                url = '/profiles/%s-%s-%s' % (
                self.geo_level, self.geo_code, self.geo.slug)
                return redirect(url, permanent=True)

        # Skip the parent class's logic completely and go back to basics
        return TemplateView.dispatch(self, *args, **kwargs)

    def get_context_data(self, *args, **kwargs):
        page_context = {}

        # load the profile
        profile_method = settings.WAZIMAP.get('profile_builder', None)
        self.profile_name = settings.WAZIMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError(
                "You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)
        profile_data = profile_method(self.geo, self.profile_name, self.request)

        profile_data['geography'] = self.geo.as_dict_deep()

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(
            json.dumps(profile_data, cls=DjangoJSONEncoder))

        page_context.update({
            'profile_data_json': profile_data_json
        })

        promises = get_promises_by_category(self.geo_code, self.geo_level, self.category)

        print promises

        page_context.update({
            'promises': promises
        })

        page_context.update(
            {'category': self.category}
        )


        return page_context

    def get_geography(self, geo_id):
        # stub this out to prevent the subclass for calling out to CR
        pass






