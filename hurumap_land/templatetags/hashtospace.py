from django import template

register = template.Library()

@register.filter
def hashtospace(value):
    return value.replace("_"," ")
