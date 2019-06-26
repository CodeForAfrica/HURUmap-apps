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

MONTH_ORDER= ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']


def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}
    year = current_context().get('year')

    try:
        data['primary_release_year'] = year
        data['nbs_2016'] = get_nbs_2016(geo, session, year)
        data['nbs_2018'] = get_nbs_2018(geo, session, year)
        return data

    finally:
        session.close()


"""
fields, geo, session, table_dataset=None, table_universe=None,
                  table_fields=None, table_name=None, **kwargs
"""

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
    debt_data = LOCATIONNOTFOUND
    diesel_price_2016 = LOCATIONNOTFOUND
    diesel_price_2017 = LOCATIONNOTFOUND
    diesel_price_2015 = LOCATIONNOTFOUND
    diesel_price_2018 = LOCATIONNOTFOUND
    diesel_price_2019 = LOCATIONNOTFOUND
    petrol_price_2016 = LOCATIONNOTFOUND
    petrol_price_2017 = LOCATIONNOTFOUND
    petrol_price_2018 = LOCATIONNOTFOUND
    petrol_price_2019 = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            debt_data, _ = get_stat_data(fields=['year', 'debt_type'], geo=geo,
                                         session=session,
                                         percent=False, order_by='debt_type')
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
            diesel_price_2018, _ = get_stat_data(['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2018']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
            diesel_price_2017, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2017']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
            diesel_price_2016, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2016']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
            diesel_price_2015, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2015']},
                                         table_name='diesel_price', percent=False)
            diesel_price_2019, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2019']},
                                         exclude_zero=False,
                                         table_name='diesel_price', percent=False)
            petrol_price_2016, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2016']},
                                         table_name='petrol_price', percent=False)
            petrol_price_2017, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2017']},
                                         table_name='petrol_price', percent=False)
            petrol_price_2018, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2018']},
                                         key_order=MONTH_ORDER,
                                         table_name='petrol_price', percent=False)
            petrol_price_2019, _ = get_stat_data(fields=['month',], geo=geo,
                                         session=session,
                                         only={'year': ['2019']},
                                         table_name='petrol_price', percent=False)
        except Exception as e:
            print(str(e))

    diesel_price = {
        'is_missing': diesel_price_2019.get('is_missing') and \
                        diesel_price_2018.get('is_missing') and \
                        diesel_price_2017.get('is_missing') and \
                        diesel_price_2016.get('is_missing') and \
                        diesel_price_2015.get('is_missing'),
        '2019': diesel_price_2019,
        '2018': diesel_price_2018,
        '2017': diesel_price_2017,
        '2016': diesel_price_2016,
        '2015': diesel_price_2015
    }

    petrol_price = {
        'is_missing': petrol_price_2018.get('is_missing') and \
                        petrol_price_2017.get('is_missing') and \
                        petrol_price_2016.get('is_missing') and \
                        petrol_price_2016.get('is_missing'),
        '2019': petrol_price_2019,
        '2018': petrol_price_2018,
        '2017': petrol_price_2017,
        '2016': petrol_price_2016
    }

    is_missing = mobile_subscription.get('is_missing') and \
                mineral_production.get('is_missing') and \
                telecom_subscription.get('is_missing') and \
                faac.get('is_missing') and jamb.get('is_missing') and \
                debt_data.get('is_missing') and \
                hiv_patients.get('is_missing') and \
                diesel_price.get('is_missing') and petrol_price.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'mobile_subscription': mobile_subscription,
        'mineral_production': mineral_production,
        'telecom_subscription': telecom_subscription,
        'hiv_patients': hiv_patients,
        'debt_data': debt_data,
        'faac': faac,
        'jamb': jamb,
        'diesel_price': diesel_price,
        'petrol_price': petrol_price,

    }
    return final_data
