# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect
from django.conf import settings
import os, json
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder
from .forms import InputForm
from models import UniversityFinder

grades_list= ["A","B","C","D","E","S","F"]

# Create your views here.
def index(request):
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = InputForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            #process the data in form.cleaned_data as required
            subjects = form.cleaned_data['subjects']
            diplomas = form.cleaned_data['diplomas']
            olevel_subjects = form.cleaned_data['olevel_subjects']
            courses = []
            if subjects:
                alevel_subjects = subjects.split(",")
                olevel_subjects = olevel_subjects.split(",")
                courses = alevelroute(alevel_subjects, olevel_subjects)
            elif diplomas:
                olevel_subjects = olevel_subjects.split(",")
                diplomas = diplomas.strip()



            return render(request, 'index.html', {'form': form, 'courses': courses})

    # if a GET (or any other method) we'll create a blank form
    else:
        form = InputForm(label_suffix="  ")
        return render(request, 'index.html', {'form': form})

def alevelroute(alevelsubjects, olevelsubjects):
    courses_list=[]
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

#def diplomaroute(diplomas, olevelsubjects):
