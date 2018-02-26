from django.conf.urls import patterns, url
from wazimap.urls import *
from elimu_yangu.leaguetable.views import schools, specific_school, embed, HomepageView, EmbedGeographyDetailView

urlpatterns = patterns('',
    # url for all schools page
    url(
        regex   = r'^$',
        view    = cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs  = {},
        name    = 'leaguetable',
    ),

    url(
        regex = r'^schools/$',
        view = schools,
        kwargs = {},
        name = 'schools',
    ),

    # url for specific school page
    url(
        regex = r'^schools/(?P<code>[a-zA-Z0-9_-]+)/$',
        view = specific_school,
        kwargs = {},
        name = 'specific_schools',
    ),

    # url for embedding league table
    url(
        regex = 'embed/(?P<geo_level>[a-zA-Z]+)/(?P<geo_code>[a-zA-Z0-9_-]+)$',
        view = embed,
        kwargs = {},
        name = 'embed',
    ),

    # url for embedding the map
    url(
        regex   = 'embed/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view    = cache_page(STANDARD_CACHE_TIME)(EmbedGeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'embed_map',
    ),
)
