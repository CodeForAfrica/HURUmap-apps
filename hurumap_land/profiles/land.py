# -*- coding: utf-8 -*-
import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_datatable
from wazimap.data.utils import (calculate_median,
                                get_session, get_stat_data, group_remainder,
                                merge_dicts, get_datatable, current_context,
                                dataset_context)
from wazimap.geo import geo_data
from django.conf import settings
from collections import OrderedDict
from wazimap.data.base import Base
from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, \
    and_, desc, asc, cast

log = logging.getLogger(__name__)
# ensure tables are loaded
import hurumap_land.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

PROFILE_SECTIONS = (
    'demographics',  # population group
    'farmland',  # farm and Agricultural land
    'ervenland',  # erven land
    'sectionaltitleland',  # sectional title land
    'redistributionandrestitution',  # redistribution and restitution
    'afrobarometer',
    'landsales',
    'landsalescolour',
    'workershostel'
)
LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }

MONTH = ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan',
         'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul']

MONTH_V2 = ['Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May',
                'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov']

LAND_CLASS = [u'Under 1.5K', u'1,501-3K', u'3,001-5K', u'5,001-10K'
    , u'10,001-20K', u'20,001-30K', u'30,001-40K', u'40,001-50K',
              u'50,001-100K',
              u'100,001-150K', u'150,001-200K', u'200,001-300K',
              u'300,001-500K',
              u'500,001-800K', u'800,001-1M', u'Above 1M']


def get_land_profile(geo, profile_name, request):
    session = get_session()

    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        data = {}

        sections = list(PROFILE_SECTIONS)

        for section in sections:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo, session)

                # get profiles for comparative geometries
                if not data[section]['is_missing']:
                    for comp_geo in comparative_geos:
                        try:
                            merge_dicts(
                                data[section], func(
                                    comp_geo, session), comp_geo.geo_level)
                        except KeyError as e:
                            msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                                geo.geoid, section, comp_geo.geoid, e)
                            log.fatal(msg, exc_info=e)
                            raise ValueError(msg)

        data['land_audit'] = get_land_audit_profile(geo, session)
        if geo.geo_level in ['district', 'municipality']:
            data['districtdistribution'] = get_districtdistribution_profile(geo, session)

        return data

    finally:
        session.close()


def get_demographics_profile(geo, session):
    with dataset_context(year='2016'):
        pop_dist_data = LOCATIONNOTFOUND
        total_pop = 0
        try:
            pop_dist_data, total_pop = get_stat_data(
                ['population group'], geo, session)
        except Exception:
            pass

    return {
        'total_population': {
            "name": "People",
            "values": {"this": total_pop},
        },
        'is_missing': pop_dist_data.get('is_missing', False)

    }


def get_farmland_profile(geo, session):
    year = current_context().get('year')
    with dataset_context(year=year):
        topic_profiles = SECTIONS['farmland']['profiles']
        profiles_data = {'is_missing': True}

        for profile in topic_profiles:
            try:
                profile_table = profile.lower()
                profile_name = profile.lower().replace(' ', '_')
                profiles_data[profile_name] = LOCATIONNOTFOUND
                profiles_data[profile_name], _ = get_stat_data([profile_table],
                                                               geo, session)
            except Exception:
                pass

            profiles_data['is_missing'] = profiles_data.get('is_missing') and \
                                          profiles_data[profile_name].get(
                                              'is_missing', False)

    return profiles_data


def get_ervenland_profile(geo, session):
    year = current_context().get('year')
    with dataset_context(year=year):
        topic_profiles = SECTIONS['ervenland']['profiles']
        profiles_data = {'is_missing': True}

        for profile in topic_profiles:
            try:
                profile_table = profile.lower()
                profile_name = profile.lower().replace(' ', '_')
                profiles_data[profile_name] = LOCATIONNOTFOUND
                profiles_data[profile_name], _ = get_stat_data([profile_table],
                                                               geo, session)
            except Exception:
                pass

            profiles_data['is_missing'] = profiles_data.get('is_missing') and \
                                          profiles_data[profile_name].get(
                                              'is_missing')

    return profiles_data


def get_sectionaltitleland_profile(geo, session):
    year = current_context().get('year')
    with dataset_context(year=year):
        topic_profiles = SECTIONS['sectionaltitleland']['profiles']
        profiles_data = {'is_missing': True}

        for profile in topic_profiles:
            try:
                profile_table = profile.lower()
                profile_name = profile.lower().replace(' ', '_')
                profiles_data[profile_name] = LOCATIONNOTFOUND
                profiles_data[profile_name], _ = get_stat_data([profile_table],
                                                               geo, session)
            except Exception:
                pass

            profiles_data['is_missing'] = profiles_data.get('is_missing') and \
                                          profiles_data[profile_name].get(
                                              'is_missing')

    return profiles_data


def get_redistributionandrestitution_profile(geo, session):
    with dataset_context(year='2018'):
        redistributedlandusebreakdown = redistributeprogrammeprojectsbyyear = LOCATIONNOTFOUND
        redistributeprogrammehouseholdsbyyear = landcostrestitution = LOCATIONNOTFOUND
        redistributeprogrammebeneficiariesbyyear = femalepartybenefited = LOCATIONNOTFOUND
        youthpartybenefited = disabledpeoplepartybenefited = LOCATIONNOTFOUND
        redistributedlandinhectares = redistributedlandcostinrands = LOCATIONNOTFOUND
        redistributedlandaveragecostperhectares = householdsrestitution = LOCATIONNOTFOUND
        hectarestransferredperprovincebyyear = hectaresacquiredrestitution = LOCATIONNOTFOUND
        projectsrestitution = beneficiariesrestitution = LOCATIONNOTFOUND
        claimssettledrestitution = disabilitiesrestitution = LOCATIONNOTFOUND
        femaleheadedhouseholdsrestitution = financialcompensationrestitution = LOCATIONNOTFOUND

        femaleheadedhouseholdsrestitution_tot = beneficiariesrestitution_tot = projectsrestitution_tot = 0
        financialcompensationrestitution_tot = claimssettledrestitution_tot = 0
        femalepartybenefited_tot = disabledpeoplepartybenefited_tot = youthpartybenefited_tot = 0
        hectarestransferredperprovincebyyear_tot = hectaresacquiredrestitution_tot = 0
        householdsrestitution_tot = disabilitiesrestitution_tot = 0
        redistributedland_avg_cost = redistributedland_tot_cost = redistributedland_hect_tot = 0
        redistributeprogrammehouseholdsbyyear_tot = redistributeprogrammeprojectsbyyear_tot = 0
        redistributeprogrammebeneficiariesbyyear_tot = 0

        redistributionrestitution = {'is_missing': True}

        try:
            redistributedlandusebreakdown, _ = get_stat_data(
                ['redistributed land use breakdown'], geo, session)
        except Exception:
            pass

        try:
            redistributeprogrammeprojectsbyyear, redistributeprogrammeprojectsbyyear_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'outcome of redistribution programme'],
                only={'outcome of redistribution programme': [
                    'projects transferred']},
                percent=False)
        except Exception:
            pass

        try:
            redistributeprogrammehouseholdsbyyear, redistributeprogrammehouseholdsbyyear_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'outcome of redistribution programme'],
                only={'outcome of redistribution programme': [
                    'benefited households']},
                percent=False)
        except Exception:
            pass

        try:
            redistributeprogrammebeneficiariesbyyear, redistributeprogrammebeneficiariesbyyear_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'outcome of redistribution programme'],
                only={'outcome of redistribution programme': [
                    'benefited beneficiaries']},
                percent=False)
        except Exception:
            pass

        try:
            femalepartybenefited, femalepartybenefited_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'party_benefited'],
                only={'party_benefited': ['female']},
                percent=False)
        except Exception:
            pass

        try:
            youthpartybenefited, youthpartybenefited_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'party_benefited'],
                only={'party_benefited': ['youth']},
                percent=False)
        except Exception:
            pass

        try:
            disabledpeoplepartybenefited, disabledpeoplepartybenefited_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'party_benefited'],
                only={'party_benefited': ['disable people']},
                percent=False)
        except Exception:
            pass

        try:
            hectarestransferredperprovincebyyear, hectarestransferredperprovincebyyear_tot = get_stat_data(
                ['year'], geo, session,
                percent=False)
        except Exception:
            pass

        try:
            hectaresacquiredrestitution, hectaresacquiredrestitution_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={'restitutionoutcomestatistic': ['hectares acquired']},
                percent=False)
        except Exception:
            pass

        try:
            claimssettledrestitution, claimssettledrestitution_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={'restitutionoutcomestatistic': ['claims settled']},
                percent=False)
        except Exception:
            pass
        try:
            disabilitiesrestitution, disabilitiesrestitution_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={'restitutionoutcomestatistic': [
                    'people with disabilities']},
                percent=False)
        except Exception:
            pass
        try:
            beneficiariesrestitution, beneficiariesrestitution_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={'restitutionoutcomestatistic': ['beneficiaries']},
                percent=False)
        except Exception:
            pass

        try:
            householdsrestitution, householdsrestitution_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={'restitutionoutcomestatistic': ['households']},
                percent=False)
        except Exception:
            pass

        try:
            landcostrestitution, _ = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={'restitutionoutcomestatistic': ['landcost']},
                percent=False)
        except Exception:
            pass

        try:
            financialcompensationrestitution, financialcompensationrestitution_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={
                    'restitutionoutcomestatistic': ['financial compensation']},
                percent=False)
        except Exception:
            pass

        try:
            projectsrestitution, projectsrestitution_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={'restitutionoutcomestatistic': ['projects']},
                percent=False)
        except Exception:
            pass

        try:
            femaleheadedhouseholdsrestitution, femaleheadedhouseholdsrestitution_tot = get_stat_data(
                ['year'], geo, session,
                table_fields=['year', 'restitutionoutcomestatistic'],
                only={'restitutionoutcomestatistic': [
                    'female headed households']},
                percent=False)
        except Exception:
            pass

        try:
            redistributedlandinhectares, redistributedland_hect_tot = get_stat_data(
                ['redistributedland'], geo, session, percent=False,
                only={'redistributedland': ['number of hectares']})
        except Exception:
            pass

        try:
            redistributedlandcostinrands, redistributedland_tot_cost = get_stat_data(
                ['redistributedland'], geo, session, percent=False,
                only={'redistributedland': ['cost in rands']})
        except Exception:
            pass

        try:
            redistributedlandaveragecostperhectares, redistributedland_avg_cost = get_stat_data(
                ['redistributedland'], geo, session, percent=False,
                only={'redistributedland': ['average cost per hectares']})
        except Exception:
            pass

    redistributionrestitution[
        'redistributedlandusebreakdown'] = redistributedlandusebreakdown
    redistributionrestitution['hectarestransferredperprovincebyyear_stat'] = \
        {
            "name": "Total land in hectares (ha) redistributed from the year 2009 to 2018",
            "values": {"this": hectarestransferredperprovincebyyear_tot}
            }
    redistributionrestitution['redistributedlandhectares_stat'] = \
        {"name": "Redistributed land in hectares for the year 2017/2018",
         "values": {"this": redistributedland_hect_tot}
         }
    redistributionrestitution['redistributedlandcostinrands_stat'] = \
        {
            "name": "Cost in Rands (ZAR) of Redistributed Land for the year 2017/2018",
            "values": {"this": redistributedland_tot_cost}
            }
    redistributionrestitution[
        'redistributedlandaveragecostperhectares_stat'] = \
        {
            "name": "Average Cost in Rands (ZAR) per Hectares for Redistributed Land in 2017/2018",
            "values": {"this": redistributedland_avg_cost}
            }
    redistributionrestitution[
        'redistributeprogrammeprojectsbyyear'] = redistributeprogrammeprojectsbyyear
    redistributionrestitution['redistributeprogrammeprojectsbyyear_stat'] = \
        {
            "name": "Total projects benefitted through Redistribution Programme from 2009/2010 to 2017/2018",
            "values": {"this": redistributeprogrammeprojectsbyyear_tot}
            }

    redistributionrestitution[
        'redistributeprogrammehouseholdsbyyear'] = redistributeprogrammehouseholdsbyyear
    redistributionrestitution[
        'redistributeprogrammehouseholdsbyyear_stat'] = \
        {
            "name": "Total households benefitted though Redistribution Programme from 2009/2010 to 2017/2018",
            "values": {"this": redistributeprogrammehouseholdsbyyear_tot}
            }

    redistributionrestitution[
        'redistributeprogrammebeneficiariesbyyear'] = redistributeprogrammebeneficiariesbyyear
    redistributionrestitution[
        'redistributeprogrammebeneficiariesbyyear_stat'] = \
        {
            "name": "Total number of beneficiaries of Redistribution Programme from the 2009/2010 to 2017/2018",
            "values": {"this": redistributeprogrammebeneficiariesbyyear_tot}
            }

    redistributionrestitution['femalepartybenefited'] = femalepartybenefited
    redistributionrestitution['femalepartybenefited_stat'] = \
        {
            "name": "Number of female benefited through Redistribution programme from 2009/2010 to 2017/2018",
            "values": {"this": femalepartybenefited_tot}
            }

    redistributionrestitution['youthpartybenefited'] = youthpartybenefited
    redistributionrestitution['youthpartybenefited_stat'] = \
        {
            "name": "Number of youth benefited through Redistribution programme from 2009/2010 to 2017/2018",
            "values": {"this": youthpartybenefited_tot}
            }
    redistributionrestitution[
        'disabledpeoplepartybenefited'] = disabledpeoplepartybenefited
    redistributionrestitution['disabledpeoplepartybenefited_stat'] = \
        {
            "name": "People with disabilities benefited in Redistribution programme from 2009/2010 to 2017/2018",
            "values": {"this": disabledpeoplepartybenefited_tot}
            }

    redistributionrestitution[
        'hectarestransferredperprovincebyyear'] = hectarestransferredperprovincebyyear

    redistributionrestitution[
        'hectaresacquiredrestitution'] = hectaresacquiredrestitution
    redistributionrestitution[
        'claimssettledrestitution'] = claimssettledrestitution
    redistributionrestitution[
        'householdsrestitution'] = householdsrestitution
    redistributionrestitution[
        'femaleheadedhouseholdsrestitution'] = femaleheadedhouseholdsrestitution
    redistributionrestitution[
        'disabilitiesrestitution'] = disabilitiesrestitution
    redistributionrestitution['projectsrestitution'] = projectsrestitution
    redistributionrestitution[
        'beneficiariesrestitution'] = beneficiariesrestitution
    redistributionrestitution['landcostrestitution'] = landcostrestitution
    redistributionrestitution[
        'financialcompensationrestitution'] = financialcompensationrestitution
    redistributionrestitution[
        'hectarestransferredperprovincebyyear_tot'] = hectarestransferredperprovincebyyear_tot
    redistributionrestitution[
        'hectaresacquiredrestitution_tot'] = hectaresacquiredrestitution_tot
    redistributionrestitution[
        'claimssettledrestitution_tot'] = claimssettledrestitution_tot
    redistributionrestitution['landcostrestitution'] = landcostrestitution

    redistributionrestitution['hectaresacquiredrestitution_stat'] = \
        {
            "name": "Total hectares acquired in Restitution programme from 2009/2010 to 2017/2018",
            "values": {"this": hectaresacquiredrestitution_tot}
            }
    redistributionrestitution['householdsrestitution_stat'] = \
        {
            "name": "Total households benefited in Restitution programme from 2009/2010 to 2017/2018",
            "values": {"this": householdsrestitution_tot}
            }
    redistributionrestitution['femaleheadedhouseholdsrestitution_stat'] = \
        {
            "name": "Female headed households benefited in restitution programme from 2009/2010 to 2017/2018",
            "values": {"this": femaleheadedhouseholdsrestitution_tot}
            }
    redistributionrestitution['disabilitiesrestitution_stat'] = \
        {
            "name": "Number of people with disabilities benefited in Restitution programme from 2009/2010 to 2017/2018",
            "values": {"this": disabilitiesrestitution_tot}
            }
    redistributionrestitution['projectsrestitution_stat'] = \
        {
            "name": "Number of projects in the restitution programme from 2009/2010 to 2017/2018",
            "values": {"this": projectsrestitution_tot}
            }
    redistributionrestitution['beneficiariesrestitution_stat'] = \
        {
            "name": "Number of beneficiaries in the restitution programme from 2009/2010 to 2017/2018",
            "values": {"this": beneficiariesrestitution_tot}
            }

    # if total hectares of redistruted land is missing
    # and total hectares acquired under restitution is missing, then there's no data
    redistributionrestitution[
        'is_missing'] = hectarestransferredperprovincebyyear.get(
        'is_missing') \
                        and hectaresacquiredrestitution.get('is_missing')

    return redistributionrestitution


def get_landsales_profile(geo, session):
    #TODO: landsales profile for 2016  data context
    with dataset_context(year='2018'):
        landsales = {'is_missing': True}
        landsalestransaction = landsaleshectares = LOCATIONNOTFOUND
        landsalesaverageprice = landsalespricetrends = LOCATIONNOTFOUND

        landsalestransaction_tot = landsaleshectares_tot = 0

        try:
            landsalestransaction, landsalestransaction_tot = get_stat_data(
                ['class_distribution'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Number of transactions in 12 months']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsaleshectares, landsaleshectares_tot = get_stat_data(
                ['class_distribution'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Total hectare traded in 12 months(ha)']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsalesaverageprice, _ = get_stat_data(
                ['class_distribution'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Average price per hectare in 12 months(R/ha)']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass
        try:
            landsalespricetrends, _ = get_stat_data(
                ['class_distribution'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Price trend per hectare in 12 months(R/ha)']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsalesaveragetrends, _ = get_stat_data(
                ['class_distribution'], geo, session, exclude_zero=True,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Average trend in 12 months(%)']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        landsales['landsalestransaction'] = landsalestransaction
        landsales['landsaleshectares'] = landsaleshectares
        landsales['landsalesaverageprice'] = landsalesaverageprice
        landsales['landsalespricetrends'] = landsalespricetrends
        landsales['landsaleshectares_tot'] = \
            {
                "name": " Total number of sold hectares from Dec 2017 to Nov 2018",
                "values": {"this": int(landsaleshectares_tot)},
            }
        landsales['landsalestransaction_tot'] = \
            {
                "name": "Total number of sales transactions from Dec 2017 to Nov 2018",
                "values": {"this": int(landsalestransaction_tot)},
            }
        landsales['is_missing'] = landsalestransaction.get('is_missing') and \
                                  landsaleshectares.get('is_missing')

    return landsales


def get_landsalescolour_profile(geo, session):
    with dataset_context(year='2018'):
        landsalescolourhectares = landsalescolourhectaresperMONTH_V2 = LOCATIONNOTFOUND
        landsalescolourcostperMONTH_V2 = landsalescolourcostpermonthbreakdown = LOCATIONNOTFOUND
        landsalescolourcostpermonthbreakdowngu = landsalescolourcostpermonthbreakdownga = LOCATIONNOTFOUND
        landsalescolourcostpermonthbreakdownpr = landsalescolourcostpermonthbreakdownot = LOCATIONNOTFOUND
        landsalescolourtransaction = landsalescolourtransactionpermonthbreakdown = LOCATIONNOTFOUND
        landsalesallvscolourtransaction = landsalescolourhectarespermonthbreakdown = LOCATIONNOTFOUND
        landsalescolourhectarespermonthbreakdowngu = landsalescolourhectarespermonthbreakdownga = LOCATIONNOTFOUND
        landsalescolourhectarespermonthbreakdownpr = landsalescolourhectarespermonthbreakdownot = LOCATIONNOTFOUND
        landsalescolourtransactionpermonthbreakdownga = landsalescolourtransactionpermonthbreakdowngu = LOCATIONNOTFOUND
        landsalescolourtransactionpermonthbreakdownpr = landsalescolourtransactionpermonthbreakdownot = LOCATIONNOTFOUND
        landsalescolourtransactionperMONTH_V2 = LOCATIONNOTFOUND

        landsalescolourhectares_tot = 0
        landsalescolourtransaction_tot = 0
        landsalescolourcost_tot = 0

        try:
            landsalescolourhectares, landsalescolourhectares_tot = get_stat_data(
                ['breakdown_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only={'breakdown_cc': ['Government Agriculture',
                                            'Government Urban', 'Private',
                                            'Other']}
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransaction, landsalescolourtransaction_tot = get_stat_data(
                ['breakdown_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Government Agriculture',
                                            'Government Urban', 'Private',
                                            'Other']}
            )
        except Exception as e:
            pass

        try:
            landsalesallvscolourtransaction, _ = get_stat_data(
                ['transaction_group'], geo, session,
                table_name='land_traded_all_vs_colour_2018',
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionperMONTH_V2, _ = get_stat_data(
                ['month', 'transaction_group'], geo, session,
                table_name='land_traded_all_vs_colour_2018',
                only={'transaction_group': ['all', 'colour']},
                key_order={'month': MONTH_V2,
                           'transaction_group': ['All', 'Colour']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectaresperMONTH_V2, _ = get_stat_data(
                ['month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                key_order=( 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May',\
                 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov'),
                 percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdown, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdownga, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only= {'breakdown_cc': ['Government Agriculture']},
                key_order={'month_cc': MONTH_V2,
                        'breakdown_cc': ['Government Agriculture']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdowngu, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only= {'breakdown_cc': ['Government Urban']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdownpr, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only= {'breakdown_cc': ['Private']},
                key_order={'month_cc': MONTH_V2,
                        'breakdown_cc': ['Private']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdownot, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only= {'breakdown_cc': ['Other']},
                key_order={'month_cc': MONTH_V2,
                'breakdown_cc': ['Other']},
                percent=False
                )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdown, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Government Agriculture',
                                            'Government Urban', 'Private',
                                            'Other']},
                key_order={'month_cc': MONTH_V2,
                        'breakdown_cc': ['Government Agriculture', 'Private',
                                            'Government Urban',
                                            'Other']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdowngu, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Government Urban']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdownga, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Government Agriculture']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdownot, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Other']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdownpr, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Private']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostperMONTH_V2, landsalescolourcost_tot = get_stat_data(
                ['month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                key_order=( 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May',\
                 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov'),
                 percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdown, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                key_order={'month_cc': MONTH_V2,
                        'breakdown_cc': ['Government Agriculture', 'Private',
                                            'Government Urban',
                                            'Other']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdownot, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                only={'breakdown_cc': ['Other']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdownpr, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                only={'breakdown_cc': ['Private']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdowngu, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                only={'breakdown_cc': ['Government Urban']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdownga, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                only={'breakdown_cc': ['Government Agriculture']},
                key_order={'month_cc': MONTH_V2},
                percent=False
            )
        except Exception as e:
            pass
    return {
        'landsalescolourhectares': landsalescolourhectares,
        'landsalescolourtransaction': landsalescolourtransaction,
        'landsalesallvscolourtransaction': landsalesallvscolourtransaction,
        'landsalescolourtattransactionpermonth': landsalescolourtransactionperMONTH_V2,
        'landsalescolourhectarespermonthbreakdown': landsalescolourhectarespermonthbreakdown,
        'landsalescolourhectarespermonthbreakdowngu': landsalescolourhectarespermonthbreakdowngu,
        'landsalescolourhectarespermonthbreakdownga': landsalescolourhectarespermonthbreakdownga,
        'landsalescolourhectarespermonthbreakdownot': landsalescolourhectarespermonthbreakdownot,
        'landsalescolourhectarespermonthbreakdownpr': landsalescolourhectarespermonthbreakdownpr,
        'landsalescolourtransactionpermonthbreakdown': landsalescolourtransactionpermonthbreakdown,
        'landsalescolourtransactionpermonthbreakdowngu': landsalescolourtransactionpermonthbreakdowngu,
        'landsalescolourtransactionpermonthbreakdownga': landsalescolourtransactionpermonthbreakdownga,
        'landsalescolourtransactionpermonthbreakdownpr': landsalescolourtransactionpermonthbreakdownpr,
        'landsalescolourtransactionpermonthbreakdownot': landsalescolourtransactionpermonthbreakdownot,
        'landsalescolourcostpermonthbreakdown': landsalescolourcostpermonthbreakdown,
        'landsalescolourcostpermonthbreakdowngu': landsalescolourcostpermonthbreakdowngu,
        'landsalescolourcostpermonthbreakdownga': landsalescolourcostpermonthbreakdownga,
        'landsalescolourcostpermonthbreakdownpr': landsalescolourcostpermonthbreakdownpr,
        'landsalescolourcostpermonthbreakdownot': landsalescolourcostpermonthbreakdownot,
        'landsalescolourcostpermonth': landsalescolourcostperMONTH_V2,
        'landsalescolourhectarespermonth': landsalescolourhectaresperMONTH_V2,
        'landsalescolourhectares_stat': {
            "name": "Total hectares (ha) traded from Dec 2017/Nov 2018 for transaction of colour",
            "values": {"this": landsalescolourhectares_tot},
        },
        'landsalescolourcost_stat': {
            "name": "Total Cost in R (million) traded from Dec 2017/Nov 2018 for transaction of colour",
            "values": {"this": landsalescolourcost_tot},
        },
        'landsalescolourtransaction_stat': {
            "name": "Total transactions traded from Dec 2017/Nov 2018 for transaction of colour",
            "values": {"this": landsalescolourtransaction_tot},
        },
        'is_missing': landsalescolourhectares.get('is_missing')

    }


def get_districtdistribution_profile(geo, session):
    with dataset_context(year='2018'):
        towndistrictdistributiontransactions = all_town = LOCATIONNOTFOUND
        towndistrictdistributionhectares = towndistrictdistributionavgprice = LOCATIONNOTFOUND
        towndistrictdistributionpricetrends = LOCATIONNOTFOUND
        towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = LOCATIONNOTFOUND
        towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = LOCATIONNOTFOUND
        towndistrictdistributionhectares_tot = towndistrictdistributiontransactions_tot = 0
        dist = {}
        towns = []

        try:
            #Get all towns in the geo
            all_town, _ = get_stat_data(
                ['name'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                exclude_zero=True,
                percent=False)

            for keys, townname in all_town.items():
                if keys != 'metadata':
                    towns.append(keys)
            towndistrictdistributiontransactionsdata = {}
            towndistrictdistributionhectaresdata = {}
            towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = {}

            for town in towns:
                town_code = town.replace(' ', '_').replace('-', '_').replace(
                    '/',
                    '_').replace(
                    '(', '').replace(')', '').lower()
                try:
                    towndistrictdistributiontransactionsdata[
                        town_code], _ = get_stat_data(
                        ['statistic', 'class_distribution'], geo, session,
                        table_name='land_traded_per_class_statistic_2018',
                        only={'name': [town], 'statistic': ['Number of transactions in 12 months']},
                        key_order={'class_distribution': LAND_CLASS},
                        percent=False)
                except Exception as e:
                    pass

                try:
                    towndistrictdistributionhectaresdata[
                        town_code], _ = get_stat_data(
                        ['statistic', 'class_distribution'], geo, session,
                        table_name='land_traded_per_class_statistic_2018',
                        only={'name': [town], 'statistic': ['Total hectare traded in 12 months(ha)']},
                        key_order={'class_distribution': LAND_CLASS},
                        percent=False)
                except Exception:
                    pass

                try:
                    towndistrictdistributionavgpricedata[
                        town_code], _ = get_stat_data(
                        ['statistic', 'class_distribution'], geo, session,
                        table_name='land_traded_per_class_statistic_2018',
                        only={'name': [town], 'statistic': ['Average price per hectare in 12 months(R/ha)']},
                        key_order={'class_distribution': LAND_CLASS},
                        percent=False)
                except Exception:
                    pass

                    try:
                        towndistrictdistributionpricetrendsdata[
                            town_code], _ = get_stat_data(
                            ['statistic', 'class_distribution'], geo, session,
                            table_name='land_traded_per_class_statistic_2018',
                            only={'name': [town], 'statistic': ['Price trend per hectare in 12 months(R/ha)']},
                            key_order={'class_distribution': LAND_CLASS},
                            percent=False)
                    except Exception as e:
                        pass
        except Exception as e:
            pass

    dist[
        'towndistrictdistributiontransactionsdata'] = towndistrictdistributiontransactionsdata
    dist[
        'towndistrictdistributionhectaresdata'] = towndistrictdistributionhectaresdata
    dist[
        'towndistrictdistributionavgpricedata'] = towndistrictdistributionavgpricedata
    dist[
        'towndistrictdistributionpricetrendsdata'] = towndistrictdistributionpricetrendsdata
    dist['is_missing'] = all_town.get('is_missing')
    return dist


def get_land_audit_profile(geo, session):
    year = current_context().get('year')
    with dataset_context(year=year):
        land_use_dist = LOCATIONNOTFOUND
        land_user_dist = LOCATIONNOTFOUND
        land_distribution_gender = LOCATIONNOTFOUND
        land_ownership = LOCATIONNOTFOUND

        try:
            land_use_dist, _ = get_stat_data('land_use', geo, session,
                                             table_name='landuse',
                                             table_fields=['land_use'])
        except Exception as e:
            pass

        try:
            land_user_dist, _ = get_stat_data('land_user', geo, session,
                                              table_name='landuser',
                                              table_fields=['land_user'])
        except Exception:
            pass

        try:
            land_distribution_gender, _ = get_stat_data(
                'land_ownership_by_gender', geo, session,
                table_name='privatelanddistributionbygender',
                table_fields=['land_ownership_by_gender'])
        except Exception:
            pass

        try:
            land_ownership, _ = get_stat_data('private_vs_state_ownership', geo,
                                              session,
                                              table_name='landownership',
                                              table_fields=[
                                                  'private_vs_state_ownership'])
        except Exception:
            pass

        is_missing = land_user_dist.get('is_missing') and \
                     land_use_dist.get('is_missing') and \
                     land_distribution_gender.get('is_missing') and \
                     land_ownership.get('is_missing')

    return {
        'is_missing': is_missing,
        'land_user_dist': land_user_dist,
        'land_use_dist': land_use_dist,
        'land_distribution_gender': land_distribution_gender,
        'land_ownership': land_ownership,
    }


def get_afrobarometer_profile(geo, session):
    with dataset_context(year='2017'):
        access_to_information = LOCATIONNOTFOUND
        allow_farmers_retain_land_ownership = LOCATIONNOTFOUND
        maintain_willing_buyer_willing_seller_policy = LOCATIONNOTFOUND
        land_acquisation_challenges = LOCATIONNOTFOUND
        land_to_prioritise_for_redistribution = LOCATIONNOTFOUND
        women_have_equal_right_to_land = LOCATIONNOTFOUND
        women_men_equal_chance_own_land = LOCATIONNOTFOUND

        try:
            access_to_information, _ = get_stat_data('access_to_information',
                                                     geo,
                                                     session, table_fields=[
                    'access_to_information'])
        except Exception:
            pass

        try:
            allow_farmers_retain_land_ownership, _ = get_stat_data(
                'allow_farmers_retain_land_ownership', geo, session,
                table_fields=['allow_farmers_retain_land_ownership'])
        except Exception:
            pass

        try:
            maintain_willing_buyer_willing_seller_policy, _ = get_stat_data(
                'maintain_willing_buyer_willing_seller_policy', geo, session,
                table_fields=['maintain_willing_buyer_willing_seller_policy'])
        except Exception:
            pass

        try:
            land_acquisation_challenges, _ = get_stat_data(
                'land_acquisation_challenges', geo, session,
                table_fields=['land_acquisation_challenges'])
        except Exception:
            pass

        try:
            land_to_prioritise_for_redistribution, _ = get_stat_data(
                'land_to_prioritise_for_redistribution', geo, session,
                table_fields=['land_to_prioritise_for_redistribution'])
        except Exception:
            pass

        is_missing = access_to_information.get('is_missing') and \
                     allow_farmers_retain_land_ownership.get('is_missing') and \
                     maintain_willing_buyer_willing_seller_policy.get(
                         'is_missing') \
                     and land_acquisation_challenges.get('is_missing') and \
                     land_to_prioritise_for_redistribution.get('is_missing') and \
                     women_have_equal_right_to_land.get('is_missing') and \
                     women_men_equal_chance_own_land.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'access_to_information': access_to_information,
        'allow_farmers_retain_land_ownership': allow_farmers_retain_land_ownership,
        'maintain_willing_buyer_willing_seller_policy': maintain_willing_buyer_willing_seller_policy,
        'land_acquisation_challenges': land_acquisation_challenges,
        'land_to_prioritise_for_redistribution': land_to_prioritise_for_redistribution,
        'women_have_equal_right_to_land': women_have_equal_right_to_land,
        'women_men_equal_chance_own_land': women_men_equal_chance_own_land,
    }

    return final_data


def get_workershostel_profile(geo, session):
    with dataset_context(year='2018'):
        access_electricity = age_group = gender = LOCATIONNOTFOUND
        geography = handwashing_facility = LOCATIONNOTFOUND
        living_condition = ownership = LOCATIONNOTFOUND
        residential_ownership = population_group = LOCATIONNOTFOUND
        population_year = rent = ss_dwelling = subsidy = LOCATIONNOTFOUND
        toilet_facility = water_source = LOCATIONNOTFOUND

        population = 0

        access_electricity, _ = get_stat_data('workers_hostel_access_electricity',
                                                 geo,
                                                 session, table_fields=['workers_hostel_access_electricity'],
                                                 percent=False)
        age_group, _ = get_stat_data('workers_hostel_age_group',
                                                 geo,
                                                 session, table_fields=['workers_hostel_age_group'],
                                                 percent=False)
        geography, _ = get_stat_data('workers_hostel_geography',
                                                 geo,
                                                 session, table_fields=['workers_hostel_geography'],
                                                 percent=False)
        water_source, _ = get_stat_data('workers_hostel_water_source',
                                                  geo,
                                                  session, table_fields=['workers_hostel_water_source'],
                                                  percent=False)
        handwashing_facility, _ = get_stat_data('workers_hostel_handwashing_facility',
                                                  geo,
                                                  session, table_fields=['workers_hostel_handwashing_facility'],
                                                  percent=False)
        toilet_facility, _ = get_stat_data('workers_hostel_toilet_facility',
                                                  geo,
                                                  session, table_fields=['workers_hostel_toilet_facility'],
                                                  percent=False)

        gender, _ = get_stat_data('workers_hostel_gender',
                                                 geo,
                                                 session, table_fields=['workers_hostel_gender'],
                                                 percent=False)

        living_condition, _ = get_stat_data('workers_hostel_living_condition',
                                                 geo,
                                                 session, table_fields=['workers_hostel_living_condition'],
                                                 percent=False)

        ownership, _ = get_stat_data('workers_hostel_ownership',
                                                 geo,
                                                 session, table_fields=['workers_hostel_ownership'],
                                                 percent=False)

        population_group, _ = get_stat_data('workers_hostel_population_group',
                                                 geo,
                                                 session, table_fields=['workers_hostel_population_group'],
                                                 percent=False)

        population_year, population = get_stat_data('workers_hostel_population_year',
                                                 geo,
                                                 session, table_fields=['workers_hostel_population_year'],
                                                 percent=False)
        rent, _ = get_stat_data('workers_hostel_rent',
                                                 geo,
                                                 session, table_fields=['workers_hostel_rent'],
                                                 percent=False)
        # ss_dwelling, _ = get_stat_data('workers_hostel_ss_dwelling',
        #                                          geo,
        #                                          session, table_fields=['workers_hostel_ss_dwelling'],
        #                                          percent=False)
        residential_ownership, _ = get_stat_data('workers_hostel_residential_ownership',
                                                 geo,
                                                 session, table_fields=['workers_hostel_residential_ownership'],
                                                 percent=False)
        # subsidy, _ = get_stat_data('workers_hostel_subsidy',
        #                                          geo,
        #                                          session, table_fields=['workers_hostel_subsidy'],
        #                                          percent=False)
        #

        is_missing = access_electricity.get('is_missing') and \
                    age_group.get('is_missing') and gender.get('is_missing') and \
                    geography.get('is_missing') and handwashing_facility.get('is_missing') and \
                    living_condition.get('is_missing') and ownership.get('is_missing') and \
                    residential_ownership.get('is_missing') and \
                    population_group.get('is_missing') and rent.get('is_missing') and \
                    population_year.get('is_missing') and ss_dwelling.get('is_missing') and \
                    subsidy.get('is_missing') and toilet_facility.get('is_missing') and \
                    water_source.get('is_missing')

        return {
            'is_missing': is_missing,
            'access_electricity': access_electricity,
            'age_group': age_group,
            'gender': gender,
            'living_condition': living_condition,
            'geography': geography,
            'handwashing_facility': handwashing_facility,
            'ownership': ownership,
            'residential_ownership': residential_ownership,
            'population_year': population_year,
            'population_group': population_group,
            'rent': rent,
            'toilet_facility': toilet_facility,
            'water_source': water_source,
            'ss_dwelling': ss_dwelling,
            'subsidy': subsidy
        }
