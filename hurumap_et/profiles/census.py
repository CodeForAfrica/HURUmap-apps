import logging
import re
from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import (get_session, get_stat_data, group_remainder,
                                merge_dicts, current_context, dataset_context)
from wazimap.geo import geo_data

# ensure tables are loaded
import hurumap.tables  # noqa

log = logging.getLogger(__name__)

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}

SECTIONS = settings.HURUMAP.get('topics', {})


def get_profile(geo, profile_name, request):

    session = get_session()
    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        data = {}
        data['primary_release_year'] = current_context().get('year')
        sections = []

        for cat in SECTIONS:
            sections.extend(SECTIONS[cat]['profiles'])

        for section in sections:
            section = section.lower().replace(' ', '_')

            if 'voter_registration' in section:

                year = re.search(r"\d+", section).group()
                section = 'voter_registration'

            function_name = 'get_%s_profile' % section

            if function_name in globals():
                func = globals()[function_name]

                if function_name == 'get_voter_registration_profile':
                    section = '{}_{}'.format(section, year)
                    data[section] = func(geo, session, year)

                    # get profiles for comparative geometries
                    for comp_geo in comparative_geos:
                        try:
                            merge_dicts(
                                data[section],
                                func(
                                    comp_geo,
                                    session,
                                    year),
                                comp_geo.geo_level)
                        except KeyError as e:
                            msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                                geo.geoid, section, comp_geo.geoid, e)
                            log.fatal(msg, exc_info=e)
                            raise ValueError(msg)

                else:
                    data[section] = func(geo, session)

                    # get profiles for comparative geometries
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

        # tweaks to make the data nicer
        # show X largest groups on their own and group the rest as 'Other'
        if 'households' in sections:
            group_remainder(data['households']
                            ['roofing_material_distribution'], 5)
            group_remainder(data['households']
                            ['wall_material_distribution'], 5)

        return data

    finally:
        session.close()


def get_demographics_profile(geo, session):
    year = current_context().get('year')
    with dataset_context(year=year):
        # gender
        gender_dist_data, total_pop = get_stat_data(
            'gender', geo, session,
            table_fields=['gender', 'age_group'])

        # age group
        age_group_dist_data, _ = get_stat_data(
            'age_group', geo, session,
            table_fields=['gender', 'age_group'])
        total_under_15 = age_group_dist_data['0-14 Years']['numerators']['this']

        # rural or urban
        rural_dist_data, _ = get_stat_data(
            ['gender', 'rural_or_urban'], geo, session,
            table_fields=['gender', 'rural_or_urban'])

        final_data = {
            'gender_ratio': gender_dist_data,
            'age_group_distribution': age_group_dist_data,
            'under_15': {
                'name': 'Under 15 years',
                'values': {'this': total_under_15}
            },
            'rural_distribution': rural_dist_data,
            'total_population': {
                'name': 'People',
                'values': {'this': total_pop}
            }}

        return final_data
