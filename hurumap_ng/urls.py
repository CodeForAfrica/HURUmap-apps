from hurumap.dashboard.urls import urlpatterns as dashboard_urlpatterns
from hurumap.urls import urlpatterns as hurumap_urlpatterns

urlpatterns = hurumap_urlpatterns + dashboard_urlpatterns
