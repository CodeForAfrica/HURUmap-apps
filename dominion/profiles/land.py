# -*- coding: utf-8 -*-
import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_datatable
from wazimap.data.utils import get_session, merge_dicts, get_stat_data, dataset_context
from django.conf import settings
from collections import OrderedDict
from wazimap.data.base import Base
from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast
from wazimap.models.data import DataNotFound

from dominion.data.utils import get_primary_release_year_per_geography


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
METADATA = {
    'kenya': {
        'country': {
            "total_population": {
                "source": {
                    "link": "https://data.worldbank.org/indicator/SP.POP.TOTL?locations=KE",
                    "title": "WorldBank"
                }
            }
        },
    },
    'south africa': {
        "country": {
            "total_population": {
                "source": {
                    "link": "http://cs2016.statssa.gov.za/wp-content/uploads/2016/07/NT-30-06-2016-RELEASE-for-CS-2016-_Statistical-releas_1-July-2016.pdf",
                    "title": "Statistics South Africa"
                }
            }
        }
    }
}

def get_profile(geo, profile_name, request):
    session = get_session()
    (country, level) = get_country_and_level(geo)
    year = request.GET.get('release',get_primary_release_year_per_geography(geo))
    data = {}
    try:
        data['demographics'] = get_demographics(geo, session, country, level, year)
        data['excisions'] = get_land_excisions(geo, session)
        return data
    finally:
        session.close()


def get_country_and_level(geo):
    level = geo.geo_level.lower()
    country = ''
    if level != 'continent':
        country = geo.name.lower() \
            if level == 'country' \
            else geo.ancestors()[-1].name.lower()

    return (country, level)


def get_demographics(geo, session, country, level, year):
    population_data = get_population(geo, session, country, level, year)
    demographics_data = dict(list(population_data.items()))
    demographics_data['is_missing'] = population_data.get('is_missing')

    return demographics_data


def get_land_excisions(geo, session):
    excisions_dist = LOCATIONNOTFOUND
    with dataset_context(year='2016'):
        try:
            excisions_dist, _ = get_stat_data(['excisions'], geo, session)
        except Exception:
            pass

    return {
        'is_missing': excisions_dist.get('is_missing'),
        'excisions_dist': excisions_dist
    }


def get_population(geo, session, country, level, year):
    group_dist, total_population_group = LOCATIONNOTFOUND, 0
    residence_dist, total_population_residence = LOCATIONNOTFOUND, 0
    db_table = db_column_name = 'population_group_' + str(year)
    try:
        group_dist, total_population_group = get_stat_data(
            db_table, geo, session, table_fields=[db_column_name])
    except Exception:
        pass


    try:
        db_table = db_column_name = 'population_residence_' + str(year)
        residence_dist, total_population_residence = get_stat_data(
            db_table, geo, session,
            table_fields=[db_column_name])
    except Exception:
        pass

    total_population = 0
    is_missing = group_dist.get('is_missing') and \
                 residence_dist.get('is_missing')
    if not is_missing:
        total_population = total_population_group if total_population_group > 0 else total_population_residence
    total_population_dist = _create_single_value_dist(
        'People', total_population)

    demographics_data = {
        'is_missing': is_missing,
        'total_population': _add_metadata_to_dist(total_population_dist,
                                                  'total_population_dist',
                                                  country, level),
    }

    if geo.square_kms:
        demographics_data['population_density'] = {
            'name': "people per square kilometre",
            'values': {"this": total_population / geo.square_kms},
        }
    return demographics_data

def _create_single_value_dist(name='', value=0):
    return {
        'name': name,
        'numerators': {'this': value},
        'values': {'this': value},
    }
def _add_metadata_to_dist(dist, dist_name, country, level):
    if not dist.get('is_missing'):
        country_metadata = METADATA.get(country)
        if country_metadata:
            level_metadata = country_metadata.get(level)
            # Revert to 'country' level metadata if level-specific metadata is missing
            level_metadata = level_metadata \
                if level_metadata or level == 'country' \
                else country_metadata.get('country')
            if level_metadata:
                metadata = level_metadata.get(dist_name)
                if metadata:
                    # Only update relevant keys, don't replace the whole thing
                    dist['metadata'].update(metadata)
                    print("\n\n\n\n\n\n\n\n\n")
                    print(dist)
    return dist
