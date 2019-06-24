from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import (current_context, dataset_context, get_session,
                                get_stat_data, group_remainder)
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
        data['nbs_2016'] = get_nbs_2016(geo, session, year)
        data['nbs_2018'] = get_nbs_2018(geo, session, year)
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
                                         table_dataset='Fiscal Debt', percent=False, order_by='debt_type')
        except Exception as e:
            print(str(e))

    is_missing = debt_data.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'debt_data': debt_data
    }
    return final_data

def get_nbs_2016(geo, session, year):
    arrested_suspects = LOCATIONNOTFOUND
    drugs_seized = LOCATIONNOTFOUND
    counselling_concluded = LOCATIONNOTFOUND
    suspects_prosecuted = LOCATIONNOTFOUND
    conviction_secured = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            arrested_suspects, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='arrested_suspects', percent=False, order_by='year')
            drugs_seized, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='drugs_seized', percent=False, order_by='year')
            counselling_concluded, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='counselling_concluded', percent=False, order_by='year')
            suspects_prosecuted, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='suspects_prosecuted', percent=False, order_by='year')
            conviction_secured, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='conviction_secured', percent=False, order_by='year')
        except Exception as e:
            print(str(e))

    is_missing = arrested_suspects.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'arrested_suspects': arrested_suspects,
        'drugs_seized': drugs_seized,
        'counselling_concluded': counselling_concluded,
        'suspects_prosecuted': suspects_prosecuted,
        'conviction_secured': conviction_secured
    }
    return final_data


def get_nbs_2018(geo, session, year):
    mobile_subscription = LOCATIONNOTFOUND
    mineral_production = LOCATIONNOTFOUND
    hiv_patients = LOCATIONNOTFOUND
    telecom_subscription = LOCATIONNOTFOUND
    faac = LOCATIONNOTFOUND
    jamb = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            mobile_subscription, _ = get_stat_data(fields=['network', 'subscription_type'], geo=geo,
                                         session=session,
                                         table_name='mobile_subscription', percent=False)
            mineral_production, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='mineral_production', percent=False, order_by='year')
            hiv_patients, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                         session=session,
                                         table_name='hiv_patients', percent=False, order_by='year')
            telecom_subscription, _ = get_stat_data(fields=['period', 'subscription_type'], geo=geo,
                                         session=session,
                                         table_name='telecom_subscription', percent=False)
            faac, _ = get_stat_data(fields=['allocation'], geo=geo,
                                         session=session,
                                         table_name='faac', percent=False)
            jamb, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                         session=session,
                                         table_name='jamb', percent=False)
        except Exception as e:
            print(str(e))

    is_missing = mobile_subscription.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'mobile_subscription': mobile_subscription,
        'mineral_production': mineral_production,
        'telecom_subscription': telecom_subscription,
        'hiv_patients': hiv_patients,
        'faac': faac,
        'jamb': jamb
    }
    return final_data
