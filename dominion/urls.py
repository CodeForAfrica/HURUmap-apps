from django.conf.urls import include, url
from django.conf.urls.static import static
from django.views.decorators.cache import cache_page
from django.views.generic import RedirectView

from dominion import settings
from hurumap.urls import urlpatterns as hurumap_urlpatterns

from dominion.views import CountryPageView

STANDARD_CACHE_TIME = settings.HURUMAP['cache_secs']
COUNTRIES = '|'.join(settings.HURUMAP['countries'].keys())
COUNTRIES_REGEX = r'(?P<country>{})'.format(COUNTRIES)

urlpatterns = [
    url(
        regex='^{}$(?i)'.format(COUNTRIES_REGEX),
        view=cache_page(STANDARD_CACHE_TIME)(CountryPageView.as_view()),
        name='country_portal'
    )] + \
    static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) + \
    static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + \
    hurumap_urlpatterns
