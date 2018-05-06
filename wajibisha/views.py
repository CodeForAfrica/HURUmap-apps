import json

from census.profile import enhance_api_data
from census.views import GeographyDetailView
from django.core.serializers.json import DjangoJSONEncoder
from django.http import Http404
from django.shortcuts import redirect
from django.utils.module_loading import import_string
from django.utils.safestring import SafeString
from django.views.generic.base import TemplateView
from wazimap.data import LocationNotFound
from wazimap.geo import geo_data

from utils.view_helpers import get_promises, get_promise_sectors, get_promise_statuses
from wajibisha import settings


class PromisesDetailView(GeographyDetailView):
    template_name = 'promises.html'

    adjust_slugs = True
    default_geo_version = None

    def dispatch(self, *args, **kwargs):
        request = args[0]
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)
        print self.geo_id
        print self.kwargs['geography_id']
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

        promises = get_promises(self.geo_code, self.geo_level)
        sectors = get_promise_sectors(self.geo_code, self.geo_level)
        statuses = get_promise_statuses(self.geo_code, self.geo_level)
        promises_json = SafeString(json.dumps(promises, cls=DjangoJSONEncoder))

        print promises

        page_context.update({
            'promises': promises,
            'sectors': sectors,
            'statuses': statuses,
            'promises_json': promises_json
        })

        return page_context

    def get_geography(self, geo_id):
        # stub this out to prevent the subclass for calling out to CR
        pass







