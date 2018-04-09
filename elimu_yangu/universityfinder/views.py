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
        result = []
        #Check if general studies is not Satisfactoru
        gsGrade = subjects["General Studies"]
        if gsGrade != "S":
            return HttpResponse(result)

        #delete general studies from subjects dict
        del subjects["General Studies"]
        print subjects
        data = find_uni_courses(subjects, majors)

        print data
        for elem in data:
            result.append({'course': elem.course_name, 'university': elem.university_name})
        #return HttpResponse({'list_courses': data}, content_type="application/json")
        return HttpResponse(json.dumps(result), content_type='application/json')

    else:
        form = InputForm(label_suffix="  ")
        return render(request, 'index.html', {'form': form})

def find_uni_courses(subjects, majors):
    courses_list=[]

    print majors
    preferedCourses = []
    subject_list = subjects.keys()
    print subject_list
    for major in majors:
        if major == "None":
            preferedCourse = UniversityFinder.objects.filter(compulsory_alevel__has_any_keys=subject_list)
        else:
            preferedCourse = UniversityFinder.objects.filter(major_name__icontains=major).filter(compulsory_alevel__has_any_keys=subject_list)

        for subject, grade in subjects.items():
            position = grades_list.index(grade)

            subGrageList = grades_list[position:]
            print subGrageList
            subject_check = {'compulsory_alevel__has_key':subject}

            for subGrade in subGrageList:
                subject_dict = {'compulsory_alevel__'+subject+'__icontains': subGrade}
                courses = preferedCourse.filter(**subject_check).filter(**subject_dict)
                if courses:
                    courses_list += list(courses)
    return courses_list
