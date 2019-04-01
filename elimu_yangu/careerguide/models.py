# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

class Alevel_student_performance(models.Model):
    #id = models.CharField(db_column='Id', max_length=20)  # Field name made lowercase.
    year = models.CharField(db_column='year', max_length=50)  # Field name made lowercase
    schoolcode = models.CharField(db_column='schoolcode', max_length=20)  # Field name made lowercase.
    schoolname = models.CharField(db_column='schoolname', max_length=50)  # Field name made lowercase.
    region = models.CharField(db_column='region', max_length=30)  # Field name made lowercase.
    studentno = models.CharField(db_column='studentno', max_length=20)  # Field name made lowercase.
    gender = models.CharField(db_column='gender', max_length=5)  # Field name made lowercase.
    division = models.CharField(db_column='division', max_length=5, blank=True, null=True)  # Field name made lowercase.
    accountancy = models.CharField(db_column='accountancy', max_length=5, blank=True, null=True)  # Field name made lowercase.
    history = models.CharField(db_column='history', max_length=5, blank=True, null=True)  # Field name made lowercase.
    english = models.CharField(db_column='english', max_length=5, blank=True, null=True)  # Field name made lowercase.
    kiswahili = models.CharField(db_column='kiswahili', max_length=5, blank=True, null=True)  # Field name made lowercase.
    geography = models.CharField(db_column='geography', max_length=5, blank=True, null=True)  # Field name made lowercase.
    advancemathematics = models.CharField(db_column='advancemathematics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    biology = models.CharField(db_column='biology', max_length=5, blank=True, null=True)  # Field name made lowercase.
    physics = models.CharField(db_column='physics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    chemistry = models.CharField(db_column='chemistry', max_length=5, blank=True, null=True)  # Field name made lowercase.
    commerce = models.CharField(db_column='commerce', max_length=5, blank=True, null=True)  # Field name made lowercase.
    agriculture = models.CharField(db_column='agriculture', max_length=5, blank=True, null=True)  # Field name made lowercase.
    arabiclanguage = models.CharField(db_column='arabiclanguage', max_length=5, blank=True, null=True)  # Field name made lowercase.
    foodnutrition = models.CharField(db_column='foodnutrition', max_length=5, blank=True, null=True)  # Field name made lowercase.
    frenchlanguage = models.CharField(db_column='frenchlanguage', max_length=5, blank=True, null=True)  # Field name made lowercase.
    computerstudies = models.CharField(db_column='computerstudies', max_length=5, blank=True, null=True)  # Field name made lowercase.
    economics = models.CharField(db_column='economics', max_length=5, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'alevel_student_performance'

class Olevel_student_performance_2016(models.Model):
    #id = models.CharField(db_column='Id', max_length=20)  # Field name made lowercase.
    year = models.CharField(db_column='year', max_length=50)  # Field name made lowercase
    schoolcode = models.CharField(db_column='schoolcode', max_length=20)  # Field name made lowercase.
    schoolname = models.CharField(db_column='schoolname', max_length=50)  # Field name made lowercase.
    region = models.CharField(db_column='region', max_length=30)  # Field name made lowercase.
    studentno = models.CharField(db_column='studentno', max_length=20)  # Field name made lowercase.
    gender = models.CharField(db_column='gender', max_length=5)  # Field name made lowercase.
    division = models.CharField(db_column='division', max_length=5, blank=True, null=True)  # Field name made lowercase.
    civics = models.CharField(db_column='civics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    history = models.CharField(db_column='history', max_length=5, blank=True, null=True)  # Field name made lowercase.
    english = models.CharField(db_column='english', max_length=5, blank=True, null=True)  # Field name made lowercase.
    kiswahili = models.CharField(db_column='kiswahili', max_length=5, blank=True, null=True)  # Field name made lowercase.
    geography = models.CharField(db_column='geography', max_length=5, blank=True, null=True)  # Field name made lowercase.
    bibleknowledge = models.CharField(db_column='bibleknowledge', max_length=5, blank=True, null=True)  # Field name made lowercase.
    basicmathematics = models.CharField(db_column='basicmathematics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    additionalmathematics = models.CharField(db_column='additionalmathematics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    biology = models.CharField(db_column='biology', max_length=5, blank=True, null=True)  # Field name made lowercase.
    physics = models.CharField(db_column='physics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    chemistry = models.CharField(db_column='chemistry', max_length=5, blank=True, null=True)  # Field name made lowercase.
    bookkeeping = models.CharField(db_column='bookkeeping', max_length=5, blank=True, null=True)  # Field name made lowercase.
    commerce = models.CharField(db_column='commerce', max_length=5, blank=True, null=True)  # Field name made lowercase.
    agriculturalsci = models.CharField(db_column='agriculturalsci', max_length=5, blank=True, null=True)  # Field name made lowercase.
    electricaldraugting = models.CharField(db_column='electricaldraugting', max_length=5, blank=True, null=True)  # Field name made lowercase.
    electricalinstallation = models.CharField(db_column='electricalinstallation', max_length=5, blank=True, null=True)  # Field name made lowercase.
    electricalengnsci = models.CharField(db_column='electricalengnsci', max_length=5, blank=True, null=True)  # Field name made lowercase.
    elimuyadinikiislam = models.CharField(db_column='elimuyadinikiislam', max_length=5, blank=True, null=True)  # Field name made lowercase.
    fineart = models.CharField(db_column='fineart', max_length=5, blank=True, null=True)  # Field name made lowercase.
    arabiclanguage = models.CharField(db_column='arabiclanguage', max_length=5, blank=True, null=True)  # Field name made lowercase.
    archtecturualdraught = models.CharField(db_column='archtecturualdraught', max_length=5, blank=True, null=True)  # Field name made lowercase.
    brickworkmasonary = models.CharField(db_column='brickworkmasonary', max_length=5, blank=True, null=True)  # Field name made lowercase.
    buildingconstruction = models.CharField(db_column='buildingconstruction', max_length=5, blank=True, null=True)  # Field name made lowercase.
    carpentryjoinery = models.CharField(db_column='carpentryjoinery', max_length=5, blank=True, null=True)  # Field name made lowercase.
    engineeringsci = models.CharField(db_column='engineeringsci', max_length=5, blank=True, null=True)  # Field name made lowercase.
    fittingturning = models.CharField(db_column='fittingturning', max_length=5, blank=True, null=True)  # Field name made lowercase.
    foodnutrition = models.CharField(db_column='foodnutrition', max_length=5, blank=True, null=True)  # Field name made lowercase.
    frenchlanguage = models.CharField(db_column='frenchlanguage', max_length=5, blank=True, null=True)  # Field name made lowercase.
    computerstudies = models.CharField(db_column='computerstudies', max_length=5, blank=True, null=True)  # Field name made lowercase.
    plumbing = models.CharField(db_column='plumbing', max_length=5, blank=True, null=True)  # Field name made lowercase.
    music = models.CharField(db_column='music', max_length=5, blank=True, null=True)  # Field name made lowercase.
    literatureenglish = models.CharField(db_column='literatureenglish', max_length=5, blank=True, null=True)  # Field name made lowercase.
    mechanicaldraughting = models.CharField(db_column='mechanicaldraughting', max_length=5, blank=True, null=True)  # Field name made lowercase.
    motorvehiclemech = models.CharField(db_column='motorvehiclemech', max_length=5, blank=True, null=True)  # Field name made lowercase.
    paintingsignwriting = models.CharField(db_column='paintingsignwriting', max_length=5, blank=True, null=True)  # Field name made lowercase.
    physicaleducation = models.CharField(db_column='physicaleducation', max_length=5, blank=True, null=True)  # Field name made lowercase.
    radiotvserving = models.CharField(db_column='radiotvserving', max_length=5, blank=True, null=True)  # Field name made lowercase.
    surveying = models.CharField(db_column='surveying', max_length=5, blank=True, null=True)  # Field name made lowercase.
    textiledressmaking = models.CharField(db_column='textiledressmaking', max_length=5, blank=True, null=True)  # Field name made lowercase.
    theatreart = models.CharField(db_column='theatreart', max_length=5, blank=True, null=True)  # Field name made lowercase.
    weldingmetalfabrication = models.CharField(db_column='weldingmetalfabrication', max_length=5, blank=True, null=True)  # Field name made lowercase.
    workshoptech = models.CharField(db_column='workshoptech', max_length=5, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'olevel_student_performance_2016'


class Olevel_student_performance_2017(models.Model):
    #id = models.CharField(db_column='Id', max_length=20)  # Field name made lowercase.
    year = models.CharField(db_column='year', max_length=50)  # Field name made lowercase
    schoolcode = models.CharField(db_column='schoolcode', max_length=20)  # Field name made lowercase.
    schoolname = models.CharField(db_column='schoolname', max_length=50)  # Field name made lowercase.
    region = models.CharField(db_column='region', max_length=30)  # Field name made lowercase.
    studentno = models.CharField(db_column='studentno', max_length=20)  # Field name made lowercase.
    gender = models.CharField(db_column='gender', max_length=5)  # Field name made lowercase.
    division = models.CharField(db_column='division', max_length=5, blank=True, null=True)  # Field name made lowercase.
    civics = models.CharField(db_column='civics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    history = models.CharField(db_column='history', max_length=5, blank=True, null=True)  # Field name made lowercase.
    english = models.CharField(db_column='english', max_length=5, blank=True, null=True)  # Field name made lowercase.
    kiswahili = models.CharField(db_column='kiswahili', max_length=5, blank=True, null=True)  # Field name made lowercase.
    geography = models.CharField(db_column='geography', max_length=5, blank=True, null=True)  # Field name made lowercase.
    bibleknowledge = models.CharField(db_column='bibleknowledge', max_length=5, blank=True, null=True)  # Field name made lowercase.
    basicmathematics = models.CharField(db_column='basicmathematics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    additionalmathematics = models.CharField(db_column='additionalmathematics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    biology = models.CharField(db_column='biology', max_length=5, blank=True, null=True)  # Field name made lowercase.
    physics = models.CharField(db_column='physics', max_length=5, blank=True, null=True)  # Field name made lowercase.
    chemistry = models.CharField(db_column='chemistry', max_length=5, blank=True, null=True)  # Field name made lowercase.
    bookkeeping = models.CharField(db_column='bookkeeping', max_length=5, blank=True, null=True)  # Field name made lowercase.
    commerce = models.CharField(db_column='commerce', max_length=5, blank=True, null=True)  # Field name made lowercase.
    agriculturalsci = models.CharField(db_column='agriculturalsci', max_length=5, blank=True, null=True)  # Field name made lowercase.
    electricaldraugting = models.CharField(db_column='electricaldraugting', max_length=5, blank=True, null=True)  # Field name made lowercase.
    electricalinstallation = models.CharField(db_column='electricalinstallation', max_length=5, blank=True, null=True)  # Field name made lowercase.
    electricalengnsci = models.CharField(db_column='electricalengnsci', max_length=5, blank=True, null=True)  # Field name made lowercase.
    elimuyadinikiislam = models.CharField(db_column='elimuyadinikiislam', max_length=5, blank=True, null=True)  # Field name made lowercase.
    fineart = models.CharField(db_column='fineart', max_length=5, blank=True, null=True)  # Field name made lowercase.
    arabiclanguage = models.CharField(db_column='arabiclanguage', max_length=5, blank=True, null=True)  # Field name made lowercase.
    archtecturualdraught = models.CharField(db_column='archtecturualdraught', max_length=5, blank=True, null=True)  # Field name made lowercase.
    brickworkmasonary = models.CharField(db_column='brickworkmasonary', max_length=5, blank=True, null=True)  # Field name made lowercase.
    buildingconstruction = models.CharField(db_column='buildingconstruction', max_length=5, blank=True, null=True)  # Field name made lowercase.
    carpentryjoinery = models.CharField(db_column='carpentryjoinery', max_length=5, blank=True, null=True)  # Field name made lowercase.
    engineeringsci = models.CharField(db_column='engineeringsci', max_length=5, blank=True, null=True)  # Field name made lowercase.
    fittingturning = models.CharField(db_column='fittingturning', max_length=5, blank=True, null=True)  # Field name made lowercase.
    foodnutrition = models.CharField(db_column='foodnutrition', max_length=5, blank=True, null=True)  # Field name made lowercase.
    frenchlanguage = models.CharField(db_column='frenchlanguage', max_length=5, blank=True, null=True)  # Field name made lowercase.
    computerstudies = models.CharField(db_column='computerstudies', max_length=5, blank=True, null=True)  # Field name made lowercase.
    plumbing = models.CharField(db_column='plumbing', max_length=5, blank=True, null=True)  # Field name made lowercase.
    music = models.CharField(db_column='music', max_length=5, blank=True, null=True)  # Field name made lowercase.
    literatureenglish = models.CharField(db_column='literatureenglish', max_length=5, blank=True, null=True)  # Field name made lowercase.
    mechanicaldraughting = models.CharField(db_column='mechanicaldraughting', max_length=5, blank=True, null=True)  # Field name made lowercase.
    motorvehiclemech = models.CharField(db_column='motorvehiclemech', max_length=5, blank=True, null=True)  # Field name made lowercase.
    paintingsignwriting = models.CharField(db_column='paintingsignwriting', max_length=5, blank=True, null=True)  # Field name made lowercase.
    physicaleducation = models.CharField(db_column='physicaleducation', max_length=5, blank=True, null=True)  # Field name made lowercase.
    radiotvserving = models.CharField(db_column='radiotvserving', max_length=5, blank=True, null=True)  # Field name made lowercase.
    surveying = models.CharField(db_column='surveying', max_length=5, blank=True, null=True)  # Field name made lowercase.
    textiledressmaking = models.CharField(db_column='textiledressmaking', max_length=5, blank=True, null=True)  # Field name made lowercase.
    theatreart = models.CharField(db_column='theatreart', max_length=5, blank=True, null=True)  # Field name made lowercase.
    weldingmetalfabrication = models.CharField(db_column='weldingmetalfabrication', max_length=5, blank=True, null=True)  # Field name made lowercase.
    workshoptech = models.CharField(db_column='workshoptech', max_length=5, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'olevel_student_performance_2017'


class Olevel_overall_performance(models.Model):
    #id = models.CharField(db_column='Id', max_length=20)  # Field name made lowercase.
    year = models.CharField(db_column='year', max_length=50)  # Field name made lowercase
    schoolcode = models.CharField(db_column='schoolcode', max_length=20)  # Field name made lowercase.
    schoolname = models.CharField(db_column='schoolname', max_length=50)  # Field name made lowercase.
    gender = models.CharField(db_column='gender', max_length=2)  # Field name made lowercase.
    gendertotal = models.IntegerField(db_column='gendertotal', blank=True, null=True)  # Field name made lowercase.
    division_i = models.IntegerField(db_column='division_i', blank=True, null=True)  # Field name made lowercase.
    division_ii = models.IntegerField(db_column='division_ii', blank=True, null=True)  # Field name made lowercase.
    division_iii = models.IntegerField(db_column='division_iii', blank=True, null=True)  # Field name made lowercase.
    division_iv = models.IntegerField(db_column='division_iv', blank=True, null=True)  # Field name made lowercase.
    division_0 = models.IntegerField(db_column='division_0', blank=True, null=True)  # Field name made lowercase.
    abswithheld = models.IntegerField(db_column='abswithheld', blank=True, null=True) # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'olevel_overall_performance'


class Alevel_overall_performance(models.Model):
    #id = models.CharField(db_column='Id', max_length=20)  # Field name made lowercase.
    year = models.CharField(db_column='year', max_length=50)  # Field name made lowercase
    schoolcode = models.CharField(db_column='schoolcode', max_length=20)  # Field name made lowercase.
    schoolname = models.CharField(db_column='schoolname', max_length=50)  # Field name made lowercase.
    gender = models.CharField(db_column='gender', max_length=2)  # Field name made lowercase.
    gendertotal = models.IntegerField(db_column='gendertotal', blank=True, null=True)  # Field name made lowercase.
    division_i = models.IntegerField(db_column='division_i', blank=True, null=True)  # Field name made lowercase.
    division_ii = models.IntegerField(db_column='division_ii', blank=True, null=True)  # Field name made lowercase.
    division_iii = models.IntegerField(db_column='division_iii', blank=True, null=True)  # Field name made lowercase.
    division_iv = models.IntegerField(db_column='division_iv', blank=True, null=True)  # Field name made lowercase.
    division_0 = models.IntegerField(db_column='division_0', blank=True, null=True)  # Field name made lowercase.
    abswithheld = models.IntegerField(db_column='abswithheld', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'alevel_overall_performance'


class Olevel_subject_performance(models.Model):
    #id = models.CharField(db_column='Id', max_length=20)  # Field name made lowercase.
    year = models.CharField(db_column='year', max_length=50)  # Field name made lowercase.
    schoolcode = models.CharField(db_column='schoolcode', max_length=20)  # Field name made lowercase.
    schoolname = models.CharField(db_column='schoolname', max_length=50)  # Field name made lowercase.
    region = models.CharField(db_column='region', max_length=30, blank=True, null=True)  # Field name made lowercase.
    gpa = models.CharField(db_column='gpa', max_length=7, blank=True, null=True)  # Field name made lowercase.
    category = models.CharField(db_column='category', max_length=50, blank=True, null=True)  # Field name made lowercase.
    regranking = models.CharField(db_column='regranking', max_length=13, blank=True, null=True)  # Field name made lowercase.
    natranking = models.CharField(db_column='natranking', max_length=14, blank=True, null=True)  # Field name made lowercase.
    subjectcode = models.CharField(db_column='subjectcode', max_length=5, blank=True, null=True)  # Field name made lowercase.
    subjectname = models.CharField(db_column='subjectname', max_length=50, blank=True, null=True)  # Field name made lowercase.
    subjectgpa = models.CharField(db_column='subjectgpa', max_length=8, blank=True, null=True)  # Field name made lowercase.
    subjectregranking = models.CharField(db_column='subjectregranking', max_length=5, blank=True, null=True)  # Field name made lowercase.
    subjectnatranking = models.CharField(db_column='subjectnatranking', max_length=7, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'olevel_subject_performance'


class Alevel_subject_performance(models.Model):
    #id = models.CharField(db_column='Id', max_length=20)  # Field name made lowercase.
    year = models.CharField(db_column='year', max_length=50)  # Field name made lowercase.
    schoolcode = models.CharField(db_column='schoolcode', max_length=20)  # Field name made lowercase.
    schoolname = models.CharField(db_column='schoolname', max_length=50)  # Field name made lowercase.
    region = models.CharField(db_column='region', max_length=30, blank=True, null=True)  # Field name made lowercase.
    gpa = models.CharField(db_column='gpa', max_length=7, blank=True, null=True)  # Field name made lowercase.
    category = models.CharField(db_column='category', max_length=50, blank=True, null=True)  # Field name made lowercase.
    regranking = models.CharField(db_column='regranking', max_length=6, blank=True, null=True)  # Field name made lowercase.
    natranking = models.CharField(db_column='natranking', max_length=7, blank=True, null=True)  # Field name made lowercase.
    subjectcode = models.CharField(db_column='subjectcode', max_length=5, blank=True, null=True)  # Field name made lowercase.
    subjectname = models.CharField(db_column='subjectname', max_length=50, blank=True, null=True)  # Field name made lowercase.
    subjectgpa = models.CharField(db_column='subjectgpa', max_length=8, blank=True, null=True)  # Field name made lowercase.
    subjectregranking = models.CharField(db_column='subjectregranking', max_length=5, blank=True, null=True)  # Field name made lowercase.
    subjectnatranking = models.CharField(db_column='subjectnatranking', max_length=7, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'alevel_subject_performance'


# class DjangoAdminLog(models.Model):
#     action_time = models.DateTimeField()
#     object_id = models.TextField(blank=True, null=True)
#     object_repr = models.CharField(max_length=200)
#     action_flag = models.SmallIntegerField()
#     change_message = models.TextField()
#     content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)
#
#     class Meta:
#         managed = False
#         db_table = 'django_admin_log'
#
#
# class DjangoContentType(models.Model):
#     app_label = models.CharField(max_length=100)
#     model = models.CharField(max_length=100)
#
#     class Meta:
#         managed = False
#         db_table = 'django_content_type'
#         unique_together = (('app_label', 'model'),)
#
#
# class DjangoMigrations(models.Model):
#     app = models.CharField(max_length=255)
#     name = models.CharField(max_length=255)
#     applied = models.DateTimeField()
#
#     class Meta:
#         managed = False
#         db_table = 'django_migrations'
#
#
# class DjangoSession(models.Model):
#     session_key = models.CharField(primary_key=True, max_length=40)
#     session_data = models.TextField()
#     expire_date = models.DateTimeField()
#
#     class Meta:
#         managed = False
#         db_table = 'django_session'
