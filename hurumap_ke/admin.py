from django.contrib import admin

from .models import DbTableChart

from django import forms

from django.db.models import F, Func

from wazimap.models import Geography, DBTable, FieldTable, FieldTable

import json


class CustomChoiceField(forms.ModelChoiceField):
    def label_from_instance(self, obj):
        return obj.name


class ChartsForm(forms.ModelForm):
    db_table = CustomChoiceField(
        widget=forms.Select(attrs={
                            'id': 'chart-table',
                            'data-fields': json.dumps(
                                list(FieldTable.objects.values('name', 'fields'))
                            )}
                            ),
        queryset=DBTable.objects.all())
    fields = forms.MultipleChoiceField(
        widget=forms.CheckboxSelectMultiple(attrs={'id': 'chart-table-field'}),
        choices=tuple(map(lambda x: (x, x), list(set(FieldTable.objects
                                                     .annotate(table_fields=Func(F('fields'), function='UNNEST'))
                                                     .values_list('table_fields', flat=True))))))

    class Meta:
        model = DbTableChart
        fields = ['db_table', 'field_table', 'fields', 'chart']

    class Media:
        js = ('js/charts.js',)


class ChartsAdmin(admin.ModelAdmin):
    form = ChartsForm
    list_display = ('db_table', 'field_table', 'chart', 'fields')


admin.site.register(DbTableChart, ChartsAdmin)
