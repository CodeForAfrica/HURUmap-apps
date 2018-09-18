import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields, get_datatable
from wazimap.data.utils import get_session, calculate_median, merge_dicts, get_stat_data, get_objects_by_geo, group_remainder, LocationNotFound
from django.conf import settings

log = logging.getLogger(__name__)
# ensure tables are loaded
import our_land.tables  # noqa

SECTIONS = settings.OUR_LAND.get('topics', {})

LOCATIONNOTFOUND = {'is_missing': True, 'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}

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

    return redistribution_and_restitution
