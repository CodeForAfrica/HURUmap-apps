# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals
from django.contrib.postgres.fields import HStoreField

from django.db import models

class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSite(models.Model):
    domain = models.CharField(unique=True, max_length=100)
    name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'django_site'

class UniversityFinder(models.Model):
    #id = models.IntegerField(blank=True, null=True)
    university_name = models.CharField(max_length=100, blank=True, null=True)
    course_name = models.CharField(max_length=200, blank=True, null=True)
    major_name = models.CharField(max_length=500, blank=True, null=True)
    compulsory_alevel = HStoreField()#models.TextField(blank=True, null=True)  # This field type is a guess.
    compulsory_olevel = HStoreField()#models.TextField(blank=True, null=True)  # This field type is a guess.
    other_alevel = HStoreField()#models.TextField(blank=True, null=True)  # This field type is a guess.
    other_olevel = HStoreField()#models.TextField(blank=True, null=True)  # This field type is a guess.
    total_point = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'university_finder'
