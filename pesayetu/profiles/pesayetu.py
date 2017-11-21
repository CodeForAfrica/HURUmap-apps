from wazimap.data.utils import get_session, get_stat_data
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
        data['budget'] = get_equitable_allocation_data(geo, session)
        return data
    finally:
        session.close()


def get_equitable_allocation_data(geo, session):
    try:
        budget_allocation, _ = get_stat_data('financial_year', geo, session,
                                                table_fields=[
                                                    'financial_year'], percent=False)
        print type(budget_allocation)
        return {
            'budget_allocation': budget_allocation
        }

    except LocationNotFound:
        budget_allocation, _ = LOCATIONNOTFOUND, 0
