from wazimap.urls import *
from views import PromisesDetailView
from django.conf.urls import url, patterns

urlpatterns += patterns('',

    url(
        regex='^promises/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view=cache_page(STANDARD_CACHE_TIME)(
            PromisesDetailView.as_view()),
        kwargs={},
        name='promises',
    )

)
