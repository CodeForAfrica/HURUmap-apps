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
        data['total_population'] = 0
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

            #get total population
            if "population" in tablechart['name'] and data["total_population"] == 0:
                data['total_population'] = charts[tablechart['name']]['table_total_data']['values']['this']

        data['charts'] = charts
        return data

    except Exception as e:
        log.error("Error building profile level, code: %s-%s" % (geo.geo_level, geo.geo_code), exc_info=e)
        raise e

    finally:
        session.close()

def get_country_and_level(geo):
    level = geo.geo_level.lower()
    country = ''
    if level != 'continent':
        country = geo.geo_code.lower() \
            if level == 'country' \
            else geo.ancestors()[-2].geo_code.lower() #-1 (last element is continent)

    return (country, level)


def get_table_profile_with_charts(geo, session, tablechart, year):
    table_data = LOCATIONNOTFOUND
    table_total_data = 0

    fields = tablechart['field'].split(',')

    if len(fields) > 1:
        new_fields = []
        new_fields.append(tablechart['group_by'])
        for item in fields:
            if item != tablechart['group_by']:
                new_fields.append(item)
        fields = new_fields

    with dataset_context(year=year):
        try:
            table_data, table_total_data = get_stat_data(
                fields , geo, session,
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
