from django.conf import settings
from django.views.generic import TemplateView
from wazimap.geo import geo_data, LocationNotFound
from wazimap.data.utils import get_page_releases
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

class GeographyCompareView(TemplateView):
    template_name = 'profile/head2head.html'
    default_geo_version = None

    def get_context_data(self, geo_id1, geo_id2):
        page_context = {
            'geo_id1': geo_id1,
            'geo_id2': geo_id2,
        }

        release = self.request.GET.get('release')
        version = self.request.GET.get('geo_version', self.default_geo_version)
        try:
            level, code = geo_id1.split('-', 1)
            self.geo = geo_data.get_geography(code, level, version )
            year = self.request.GET.get('release', get_primary_release_year_per_geography(self.geo))
            page_context['geo1'] = geo_data.get_geography(code, level)
            page_context['geo1_release_year'] = str(year)

            level, code = geo_id2.split('-', 1)
            page_context['geo2'] = geo_data.get_geography(code, level)
            page_context['geo2_release_year'] = str(year)
            #Get Release
            page_context['geography'] = self.geo.as_dict_deep()
            page_context['compare_primary_releases'] = get_page_releases_per_country(
                settings.HURUMAP['primary_dataset_name'], self.geo, year)
        except (ValueError, LocationNotFound):
            raise Http404

        return page_context
