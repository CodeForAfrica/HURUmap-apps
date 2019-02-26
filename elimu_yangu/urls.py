from hurumap.urls import urlpatterns as hurumap_urlpatterns
from django.conf.urls.static import static
from django.conf.urls import include, url
from django.conf.urls.i18n import i18n_patterns
from elimu_yangu.views import HomepageView, AboutView, ProfileRedirectView

from elimu_yangu import settings

urlpatterns = i18n_patterns(
    url(
        regex=r'^profiles/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view=ProfileRedirectView.as_view(),
        kwargs={},
        name='redirect_geography_detail',
    ),
    url(r'^leaguetable/', include('elimu_yangu.leaguetable.urls')),
    url(r'^university-finder/', include('elimu_yangu.universityfinder.urls')),
    url(r'^careerguide/', include('elimu_yangu.careerguide.urls')),
    # prefix_default_language = False,
    url(
        regex=r'^$',
        view=HomepageView.as_view(),
        kwargs={},
        name='homepage',
    ),
    url(
        regex=r'^about$',
        view=AboutView.as_view(),
        kwargs={},
        name='about',
    )
)

urlpatterns += [
    url(r'^i18n/', include('django.conf.urls.i18n'))
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) + \
    static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
