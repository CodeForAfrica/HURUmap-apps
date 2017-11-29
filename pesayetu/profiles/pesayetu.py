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
        data['expenditure_ceilings'] = get_county_expenditure_ceilings(geo,
                                                                       session)
        data['conditional_grants_15_16'] = get_conditional_allocation_2015_2016(
            geo, session)

        return data
    finally:
        session.close()


def get_equitable_allocation_data(geo, session):
    try:
        budget_allocation, _ = get_stat_data('financial_year', geo, session,
                                             table_fields=[
                                                 'financial_year'],
                                             percent=False)

        yr2013_2014 = 0
        for data, value in budget_allocation.get('FY 2013/2014',
                                                 {}).iteritems():
            if data == 'values':
                yr2013_2014 += value['this']

        yr2014_2015 = 0
        for data, value in budget_allocation.get('FY 2014/2015',
                                                 {}).iteritems():
            if data == 'values':
                yr2014_2015 += value['this']

        yr2015_2016 = 0
        for data, value in budget_allocation.get('FY 2015/2016',
                                                 {}).iteritems():
            if data == 'values':
                yr2015_2016 += value['this']

        yr2016_2017 = 0
        for data, value in budget_allocation.get('FY 2016/2017',
                                                 {}).iteritems():
            if data == 'values':
                yr2016_2017 += value['this']

        final_data = {
            'budget_allocation': budget_allocation,
            'fy2013_2014': {
                'name': 'FY 2013/2014',
                'numerators': {'this': yr2013_2014},
                'values': {'this': yr2013_2014}
            },
            'fy2014_2015': {
                'name': 'FY 2014/2015',
                'numerators': {'this': yr2014_2015},
                'values': {'this': yr2014_2015}
            },
            'fy2015_2016': {
                'name': 'FY 2015/2016',
                'numerators': {'this': yr2015_2016},
                'values': {'this': yr2015_2016}
            },
            'fy2016_2017': {
                'name': 'FY 2016/2017',
                'numerators': {'this': yr2016_2017},
                'values': {'this': yr2016_2017}
            },
        }

        return final_data

    except LocationNotFound:
        budget_allocation, _ = LOCATIONNOTFOUND, 0


def get_county_expenditure_ceilings(geo, session):
    try:
        ceilings, _ = get_stat_data(['expenditure', 'year'],
                                    geo, session, table_fields=['expenditure',
                                                                'year'],
                                    percent=False)

        final_data = {}
        county_assembly = ceilings['County Assembly']
        county_exec = ceilings['County Executive']
        final_data['county_assembly'] = {
            'fy2015_2016': {
                'name': county_assembly['FY 2015/2016'].get('name'),
                'numerators': county_assembly['FY 2015/2016'].get('numerators'),
                'values': county_assembly['FY 2015/2016'].get('values')

            },
            'fy2016_2017': {
                'name': county_assembly['FY 2016/2017'].get('name'),
                'numerators': county_assembly['FY 2016/2017'].get('numerators'),
                'values': county_assembly['FY 2016/2017'].get('values')
            }
        }

        final_data['county_executive'] = {
            'fy2015_2016': {
                'name': county_exec['FY 2015/2016'].get('name'),
                'numerators': county_exec['FY 2015/2016'].get('numerators'),
                'values': county_exec['FY 2015/2016'].get('values')

            },
            'fy2016_2017': {
                'name': county_exec['FY 2016/2017'].get('name'),
                'numerators': county_exec['FY 2016/2017'].get('numerators'),
                'values': county_exec['FY 2016/2017'].get('values')
            }
        }
        return final_data

    except LocationNotFound:
        ceilings, _ = LOCATIONNOTFOUND, 0


def get_conditional_allocation_2015_2016(geo, session):
    try:
        conditional, _ = get_stat_data(['conditional_fund'], geo, session,
                                       table_fields=['conditional_fund'],
                                       percent=False)
        final_data = {}
        data = ['DANIDA Grant', 'Other Conditional Allocations',
                'World Bank Loan']
        for i in data:
            fund = conditional.get(i)

            final_data[i.lower().replace(' ', '_')] = {
                'name': i,
                'numerators': fund['numerators'],
                'values': fund['values']
            }

        print final_data
        return final_data
    except LocationNotFound:
        conditional, _ = LOCATIONNOTFOUND, 0
