from django.conf import settings
from django.views.generic import TemplateView
from wazimap.geo import geo_data

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
