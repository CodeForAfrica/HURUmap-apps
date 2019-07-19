from django.conf import settings
from django.conf.urls import url
from django.conf.urls.static import static
from django.views.decorators.cache import cache_page

from hurumap.dashboard.urls import urlpatterns as dashboard_urlpatterns
from hurumap.urls import urlpatterns as hurumap_urlpatterns

from hurumap_ng.views import InsightsView

STANDARD_CACHE_TIME = settings.HURUMAP["cache_secs"]

urlpatterns = (
    [
        url(
            regex=r"^insights/$",
            view=cache_page(STANDARD_CACHE_TIME)(InsightsView.as_view()),
            name="insights",
        )
    ]
    + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    + hurumap_urlpatterns
    + dashboard_urlpatterns
)
