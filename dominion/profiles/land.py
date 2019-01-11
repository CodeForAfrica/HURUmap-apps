# -*- coding: utf-8 -*-
import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields, get_datatable
from wazimap.data.utils import get_session, calculate_median, \
merge_dicts, get_stat_data, get_objects_by_geo, group_remainder, LocationNotFound
from django.conf import settings
from collections import OrderedDict
from wazimap.data.base import Base
from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast

log = logging.getLogger(__name__)
# ensure tables are loaded
import dominion.tables  # noqa

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
)
LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }

MONTH = ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan',
                    'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul']

LAND_CLASS = [u'Under 1.5K',u'1,501-3K',u'3,001-5K',u'5,001-10K'
    ,u'10,001-20K',u'20,001-30K', u'30,001-40K', u'40,001-50K', u'50,001-100K',
    u'100,001-150K',u'150,001-200K',u'200,001-300K',u'300,001-500K',
    u'500,001-800K',u'800,001-1M',u'Above 1M']

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
        data['land_audit_2013'] = get_land_audit_2013_profile(geo, session)
        print data
        return data

    finally:
        session.close()


def get_demographics_profile(geo, session):
    pop_dist_data = LOCATIONNOTFOUND
    total_pop = 0
    try:
        pop_dist_data, total_pop = get_stat_data(
            ['population group'], geo, session)
    except LocationNotFound:
        pass

    return {
        'total_population': {
            "name": "People",
            "values": {"this": total_pop},
        },
        'is_missing': pop_dist_data.get('is_missing', False)

    }

def get_farmland_profile(geo, session):
    topic_profiles = SECTIONS['farmland']['profiles']
    profiles_data = {'is_missing': True }

    for profile in topic_profiles:
        try:
            profile_table = profile.lower()
            profile_name = profile.lower().replace(' ', '_')
            profiles_data[profile_name] = LOCATIONNOTFOUND
            profiles_data[profile_name], _  = get_stat_data([profile_table],
                                                geo, session)
        except LocationNotFound:
            pass

        profiles_data['is_missing'] = profiles_data.get('is_missing') and \
                profiles_data[profile_name].get('is_missing', False)

    return profiles_data

def get_ervenland_profile(geo, session):
    topic_profiles = SECTIONS['ervenland']['profiles']
    profiles_data = {'is_missing': True }

    for profile in topic_profiles:
        try:
            profile_table = profile.lower()
            profile_name = profile.lower().replace(' ', '_')
            profiles_data[profile_name] = LOCATIONNOTFOUND
            profiles_data[profile_name], _  = get_stat_data([profile_table],
                                                geo, session)
        except LocationNotFound:
            pass

        profiles_data['is_missing'] = profiles_data.get('is_missing') and \
                profiles_data[profile_name].get('is_missing')

    return profiles_data

def get_sectionaltitleland_profile(geo, session):
    topic_profiles = SECTIONS['sectionaltitleland']['profiles']
    profiles_data = {'is_missing': True }

    for profile in topic_profiles:
        try:
            profile_table = profile.lower()
            profile_name = profile.lower().replace(' ', '_')
            profiles_data[profile_name] = LOCATIONNOTFOUND
            profiles_data[profile_name], _  = get_stat_data([profile_table],
                                                geo, session)
        except LocationNotFound:
            pass

        profiles_data['is_missing'] = profiles_data.get('is_missing') and \
                profiles_data[profile_name].get('is_missing')

    return profiles_data

def get_redistributionandrestitution_profile(geo, session):
    redistributedlandusebreakdown = redistributeprogrammeprojectsbyyear = LOCATIONNOTFOUND
    redistributeprogrammehouseholdsbyyear = landcostrestitution = LOCATIONNOTFOUND
    redistributeprogrammebeneficiariesbyyear = femalepartybenefited = LOCATIONNOTFOUND
    youthpartybenefited = disabledpeoplepartybenefited = LOCATIONNOTFOUND
    redistributedlandinhectares = redistributedlandcostinrands =  LOCATIONNOTFOUND
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

    redistributionrestitution = {'is_missing': True}

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

    redistributionrestitution['redistributedlandusebreakdown']= redistributedlandusebreakdown
    redistributionrestitution['redistributedlandinhectares_stat']= redistributedlandinhectares['redistributedlandinhectares']
    redistributionrestitution['redistributedlandcostinrands_stat']= redistributedlandcostinrands['redistributedlandcostinrands']
    redistributionrestitution['redistributedlandaveragecostperhectares_stat']= \
                    redistributedlandaveragecostperhectares['redistributedlandaveragecostperhectares']
    redistributionrestitution['redistributeprogrammeprojectsbyyear']= redistributeprogrammeprojectsbyyear
    redistributionrestitution['redistributeprogrammehouseholdsbyyear']= redistributeprogrammehouseholdsbyyear
    redistributionrestitution['redistributeprogrammebeneficiariesbyyear']= redistributeprogrammebeneficiariesbyyear

    redistributionrestitution['femalepartybenefited'] = femalepartybenefited
    redistributionrestitution['youthpartybenefited'] = youthpartybenefited
    redistributionrestitution['disabledpeoplepartybenefited'] = disabledpeoplepartybenefited
    redistributionrestitution['hectarestransferredperprovincebyyear'] = hectarestransferredperprovincebyyear
    redistributionrestitution['hectaresacquiredrestitution'] = hectaresacquiredrestitution
    redistributionrestitution['claimssettledrestitution'] = claimssettledrestitution
    redistributionrestitution['householdsrestitution'] = householdsrestitution
    redistributionrestitution['femaleheadedhouseholdsrestitution'] = femaleheadedhouseholdsrestitution
    redistributionrestitution['disabilitiesrestitution'] = disabilitiesrestitution
    redistributionrestitution['projectsrestitution'] = projectsrestitution
    redistributionrestitution['beneficiariesrestitution'] = beneficiariesrestitution
    redistributionrestitution['landcostrestitution'] = landcostrestitution
    redistributionrestitution['financialcompensationrestitution'] = financialcompensationrestitution
    redistributionrestitution['femalepartybenefited_tot'] = femalepartybenefited_tot
    redistributionrestitution['youthpartybenefited_tot'] = youthpartybenefited_tot
    redistributionrestitution['disabledpeoplepartybenefited_tot'] = disabledpeoplepartybenefited_tot
    redistributionrestitution['hectarestransferredperprovincebyyear_tot'] = hectarestransferredperprovincebyyear_tot
    redistributionrestitution['hectaresacquiredrestitution_tot'] = hectaresacquiredrestitution_tot
    redistributionrestitution['claimssettledrestitution_tot'] = claimssettledrestitution_tot
    redistributionrestitution['landcostrestitution'] = landcostrestitution
    redistributionrestitution['householdsrestitution_stat'] = \
                  { "name": "Total households benefited in restitution programme from 2009 to 2018",
                    "values": {"this": householdsrestitution_tot}
                  }
    redistributionrestitution['femaleheadedhouseholdsrestitution_stat'] = \
                { "name": "Female headed households benefited in restitution programme from 2009 to 2018",
                   "values": {"this": femaleheadedhouseholdsrestitution_tot}
                }
    redistributionrestitution['disabilitiesrestitution_stat'] = \
                { "name": "Number of people with disabilities benefited in restitution programme from 2009 to 2018",
                  "values": {"this": disabilitiesrestitution_tot}
                }
    redistributionrestitution['projectsrestitution_stat'] = \
                { "name": "Number of projects in the restitution programme from 2009 to 2018",
                  "values": {"this": projectsrestitution_tot}
                }
    redistributionrestitution['beneficiariesrestitution_stat'] = \
                {   "name": "Number of beneficiaries in the restitution programme from 2009 to 2018",
                     "values": {"this": beneficiariesrestitution_tot}
                }

    #if total hectares of redistruted land is missing
    # and total hectares acquired under restitution is missing, then there's no data
    redistributionrestitution['is_missing'] = hectarestransferredperprovincebyyear.get('is_missing') \
                            and hectaresacquiredrestitution.get('is_missing')

    return redistributionrestitution

def get_landsales_profile(geo, session):
    landsales = {'is_missing': True }
    landsalestransaction = landsaleshectares = LOCATIONNOTFOUND
    landsalesaverageprice = landsalespricetrends = LOCATIONNOTFOUND
    landsaleslowestprice = landsaleshighestprice = LOCATIONNOTFOUND
    landsalesaveragetrends = landsalesaveragepricejuly = LOCATIONNOTFOUND

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
    #         table_name= 'landsalesdistributionaveragepricejuly',
    #         percent=False)
    # except LocationNotFound as e:
    #     pass
    #
    # try:
    #     landsaleslowestprice,landsaleslowestprice_tot = get_stat_data(
    #         ['class'], geo, session, exclude_zero=True,
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
    landsales['landsalesaverageprice'] = landsalesaverageprice
    landsales['landsalespricetrends'] = landsalespricetrends
    landsales['landsaleshectares_tot'] = \
            { "name": " Total number of sold hectares from August 2017 to July 2018",
               "values": {"this": int(landsaleshectares_tot)},
            }
    landsales['landsalestransaction_tot'] = \
            { "name": "Total number of sales transactions from August 2017 to July 2018",
              "values": {"this": int(landsalestransaction_tot)},
            }
    landsales['is_missing'] = landsalestransaction.get('is_missing') and \
                            landsaleshectares.get('is_missing')

    return landsales

def get_landsalescolour_profile(geo, session):
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
        landsalescolourhectares, landsalescolourhectares_tot = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummaryhectarestcolour'
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransaction, landsalescolourtransaction_tot = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Agriculture', 'Government Urban', 'Private', 'Other']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtattransaction, _ = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['all', 'colour']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtattransactionpermonth, _ = get_stat_data (
            ['month', 'land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['all', 'colour']},
            key_order={'month': MONTH, 'land_breakdown': ['All', 'Colour']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                    'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransactionpermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourcostpermonth, landsalescolourcost_tot = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarycosttcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourpricehecpermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarypricetcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', \
                'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonthperga, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Government Agriculture']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransactionpermonthperga, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Agriculture']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonthpergu, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Government Urban']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransactionpermonthpergu, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Urban']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonthperpr, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Private']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass
    try:
        landsalescolourtransactionpermonthperpr, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Private']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonthperot, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Other']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransactionpermonthperot, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Other']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
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

def districtdistribution(geo, session):
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
    dist['is_missing'] = all_town.get('is_missing')
    return dist


def get_land_audit_2013_profile(geo, session):
    land_use_dist = LOCATIONNOTFOUND
    land_user_dist = LOCATIONNOTFOUND
    land_distribution_gender = LOCATIONNOTFOUND
    land_ownership = LOCATIONNOTFOUND

    try:
        land_use_dist, _ = get_stat_data('land_use', geo, session,
                                         table_name='landuse',
                                         table_fields=['land_use'])
    except LocationNotFound:
        pass

    try:
        land_user_dist, _ = get_stat_data('land_user', geo, session,
                                         table_name='landuser',
                                         table_fields=['land_user'])
    except LocationNotFound:
        pass

    try:
        land_distribution_gender, _ = get_stat_data('land_ownership_by_gender', geo, session,
                                         table_name='privatelanddistributionbygender',
                                         table_fields=['land_ownership_by_gender'])
    except LocationNotFound:
        pass

    try:
        land_ownership, _ = get_stat_data('private_vs_state_ownership', geo, session,
                                         table_name='landownership',
                                         table_fields=['private_vs_state_ownership'])
    except LocationNotFound:
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
    access_to_information = LOCATIONNOTFOUND
    allow_farmers_retain_land_ownership = LOCATIONNOTFOUND
    maintain_willing_buyer_willing_seller_policy = LOCATIONNOTFOUND
    land_acquisation_challenges = LOCATIONNOTFOUND
    land_to_prioritise_for_redistribution = LOCATIONNOTFOUND
    women_have_equal_right_to_land = LOCATIONNOTFOUND
    women_men_equal_chance_own_land = LOCATIONNOTFOUND

    try:
        access_to_information, _ = get_stat_data('access_to_information', geo,
                                                 session, table_fields=[
                'access_to_information'])
    except LocationNotFound:
        pass

    try:
        allow_farmers_retain_land_ownership, _ = get_stat_data(
            'allow_farmers_retain_land_ownership', geo, session,
            table_fields=['allow_farmers_retain_land_ownership'])
    except LocationNotFound:
        pass

    try:
        maintain_willing_buyer_willing_seller_policy, _ = get_stat_data(
            'maintain_willing_buyer_willing_seller_policy', geo, session,
            table_fields=['maintain_willing_buyer_willing_seller_policy'])
    except LocationNotFound:
        pass

    try:
        land_acquisation_challenges, _ = get_stat_data(
            'land_acquisation_challenges', geo, session,
            table_fields=['land_acquisation_challenges'])
    except LocationNotFound:
        pass

    try:
        land_to_prioritise_for_redistribution, _ = get_stat_data(
            'land_to_prioritise_for_redistribution', geo, session,
            table_fields=['land_to_prioritise_for_redistribution'])
    except LocationNotFound:
        pass

    # try:
    #     women_have_equal_right_to_land, _ = get_stat_data(
    #         'women_have_equal_right_to_land', geo, session,
    #         table_fields=['women_have_equal_right_to_land'])
    # except LocationNotFound:
    #     pass
    #
    # try:
    #     women_men_equal_chance_own_land, _ = get_stat_data(
    #         'women_men_equal_chance_own_land', geo, session,
    #         table_fields=['women_men_equal_chance_own_land'])
    # except LocationNotFound:
    #     pass

    is_missing = access_to_information.get('is_missing') and \
                 allow_farmers_retain_land_ownership.get('is_missing') and \
                 maintain_willing_buyer_willing_seller_policy.get('is_missing') \
                 and land_acquisation_challenges.get('is_missing') and \
                 land_to_prioritise_for_redistribution.get('is_missing') and \
                 women_have_equal_right_to_land.get('is_missing') and \
                 women_men_equal_chance_own_land.get('is_missing')

    return {
        'is_missing': is_missing,
        'access_to_information': access_to_information,
        'allow_farmers_retain_land_ownership': allow_farmers_retain_land_ownership,
        'maintain_willing_buyer_willing_seller_policy': maintain_willing_buyer_willing_seller_policy,
        'land_acquisation_challenges': land_acquisation_challenges,
        'land_to_prioritise_for_redistribution': land_to_prioritise_for_redistribution,
        'women_have_equal_right_to_land': women_have_equal_right_to_land,
        'women_men_equal_chance_own_land': women_men_equal_chance_own_land,
    }