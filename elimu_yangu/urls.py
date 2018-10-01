from hurumap.urls import urlpatterns as hurumap_urlpatterns
from django.conf.urls import include, url
from django.conf.urls.i18n import i18n_patterns
from elimu_yangu.views import HomepageView, AboutView

urlpatterns = i18n_patterns(
    url(r'^leaguetable/', include('elimu_yangu.leaguetable.urls')),
    url(r'^university-finder/', include('elimu_yangu.universityfinder.urls')),
    url(r'^careerguide/', include('elimu_yangu.careerguide.urls')),
    #prefix_default_language = False,
    url(
        regex   = r'^$',
        view    = HomepageView.as_view(),
        kwargs  = {},
        name    = 'homepage',
    ),
    url(
        regex   = r'^about$',
        view    = AboutView.as_view(),
        kwargs  = {},
        name    = 'about',
    ),
) + hurumap_urlpatterns

urlpatterns += [
    url(r'^i18n/', include('django.conf.urls.i18n'))
]
