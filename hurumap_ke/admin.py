from django.contrib import admin

from .models import DbTableChart

class DbTableChartAdmin(admin.ModelAdmin):
    list_display = ('db_table', 'field_table', 'chart', 'fields')

admin.site.register(DbTableChart, DbTableChartAdmin)
