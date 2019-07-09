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
    field_table = models.ForeignKey(FieldTable, on_delete=models.CASCADE)
    chart_type = models.CharField(max_length=32, null=False)
    fields = ArrayField(models.CharField(max_length=150, null=False, unique=True), help_text="Comma-separated fields to be included in chart. Choose one field for one Column, Histogram or Pie. And Choose two fields for grouped column")
    chart_title = models.CharField(max_length=100, null=True)
    section = models.ForeignKey(ChartSection, related_name='sections', null=True, on_delete=models.CASCADE)

    def clean(self):
        num_field = len(self.fields)
        if num_field > 1 and self.chart_type != 'grouped_column':
            raise ValidationError("Only one field parameter is needed for this chart")
        if num_field > 2:
            raise ValidationError("Charts can use one or two field parameters")
        if num_field != 2 and self.chart_type == 'grouped_column':
            raise ValidationError("Grouped Column must have two field variable")

        #check if provided chart field is among the table fields on wazimap
        for field in self.fields:
            if not field in str(self.field_table):
                raise ValidationError("Field not in wazimap table field")

    def __str__(self):
        return 'chart-%s-%s-%s' % (self.chart_type, self.db_table.name, ('_'.join(self.fields)))

    def as_dict(self):
        return {
            'name': str(self),
            'title': self.chart_title,
            'table_fields': str(self.field_table),
            'field': '_'.join(self.fields),
            'table_id': self.db_table.name,
            'chart_type': self.chart_type,
            'section': str(self.section),
        }
