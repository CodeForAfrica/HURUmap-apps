from wazimap.urls import *
from views import ArticlesView, AboutView
from django.conf.urls import url, patterns

urlpatterns += patterns('',

        url(r'^articles/$', ArticlesView.as_view(),
            name='articles'),
        url(r'^about/$', AboutView.as_view(), name='about'),

        )
