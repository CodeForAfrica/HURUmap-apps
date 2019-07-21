import json
import logging

from django import forms
from django.db.models import F, Func
from django.conf import settings
from django.db import models
from django.contrib.postgres.fields import ArrayField
from django.utils.text import slugify
from wazimap.models import Geography, DBTable, FieldTable, FieldTable
from modelcluster.fields import ParentalKey
from wagtail.core import blocks
from modelcluster.models import ClusterableModel
from wagtail.admin.edit_handlers import FieldPanel, InlinePanel
from wagtail.admin.forms import WagtailAdminModelForm
from wagtail.contrib.settings.models import BaseSetting, register_setting
from wagtail.core import blocks
from wagtail.core.fields import RichTextField, StreamField
from wagtail.snippets.models import register_snippet
from wagtail.contrib.modeladmin.options import ModelAdmin
from wagtail.admin.forms import WagtailAdminModelForm

logger = logging.getLogger(__name__)

CHART_TYPES = (
        ('', '-----------'),
        ('column', 'Column'),
        ('histogram', 'Histogram'),
        ('line', 'Line'),
        ('grouped_column', 'Grouped Column'),
        ('pie', 'Pie'),
    )

STAT_TYPES = (
       ('number', 'Number'),
       ('percentage', 'Percentage'),
    )

class CustomChoiceField(forms.ModelChoiceField):
    def label_from_instance(self, obj):
        return obj.name

class CustomChartForm(WagtailAdminModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.fields["table"].widget.attrs.update(
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

        self.fields["group_by"].choices = self.fields["fields"].choices

    table = CustomChoiceField(
        widget=forms.Select(attrs={"id": "chart-table", "data-fields": "{}"}),
        queryset=DBTable.objects.all(),
    )

    fields = forms.MultipleChoiceField(
        widget=forms.CheckboxSelectMultiple(attrs={"id": "chart-fields"})
    )

    chart_type = forms.ChoiceField(
        widget=forms.Select(attrs={"id": "chart-type"}),
        choices=CHART_TYPES
    )

    group_by = forms.ChoiceField(
        widget=forms.Select(attrs={"id": "group_by"}),
    )

    class Media:
        js = ("js/charts.js",)


@register_snippet
class ChartSection(ClusterableModel):
    name = models.CharField(default="Default Section",unique=True, max_length=1024,
        help_text="Provide a unique name for profile section")

    panels = [
        FieldPanel('name'),
    ]

    def __str__(self):
        return '{}'.format(self.name)

@register_snippet
class Chart(models.Model):
    table = models.ForeignKey(DBTable, to_field='name', on_delete=models.CASCADE)
    chart_type = models.CharField(max_length=32, null=False)
    fields = ArrayField(models.CharField(max_length=150, null=False, unique=True))
    title = models.CharField(max_length=500, null=True, blank=True, help_text="Descriptive title of this chart")
    source = models.CharField(max_length=500, null=True, blank=True, help_text="Data source")
    source_link = models.URLField(max_length=500, null=True, blank=True, help_text="Link to data source")
    stat_type = models.CharField(max_length=32, null=True, blank=True, choices=STAT_TYPES, help_text="Default is Number")
    group_by = models.CharField(max_length=120, null=True, blank=True)
    section = models.ForeignKey(ChartSection, to_field='name', on_delete=models.CASCADE, help_text="Select profile section where the chart belongs to")

    panels = [
        FieldPanel('table'),
        FieldPanel('fields'),
        FieldPanel('chart_type'),
        FieldPanel('title'),
        FieldPanel('section'),
        FieldPanel('source'),
        FieldPanel('source_link'),
        FieldPanel('stat_type'),
        FieldPanel('group_by'),
    ]
    base_form_class = CustomChartForm

    def __str__(self):
        return '%s Chart for table %s using %s field(s)' % (self.chart_type.capitalize(), self.table.name, ('-'.join(self.fields)))

    def as_dict(self):
        return {
            'name': str(self),
            'title': self.title,
            'field': ','.join(self.fields),
            'stat_type': self.stat_type,
            'table_id': self.table.name,
            'chart_type': self.chart_type,
            'source': self.source,
            'source_link': self.source_link,
            'group_by': self.group_by,
            'section': str(self.section)
        }
