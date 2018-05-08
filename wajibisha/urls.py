from wazimap.urls import *
from views import PromisesDetailView, WajibishaGeographyDetailView, \
    ArticlesView, AboutView
from django.conf.urls import url, patterns

urlpatterns += patterns('',

        url(
            regex='^promises/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
            view=cache_page(STANDARD_CACHE_TIME)(
                PromisesDetailView.as_view()),
            kwargs={},
            name='promises',
        ),
        url(
            regex='^profiles/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
            view=cache_page(STANDARD_CACHE_TIME)(
                WajibishaGeographyDetailView.as_view()),
            kwargs={},
            name='geography_detail',
        ),
        url(r'^articles/$', ArticlesView.as_view(),
            name='articles'),
        url(r'^about/$', AboutView.as_view(), name='about'),

        )
