# -*- coding: utf-8 -*-
import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_datatable
from wazimap.data.utils import get_session, calculate_median, \
merge_dicts, get_stat_data, get_objects_by_geo, group_remainder, LocationNotFound
from django.conf import settings
from collections import OrderedDict
from wazimap.data.base import Base
from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast

log = logging.getLogger(__name__)
# ensure tables are loaded
import dominion.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

PROFILE_SECTIONS = (
    'demographics',  # population group
)
LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }

def get_land_profile(geo, profile_name, request):
    session = get_session()

    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        data = {}

        sections = list(PROFILE_SECTIONS)

        for section in sections:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo, session)

                # get profiles for comparative geometries
                if not data[section]['is_missing']:
                    for comp_geo in comparative_geos:
                            try:
                                merge_dicts(
                                data[section], func(
                                comp_geo, session), comp_geo.geo_level)
                            except KeyError as e:
                                msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                                geo.geoid, section, comp_geo.geoid, e)
                                log.fatal(msg, exc_info=e)
                                raise ValueError(msg)
        return data

    finally:
        session.close()


def get_demographics_profile(geo, session):
    pop_dist_data = LOCATIONNOTFOUND
    total_pop = 0
    try:
        pop_dist_data, total_pop = get_stat_data(
            ['population group'], geo, session)
    except LocationNotFound:
        pass

    return {
        'total_population': {
            "name": "People",
            "values": {"this": total_pop},
        },
        'is_missing': pop_dist_data.get('is_missing', False)

    }