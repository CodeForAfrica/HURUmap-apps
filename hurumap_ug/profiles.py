import operator
from wazimap.data.tables import get_datatable
from wazimap.data.utils import merge_dicts, get_session, get_stat_data, LocationNotFound
from wazimap.geo import geo_data
from django.conf import settings

__author__ = 'kenneth'

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0}, 'values': {'this': 0}}


def get_demographics_profile(geo_code, geo_level, session):
    sex_dist_data, total_pop = get_stat_data('sex', geo_level, geo_code, session, table_fields=['sex'])
    try:
        urban_dist_data, _ = get_stat_data('rural or urban', geo_level, geo_code, session,
                                           table_fields=['rural or urban'])
    except LocationNotFound:
        urban_dist_data = LOCATIONNOTFOUND

    total_urbanised = 0
    for data, value in urban_dist_data.get('Urban', {}).iteritems():
        if data == 'numerators':
            total_urbanised += value['this']

    final_data = {
        'sex_ratio': sex_dist_data,
        'urban_distribution': urban_dist_data,
        'urbanised': {
            'name': 'In urban areas',
            'numerators': {'this': total_urbanised},

        },
        'total_population': {
            "name": "People",
            "values": {"this": total_pop}
        }}
    try:
        final_data['urbanised']['values'] = {
            'this': round(total_urbanised / total_pop * 100, 2)}
    except ZeroDivisionError:
        final_data['urbanised']['values'] = {'this': 0}
    return final_data


def get_households_profile(geocode, geo_level, session):
    try:
        permanency, _ = get_stat_data('household percentage by permanency', geo_level, geocode, session,
                                      table_fields=['household percentage by permanency'])
    except LocationNotFound:
        permanency = LOCATIONNOTFOUND

    try:
        light_source, total_households = get_stat_data('household distribution by light source', geo_level, geocode,
                                                       session, table_fields=['household distribution by light source'])
        energy_source, _ = get_stat_data('household distribution by energy source', geo_level, geocode, session,
                                         table_fields=['household distribution by energy source'])
    except LocationNotFound:
        total_households = 0
        light_source = LOCATIONNOTFOUND
        energy_source, _ = LOCATIONNOTFOUND, 0

    final_data = {
        'percentage_by_permanency': permanency,
        'light_source_distribution': light_source,
        'energy_source_distribution': energy_source,
        'total_households': {
            "name": "Households",
            "values": {"this": total_households}
        }
    }
    return final_data


def get_elections2016_profile(geocode, geo_level, session):
    try:
        candidate, total_votes = get_stat_data('presidential candidate', geo_level, geocode, session,
                                               table_fields=['presidential candidate'], order_by="-total")


    except LocationNotFound:
        candidate, total_votes = LOCATIONNOTFOUND, 0

    total_besigye = 0
    for data, value in candidate.get('Kizza besigye', {}).iteritems():
        if data == 'numerators':
            total_besigye += value['this']
    total_museveni = 0
    for data, value in candidate.get('Yoweri museveni', {}).iteritems():
        if data == 'numerators':
            total_museveni += value['this']

    final_data = {
        'candidate_distribution': candidate,
        'museveni_votes':{
            'name': 'Museveni Votes',
            'numerators':{'this':  total_museveni}
        },
        'besigye_votes': {
            'name': 'Besigye Votes',
            'numerators': {'this': total_besigye},

        },

        'total_votes': {
            "name": "Votes",
            "values": {"this": total_votes}
        }
    }
    try:
        final_data['besigye_votes']['values'] = {
            'this': round(total_besigye / total_votes * 100, 2)}
        final_data['museveni_votes']['values'] = {
            'this': round(total_museveni/ total_votes * 100, 2)
        }
    except ZeroDivisionError:
        final_data['besigye_votes']['values'] = {'this': 0}
        final_data['museveni_votes']['values'] = {'this': 0}
    return final_data


def get_disabilities_profile(geocode, geo_level, session):
    try:
        disabled_or_not, total_ = get_stat_data('disabled or not', geo_level, geocode, session,
                                                table_fields=['disabled or not'])
        disability, _ = get_stat_data('disability', geo_level, geocode, session, table_fields=['disability'])
    except LocationNotFound:
        disabled_or_not, total_ = LOCATIONNOTFOUND, 0
        disability = LOCATIONNOTFOUND

    total_disabled = 0
    for data, value in disabled_or_not.get('With disability', {}).iteritems():
        if data == 'numerators':
            total_disabled += value['this']

    final_data = {
        'disabled_or_not_distribution': disabled_or_not,
        'disability': disability,
        'total_disabled': {
            'name': 'Disabled',
            'numerators': {'this': total_disabled},

        },

        'total_': {
            "name": "Population",
            "values": {"this": total_}
        }
    }
    try:
        final_data['total_disabled']['values'] = {
            'this': round(total_disabled / total_ * 100, 2)}
    except ZeroDivisionError:
        final_data['total_disabled']['values'] = {'this': 0}
    return final_data


PROFILE_SECTIONS = ['demographics', 'households', 'elections2016', 'disabilities']


def get_profile(geo_code, geo_level, get_params, profile_name=None):
    session = get_session()

    try:
        geo_summary_levels = geo_data.get_summary_geo_info(geo_code, geo_level)
        data = {}
        sections = []
        selected_sections = []
        if get_params.get('topic'):
            categories = get_params.get('topic').split(',')
            for cat in categories:
                selected_sections.extend(SECTIONS[cat]['profiles'])
            data['selected_topics'] = categories

        for cat in SECTIONS:
            sections.extend(SECTIONS[cat]['profiles'])

        for section in sections:
            section = section.lower().replace(' ', '_')
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo_code, geo_level, session)

                # get profiles for province and/or country
                for level, code in geo_summary_levels:
                    # merge summary profile into current geo profile
                    merge_dicts(data[section], func(code, level, session), level)
        data['all_sections'] = SECTIONS
        if (selected_sections == []): selected_sections = sections
        data['raw_selected_sections'] = selected_sections
        data['selected_sections'] = [x.replace(' ', '_').lower() for x in selected_sections]
        return data

    finally:
        session.close()


