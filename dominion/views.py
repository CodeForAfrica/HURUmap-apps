from django.conf import settings
from django.views.generic import TemplateView
from wazimap.geo import geo_data, LocationNotFound
from wazimap.data.utils import get_page_releases

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

    def get_context_data(self, geo_id1, geo_id2):
        page_context = {
            'geo_id1': geo_id1,
            'geo_id2': geo_id2,
        }

        release = self.request.GET.get('release')
        try:
            level, code = geo_id1.split('-', 1)
            self.geo = geo_data.get_geography(code, level)
            page_context['geo1'] = geo_data.get_geography(code, level)
            page_context['geo1_release_year'] = str(settings.HURUMAP['primary_release_year'].get(level, release)) if release == settings.HURUMAP['latest_release_year'] else release

            level, code = geo_id2.split('-', 1)
            page_context['geo2'] = geo_data.get_geography(code, level)
            page_context['geo2_release_year'] = str(settings.HURUMAP['primary_release_year'].get(level, release)) if release == settings.HURUMAP['latest_release_year'] else release

            #Get Release
            year = self.request.GET.get('release', geo_data.primary_release_year(self.geo))
            if settings.HURUMAP['latest_release_year'] == year:
                year = 'latest'

            page_context['primary_releases'] = get_page_releases(
                settings.HURUMAP['primary_dataset_name'], self.geo, year)
        except (ValueError, LocationNotFound):
            raise Http404

        return page_context
