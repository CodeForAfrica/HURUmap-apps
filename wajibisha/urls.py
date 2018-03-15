from django.conf.urls import url
from wazimap.urls import *
from .views import ArticlesView

urlpatterns += [
    url(r'^articles/$', ArticlesView.as_view(), name='articles'),
]



