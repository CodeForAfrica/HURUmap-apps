# -*- coding: utf-8 -*-
import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_datatable
from wazimap.data.utils import get_session, merge_dicts, get_stat_data, dataset_context
from django.conf import settings
from collections import OrderedDict
from wazimap.data.base import Base
from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast
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


def get_profile(geo, profile_name, request):
    session = get_session()
    (country, level) = get_country_and_level(geo)
    year = request.GET.get('release',get_primary_release_year_per_geography(geo))
    data = {}
    try:
        data['demographics'] = get_demographics(geo, session, country, level, year)
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


def get_population(geo, session, country, level, year):
    group_dist, total_population_group = LOCATIONNOTFOUND, 0
    residence_dist, total_population_residence = LOCATIONNOTFOUND, 0
    db_table = db_column_name = 'population_group_' + str(year)
    try:
        group_dist, total_population_group = get_stat_data(
            db_table, geo, session, table_fields=[db_column_name])
    except Exception:
        pass
    except DataNotFound:
        pass
    except ValueError:
        pass

    try:
        db_table = db_column_name = 'population_residence_' + str(year)
        residence_dist, total_population_residence = get_stat_data(
            db_table, geo, session,
            table_fields=[db_column_name])
    except Exception:
        pass
    except DataNotFound:
        pass
    except ValueError:
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
        'total_population': total_population_dist
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
