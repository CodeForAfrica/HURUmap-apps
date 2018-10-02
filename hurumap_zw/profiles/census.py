from wazimap.data.utils import get_session
from wazimap.data.utils import (LocationNotFound, get_session, get_stat_data,
                                merge_dicts)

LOCATIONNOTFOUND = {'is_missing': True, 'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}}

def _create_single_value_dist(name='', value=0):
    return {
        'name': name,
        'numerators': {'this': value},
        'values': {'this': value},
    }

def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}
    try:
        data['demographics'] = get_population(geo, session)
        return data
    finally:
        session.close()


def get_population(geo, session):
    sex_dist, total_population_sex = LOCATIONNOTFOUND, 0
    residence_dist, total_population_residence = LOCATIONNOTFOUND, 0
    religion_dist, total_population_religion = LOCATIONNOTFOUND, 0

    try:
        sex_dist, total_population_sex = get_stat_data(
            'sex', geo, session, table_fields=['sex'])
    except LocationNotFound:
        pass
    try:
        residence_dist, total_population_residence = get_stat_data(
            'residence', geo, session,
            table_fields=['residence'])
    except LocationNotFound:
        pass

    try:
        religion_dist, total_population_religion = get_stat_data(
            'religion', geo, session,
            table_fields=['religion'])
    except LocationNotFound:
        pass

    total_population = 0
    is_missing = sex_dist.get('is_missing') and \
        residence_dist.get('is_missing') and \
                 religion_dist.get('is_missing')
    if not is_missing:
        total_population = total_population_sex if total_population_sex > 0 else total_population_residence
    total_population_dist = _create_single_value_dist(
        'People', total_population)

    demographics_data = {
        'is_missing': is_missing,
        'sex_dist': sex_dist,
        'residence_dist': residence_dist,
        'religion_dist': religion_dist,
        'total_population': total_population_dist,
    }

    if geo.square_kms:
        demographics_data['population_density'] = {
            'name': "people per square kilometre",
            'values': {"this": total_population / geo.square_kms},
        }
    return demographics_data