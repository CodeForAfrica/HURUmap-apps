from wazimap.data.utils import get_session, get_stat_data

def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['demographics'] = get_demographics_profile(geo, session)

        return data
    finally:
        # tidy up the session
        session.close()


def get_demographics_profile(geo, session):
    # get the number of people for each sex
    _, total_pop = get_stat_data(
        'sex', geo, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'])
    return {
        'total_population': {
            "name": "People",
            "values": {"this": total_pop}
        }
    }
