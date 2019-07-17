import json
import logging

from django import forms
from django.conf import settings
from django.db import models
from django.contrib.postgres.fields import ArrayField
from django.utils.text import slugify
from wazimap.models import Geography, DBTable, FieldTable, FieldTable
from modelcluster.fields import ParentalKey
from modelcluster.models import ClusterableModel
from wagtail.admin.edit_handlers import FieldPanel, InlinePanel
from wagtail.contrib.settings.models import BaseSetting, register_setting
from wagtail.core import blocks
from wagtail.core.fields import RichTextField, StreamField
from wagtail.snippets.models import register_snippet

logger = logging.getLogger(__name__)

CHART_TYPES = (
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

@register_snippet
class ChartSections(ClusterableModel):
    name = models.CharField(default="Default", max_length=1024,
        help_text="Provide a unique name for list of charts")

    panels = [
        FieldPanel('name'),
        InlinePanel('charts', label='Charts'),
    ]

    def __str__(self):
        return '{}'.format(self.name)

class Charts(models.Model):
    table = models.ForeignKey(DBTable, on_delete=models.CASCADE)
    chart_type = models.CharField(max_length=32, choices=CHART_TYPES, null=False)
    fields = ArrayField(models.CharField(max_length=150, null=False, unique=True), help_text="Comma-separated fields to be included in chart. Choose one field for one Column, Histogram or Pie. And Choose two fields for grouped column")
    title = models.CharField(max_length=500, null=True, blank=True, help_text="Descriptive title of this chart")
    source = models.CharField(max_length=500, null=True, blank=True, help_text="Data source")
    source_link = models.URLField(max_length=500, null=True, blank=True, help_text="Link to data source")
    stat_type = models.CharField(max_length=32, null=True, blank=True, choices=STAT_TYPES, help_text="Default is Number")
    group_by = models.CharField(max_length=120, null=True, blank=True, help_text="You have choose grouped column chart, which field should the chart be grouped by?")
    parent = ParentalKey(ChartSections, related_name='charts')

    panels = [
        FieldPanel('table'),
        FieldPanel('fields'),
        FieldPanel('chart_type'),
        FieldPanel('title'),
        FieldPanel('source'),
        FieldPanel('source_link'),
        FieldPanel('stat_type'),
        FieldPanel('group_by'),
    ]

    def __str__(self):
        return 'chart-%s-%s-%s' % (self.chart_type, self.table.name, ('-'.join(self.fields)))

    def as_dict(self):
        return {
            'name': str(self),
            'title': self.chart_title,
            'field': ','.join(self.fields),
            'stat_type': self.chart_stat_type,
            'table_id': self.db_table.name,
            'chart_type': self.chart_type,
            'source': self.chart_source,
            'source_link': self.chart_source_link,
            'group_by': self.group_by
        }
