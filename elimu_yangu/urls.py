from wazimap.urls import *
from django.conf.urls import include
from django.conf.urls.i18n import i18n_patterns
from elimu_yangu.views import HomepageView

urlpatterns += i18n_patterns(
    url(r'^leaguetable/', include('elimu_yangu.leaguetable.urls')),
    url(r'^university-finder/', include('elimu_yangu.universityfinder.urls')),
    url(r'^careerguide/', include('elimu_yangu.careerguide.urls')),
    url(r'^i18n/', include('django.conf.urls.i18n')),
    #prefix_default_language = False,
    url(
        regex   = '^$',
        view    = cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs  = {},
        name    = 'homepage',
    ),
    # prefix_default_language=False
    # url(r'^i18n/', include('django.conf.urls.i18n')),,

)

# urlpatterns += i18n_patterns(
#     url(r'^i18n/', include('django.conf.urls.i18n'))
# )
