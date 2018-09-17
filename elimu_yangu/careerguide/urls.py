from django.conf.urls import url, include
from elimu_yangu.careerguide.views import school, alevel_subjects, olevel_subjects, index
from django.conf.urls.i18n import i18n_patterns
#from wazimap.urls import *

urlpatterns = [
    url(regex = r'^$', view = index, name='index'),
    url(regex = r'school/(?P<schoolcode>[\w.-]+)/$', view = school, name='school'),
    url(regex = r'subjects/a-level', view = alevel_subjects, name='subjects/a-level'),
    url(regex = r'subjects/o-level', view = olevel_subjects, name='subjects/o-level'),
]
