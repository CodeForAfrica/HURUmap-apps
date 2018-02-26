from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect
from django.conf import settings
import os, json
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder
from .forms import InputForm
from models import Acseeyear2017Subjectperformance, Acseeyear2017Overallperformance, Cseeyear2017, Cseeyear2016, Acseeyear2017, Acseeyear2016Subjectperformance, Cseeyear2015Subjectperformance, Cseeyear2016Subjectperformance, Cseeyear2017Subjectperformance, Cseeyear2017Overallperformance
# Create your views here.

data = json.load(open(os.path.join(settings.BASE_DIR, 'elimu_yangu/careerguide','career.json')))
olsubjects = json.load(open(os.path.join(settings.BASE_DIR, 'elimu_yangu/careerguide','olsubjects.json')))
alsubjects = json.load(open(os.path.join(settings.BASE_DIR, 'elimu_yangu/careerguide','alsubjects.json')))

def index(request):
    # if this is a POST request we need to process the form data
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = InputForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            career = form.cleaned_data['career']
            region = form.cleaned_data['region']
            gender = form.cleaned_data['gender']
            edu_level = form.cleaned_data['education_level']

            schools = get_schools(career, region, gender, edu_level)
            if edu_level == '1':
                school_level = "A levels"
            else:
                school_level = "O levels"
            # redirect to a new URL:
            return render(request, 'index.html', {'form': form, 'schools': schools, 'school_level': school_level})

    # if a GET (or any other method) we'll create a blank form
    else:
        3
        #queryset1 = Acseeyear2017Subjectperformance.objects.filter(subjectname = "Chemistry").filter()
        #queryset2 = Acseeyear2017Subjectperformance.objects.filter(subjectname = "Biology").filter
        #stories = queryset1 | queryset2
        #print stories.distinct().order_by('schoolcode')
        form = InputForm(label_suffix="  ")
        return render(request, 'index.html', {'form': form})

def school(request, schoolcode):
    alevel_subjects = Acseeyear2017Subjectperformance.objects.filter(schoolcode = schoolcode)
    alevel_subjects16 = Acseeyear2016Subjectperformance.objects.filter(schoolcode = schoolcode)
    olevel_subjects = Cseeyear2017Subjectperformance.objects.filter(schoolcode = schoolcode)
    olevel_subjects16 = Cseeyear2016Subjectperformance.objects.filter(schoolcode = schoolcode)
    olevel_subjects15 = Cseeyear2015Subjectperformance.objects.filter(schoolcode = schoolcode)
    pageTitle = "School Detail"
    school_name = school_region = school_gpa = OlevelOverallPerformance = AlevelOverallPerformance = {}
    AlevelPerformanceTrends = [];
    OlevelPerformanceTrends = [];

    if olevel_subjects15:
        OlevelPerformanceTrends.append({"2015": (olevel_subjects15[0].gpa).encode("utf8")})
    if olevel_subjects16:
        OlevelPerformanceTrends.append({"2016": (olevel_subjects16[0].gpa).encode("utf8")})
    if alevel_subjects16:
        AlevelPerformanceTrends.append({"2016": (alevel_subjects16[0].gpa).encode("utf8")})

    if olevel_subjects:
        school_name = olevel_subjects[0].schoolname
        school_region = olevel_subjects[0].region
        school_gpa = olevel_subjects[0].gpa
        OlevelOverallPerformance = Cseeyear2017Overallperformance.objects.filter(schoolcode = schoolcode).filter(gender = 'T')
        OlevelOverallPerformance = serializers.serialize("json", OlevelOverallPerformance)
        OlevelPerformanceTrends.append({"2017": (olevel_subjects[0].gpa).encode("utf8")})

    if alevel_subjects:
        school_name = alevel_subjects[0].schoolname
        school_region = alevel_subjects[0].region
        school_gpa = alevel_subjects[0].gpa
        AlevelOverallPerformance = Acseeyear2017Overallperformance.objects.filter(schoolcode = schoolcode).filter(gender = 'T')
        AlevelOverallPerformance = serializers.serialize("json", AlevelOverallPerformance)
        AlevelPerformanceTrends.append({"2017": (alevel_subjects[0].gpa).encode("utf8")})

    SchoolPerformance = Cseeyear2017.objects.filter(schoolcode = schoolcode)
    ASchoolPerformance = Acseeyear2017.objects.filter(schoolcode = schoolcode)
    OlevelSchooldetailsList = []
    AlevelSchooldetailsList = []

    for obj in olevel_subjects:
        subjectdetail = {}
        subjectdetail["subjectname"] = obj.subjectname.encode("utf8")
        subjectdetail["subjectgpa"] = obj.subjectgpa.encode("utf8")
        subjectCol = str(olsubjects[obj.subjectname])
        subjectdetail["subjectPerformance"] =  list(definition.encode("utf8") for definition in SchoolPerformance.values_list(subjectCol, flat=True))
        subjectdetail["subjectFemalePerformance"] =  list(definition.encode("utf8") for definition in SchoolPerformance.filter(gender = 'F').values_list(subjectCol, flat=True))
        subjectdetail["subjectMalePerformance"] =  list(definition.encode("utf8") for definition in SchoolPerformance.filter(gender = 'M').values_list(subjectCol, flat=True))
        OlevelSchooldetailsList.append(subjectdetail)

    for obj in alevel_subjects:
        subjectdetail = {}
        subjectdetail["subjectname"] = obj.subjectname.encode("utf8")
        subjectdetail["subjectgpa"] = obj.subjectgpa.encode("utf8")
        subjectCol = str(alsubjects[obj.subjectname])
        subjectdetail["subjectPerformance"] =  list(definition.encode("utf8") for definition in ASchoolPerformance.values_list(subjectCol, flat=True))
        subjectdetail["subjectFemalePerformance"] =  list(definition.encode("utf8") for definition in ASchoolPerformance.filter(gender = 'F').values_list(subjectCol, flat=True))
        subjectdetail["subjectMalePerformance"] =  list(definition.encode("utf8") for definition in ASchoolPerformance.filter(gender = 'M').values_list(subjectCol, flat=True))
        AlevelSchooldetailsList.append(subjectdetail)

    return render (request, 'school.html', {'OlevelSchooldetailsList': OlevelSchooldetailsList, 'AlevelSchooldetailsList': AlevelSchooldetailsList, 'alevel_subjects': alevel_subjects, 'pageTitle': pageTitle,
'school_name': school_name, 'school_region': school_region, 'school_gpa': school_gpa, 'OlevelOverallPerformance': OlevelOverallPerformance, 'AlevelOverallPerformance': AlevelOverallPerformance, 'AlevelPerformanceTrends': AlevelPerformanceTrends, 'OlevelPerformanceTrends': OlevelPerformanceTrends})


def get_schools(career, region, gender, edu_level):
    schools = []
    subjects = data[career]
    if not region:
        if edu_level == '1':
            for subject in subjects:
                queryset = Acseeyear2017Subjectperformance.objects.filter(subjectname = subject).filter(subjectnatranking__in=["1","2","3","4","5","6"])
                schools += list(queryset)
        else:
            for subject in subjects:
                queryset =  Cseeyear2017Subjectperformance.objects.filter(subjectname = subject).filter(subjectnatranking__in=["1","2","3","4","5","6"])
                schools += list(queryset)
    else:
        if edu_level == '1':
            for subject in subjects:
                queryset = Acseeyear2017Subjectperformance.objects.filter(subjectname = subject).filter(region = region).filter(subjectregranking__in=["1","2","3"])
                schools += list(queryset)
        else:
            for subject in subjects:
                queryset = Cseeyear2017Subjectperformance.objects.filter(subjectname = subject).filter(region = region).filter(subjectregranking__in=["1","2","3"])
                schools += list(queryset)
    return schools

def alevel_subjects(request):
    subjects = Acseeyear2017Subjectperformance.objects.order_by().values('subjectname').distinct()
    pageTitle = "A-levels Subjects"
    return render(request, 'subjects.html', {'subjects': subjects, 'pageTitle': pageTitle})


def olevel_subjects(request):
    subjects = Cseeyear2017Subjectperformance.objects.order_by().values('subjectname').distinct()
    pageTitle = "O-levels Subjects"
    return render(request, 'subjects.html', {'subjects': subjects, 'pageTitle': pageTitle})
