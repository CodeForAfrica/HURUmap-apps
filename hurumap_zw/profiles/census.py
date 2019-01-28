from wazimap.data.utils import (calculate_median,
                                get_session, get_stat_data, group_remainder,
                                merge_dicts, get_datatable, current_context,
                                dataset_context)

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
    year = current_context().get('year')
    session = get_session()
    data = {}
    try:
        data['demographics'] = get_population(geo, session)
        data['primary_release_year'] = year
        return data
    finally:
        session.close()


def get_population(geo, session):
    with dataset_context(year='2017'):
        sex_dist, total_population_sex = LOCATIONNOTFOUND, 0
        residence_dist, total_population_residence = LOCATIONNOTFOUND, 0
        religion_dist, total_population_religion = LOCATIONNOTFOUND, 0

        try:
            sex_dist, total_population_sex = get_stat_data(
                'sex', geo, session, table_fields=['sex'])
        except Exception:
            pass
        try:
            residence_dist, total_population_residence = get_stat_data(
                'residence', geo, session,
                table_fields=['residence'])
        except Exception:
            pass

        try:
            religion_dist, total_population_religion = get_stat_data(
                'religion', geo, session,
                table_fields=['religion'])
        except Exception:
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