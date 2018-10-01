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


def districtdistribution(geo, session):
    districtdist = towndistrictdistributiontransactions = LOCATIONNOTFOUND
    towndistrictdistributionhectares = towndistrictdistributionavgprice = towndistrictdistributionpricetrends = LOCATIONNOTFOUND
    towndistrictdistributionhectares_tot = towndistrictdistributiontransactions_tot = 0
    dist = {}

    try:
        towndistrictdistributiontransactions,towndistrictdistributiontransactions_tot = get_stat_data(
            ['town_name', 'class'], geo, session,
            table_name= 'towndistrictdistributiontransactions',
            exclude_zero=True,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        towndistrictdistributionhectares,towndistrictdistributionhectares_tot = get_stat_data(
            ['town_name', 'class'], geo, session,
            table_name= 'towndistrictdistributionhectares',
            exclude_zero=True,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        towndistrictdistributionavgprice,_ = get_stat_data(
            ['town_name', 'class'], geo, session,
            table_name= 'towndistrictdistributionavgprice',
            table_fields=['class','town_name'],
            exclude_zero=True,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        towndistrictdistributionpricetrends,_= get_stat_data(
            ['town_name', 'class'], geo, session,
            table_name= 'towndistrictdistributionpricetrends',
            exclude_zero=True,
            percent=False)
    except LocationNotFound as e:
        pass


    dist['towndistrictdistributiontransactions'] = towndistrictdistributiontransactions
    dist['towndistrictdistributionhectares'] = towndistrictdistributionhectares
    dist['towndistrictdistributionavgprice'] = towndistrictdistributionavgprice
    dist['towndistrictdistributionpricetrends'] = towndistrictdistributionpricetrends
    districtdist = dist
    return districtdist
