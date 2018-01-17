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
    session = get_session()
    data = {}

    try:
        data['life_expectancy'] = get_life_expectancy(geo, session)
        data['gni'] = get_gni_data(geo, session)
        return data
    finally:
        session.close()


def get_life_expectancy(geo, session):
    try:
        life_expectancy_dist, _ = get_stat_data('Life_Expectancy_Year', geo,
                                                session,
                                                table_fields=['Life_Expectancy_Year'],
                                                percent=False)

        formatted_data = extract_time_series_data(life_expectancy_dist,
                                                  chart_title='Life Expectancy',
                                                  y_label='Age')

        return formatted_data

    except LocationNotFound:
        life_expectancy_dist, _ = LOCATIONNOTFOUND, 0


def get_gni_data(geo, session):
    try:
        gni_dist, _ = get_stat_data('GNI_Year', geo, session,
                                    table_fields=['GNI_Year'], percent=False)

        formatted_data = extract_time_series_data(gni_dist,
                                                  chart_title='Gross National Income',
                                                  y_label='US Dollars')

        return formatted_data

    except LocationNotFound:
        life_expectancy_dist, _ = LOCATIONNOTFOUND, 0


# helper functions


def extract_time_series_data(data, chart_title='', x_label='', y_label=''):
    """
    :param y_label:
    :param x_label:
    :param chart_title:
    :param data: OrderedDict
    :return: dictionary with x-axis (time) and y-axis (values)
    """
    print '\n'
    y_values = []
    # remove the last item coz it's always meta data
    for item in data.values()[:-1]:
        y_values.append(item.get('values')['this'])

    return {
        'x': [str(key) for key in list(data.keys())[:-1]],
        'y': y_values,
        'chart_title': chart_title,
        'x_label': x_label,
        'y_label': y_label,
    }

