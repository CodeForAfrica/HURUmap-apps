from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import get_session, get_stat_data, group_remainder, \
    current_context, dataset_context
from wazimap.geo import LocationNotFound

LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }


def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}
    year = current_context().get('year')

    try:
        data['primary_release_year'] = year
        data['debt'] = get_debt(geo, session, year)
        print(data)

        return data

    finally:
        session.close()


"""
fields, geo, session, table_dataset=None, table_universe=None,
                  table_fields=None, table_name=None, **kwargs
"""


def get_debt(geo, session, year):
    debt_data = LOCATIONNOTFOUND
    with dataset_context(year='latest'):
        try:
            debt_data, _ = get_stat_data(fields=['year', 'debt_type'], geo=geo,
                                         session=session,
                                         table_dataset='Fiscal Debt')
        except Exception as e:
            print(f"\n\n\n\n\n{str(e)}\n\n\n\n\n")
            pass

    is_missing = debt_data.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'debt_data': debt_data
    }
    return final_data
