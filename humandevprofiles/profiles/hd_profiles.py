from wazimap.data.utils import get_session, get_stat_data
from wazimap.data.utils import (LocationNotFound, get_session, get_stat_data,
                                merge_dicts)
from django.conf import settings
import logging
import json
import pprint

log = logging.getLogger(__name__)

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}


def get_profile(geo, profile_name, request):
    print 'getting profile'
    session = get_session()
    data = {}

    try:
        data['gni'] = get_gni_dist(geo, session)
        data['life_expectancy'] = get_life_expectancy(geo, session)
        data['demographics'] = get_population_stats(geo, session)
        return data
    finally:
        session.close()


def get_gni_dist(geo, session):
    try:
        gni_overview_dist, _ = get_stat_data('GNI_Year', geo, session,
                                             table_fields=['GNI_Year'],
                                             percent=False)

        # print gni_overview_dist.items()
        return {'gni': gni_overview_dist}

    except LocationNotFound:
        gni_overview_dist, _ = LOCATIONNOTFOUND, 0


def get_life_expectancy(geo, session):
    try:
        life_expectancy_dist, _ = get_stat_data('Life_Expectancy_Year', geo,
                                                session,
                                                table_fields=[
                                                    'Life_Expectancy_Year'],
                                                percent=False)

        return {'life_expectancy': life_expectancy_dist}

    except LocationNotFound:
        life_expectancy_dist, _ = LOCATIONNOTFOUND, 0


def get_population_stats(geo, session):
    try:
        population_dist, _ = get_stat_data('Population_Year', geo,
                                           session,
                                           table_fields=[
                                               'Population_Year'],
                                           percent=False)

        latest_pop = population_dist.get('2016')

        return {
            'population_dist': population_dist,
            'total_population': {
                'name': 'People',
                'values': {'this': latest_pop.get('values')['this']}
            }
        }

    except LocationNotFound:
        population_dist, _ = LOCATIONNOTFOUND, 0
