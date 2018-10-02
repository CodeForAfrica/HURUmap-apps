# -*- coding: utf-8 -*-
import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields, get_datatable
from wazimap.data.utils import get_session, calculate_median, merge_dicts, get_stat_data, get_objects_by_geo, group_remainder, LocationNotFound
from django.conf import settings
from collections import OrderedDict
from wazimap.data.base import Base
from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast

log = logging.getLogger(__name__)
# ensure tables are loaded
import our_land.tables  # noqa

SECTIONS = settings.OUR_LAND.get('topics', {})

LOCATIONNOTFOUND = {'is_missing': True, 'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}

MONTH = ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul']
#
# LAND_CLASS = OrderedDict()
# LAND_CLASS[u'less than 1\xa0500'] = "Under 1,500"
# LAND_CLASS[u'1\xa0501 - 3\xa0000'] = "1,500-3,000"
# LAND_CLASS[u'3\xa0001 - 5\xa0000'] = "3,001-5,000"
# LAND_CLASS[u'5\xa0001 - 10\xa0000'] = "5,001-10,000"
# LAND_CLASS[u'10\xa0001 - 20\xa0000'] = "10,001-20,000"
# LAND_CLASS[u'20\xa0001 - 30\xa0000'] = "20,001-30,000"
# LAND_CLASS[u'30\xa0001 - 40\xa0000'] = "30,001-40,000"
# LAND_CLASS[u'40\xa0001 - 50\xa0000'] = "40,001-50,000"
# LAND_CLASS[u'50\xa0001 - 100\xa0000'] = "50,001-100,000"
# LAND_CLASS[u'100\xa0001 - 150\xa0000'] = "100,001-150,000"
# LAND_CLASS[u'150\xa0001 - 200\xa0000'] = "150,001-200,000"
# LAND_CLASS[u'200\xa0001 - 300\xa0000'] = "200,001-300,000"
# LAND_CLASS[u'300\xa0001 - 500\xa0000'] = "300,001-500,000"
# LAND_CLASS[u'500\xa0001 - 800\xa0000'] = "500,001-800,000"
# LAND_CLASS[u'800\xa0001 - 1\xa0000\xa0000'] = "800,001-1,000,000"
# LAND_CLASS[u'greater than 1\xa0000\xa0000'] = "Above 1,000,000"

LAND_CLASS = [u'Under 1.5K',u'1,501-3K',u'3,001-5K',u'5,001-10K',u'10,001-20K',u'20,001-30K', u'30,001-40K',
u'40,001-50K', u'50,001-100K',u'100,001-150K',u'150,001-200K',u'200,001-300K',u'300,001-500K',u'500,001-800K',u'800,001-1M',u'Above 1M']


def get_land_profile(geo, profile_name, request):
    session = get_session()
    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        data = {}
        land_sections = ['farmland', 'ervenland', 'sectionaltitleland']
        #for each topic in sections
        #get data for that topic profiles
        for section in land_sections:
            topic_name = SECTIONS[section]['topic']
            data[topic_name] = get_land_topic_profiles(geo, session, topic_name)

            # get profiles for comparative geometries
            if not data[topic_name] == LOCATIONNOTFOUND and (geo.geo_level == 'province' or  geo.geo_level == 'country'):
                for comp_geo in comparative_geos:
                    try:
                        merge_dicts(
                            data[topic_name], get_land_topic_profiles(comp_geo, session, topic_name),
                                comp_geo.geo_level)
                    except KeyError as e:
                        msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                            geo.geoid, topic_name, comp_geo.geoid, e)
                        log.fatal(msg, exc_info=e)
                        raise ValueError(msg)

        data['landsales'] = get_landsales_profiles(geo, session)
        if not data['landsales'] == LOCATIONNOTFOUND and (geo.geo_level == 'province' or  geo.geo_level == 'country'):
            for comp_geo in comparative_geos:
                try:
                    merge_dicts(
                        data['landsales'], get_landsales_profiles(comp_geo, session),
                            comp_geo.geo_level)
                except KeyError as e:
                    msg = "Error merging data into %s for section landsale from %s: KeyError: %s" % (
                        geo.geoid, comp_geo.geoid, e)
                    log.fatal(msg, exc_info=e)
                    raise ValueError(msg)

        data['redistributionandrestitution'] = get_redistribution_and_restitution_profiles(geo, session)
        if not data['redistributionandrestitution'] == LOCATIONNOTFOUND and (geo.geo_level == 'province' or  geo.geo_level == 'country'):
            for comp_geo in comparative_geos:
                try:
                    merge_dicts(
                        data['redistributionandrestitution'], get_redistribution_and_restitution_profiles(comp_geo, session),
                            comp_geo.geo_level)
                except KeyError as e:
                    msg = "Error merging data into %s for section redistributionandrestitution from %s: KeyError: %s" % (
                        geo.geoid, comp_geo.geoid, e)
                    log.fatal(msg, exc_info=e)
                    raise ValueError(msg)

        data['districtdistribution'] = districtdistribution(geo, session)
        data['landsalescolour'] = get_landsales_colour_profiles (geo, session)
        if not data['landsalescolour'] == LOCATIONNOTFOUND and (geo.geo_level == 'province' or  geo.geo_level == 'country'):
            for comp_geo in comparative_geos:
                try:
                    merge_dicts(
                        data['landsalescolour'], get_landsales_colour_profiles(comp_geo, session),
                            comp_geo.geo_level)
                except KeyError as e:
                    msg = "Error merging data into %s for land sale color from %s: KeyError: %s" % (
                        geo.geoid, comp_geo.geoid, e)
                    log.fatal(msg, exc_info=e)
                    raise ValueError(msg)
        return data

    finally:
        session.close()

def get_land_topic_profiles(geo, session, topic_name):
    topic_profiles = SECTIONS[topic_name]['profiles']
    profiles_data = {}

    for profile in topic_profiles:
        try:
            profile_table = profile.lower()
            profile_name = profile.lower().replace(' ', '_')
            profiles_data[profile_name] = LOCATIONNOTFOUND
            profiles_data[profile_name],_  = get_stat_data([profile_table], geo, session)
        except LocationNotFound:
            pass
    return profiles_data

def get_redistribution_and_restitution_profiles(geo, session):
    redistributedlandusebreakdown = redistributeprogrammeprojectsbyyear = redistributeprogrammehouseholdsbyyear = LOCATIONNOTFOUND
    redistributeprogrammebeneficiariesbyyear = femalepartybenefited = youthpartybenefited = disabledpeoplepartybenefited = LOCATIONNOTFOUND
    redistributedlandinhectares = redistributedlandcostinrands =  LOCATIONNOTFOUND
    redistributedlandaveragecostperhectares = householdsrestitution = landcostrestitution = LOCATIONNOTFOUND
    hectarestransferredperprovincebyyear = hectaresacquiredrestitution = projectsrestitution = beneficiariesrestitution = LOCATIONNOTFOUND
    claimssettledrestitution = disabilitiesrestitution = femaleheadedhouseholdsrestitution = financialcompensationrestitution = LOCATIONNOTFOUND

    femaleheadedhouseholdsrestitution_tot = beneficiariesrestitution_tot = projectsrestitution_tot = 0
    financialcompensationrestitution_tot = claimssettledrestitution_tot = 0
    femalepartybenefited_tot = disabledpeoplepartybenefited_tot = youthpartybenefited_tot = 0
    hectarestransferredperprovincebyyear_tot = hectaresacquiredrestitution_tot = 0
    householdsrestitution_tot = disabilitiesrestitution_tot = 0

    redistribution_and_restitution = {}
    try:
        redistributedlandusebreakdown, _ = get_stat_data(
                        ['redistributed land use breakdown'], geo, session)
    except LocationNotFound:
        pass

    try:
        redistributeprogrammeprojectsbyyear, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'outcome of redistribution programme'],
            only={'outcome of redistribution programme': ['projects transferred']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        redistributeprogrammehouseholdsbyyear, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'outcome of redistribution programme'],
            only={'outcome of redistribution programme': ['benefited households']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        redistributeprogrammebeneficiariesbyyear, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'outcome of redistribution programme'],
            only={'outcome of redistribution programme': ['benefited beneficiaries']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        femalepartybenefited, femalepartybenefited_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['female']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        youthpartybenefited, youthpartybenefited_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['youth']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        disabledpeoplepartybenefited, disabledpeoplepartybenefited_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['disable people']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        hectarestransferredperprovincebyyear, hectarestransferredperprovincebyyear_tot = get_stat_data(
            ['year'], geo, session,
            percent=False)
    except LocationNotFound:
        pass

    try:
        hectaresacquiredrestitution, hectaresacquiredrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['hectares acquired']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        claimssettledrestitution, claimssettledrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['claims settled']},
            percent=False)
    except LocationNotFound:
        pass
    try:
        disabilitiesrestitution, disabilitiesrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['people with disabilities']},
            percent=False)
    except LocationNotFound:
        pass
    try:
        beneficiariesrestitution, beneficiariesrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['beneficiaries']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        householdsrestitution, householdsrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['households']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        landcostrestitution, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['landcost']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        financialcompensationrestitution, financialcompensationrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['financial compensation']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        projectsrestitution, projectsrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['projects']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        femaleheadedhouseholdsrestitution, femaleheadedhouseholdsrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['female headed households']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        redistributedlandinhectarestable = get_datatable('redistributedlandinhectares')
        redistributedlandinhectares, tot  = redistributedlandinhectarestable.get_stat_data(
                            geo, percent=False)
        redistributedlandinhectares['redistributedlandinhectares']['name'] = "Total land redistributed in hectares for the year 2017/2018"
    except LocationNotFound:
        pass

    try:
        redistributedlandcostinrandstable = get_datatable('redistributedlandcostinrands')
        redistributedlandcostinrands, tot_cost  = redistributedlandcostinrandstable.get_stat_data(geo, percent=False)
        redistributedlandcostinrands['redistributedlandcostinrands']['name'] = "Cost in Rands (ZAR) of Redistributed Land for the year 2017/2018"
    except LocationNotFound:
        pass

    try:
        redistributedlandaveragecostperhectarestable = get_datatable('redistributedlandaveragecostperhectares')
        redistributedlandaveragecostperhectares, tot_avg_cost  = redistributedlandaveragecostperhectarestable.get_stat_data(geo, percent=False)
        redistributedlandaveragecostperhectares['redistributedlandaveragecostperhectares']['name'] = "Average Cost in Rands (ZAR) per Hectares for Redistributed Land in 2017/2018"
    except LocationNotFound:
        pass

    redistribution_and_restitution['redistributedlandusebreakdown']= redistributedlandusebreakdown
    redistribution_and_restitution['redistributedlandinhectares_stat']= redistributedlandinhectares['redistributedlandinhectares']
    redistribution_and_restitution['redistributedlandcostinrands_stat']= redistributedlandcostinrands['redistributedlandcostinrands']
    redistribution_and_restitution['redistributedlandaveragecostperhectares_stat']= redistributedlandaveragecostperhectares['redistributedlandaveragecostperhectares']
    redistribution_and_restitution['redistributeprogrammeprojectsbyyear']= redistributeprogrammeprojectsbyyear
    redistribution_and_restitution['redistributeprogrammehouseholdsbyyear']= redistributeprogrammehouseholdsbyyear
    redistribution_and_restitution['redistributeprogrammebeneficiariesbyyear']= redistributeprogrammebeneficiariesbyyear

    redistribution_and_restitution['femalepartybenefited'] = femalepartybenefited
    redistribution_and_restitution['youthpartybenefited'] = youthpartybenefited
    redistribution_and_restitution['disabledpeoplepartybenefited'] = disabledpeoplepartybenefited
    redistribution_and_restitution['hectarestransferredperprovincebyyear'] = hectarestransferredperprovincebyyear
    redistribution_and_restitution['hectaresacquiredrestitution'] = hectaresacquiredrestitution
    redistribution_and_restitution['claimssettledrestitution'] = claimssettledrestitution
    redistribution_and_restitution['householdsrestitution'] = householdsrestitution
    redistribution_and_restitution['femaleheadedhouseholdsrestitution'] = femaleheadedhouseholdsrestitution
    redistribution_and_restitution['disabilitiesrestitution'] = disabilitiesrestitution
    redistribution_and_restitution['projectsrestitution'] = projectsrestitution
    redistribution_and_restitution['beneficiariesrestitution'] = beneficiariesrestitution
    redistribution_and_restitution['landcostrestitution'] = landcostrestitution
    redistribution_and_restitution['financialcompensationrestitution'] = financialcompensationrestitution
    redistribution_and_restitution['femalepartybenefited_tot'] = femalepartybenefited_tot
    redistribution_and_restitution['youthpartybenefited_tot'] = youthpartybenefited_tot
    redistribution_and_restitution['disabledpeoplepartybenefited_tot'] = disabledpeoplepartybenefited_tot
    redistribution_and_restitution['hectarestransferredperprovincebyyear_tot'] = hectarestransferredperprovincebyyear_tot
    redistribution_and_restitution['hectaresacquiredrestitution_tot'] = hectaresacquiredrestitution_tot
    redistribution_and_restitution['claimssettledrestitution_tot'] = claimssettledrestitution_tot
    redistribution_and_restitution['householdsrestitution_stat'] = {"name": "Total households benefited in restitution programme from 2009/2018",
                                                                    "values": {"this": householdsrestitution_tot}
                                                                    }
    redistribution_and_restitution['femaleheadedhouseholdsrestitution_stat'] = {"name": "Female headed households benefited in restitution programme from 2009/2018",
                                                                    "values": {"this": femaleheadedhouseholdsrestitution_tot}
                                                                    }
    redistribution_and_restitution['disabilitiesrestitution_stat'] = {"name": "Number of people with disabilities benefited in restitution programme from 2009/2018",
                                                                    "values": {"this": disabilitiesrestitution_tot}
                                                                    }
    redistribution_and_restitution['projectsrestitution_stat'] = {"name": "Number of projects in the restitution programme from 2009/2018",
                                                                    "values": {"this": projectsrestitution_tot}
                                                                    }
    redistribution_and_restitution['beneficiariesrestitution_stat'] = {"name": "Number of beneficiaries in the restitution programme from 2009/2018",
                                                                    "values": {"this": beneficiariesrestitution_tot}
                                                                    }

    redistribution_and_restitution['landcostrestitution'] = landcostrestitution

    return redistribution_and_restitution

def get_landsales_profiles(geo, session):
    landsales = {}
    landsalestransaction = landsaleshectares = landsalesaverageprice = landsalespricetrends = LOCATIONNOTFOUND
    landsaleslowestprice = landsaleshighestprice = landsalesaveragetrends = landsalesaveragepricejuly = LOCATIONNOTFOUND

    landsalestransaction_tot = landsaleshectares_tot = 0

    try:
        landsalestransaction,landsalestransaction_tot = get_stat_data(
            ['class'], geo, session,
            table_name= 'landsalesdistributiontransaction',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsaleshectares,landsaleshectares_tot = get_stat_data(
            ['class'], geo, session,
            table_name= 'landsalesdistributionhectares',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsalesaverageprice,_ = get_stat_data(
            ['class'], geo, session,
            table_name= 'landsalesdistributionaverageprice',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass
    try:
        landsalespricetrends,_ = get_stat_data(
            ['class'], geo, session,
            table_name= 'landsalesdistributionpricetrends',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsalesaveragetrends,_ = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_name= 'landsalesdistributionaveragetrends',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass

    # try:
    #     landsalesaveragepricejuly,landsalesaveragepricejuly_tot = get_stat_data(
    #         ['class'], geo, session, exclude_zero=True,
    #         table_fields=['class'],
    #         table_name= 'landsalesdistributionaveragepricejuly',
    #         percent=False)
    # except LocationNotFound as e:
    #     pass
    #
    # try:
    #     landsaleslowestprice,landsaleslowestprice_tot = get_stat_data(
    #         ['class'], geo, session, exclude_zero=True,
    #         table_fields=['class'],
    #         table_name= 'landsalesdistributionlowestprice',
    #         percent=False)
    # except LocationNotFound as e:
    #     pass
    #
    try:
        landsaleshighestprice,landsaleshighestprice_tot = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_name= 'landsalesdistributionhighestprice',
            percent=False)
    except LocationNotFound as e:
        pass

    landsales['landsalestransaction'] = landsalestransaction
    landsales['landsaleshectares'] = landsaleshectares
    # landsales['landsaleslowestprice'] = landsaleslowestprice
    # landsales['landsaleshighestprice'] = landsaleshighestprice
    landsales['landsalesaverageprice'] = landsalesaverageprice
    landsales['landsalespricetrends'] = landsalespricetrends
    #landsales['landsalesaveragetrends'] = landsalesaveragetrends
    # landsales['landsalesaveragepricejuly'] = landsalesaveragepricejuly

    landsales['landsaleshectares_tot'] = { "name": "Total number of sold hectares in 12 months",
                                               "values": {"this": int(landsaleshectares_tot)},
                                            }

    landsales['landsalestransaction_tot'] = { "name": "Total number of sales transactions in 12 months",
                                               "values": {"this": int(landsalestransaction_tot)},
                                            }

    return landsales



def get_landsales_colour_profiles(geo, session):
    landsalescolorhectares = landsalescolorhectarespermonth = LOCATIONNOTFOUND
    landsalescolorhectarespermonthperga = landsalescolorhectarespermonthpergu = LOCATIONNOTFOUND
    landsalescolorhectarespermonthperot = landsalescolorhectarespermonthperpr = LOCATIONNOTFOUND
    landsalescolorcostpermonth = landsalescolortattransactionpermonth = LOCATIONNOTFOUND
    landsalescolorpricehecpermonth = LOCATIONNOTFOUND
    landsalescolortransactionpermonthperga = landsalescolortransactionpermonthpergu = LOCATIONNOTFOUND
    landsalescolortransactionpermonthperot = landsalescolortransactionpermonthperpr = LOCATIONNOTFOUND

    landsalescolorhectares_tot = 0
    landsalescolortransactions_tot = 0
    landsalescolorcost_tot = 0

    try:
        landsalescolorhectares, landsalescolorhectares_tot = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummaryhectarestcolour'
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolortransaction, landsalescolortransaction_tot = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Agriculture', 'Government Urban', 'Private', 'Other']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolortattransaction, _ = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['all', 'colour']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolortattransactionpermonth, _ = get_stat_data (
            ['month', 'land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            key_order={'land_breakdown': ['all', 'color']},
            only={'land_breakdown': ['all', 'colour']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolorhectarespermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolortransactionpermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolorcostpermonth, landsalescolorcost_tot = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarycosttcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolorpricehecpermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarypricetcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolorhectarespermonthperga, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Government Agriculture']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolortransactionpermonthperga, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Agriculture']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolorhectarespermonthpergu, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Government Urban']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolortransactionpermonthpergu, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Urban']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolorhectarespermonthperpr, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Private']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass
    try:
        landsalescolortransactionpermonthperpr, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Private']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolorhectarespermonthperot, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Other']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolortransactionpermonthperot, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Other']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    return {
        'landsalescolorhectares': landsalescolorhectares,
        'landsalescolortransaction': landsalescolortransaction,
        'landsalescolortattransaction': landsalescolortattransaction,
        'landsalescolortattransactionpermonth': landsalescolortattransactionpermonth,
        'landsalescolorpricehecpermonth': landsalescolorpricehecpermonth,
        'landsalescolorcostpermonth': landsalescolorcostpermonth,
        'landsalescolortransactionpermonth': landsalescolortransactionpermonth,
        'landsalescolorhectarespermonth': landsalescolorhectarespermonth,
        'landsalescolorhectarespermonthperpr': landsalescolorhectarespermonthperpr,
        'landsalescolorhectarespermonthperga': landsalescolorhectarespermonthperga,
        'landsalescolorhectarespermonthpergu': landsalescolorhectarespermonthpergu,
        'landsalescolorhectarespermonthperot': landsalescolorhectarespermonthperot,
        'landsalescolortransactionpermonthperpr': landsalescolortransactionpermonthperpr,
        'landsalescolortransactionpermonthperga': landsalescolortransactionpermonthperga,
        'landsalescolortransactionpermonthpergu': landsalescolortransactionpermonthpergu,
        'landsalescolortransactionpermonthperot': landsalescolortransactionpermonthperot,
        'landsalescolorhectares_stat': { "name": "Total hectares (Ha) traded from Aug 2017/July8 for transaction of color",
                                         "values": {"this": landsalescolorhectares_tot},
                                        },
        'landsalescolorcost_stat': { "name": "Total Cost in R (million) traded from Aug 2017/July8 for transaction of color",
                                         "values": {"this": landsalescolorcost_tot},
                                        },
        'landsalescolortransaction_stat': { "name": "Total transactions traded from Aug 2017/July8 for transaction of color",
                                         "values": {"this": landsalescolortransaction_tot},
                                        }

        }
def districtdistribution(geo, session):
    districtdist = towndistrictdistributiontransactions = all_town = LOCATIONNOTFOUND
    towndistrictdistributionhectares = towndistrictdistributionavgprice = towndistrictdistributionpricetrends = LOCATIONNOTFOUND
    towndistrictdistributionhectares_tot = towndistrictdistributiontransactions_tot = 0
    dist = {}
    towns = []

    towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = LOCATIONNOTFOUND
    towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = LOCATIONNOTFOUND
    try:
        all_town, _ = get_stat_data(
            ['town_name'], geo, session,
            table_name= 'towndistrictdistributiontransactions',
            exclude_zero=True,
            percent=False)

        for keys, townname in all_town.iteritems():
            if keys != 'metadata':
                towns.append(keys)
        towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = {}
        towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = {}

        for town in towns:
            town_code = town.replace(' ', '_').replace('-', '_').replace('/', '_').replace('(','').replace(')','').lower()
            towndistrictdistributiontransactionsdata[town_code] = LOCATIONNOTFOUND
            towndistrictdistributionhectaresdata[town_code] = LOCATIONNOTFOUND
            towndistrictdistributionavgpricedata[town_code] = LOCATIONNOTFOUND
            towndistrictdistributionpricetrendsdata[town_code] = LOCATIONNOTFOUND

            try:
                towndistrictdistributiontransactionsdata[town_code], _ = get_stat_data(
                    ['class'], geo, session,
                    table_name= 'towndistrictdistributiontransactions',
                    table_fields = ['town_name', 'class'],
                    only={'town_name': [town]},
                    exclude_zero=True,
                    percent=False)
            except LocationNotFound as e:
                pass

            try:
                towndistrictdistributionhectaresdata[town_code], _ = get_stat_data(
                    ['class'], geo, session,
                    table_name= 'towndistrictdistributionhectares',
                    table_fields = ['town_name', 'class'],
                    only={'town_name': [town]},
                    exclude_zero=True,
                    percent=False)
            except LocationNotFound as e:
                pass

            try:
                towndistrictdistributionavgpricedata[town_code], _ = get_stat_data(
                    ['class'], geo, session,
                    table_name= 'towndistrictdistributionavgprice',
                    table_fields = ['town_name', 'class'],
                    only={'town_name': [town]},
                    exclude_zero=True,
                    percent=False)
            except LocationNotFound as e:
                pass

            try:
                towndistrictdistributionpricetrendsdata[town_code], _= get_stat_data(
                    ['class'], geo, session,
                    table_name= 'towndistrictdistributionpricetrends',
                    table_fields = ['town_name', 'class'],
                    only={'town_name': [town]},
                    exclude_zero=True,
                    percent=False)
            except LocationNotFound as e:
                pass
    except LocationNotFound as e:
        pass

    dist['towndistrictdistributiontransactionsdata'] = towndistrictdistributiontransactionsdata
    dist['towndistrictdistributionhectaresdata'] = towndistrictdistributionhectaresdata
    dist['towndistrictdistributionavgpricedata'] = towndistrictdistributionavgpricedata
    dist['towndistrictdistributionpricetrendsdata'] = towndistrictdistributionpricetrendsdata
    districtdist = dist
    return districtdist
