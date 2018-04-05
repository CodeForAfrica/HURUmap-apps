# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect
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

        find_uni_courses(subjects, majors)

        data = ["1","1","1","1"]
        return HttpResponse(data)

    # if a GET (or any other method) we'll create a blank form
    else:
        form = InputForm(label_suffix="  ")
        return render(request, 'index.html', {'form': form})

def find_uni_courses(subjects, majors):
    courses_list=[]

    preferedCourses = []
    #for major in majors:
        #preferedCourse = UniversityFinder.objects.filter(general_major)

    for subject in alevelsubjects:
        subject_array = subject.split("-")
        subject = subject_array[0]
        grade = subject_array[1]

        position = grades_list.index(grade)
        subjectslist = []

        while position < len(grades_list):
            subjectslist.append(subject +"-"+ grades_list[position])
            position = position + 1
        print subjectslist
        #subject_dict = {'compulsory_subjects_ar__icontains'=subjectslist}
        courses = UniversityFinder.objects.filter(compulsory_subjects_ar__icontains=subjectslist)#.filter(**subject_dict)
        courses_list += list(courses)
    print courses_list
    return courses_list
