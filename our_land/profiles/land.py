import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields
from wazimap.data.utils import get_session, calculate_median, merge_dicts, get_stat_data, get_objects_by_geo, group_remainder
from django.conf import settings

# ensure tables are loaded
import our_land.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

def get_land_profile(geo, profile_name, request):
    session = get_session()
    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        data = {}
        land_sections = ['firmland', 'ervenland', 'sectionaltitleland']
        #for each topic in sections
        #get data for that topic profiles
        for section in land_sections:
            topic_name = SECTIONS[section]['topic']
            data[topic_name] = get_land_topic_profiles(geo, session, topic_name)

            # get profiles for comparative geometries
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
        return data

    finally:
        session.close()

def get_land_topic_profiles(geo, session, topic_name):
    topic_profiles = SECTIONS[topic_name]['profiles']
    topic_profiles_data = {}

    for profile in topic_profiles:
        profile_table = profile.lower()
        print profile_table
        profile_name = profile.lower().replace(' ', '_')
        topic_profiles_data[profile_name],_  = get_stat_data([profile_table], geo, session)

    return topic_profiles_data
