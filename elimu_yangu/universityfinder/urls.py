from django.conf.urls import url, patterns
from elimu_yangu.universityfinder.views import index
#from wazimap.urls import *

urlpatterns = patterns('',
    url(regex = r'^$', view = index, name='index'),
    )
