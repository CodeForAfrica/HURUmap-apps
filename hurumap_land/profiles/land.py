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
    'landsales',  #
    'landsalescolour',  # land sales transcations per color
    'afrobarometer',
    'landsales_latest',
    'landsalescolour_latest'
)
LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }

MONTH = ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan',
         'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul']

MONTH_LATEST = ['Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May',
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
        data['districtdistribution'] = districtdistribution(geo, session)
        data['land_audit'] = get_land_audit_profile(geo, session)
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
    with dataset_context(year='2016'):
        landsales = {'is_missing': True}
        landsalestransaction = landsaleshectares = LOCATIONNOTFOUND
        landsalesaverageprice = landsalespricetrends = LOCATIONNOTFOUND

        landsalestransaction_tot = landsaleshectares_tot = 0

        try:
            landsalestransaction, landsalestransaction_tot = get_stat_data(
                ['class_distribution_transaction'], geo, session,
                table_name='landsalesdistributiontransaction',
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsaleshectares, landsaleshectares_tot = get_stat_data(
                ['class_distribution_hectares'], geo, session,
                table_name='landsalesdistributionhectares',
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsalesaverageprice, _ = get_stat_data(
                ['class_distribution_average_price'], geo, session,
                table_name='landsalesdistributionaverageprice',
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass
        try:
            landsalespricetrends, _ = get_stat_data(
                ['class_price_trends'], geo, session,
                table_name='landsalesdistributionpricetrends',
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsalesaveragetrends, _ = get_stat_data(
                ['class_average_trends'], geo, session, exclude_zero=True,
                table_name='landsalesdistributionaveragetrends',
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
                "name": " Total number of sold hectares from August 2017 to July 2018",
                "values": {"this": int(landsaleshectares_tot)},
            }
        landsales['landsalestransaction_tot'] = \
            {
                "name": "Total number of sales transactions from August 2017 to July 2018",
                "values": {"this": int(landsalestransaction_tot)},
            }
        landsales['is_missing'] = landsalestransaction.get('is_missing') and \
                                  landsaleshectares.get('is_missing')

    return landsales


def get_landsales_latest_profile(geo, session):
    with dataset_context(year='2018'):
        landsales_latest = {'is_missing': True}
        landsalestransaction_latest = landsaleshectares_latest = LOCATIONNOTFOUND
        landsalesaverageprice_latest = landsalespricetrends_latest = LOCATIONNOTFOUND

        landsalestransaction_latest_tot = landsaleshectares_latest_tot = 0

        try:
            landsalestransaction_latest, landsalestransaction_latest_tot = get_stat_data(
                ['class'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Number of transactions in 12 months']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsaleshectares_latest, landsaleshectares_latest_tot = get_stat_data(
                ['class'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Total hectare traded in 12 months(ha)']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsalesaverageprice_latest, _ = get_stat_data(
                ['class'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Average price per hectare in 12 months(R/ha)']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass
        try:
            landsalespricetrends_latest, _ = get_stat_data(
                ['class'], geo, session,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Price trend per hectare in 12 months(R/ha)']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        try:
            landsalesaveragetrends_latest, _ = get_stat_data(
                ['class'], geo, session, exclude_zero=True,
                table_name='land_traded_per_class_statistic_2018',
                only={'statistic': ['Average trend in 12 months(%)']},
                key_order=LAND_CLASS,
                percent=False)
        except Exception as e:
            pass

        landsales_latest['landsalestransaction'] = landsalestransaction_latest
        landsales_latest['landsaleshectares'] = landsaleshectares_latest
        landsales_latest['landsalesaverageprice'] = landsalesaverageprice_latest
        landsales_latest['landsalespricetrends'] = landsalespricetrends_latest
        landsales_latest['landsaleshectares_tot'] = \
            {
                "name": " Total number of sold hectares from Dec 2017 to Nov 2018",
                "values": {"this": int(landsaleshectares_latest_tot)},
            }
        landsales_latest['landsalestransaction_tot'] = \
            {
                "name": "Total number of sales transactions from Dec 2017 to Nov 2018",
                "values": {"this": int(landsalestransaction_latest_tot)},
            }
        landsales_latest['is_missing'] = landsalestransaction_latest.get('is_missing') and \
                                  landsaleshectares_latest.get('is_missing')

    return landsales_latest


def get_landsalescolour_profile(geo, session):
    with dataset_context(year='2016'):
        landsalescolourhectares = landsalescolourhectarespermonth = LOCATIONNOTFOUND
        landsalescolourhectarespermonthperga = landsalescolourhectarespermonthpergu = LOCATIONNOTFOUND
        landsalescolourhectarespermonthperot = landsalescolourhectarespermonthperpr = LOCATIONNOTFOUND
        landsalescolourcostpermonth = landsalescolourtattransactionpermonth = LOCATIONNOTFOUND
        landsalescolourpricehecpermonth = landsalescolourtransaction = LOCATIONNOTFOUND
        landsalescolourtattransaction = landsalescolourtransactionpermonth = LOCATIONNOTFOUND
        landsalescolourtransactionpermonthperga = landsalescolourtransactionpermonthpergu = LOCATIONNOTFOUND
        landsalescolourtransactionpermonthperot = landsalescolourtransactionpermonthperpr = LOCATIONNOTFOUND

        landsalescolourhectares_tot = 0
        landsalescolourtransaction_tot = 0
        landsalescolourcost_tot = 0

        try:
            landsalescolourhectares, landsalescolourhectares_tot = get_stat_data(
                ['land_breakdown_hc'], geo, session,
                table_name='landsalessummaryhectarestcolour'
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransaction, landsalescolourtransaction_tot = get_stat_data(
                ['land_breakdown_tc'], geo, session,
                table_name='landsalessummarytransactionscolour',
                only={'land_breakdown_tc': ['Government Agriculture',
                                            'Government Urban', 'Private',
                                            'Other']}
            )
        except Exception as e:
            pass

        try:
            landsalescolourtattransaction, _ = get_stat_data(
                ['land_breakdown_tc'], geo, session,
                table_name='landsalessummarytransactionscolour',
                only={'land_breakdown_tc': ['all', 'colour']}
            )
        except Exception as e:
            pass

        try:
            landsalescolourtattransactionpermonth, _ = get_stat_data(
                ['month', 'land_breakdown_tc'], geo, session,
                table_name='landsalessummarytransactionscolour',
                only={'land_breakdown_tc': ['all', 'colour']},
                key_order={'month_tc': MONTH,
                           'land_breakdown_tc': ['All', 'Colour']}
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonth, _ = get_stat_data(
                ['month_tc'], geo, session,
                table_name='landsalessummaryhectarestcolour',
                key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                           'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonth, _ = get_stat_data(
                ['month_tc'], geo, session,
                table_name='landsalessummarytransactionscolour',
                key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                           'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonth, landsalescolourcost_tot = get_stat_data(
                ['month_cc'], geo, session,
                table_name='landsalessummarycosttcolour',
                key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                           'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
            )
        except Exception as e:
            pass

        try:
            landsalescolourpricehecpermonth, _ = get_stat_data(
                ['month_pc'], geo, session,
                table_name='landsalessummarypricetcolour',
                key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', \
                           'Mar', 'Apr', 'May', 'Jun', 'Jul')
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthperga, _ = get_stat_data(
                ['month_hc'], geo, session,
                table_name='landsalessummaryhectarestcolour',
                only={'land_breakdown_hc': ['Government Agriculture']},
                key_order={'month_hc': MONTH}
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthperga, _ = get_stat_data(
                ['month_tc'], geo, session,
                table_name='landsalessummarytransactionscolour',
                only={'land_breakdown_tc': ['Government Agriculture']},
                key_order={'month_tc': MONTH}
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthpergu, _ = get_stat_data(
                ['month_hc'], geo, session,
                table_name='landsalessummaryhectarestcolour',
                only={'land_breakdown_hc': ['Government Urban']},
                key_order={'month_hc': MONTH}
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthpergu, _ = get_stat_data(
                ['month_tc'], geo, session,
                table_name='landsalessummarytransactionscolour',
                only={'land_breakdown_tc': ['Government Urban']},
                key_order={'month_tc': MONTH}
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthperpr, _ = get_stat_data(
                ['month_hc'], geo, session,
                table_name='landsalessummaryhectarestcolour',
                only={'land_breakdown_hc': ['Private']},
                key_order={'month_hc': MONTH}
            )
        except Exception as e:
            pass
        try:
            landsalescolourtransactionpermonthperpr, _ = get_stat_data(
                ['month_tc'], geo, session,
                table_name='landsalessummarytransactionscolour',
                only={'land_breakdown_tc': ['Private']},
                key_order={'month_tc': MONTH}
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthperot, _ = get_stat_data(
                ['month_hc'], geo, session,
                table_name='landsalessummaryhectarestcolour',
                only={'land_breakdown_hc': ['Other']},
                key_order={'month_hc': MONTH}
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthperot, _ = get_stat_data(
                ['month_tc'], geo, session,
                table_name='landsalessummarytransactionscolour',
                only={'land_breakdown_tc': ['Other']},
                key_order={'month_tc': MONTH}
            )
        except Exception as e:
            pass

    return {
        'landsalescolourhectares': landsalescolourhectares,
        'landsalescolourtransaction': landsalescolourtransaction,
        'landsalescolourtattransaction': landsalescolourtattransaction,
        'landsalescolourtattransactionpermonth': landsalescolourtattransactionpermonth,
        'landsalescolourpricehecpermonth': landsalescolourpricehecpermonth,
        'landsalescolourcostpermonth': landsalescolourcostpermonth,
        'landsalescolourtransactionpermonth': landsalescolourtransactionpermonth,
        'landsalescolourhectarespermonth': landsalescolourhectarespermonth,
        'landsalescolourhectarespermonthperpr': landsalescolourhectarespermonthperpr,
        'landsalescolourhectarespermonthperga': landsalescolourhectarespermonthperga,
        'landsalescolourhectarespermonthpergu': landsalescolourhectarespermonthpergu,
        'landsalescolourhectarespermonthperot': landsalescolourhectarespermonthperot,
        'landsalescolourtransactionpermonthperpr': landsalescolourtransactionpermonthperpr,
        'landsalescolourtransactionpermonthperga': landsalescolourtransactionpermonthperga,
        'landsalescolourtransactionpermonthpergu': landsalescolourtransactionpermonthpergu,
        'landsalescolourtransactionpermonthperot': landsalescolourtransactionpermonthperot,
        'landsalescolourhectares_stat': {
            "name": "Total hectares (ha) traded from Aug 2017/July 2018 for transaction of colour",
            "values": {"this": landsalescolourhectares_tot},
        },
        'landsalescolourcost_stat': {
            "name": "Total Cost in R (million) traded from Aug 2017/July 2018 for transaction of colour",
            "values": {"this": landsalescolourcost_tot},
        },
        'landsalescolourtransaction_stat': {
            "name": "Total transactions traded from Aug 2017/July 2018 for transaction of colour",
            "values": {"this": landsalescolourtransaction_tot},
        },
        'is_missing': landsalescolourtattransaction.get('is_missing')

    }


def get_landsalescolour_latest_profile(geo, session):
    with dataset_context(year='2018'):
        landsalescolourhectares_latest = landsalescolourhectarespermonth_latest = LOCATIONNOTFOUND
        landsalescolourcostpermonth_latest = landsalescolourcostpermonthbreakdown_latest = LOCATIONNOTFOUND
        landsalescolourcostpermonthbreakdowngu_latest = landsalescolourcostpermonthbreakdownga_latest = LOCATIONNOTFOUND
        landsalescolourcostpermonthbreakdownpr_latest = landsalescolourcostpermonthbreakdownot_latest = LOCATIONNOTFOUND
        landsalescolourtransaction_latest = landsalescolourtransactionpermonthbreakdown_latest = LOCATIONNOTFOUND
        landsalesallvscolourtransaction_latest = landsalescolourhectarespermonthbreakdown_latest = LOCATIONNOTFOUND
        landsalescolourhectarespermonthbreakdowngu_latest = landsalescolourhectarespermonthbreakdownga_latest = LOCATIONNOTFOUND
        landsalescolourhectarespermonthbreakdownpr_latest = landsalescolourhectarespermonthbreakdownot_latest = LOCATIONNOTFOUND
        landsalescolourtransactionpermonthbreakdownga_latest = landsalescolourtransactionpermonthbreakdowngu_latest = LOCATIONNOTFOUND
        landsalescolourtransactionpermonthbreakdownpr_latest = landsalescolourtransactionpermonthbreakdownot_latest = LOCATIONNOTFOUND
        landsalescolourtransactionpermonth_latest = LOCATIONNOTFOUND

        landsalescolourhectares_latest_tot = 0
        landsalescolourtransaction_latest_tot = 0
        landsalescolourcost_latest_tot = 0

        try:
            landsalescolourhectares_latest, landsalescolourhectares_latest_tot = get_stat_data(
                ['breakdown_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only={'breakdown_cc': ['Government Agriculture',
                                            'Government Urban', 'Private',
                                            'Other']}
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransaction_latest, landsalescolourtransaction_latest_tot = get_stat_data(
                ['breakdown_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Government Agriculture',
                                            'Government Urban', 'Private',
                                            'Other']}
            )
        except Exception as e:
            pass

        try:
            landsalesallvscolourtransaction_latest, _ = get_stat_data(
                ['transaction_group'], geo, session,
                table_name='land_traded_all_vs_colour_2018',
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonth_latest, _ = get_stat_data(
                ['month', 'transaction_group'], geo, session,
                table_name='land_traded_all_vs_colour_2018',
                only={'transaction_group': ['all', 'colour']},
                key_order={'month': MONTH_LATEST,
                           'transaction_group': ['All', 'Colour']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonth_latest, _ = get_stat_data(
                ['month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                key_order=( 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May',\
                 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov'),
                 percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdown_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdownga_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only= {'breakdown_cc': ['Government Agriculture']},
                key_order={'month_cc': MONTH_LATEST,
                        'breakdown_cc': ['Government Agriculture']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdowngu_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only= {'breakdown_cc': ['Government Urban']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdownpr_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only= {'breakdown_cc': ['Private']},
                key_order={'month_cc': MONTH_LATEST,
                        'breakdown_cc': ['Private']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourhectarespermonthbreakdownot_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_hectares_breakdown_2018',
                only= {'breakdown_cc': ['Other']},
                key_order={'month_cc': MONTH_LATEST,
                'breakdown_cc': ['Other']},
                percent=False
                )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdown_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Government Agriculture',
                                            'Government Urban', 'Private',
                                            'Other']},
                key_order={'month_cc': MONTH_LATEST,
                        'breakdown_cc': ['Government Agriculture', 'Private',
                                            'Government Urban',
                                            'Other']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdowngu_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Government Urban']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdownga_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Government Agriculture']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdownot_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Other']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourtransactionpermonthbreakdownpr_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_transactions_2018',
                only={'breakdown_cc': ['Private']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonth_latest, landsalescolourcost_latest_tot = get_stat_data(
                ['month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                key_order=( 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May',\
                 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov'),
                 percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdown_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                key_order={'month_cc': MONTH_LATEST,
                        'breakdown_cc': ['Government Agriculture', 'Private',
                                            'Government Urban',
                                            'Other']},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdownot_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                only={'breakdown_cc': ['Other']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdownpr_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                only={'breakdown_cc': ['Private']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdowngu_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                only={'breakdown_cc': ['Government Urban']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass

        try:
            landsalescolourcostpermonthbreakdownga_latest, _ = get_stat_data(
                ['breakdown_cc','month_cc'], geo, session,
                table_name='land_traded_colour_cost_breakdown_2018',
                only={'breakdown_cc': ['Government Agriculture']},
                key_order={'month_cc': MONTH_LATEST},
                percent=False
            )
        except Exception as e:
            pass
    return {
        'landsalescolourhectares': landsalescolourhectares_latest,
        'landsalescolourtransaction': landsalescolourtransaction_latest,
        'landsalesallvscolourtransaction': landsalesallvscolourtransaction_latest,
        'landsalescolourtattransactionpermonth': landsalescolourtransactionpermonth_latest,
        'landsalescolourhectarespermonthbreakdown': landsalescolourhectarespermonthbreakdown_latest,
        'landsalescolourhectarespermonthbreakdowngu': landsalescolourhectarespermonthbreakdowngu_latest,
        'landsalescolourhectarespermonthbreakdownga': landsalescolourhectarespermonthbreakdownga_latest,
        'landsalescolourhectarespermonthbreakdownot': landsalescolourhectarespermonthbreakdownot_latest,
        'landsalescolourhectarespermonthbreakdownpr': landsalescolourhectarespermonthbreakdownpr_latest,
        'landsalescolourtransactionpermonthbreakdown': landsalescolourtransactionpermonthbreakdown_latest,
        'landsalescolourtransactionpermonthbreakdowngu': landsalescolourtransactionpermonthbreakdowngu_latest,
        'landsalescolourtransactionpermonthbreakdownga': landsalescolourtransactionpermonthbreakdownga_latest,
        'landsalescolourtransactionpermonthbreakdownpr': landsalescolourtransactionpermonthbreakdownpr_latest,
        'landsalescolourtransactionpermonthbreakdownot': landsalescolourtransactionpermonthbreakdownot_latest,
        'landsalescolourcostpermonthbreakdown': landsalescolourcostpermonthbreakdown_latest,
        'landsalescolourcostpermonthbreakdowngu': landsalescolourcostpermonthbreakdowngu_latest,
        'landsalescolourcostpermonthbreakdownga': landsalescolourcostpermonthbreakdownga_latest,
        'landsalescolourcostpermonthbreakdownpr': landsalescolourcostpermonthbreakdownpr_latest,
        'landsalescolourcostpermonthbreakdownot': landsalescolourcostpermonthbreakdownot_latest,
        'landsalescolourcostpermonth': landsalescolourcostpermonth_latest,
        'landsalescolourhectarespermonth': landsalescolourhectarespermonth_latest,
        'landsalescolourhectares_stat': {
            "name": "Total hectares (ha) traded from Dec 2017/Nov 2018 for transaction of colour",
            "values": {"this": landsalescolourhectares_latest_tot},
        },
        'landsalescolourcost_stat': {
            "name": "Total Cost in R (million) traded from Dec 2017/Nov 2018 for transaction of colour",
            "values": {"this": landsalescolourcost_latest_tot},
        },
        'landsalescolourtransaction_stat': {
            "name": "Total transactions traded from Dec 2017/Nov 2018 for transaction of colour",
            "values": {"this": landsalescolourtransaction_latest_tot},
        },
        'is_missing': landsalescolourhectares_latest.get('is_missing')

    }


def districtdistribution(geo, session):
    with dataset_context(year='2016'):
        towndistrictdistributiontransactions = all_town = LOCATIONNOTFOUND
        towndistrictdistributionhectares = towndistrictdistributionavgprice = LOCATIONNOTFOUND
        towndistrictdistributionpricetrends = LOCATIONNOTFOUND
        towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = LOCATIONNOTFOUND
        towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = LOCATIONNOTFOUND
        towndistrictdistributionhectares_tot = towndistrictdistributiontransactions_tot = 0
        dist = {}
        towns = []

        try:
            all_town, _ = get_stat_data(
                ['town_name_dt'], geo, session,
                table_name='towndistrictdistributiontransactions',
                exclude_zero=True,
                percent=False)

            for keys, townname in all_town.iteritems():
                if keys != 'metadata':
                    towns.append(keys)
            towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = {}
            towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = {}

            for town in towns:
                town_code = town.replace(' ', '_').replace('-', '_').replace(
                    '/',
                    '_').replace(
                    '(', '').replace(')', '').lower()
                try:
                    towndistrictdistributiontransactionsdata[
                        town_code], _ = get_stat_data(
                        ['class_dt'], geo, session,
                        table_name='towndistrictdistributiontransactions',
                        table_fields=['town_name_dt', 'class_dt'],
                        only={'town_name': [town]},
                        exclude_zero=True,
                        percent=False)
                except Exception as e:
                    pass

            try:
                towndistrictdistributionhectaresdata[
                    town_code], _ = get_stat_data(
                    ['class_dh'], geo, session,
                    table_name='towndistrictdistributionhectares',
                    table_fields=['town_name_dh', 'class_dh'],
                    only={'town_name_dh': [town]},
                    exclude_zero=True,
                    percent=False)
            except Exception:
                pass

            try:
                towndistrictdistributionavgpricedata[
                    town_code], _ = get_stat_data(
                    ['class_ap'], geo, session,
                    table_name='towndistrictdistributionavgprice',
                    table_fields=['town_name_ap', 'class_ap'],
                    only={'town_name_ap': [town]},
                    exclude_zero=True,
                    percent=False)
            except Exception:
                pass

                try:
                    towndistrictdistributionpricetrendsdata[
                        town_code], _ = get_stat_data(
                        ['class_pt'], geo, session,
                        table_name='towndistrictdistributionpricetrends',
                        table_fields=['town_name_pt', 'class_pt'],
                        only={'town_name_pt': [town]},
                        exclude_zero=True,
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

def districtdistribution_latest(geo, session):
    with dataset_context(year='2016'):
        towndistrictdistributiontransactions = all_town = LOCATIONNOTFOUND
        towndistrictdistributionhectares = towndistrictdistributionavgprice = LOCATIONNOTFOUND
        towndistrictdistributionpricetrends = LOCATIONNOTFOUND
        towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = LOCATIONNOTFOUND
        towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = LOCATIONNOTFOUND
        towndistrictdistributionhectares_tot = towndistrictdistributiontransactions_tot = 0
        dist = {}
        towns = []

        try:
            all_town, _ = get_stat_data(
                ['town_name_dt'], geo, session,
                table_name='towndistrictdistributiontransactions',
                exclude_zero=True,
                percent=False)

            for keys, townname in all_town.iteritems():
                if keys != 'metadata':
                    towns.append(keys)
            towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = {}
            towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = {}

            for town in towns:
                town_code = town.replace(' ', '_').replace('-', '_').replace(
                    '/',
                    '_').replace(
                    '(', '').replace(')', '').lower()
                try:
                    towndistrictdistributiontransactionsdata[
                        town_code], _ = get_stat_data(
                        ['class_dt'], geo, session,
                        table_name='towndistrictdistributiontransactions',
                        table_fields=['town_name_dt', 'class_dt'],
                        only={'town_name': [town]},
                        exclude_zero=True,
                        percent=False)
                except Exception as e:
                    pass

            try:
                towndistrictdistributionhectaresdata[
                    town_code], _ = get_stat_data(
                    ['class_dh'], geo, session,
                    table_name='towndistrictdistributionhectares',
                    table_fields=['town_name_dh', 'class_dh'],
                    only={'town_name_dh': [town]},
                    exclude_zero=True,
                    percent=False)
            except Exception:
                pass

            try:
                towndistrictdistributionavgpricedata[
                    town_code], _ = get_stat_data(
                    ['class_ap'], geo, session,
                    table_name='towndistrictdistributionavgprice',
                    table_fields=['town_name_ap', 'class_ap'],
                    only={'town_name_ap': [town]},
                    exclude_zero=True,
                    percent=False)
            except Exception:
                pass

                try:
                    towndistrictdistributionpricetrendsdata[
                        town_code], _ = get_stat_data(
                        ['class_pt'], geo, session,
                        table_name='towndistrictdistributionpricetrends',
                        table_fields=['town_name_pt', 'class_pt'],
                        only={'town_name_pt': [town]},
                        exclude_zero=True,
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
