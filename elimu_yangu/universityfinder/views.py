# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.conf import settings
import os, json
from django.utils import translation
from django.http import HttpResponse, Http404
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder
from elimu_yangu.universityfinder.forms import InputForm
from elimu_yangu.universityfinder.models import UniversityFinder

grades_list= ["A","B","C","D","E","S","F"]
grades_point_list = [5,4,3,2,1,0.5,0]

# Create your views here.
def index(request):
    user_language = translation.get_language()
    print LANGUAGE_CODE
    translation.activate(user_language)
    try:
        if request.method == 'POST':
            dataRequest = json.loads(request.body)
            subjects = dataRequest['subjectGrade']
            majors = dataRequest["preferedCourse"]

            result = []
            #Check if general studies has no Satisfactory grade
            gsGrade = subjects["General Studies"]
            if gsGrade != "S":
                return HttpResponse(json.dumps([{'course': "General Studies should be Satisfactory", 'university': "General Studies should be Satisfactory"}]),  content_type='application/json')

            #check if user has entered more than 3 subjects
            if len(subjects) < 4:
                return HttpResponse(json.dumps([{'course': "You have entered less than 3 subjects", 'university': "You have entered less than 3 subjects"}]),  content_type='application/json')

            #check preference majors choosen
            if majors.length == 0:
                majors = ["None"]
            #delete general studies from subjects dict
            del subjects["General Studies"]

            data = find_uni_courses(subjects, majors)

            for elem in data:
                result.append({'course': elem.course_name, 'university': elem.university_name})
            #return HttpResponse({'list_courses': data}, content_type="application/json")
            return HttpResponse(json.dumps(result), content_type='application/json')

        else:
            form = InputForm(label_suffix="  ")
            return render(request, 'index.html', {'form': form})
    except:
        raise Http404("Oops, something went wrong!")

def find_uni_courses(subjects, majors):
    courses_list=[]
    preferedCourses = []
    total_points = count_grade_points(subjects)
    subject_list = subjects.keys()
    for major in majors:
        points_check = {'total_points__lte': total_points}
        if major == "None":
            preferedCourse = UniversityFinder.objects.filter(compulsory_alevel__has_any_keys=subject_list).filter(**points_check)
        else:
            preferedCourse = UniversityFinder.objects.filter(Q(major_name__icontains=major)| Q(university_name__icontains=major)).filter(**points_check).filter(compulsory_alevel__has_any_keys=subject_list)

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


def count_grade_points(subjects):
    #subject_list = subjects.keys()
    count = 0
    for subject, grade in subjects.items():
        if (subject != "General Studies" or subject != "Basic Mathematics" or subject != "Divinity" or subject != "Islamic Knowledge"):
            position = grades_list.index(grade)
            count += grades_point_list[position]
    return count
