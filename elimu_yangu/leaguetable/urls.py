from django.conf.urls import url
from wazimap.urls import *
from hurumap.urls import urlpatterns as hurumap_urlpatterns
from elimu_yangu.leaguetable.views import index, schools, embed, EmbedGeographyDetailView, PlaceSearchJson, GeographyDetailView, GeographyCompareView, SchoolPageView

urlpatterns = [
    # url for all schools page
    url(
        regex   = r'^$',
        view    = index,
        kwargs  = {},
        name    = 'leaguetable',
    ),

    url(
        regex = r'^schools/$',
        view = schools,
        kwargs = {},
        name = 'schools',
    ),

    url(
        regex   = r'^profiles/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'league_table_geography_detail',
    ),

    # url for specific school page
    url(
        regex = r'^schools/(?P<code>[a-zA-Z0-9_-]+)/$',
        view = cache_page(STANDARD_CACHE_TIME)(SchoolPageView.as_view()),
        kwargs = {},
        name = 'specific_schools',
    ),

    # url for embedding league table
    url(
        regex = r'embed/(?P<geo_level>[a-zA-Z]+)/(?P<geo_code>[a-zA-Z0-9_-]+)$',
        view = embed,
        kwargs = {},
        name = 'embed',
    ),

    # url for embedding the map
    url(
        regex   = r'embed/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view    = cache_page(STANDARD_CACHE_TIME)(EmbedGeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'embed_map',
    ),
    #compare
    url(
        regex   = r'^compare/(?P<geo_id1>\w+-\w+)/vs/(?P<geo_id2>\w+-\w+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyCompareView.as_view()),
        kwargs  = {},
        name    = 'geography_compare',
    ),

    url(
        regex   = r'^place-search/json/$',
        view    = PlaceSearchJson.as_view(),
        kwargs  = {},
        name    = 'league_table_place_search_json',
    ),
]
