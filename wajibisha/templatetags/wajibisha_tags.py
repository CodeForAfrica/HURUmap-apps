from __future__ import division
from django import template

register = template.Library()

@register.simple_tag
def value_or_zero(val):
    """
    Returns a 0 if the value is None
    :param val:
    :return:
    """
    if not val:
        return 0
    else:
        return val

@register.simple_tag
def get_percentage(val, total):
    try:
        result = round(val/total, 3) * 100
        return str(result) + '%'
    except:
        return '0.0%'
