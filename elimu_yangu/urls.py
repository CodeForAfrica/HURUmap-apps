from wazimap.urls import *
from django.conf.urls import include, patterns
from django.conf.urls.i18n import i18n_patterns
from elimu_yangu.views import HomepageView, AboutView

urlpatterns += i18n_patterns(
    url(r'^leaguetable/', include('elimu_yangu.leaguetable.urls')),
    url(r'^university-finder/', include('elimu_yangu.universityfinder.urls')),
    url(r'^careerguide/', include('elimu_yangu.careerguide.urls')),
    #prefix_default_language = False,
    url(
        regex   = '^$',
        view    = cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs  = {},
        name    = 'homepage',
    ),
    url(
        regex   = '^about$',
        view    = cache_page(STANDARD_CACHE_TIME)(AboutView.as_view()),
        kwargs  = {},
        name    = 'about',
    ),
     #prefix_default_language=False,
    # url(r'^i18n/', include('django.conf.urls.i18n')),,

)
urlpatterns += patterns('',
     url(r'^i18n/', include('django.conf.urls.i18n'))
 )
