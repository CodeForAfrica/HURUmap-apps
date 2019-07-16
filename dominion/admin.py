from django.contrib import admin
from .models import Chart, ChartSection
from django import forms
from django.db.models import F, Func
from wazimap.models import DBTable, FieldTable
from django.utils.html import format_html
from django.forms.models import BaseInlineFormSet

import json


class CustomChoiceField(forms.ModelChoiceField):
    def label_from_instance(self, obj):
        return obj.name


class ChartChoiceField(forms.ModelChoiceField):
    def label_from_instance(self, obj):
        return format_html('<i class="fa {}" aria-hidden="true"></i> {}', obj.classname, obj.name)


class ChartForm(forms.ModelForm):
    CHART_TYPES = (
        ('', '----------'),
        ('column', 'Column'),
        ('histogram', 'Histogram'),
        ('line', 'Line'),
        ('grouped_column', 'Grouped Column'),
        ('pie', 'Pie'),
    )

    STAT_TYPES = (
       ('', '----------'),
       ('number', 'Number'),
       ('percentage', 'Percentage'),
    )

    GROUP_BY = (
    ('', '-----------'),
    )

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields["db_table"].widget.attrs.update(
            {
                "data-fields": json.dumps(
                    list(FieldTable.objects.values("name", "fields"))
                )
            }
        )
        self.fields["fields"].choices = tuple(
            map(
                lambda x: (x, x),
                list(
                    set(
                        FieldTable.objects.annotate(
                            table_fields=Func(F("fields"), function="UNNEST")
                        ).values_list("table_fields", flat=True)
                    )
                ),
            )
        )

    db_table = CustomChoiceField(
        widget=forms.Select(attrs={"id": "chart-table", "data-fields": "{}"}),
        queryset=DBTable.objects.all(),
    )

    fields = forms.MultipleChoiceField(
        widget=forms.CheckboxSelectMultiple(attrs={"id": "chart-table-field"})
    )

    chart_type = forms.ChoiceField(
        choices=CHART_TYPES, widget=forms.Select(attrs={"id": "chart-type"})
    )

    chart_stat_type = forms.ChoiceField(choices=STAT_TYPES)

    group_by = forms.ChoiceField(
        widget=forms.Select(attrs={"id": "group_by"}), choices=GROUP_BY,
    )

    class Meta:
        model = Chart
        fields = ["db_table", "fields", "chart_type", "group_by", "chart_stat_type", "chart_title", "chart_source", "chart_source_link"]

    class Media:
        js = ("js/charts.js",)


class ChartAdmin(admin.ModelAdmin):
    form = ChartForm
    list_display = ("db_table", "fields", "chart_type", "group_by", "chart_stat_type", "chart_title", "chart_source", "chart_source_link")


class ChartInline(admin.StackedInline):
    model = Chart
    form = ChartForm
    extra = 0
    min_num = 1


class ChartSectionAdmin(admin.ModelAdmin):
    inlines = [
        ChartInline,
    ]

admin.site.register(ChartSection, ChartSectionAdmin)
