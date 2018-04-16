from django.conf.urls import url
from wazimap.urls import *
from .views import ArticlesView
from views import AboutView
from views import PromisesView

urlpatterns += [
    url(r'^articles/$', ArticlesView.as_view(), name='articles'),
    url(r'^about/$', AboutView.as_view(), name='about'),
    url(r'^promises/$', PromisesView.as_view(), name='promises')
]



