from wazimap.urls import *
from django.conf.urls import include

urlpatterns += patterns('',
    url(r'^leaguetable/', include('elimu_yangu.leaguetable.urls')),
    url(r'^careerguide/', include('elimu_yangu.careerguide.urls')),
    url(r'^university-finder/', include('elimu_yangu.universityfinder.urls'))
    )
