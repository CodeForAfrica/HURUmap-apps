from wazimap.urls import *
from views import PromisesByStatusDetailView, PromisesByCategoryDetailView
from django.conf.urls import url, patterns

urlpatterns += patterns('',

    url(
        regex='^promises/status/(?P<status>[\w-]+)/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view=cache_page(STANDARD_CACHE_TIME)(
            PromisesByStatusDetailView.as_view()),
        kwargs={},
        name='promises_by_status',
    ),

    url(
        regex='^promises/category/(?P<category>[\w-]+)/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view=cache_page(STANDARD_CACHE_TIME)(
            PromisesByCategoryDetailView.as_view()),
        kwargs={},
        name='promises_by_category',
    ),


)
