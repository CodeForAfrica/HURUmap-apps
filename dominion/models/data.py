from django.db import models
from django.contrib.postgres.fields import ArrayField, JSONField
from django.core.exceptions import ValidationError

from wazimap.models import Geography, DBTable, FieldTable, FieldTable


class ChartSection(models.Model):
    """ collection of chart tables
    """
    name = models.CharField(max_length=100, null=False, blank=False, unique=True, help_text="Name for section profile")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Chart Section '
        verbose_name_plural = 'Chart Sections'
        ordering = ['name']

class Chart(models.Model):
    db_table = models.ForeignKey(DBTable, on_delete=models.CASCADE)
    chart_type = models.CharField(max_length=32, null=False)
    fields = ArrayField(models.CharField(max_length=150, null=False, unique=True), help_text="Comma-separated fields to be included in chart. Choose one field for one Column, Histogram or Pie. And Choose two fields for grouped column")
    section = models.ForeignKey(ChartSection, related_name='sections', null=True, on_delete=models.CASCADE)
    chart_title = models.CharField(max_length=500, null=True, blank=True, help_text="Descriptive title of this chart")
    chart_source = models.CharField(max_length=500, null=True, blank=True, help_text="Data source")
    chart_source_link = models.CharField(max_length=500, null=True, blank=True, help_text="Link to data source")
    chart_stat_type = models.CharField(max_length=32, null=True, blank=True, help_text="Default is Number")
    group_by = models.CharField(max_length=120, null=True, blank=True, help_text="You have choose grouped column chart, which field should the chart be grouped by?")

    # def clean(self):
    #     num_field = len(self.fields)
    #     if num_field > 1 and self.chart_type != 'grouped_column':
    #         raise ValidationError("Only one field parameter is needed for this chart")
    #     if num_field > 2:
    #         raise ValidationError("Charts can use one or two field parameters")
    #     if num_field != 2 and self.chart_type == 'grouped_column':
    #         raise ValidationError("Grouped Column must have two field variable")

    def __str__(self):
        return 'chart-%s-%s-%s' % (self.chart_type, self.db_table.name, ('_'.join(self.fields)))

    def as_dict(self):
        return {
            'name': str(self),
            'title': self.chart_title,
            'field': ','.join(self.fields),
            'stat_type': self.chart_stat_type,
            'table_id': self.db_table.name,
            'chart_type': self.chart_type,
            'section': str(self.section),
            'source': self.chart_source,
            'source_link': self.chart_source_link,
            'group_by': self.group_by
        }
