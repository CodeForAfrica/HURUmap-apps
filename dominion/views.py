from django.conf import settings
from django.views.generic import TemplateView

COUNTRIES = settings.HURUMAP.get('countries', {})


class CountryPageView(TemplateView):
    template_name = 'country_page.html'

    def get_context_data(self, **kwargs):
        context = super(CountryPageView, self).get_context_data(**kwargs)
        country_slug = self.kwargs['country']
        context['country'] = COUNTRIES[country_slug]
        return context
