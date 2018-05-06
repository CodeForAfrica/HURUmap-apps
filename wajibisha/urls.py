from wazimap.urls import *
from views import PromisesByStatusDetailView
from django.conf.urls import url, patterns

urlpatterns += patterns('',

    url(
        regex='^promises/(?P<status>[\w-]+)/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view=cache_page(STANDARD_CACHE_TIME)(
            PromisesByStatusDetailView.as_view()),
        kwargs={},
        name='embed_map',
    ),

)
