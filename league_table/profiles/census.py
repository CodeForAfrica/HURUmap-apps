import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields
from django.conf import settings
from wazimap.data.utils import (LocationNotFound, calculate_median, get_session, get_stat_data,
                                merge_dicts, get_objects_by_geo, group_remainder)

__author__ = 'timothy'

log = logging.getLogger(__name__)

# ensure tables are loaded
import league_table.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}

def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['schools'] = get_schools_profile(geo, session)
        return data

    finally:
        session.close()

def get_schools_profile(geo, session):
    # ownership status
    schools_dist, total_schools = get_stat_data(['ownership'], geo, session)

    total_private = 0.0
    for data in schools_dist['PRIVATE'].itervalues():
        if 'numerators' in data:
            total_private += data['numerators']['this']

    return {
        'schools_distribution': schools_dist,
    }