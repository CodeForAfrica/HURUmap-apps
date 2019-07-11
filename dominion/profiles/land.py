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
from dominion.models import Chart, ChartSection

from dominion.data.utils import get_primary_release_year_per_geography


log = logging.getLogger(__name__)
# ensure tables are loaded
import dominion.tables  # noqa

LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }


def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}
    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        charts = {}
        data['sections'] = [s.name for s in ChartSection.objects.all()]
        table_charts = [r.as_dict() for r in Chart.objects.all()]
        (country_code, level) = get_country_and_level(geo)
        available_releases = settings.HURUMAP.get('available_releases_years_per_country', {})

        #get available releases
        geo_available_releases = available_releases[country_code][level]

        for tablechart in table_charts:
            #loop through release year until there's data for that data context
            for release_year in geo_available_releases:
                charts[tablechart['name']] = get_table_profile_with_charts(geo, session, tablechart, release_year)

                for comp_geo in comparative_geos:
                    try:
                        merge_dicts(
                            charts[tablechart['name']], get_table_profile_with_charts(
                                comp_geo, session, tablechart, release_year), comp_geo.geo_level)
                    except KeyError as e:
                        msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                            geo.geoid, tablechart['name'], comp_geo.geoid, e)
                        log.fatal(msg, exc_info=e)
                        raise ValueError(msg)

                if not charts[tablechart['name']]['table_data'].get('is_missing'):
                    break
        data['charts'] = charts
        return data

    finally:
        session.close()

def get_country_and_level(geo):
    level = geo.geo_level.lower()
    country = ''
    if level != 'continent':
        country = geo.geo_code.lower() \
            if level == 'country' \
            else geo.ancestors()[-1].geo_code.lower()

    return (country, level)

        
def get_table_profile_with_charts(geo, session, tablechart, year):
    table_data = LOCATIONNOTFOUND
    table_total_data = 0

    with dataset_context(year=year):
        try:
            table_data, table_total_data = get_stat_data(
                tablechart['field'].split('_') , geo, session,
                table_name=tablechart['table_id']
            )
        except Exception:
            pass

    return {
        'chart': tablechart['chart_type'],
        'title': tablechart['title'],
        'section': tablechart['section'],
        'fields': tablechart['field'],
        'stat_type': tablechart['stat_type'],
        'table_data': table_data,
        'table_total_data': {
            "name": "name for total data of %s" % tablechart['name'],
            "values": {
                "this": table_total_data
                },
        },
    }

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