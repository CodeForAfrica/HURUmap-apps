from django.utils.html import format_html
from django.templatetags.static import static
from django.utils.safestring import mark_safe
from wazimap.models import FieldTable

from wagtail.core import hooks
import json

@hooks.register('insert_global_admin_js')
def global_admin_js():
    #load fieldtable models here
    fieldtables = json.dumps(list(FieldTable.objects.values("name", "fields")))

    return format_html(
        '<script> window.fieldtables ={0}</script>\n<script src="{1}"></script>', mark_safe(fieldtables),
        static('js/charts.js')
    )


