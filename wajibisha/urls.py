from django.conf.urls import url
from wazimap.urls import *
from .views import ArticlesView
from views import AboutView
from views import PromisesView
from views import CategoriesView
from views import FulfilledView
from views import HealthView

urlpatterns += [
    url(r'^articles/$', ArticlesView.as_view(), name='articles'),
    url(r'^about/$', AboutView.as_view(), name='about'),
    url(r'^promises/$', PromisesView.as_view(), name='promises'),
    url(r'^categories/$', CategoriesView.as_view(), name='categories'),
    url(r'^fulfilled/$', FulfilledView.as_view(), name='fulfilled'),
    url(r'^health/$', HealthView.as_view(), name='health')
]



