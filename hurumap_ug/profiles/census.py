import logging

from django.conf import settings
from wazimap.data.utils import (LocationNotFound, get_session, get_stat_data,
                                merge_dicts)

__author__ = 'kenneth'

log = logging.getLogger(__name__)

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}


def get_demographics_profile(geo, session):
    geo.version = str(geo.version)
    # sex
    try:
        sex_dist_data, total_pop = get_stat_data(
            'sex', geo, session,
            table_fields=['sex'])

    except LocationNotFound:
        sex_dist_data = LOCATIONNOTFOUND
        total_pop = 0


    # urban/rural by sex
    total_urbanised = 0
    try:
        urban_dist_data, _ = get_stat_data(
            ['rural or urban'], geo, session,
            table_fields=['rural or urban'])

        for data in urban_dist_data['Urban'].itervalues():
            if 'numerators' in data:
                total_urbanised += data['numerators']['this']

    except LocationNotFound:
        urban_dist_data = LOCATIONNOTFOUND

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


def get_households_profile(geo, session):
    try:
        permanency, _ = get_stat_data('household percentage by permanency', geo,
                                      session,
                                      table_fields=[
                                          'household percentage by permanency'])
    except LocationNotFound:
        permanency = LOCATIONNOTFOUND

    try:
        light_source, total_households = get_stat_data(
            'household distribution by light source', geo,
            session, table_fields=['household distribution by light source'])
        energy_source, _ = get_stat_data(
            'household distribution by energy source', geo, session,
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


def get_elections2016_profile(geo, session):
    try:
        candidate, total_votes = get_stat_data('presidential candidate', geo,
                                               session,
                                               table_fields=[
                                                   'presidential candidate'],
                                               order_by="-total")

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
        'museveni_votes': {
            'name': 'Museveni Votes',
            'numerators': {'this': total_museveni}
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
            'this': round(total_museveni / total_votes * 100, 2)
        }
    except ZeroDivisionError:
        final_data['besigye_votes']['values'] = {'this': 0}
        final_data['museveni_votes']['values'] = {'this': 0}
    return final_data


def get_disabilities_profile(geo, session):
    try:
        disabled_or_not, total_ = get_stat_data('disabled or not', geo, session,
                                                table_fields=[
                                                    'disabled or not'])
        disability, _ = get_stat_data('disability', geo, session,
                                      table_fields=['disability'])
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


PROFILE_SECTIONS = ['demographics', 'households', 'elections2016',
                    'disabilities']


def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['demographics'] = get_demographics_profile(geo, session)
        data['households'] = get_households_profile(geo, session)
        data['disability'] = get_disabilities_profile(geo, session)
        data['elections2016'] = get_elections2016_profile(geo, session)

        return data

    finally:
        session.close()
