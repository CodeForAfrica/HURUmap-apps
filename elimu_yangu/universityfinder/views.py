# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.conf import settings
import os, json
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder
from elimu_yangu.universityfinder.forms import InputForm
from elimu_yangu.universityfinder.models import UniversityFinder

grades_list= ["A","B","C","D","E","S","F"]

# Create your views here.
def index(request):
    if request.method == 'POST':
        dataRequest = json.loads(request.body)
        subjects = dataRequest['subjectGrade']
        majors = dataRequest["preferedCourse"]
        print subjects

        data = find_uni_courses(subjects, majors)
        result = []
        for elem in data:
            result.append({'course': elem.course_name, 'university': elem.university_name})
        #return HttpResponse({'list_courses': data}, content_type="application/json")
        return HttpResponse(result)

    else:
        form = InputForm(label_suffix="  ")
        return render(request, 'index.html', {'form': form})

def find_uni_courses(subjects, majors):
    courses_list=[]

    print majors
    preferedCourses = []
    for major in majors:
        print major
        preferedCourse = UniversityFinder.objects.filter(major_name__icontains=major)
        courses_list += list(preferedCourse)
    # for subject in alevelsubjects:
    #     subject_array = subject.split("-")
    #     subject = subject_array[0]
    #     grade = subject_array[1]
    #
    #     position = grades_list.index(grade)
    #     subjectslist = []
    #
    #     while position < len(grades_list):
    #         subjectslist.append(subject +"-"+ grades_list[position])
    #         position = position + 1
    #     print subjectslist
    #     #subject_dict = {'compulsory_subjects_ar__icontains'=subjectslist}
    #     courses = UniversityFinder.objects.filter(compulsory_subjects_ar__icontains=subjectslist)#.filter(**subject_dict)
    #     courses_list += list(courses)
    return courses_list
