from django.conf.urls import url, patterns
from elimu_yangu.careerguide.views import school, alevel_subjects, olevel_subjects, index
#from wazimap.urls import *

urlpatterns = patterns('',
    url(regex = r'^$', view = index, name='index'),
    url(regex = 'school/(?P<schoolcode>[\w.-]+)/$', view = school, name='school'),
    url(regex = 'subjects/a-level', view = alevel_subjects, name='subjects/a-level'),
    url(regex = 'subjects/o-level', view = olevel_subjects, name='subjects/o-level')
    )
