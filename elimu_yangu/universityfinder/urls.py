from django.conf.urls import url
from elimu_yangu.universityfinder.views import index

urlpatterns = [
    url(regex = r'^$', view = index, name='index'),
]
