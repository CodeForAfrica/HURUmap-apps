from django.db import models
from django.contrib.postgres.fields import ArrayField, JSONField

from wazimap.models import Geography, DBTable, FieldTable, FieldTable

class DbTableChart(models.Model):
    CHART_OPTIONS = (
        ('column', 'Column'),
        ('histogram', 'Histogram'),
        ('line', 'Line'),
        ('grouped_column', 'Grouped Column'),
        ('pie', 'Pie Chart')
    )
    db_table = models.ForeignKey(DBTable, on_delete=models.CASCADE)
    field_table = models.ForeignKey(FieldTable, on_delete=models.CASCADE)
    chart = models.CharField(max_length=32, null=False, choices=CHART_OPTIONS)
    fields = ArrayField(models.CharField(max_length=150, null=False, unique=True), help_text="Comma-separated fields to be included in chart. Choose one field for one Column, Histogram or Pie. And Choose two fields for grouped column")

    def clean(self):
        num_field = len(self.fields)
        if (num_field > 1 and self.chart != 'grouped_column') or \
            num_field > 2 and (num_field < 2 and self.chart == 'grouped_column'):
            raise ValidationError("Chart type do not map to fields provided")

        for field in self.fields:
            if not field in self.field_table:
                raise ValidationError("Field not in wazimap table field")

    def __str__(self):
        return 'chart-%s-%s-%s' % (self.chart, self.db_table, ('_'.join(self.fields)))
