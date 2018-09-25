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

LAND_CLASS = OrderedDict()
LAND_CLASS["<1 500"] = "Under 1,500 ha"
LAND_CLASS[" < 1 500"] = "Under 1,500 ha"
LAND_CLASS["1 501-3 000"] = "1,500-3,000 ha"
LAND_CLASS["3 001-5 000"] = "3,001-5,000 ha"
LAND_CLASS["5 001-10 000"] = "5,001-10,000 ha"
LAND_CLASS["10 001-20 000"] = "10,001-20,000 ha"
LAND_CLASS["20 001-30 000"] = "20,001-30,000 ha"
LAND_CLASS["30 001-40 000"] = "30,001-40,000 ha"
LAND_CLASS["40 001-50 000"] = "40,001-50,000 ha"
LAND_CLASS["50 001-100 000"] = "50,001-100,000 ha"
LAND_CLASS["100 001-150 000"] = "100,001-150,000 ha"
LAND_CLASS["150 001-200 000"] = "150,001-200,000 ha"
LAND_CLASS["200 001-300 000"] = "200,001-300,000 ha"
LAND_CLASS["300 001-500 000"] = "300,001-500,000 ha"
LAND_CLASS["500 001-800 000"] = "500,001-800,000 ha"
LAND_CLASS["800 001-1 000 000"] = "800,001-1,000,000 ha"
LAND_CLASS[">1 000 000"] = "Above 1,000,000 ha"


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
            if not data[topic_name] == LOCATIONNOTFOUND:
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
        if not data['landsales'] == LOCATIONNOTFOUND:
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
        if not data['redistributionandrestitution'] == LOCATIONNOTFOUND:
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
    redistributedlandinhectares = redistributedlandcostinrands = redistributedlandaveragecostperhectares = LOCATIONNOTFOUND
    hectarestransferredperprovincebyyear = hectaresacquiredrestitution = projectsrestitution = beneficiariesrestitution = LOCATIONNOTFOUND
    claimssettledrestitution = disabilitiesrestitution = femaleheadedhouseholdsrestitution = financialcompensationrestitution = LOCATIONNOTFOUND
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
        femalepartybenefited, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['female']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        youthpartybenefited, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['youth']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        disabledpeoplepartybenefited, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['disable people']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        hectarestransferredperprovincebyyear, _ = get_stat_data(
            ['year'], geo, session,
            percent=False)
    except LocationNotFound:
        pass

    try:
        hectaresacquiredrestitution, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['hectares acquired']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        claimssettledrestitution, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['claims settled']},
            percent=False)
    except LocationNotFound:
        pass
    try:
        disabilitiesrestitution, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['people with disabilities']},
            percent=False)
    except LocationNotFound:
        pass
    try:
        beneficiariesrestitution, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['beneficiaries']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        householdsrestitution, _ = get_stat_data(
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
        financialcompensationrestitution, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['financial compensation']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        projectsrestitution, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['projects']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        femaleheadedhouseholdsrestitution, _ = get_stat_data(
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

    return redistribution_and_restitution

def get_landsales_profiles(geo, session):
    landsales = {}
    landsalestransaction = LOCATIONNOTFOUND
    try:
        landsalestransaction,landsalestransaction_tot = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_fields=['class'],
            table_name= 'landsalesdistributiontransaction',
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsaleshectares,landsaleshectares_tot = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_fields=['class'],
            table_name= 'landsalesdistributionhectares',
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsalesaverageprice,landsalesaverageprice_tot = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_fields=['class'],
            table_name= 'landsalesdistributionaverageprice',
            percent=False)
    except LocationNotFound as e:
        pass
    try:
        landsalespricetrends,landsalespricetrends_tot = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_fields=['class'],
            table_name= 'landsalesdistributionpricetrends',
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsalesaveragetrends,landsalesaveragetrends_tot = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_fields=['class'],
            table_name= 'landsalesdistributionaveragetrends',
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
            table_fields=['class'],
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

    landsales['landsaleshectares_tot'] = { "name": "Total Number of Hectares",
                                               "values": {"this": int(landsaleshectares_tot)},
                                            }

    landsales['landsalestransaction_tot'] = { "name": "Total Number of transactions",
                                               "values": {"this": int(landsalestransaction_tot)},
                                            }

    return landsales
