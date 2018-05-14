from __future__ import division
from wazimap.data.utils import get_session, get_stat_data
from wajibisha.utils import view_helpers

PROMISE_STATUS = [
    'Done', 'Five years plans', 'Altered Promise', 'In Progress', 'Not done'
]


def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['demographics'] = get_demographics_profile(geo, session)
        data['promises'] = get_promises_by_sector(geo, session)
        data['promise_by_status'] = get_promises_by_status(geo, session)
        print data

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


def get_sector_stats(sector_name, dict=None):
    """
    :param sector_name: name of sector
    :param dict: A dict
    :return: dictionary
    """
    name = sector_name.title()
    if dict:
        return {
            'name': name,
            'done': dict.get('Done', 0),
            'not_done': dict.get('Not done', 0),
            'five_yr_plans': dict.get('Five years plans', 0),
            'altered_promise': dict.get('Altered Promise', 0),
            'in_progress': dict.get('In Progress', 0),
            'total': sum(dict.values()),
            'completed_percentage': round(
                (dict.get('Done', 0) / sum(dict.values())) * 100, 3)
        }
    else:
        return {
            'name': name,
            'done': 0,
            'not_done': 0,
            'five_yr_plans': 0,
            'altered_promise': 0,
            'in_progress': 0,
            'total': 0,
            'completed_percentage': 0
        }


def get_promise_totals(geo, session):
    totals = {}
    total_promises = 0
    try:
        query = "SELECT status,COUNT(status) FROM promises WHERE " \
                "geo_code='{}' AND geo_level='{}' GROUP BY sector,status" \
            .format(geo.geo_code, geo.geo_level)
        promises = session.execute(query).fetchall()
        # returns ('promise', 'count')

        for i in promises:
            totals[i[0].lower().replace(' ', '_')] = int(i[1])
            total_promises += int(i[1])

        totals['total'] = total_promises
        print totals

        return {
            'totals': totals
        }

    except Exception as e:
        return {
            'totals': totals
        }


def get_promises_by_sector(geo, session):
    # TODO clean up, optimize this whole function
    try:
        query = "SELECT sector,status,COUNT(status) FROM promises WHERE " \
                "geo_code='{}' AND geo_level='{}' GROUP BY sector,status" \
            .format(geo.geo_code, geo.geo_level)

        promises = session.execute(query).fetchall()
        # returns (('Sector', 'Status', 'Occurence'), ....)

        promises_data = {}
        for k in promises:
            if k[0] not in promises_data.keys():
                promises_data[k[0]] = {k[1]: int(k[2])}
            else:
                promises_data[k[0]][k[1]] = int(k[2])

        # find any missing status and make it zero

        for key, value in promises_data.iteritems():
            missing_status = list(set(PROMISE_STATUS) - set(value.keys()))
            for i in missing_status:
                promises_data[key][i] = 0

        housing = promises_data['Housing']
        health = promises_data['Health']
        jobs = promises_data['Jobs, Business Creation']
        governance = promises_data['Governance']
        traffic = promises_data['Traffic Management']
        environment = promises_data['Environment and Sanitation']
        women = promises_data['Women, Youth, Persons With Disabilities']

        final_data = {
            'housing': get_sector_stats('Housing', dict=housing),
            'health': get_sector_stats('Health', dict=health),
            'jobs': get_sector_stats('jobs', dict=jobs),
            'traffic': get_sector_stats('Traffic Management', dict=traffic),
            'governance': get_sector_stats('Governance',
                                           dict=governance),
            'environment': get_sector_stats('Environment and Sanitation',
                                            dict=environment),
            'women': get_sector_stats('Women, Youth, Persons With Disabilities',
                                      dict=women)
        }

        return final_data

    except Exception as e:
        print e.message
        return {
            'housing': get_sector_stats('Housing'),
            'health': get_sector_stats('Health'),
            'jobs': get_sector_stats('Jobs'),
            'traffic': get_sector_stats('Traffic Management'),
            'governance': get_sector_stats('Governance'),
            'environment': get_sector_stats('Environment and Sanitation'),
            'women': get_sector_stats('Women, Youth, Persons With Disabilities')
        }


def get_filtered_promises(geo, session):
    pass


def get_promises_by_status(geo, session):
    data = {}
    try:
        query = "SELECT status,COUNT(status) FROM promises WHERE " \
                "geo_code='{}' AND geo_level='{}' GROUP BY status" \
            .format(geo.geo_code, geo.geo_level)

        promises = session.execute(query).fetchall()
        # returns (('Status', 'Occurence'), ....)

        for i in promises:
            data[i[0].lower().replace(' ', '_')] = int(i[1])
        data['total'] = sum(data.values())

        return data

    except Exception as e:
        print e.message
        for i in PROMISE_STATUS:
            data[i.lower().replace(' ', '_')] = 0
        data['total'] = 0
        return data



