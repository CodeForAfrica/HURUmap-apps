from wazimap.data.utils import (LocationNotFound, get_session, get_stat_data,
                                merge_dicts)
from django.conf import settings
import logging

log = logging.getLogger(__name__)

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}

def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['life_expectancy'] = get_life_expectancy_data(geo, session)
        return data
    finally:
        session.close()


def get_life_expectancy_data(geo, session):
    try:
        life_expectancy, _ = get_stat_data('Life_Expectancy_Year', geo, session,
                                           table_fields=[
                                               'Life_Expectancy_Year'],
                                           percent=False)
    except:
        pass


