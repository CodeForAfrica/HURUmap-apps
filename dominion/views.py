import json
from django.conf import settings
from django.views.generic import TemplateView
from wazimap.geo import geo_data
from wazimap.profiles import enhance_api_data
from django.utils.safestring import SafeString
from wazimap.data.utils import dataset_context
from django.utils.module_loading import import_string
from django.core.serializers.json import DjangoJSONEncoder
from wazimap.views import GeographyDetailView as BaseGeographyDetailView
from .data.utils import get_page_releases_per_country, \
    get_primary_release_year_per_geography

COUNTRIES = settings.HURUMAP.get('countries', {})


class CountryPageView(TemplateView):
    template_name = 'country_page.html'
    default_geo_version = None

    def get_context_data(self, **kwargs):
        context = super(CountryPageView, self).get_context_data(**kwargs)
        country_slug = self.kwargs['country']

        country = COUNTRIES[country_slug]
        country['slug'] = country_slug

        geo = geo_data.get_geography(country['code'], 'country', self.default_geo_version)
        context['country'] = country
        context['geography'] = geo.as_dict_deep()
        return context

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
                url = '/profiles/%s-%s-%s?%s' % (self.geo_level, self.geo_code, self.geo.slug, urllib.urlencode(request.GET))
                return redirect(url, permanent=True)

        # Skip the parent class's logic completely and go back to basics
        return TemplateView.dispatch(self, *args, **kwargs)

    def get_context_data(self, *args, **kwargs):
        page_context = {}

        # load the profile
        profile_method = settings.HURUMAP.get('profile_builder', None)
        self.profile_name = settings.HURUMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError("You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)

        year = self.request.GET.get('release', get_primary_release_year_per_geography(self.geo))
        if settings.HURUMAP['latest_release_year'] == year:
            year = 'latest'

        with dataset_context(year=year):
            profile_data = profile_method(self.geo, self.profile_name, self.request)

        profile_data['geography'] = self.geo.as_dict_deep()
        profile_data['primary_releases'] = get_page_releases_per_country(
            settings.HURUMAP['primary_dataset_name'], self.geo, year)

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
        return ['profile/profile_detail_%s.html' % self.profile_name, 'profile/profile_detail.html']
