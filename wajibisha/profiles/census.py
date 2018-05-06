from __future__ import division
from wazimap.data.utils import get_session, get_stat_data

PROMISE_STATUS = [
    'Done', 'Five years plans', 'Altered Promise', 'In Progress', 'Not done'
]

def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['demographics'] = get_demographics_profile(geo, session)
        data['promises'] = get_promises(geo, session)

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

def get_promises(geo, session):
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
            'housing': {
                'name': 'Housing',
                'done': housing['Done'],
                'not_done': housing['Not done'],
                'five_yr_plans': housing['Five years plans'],
                'altered_promise': housing['Altered Promise'],
                'in_progress': housing['In Progress'],
                'total': sum(housing.values()),
                'completed_percentage': round(
                    (housing['Done'] / sum(housing.values())) * 100, 3),
                'card_img_name': 'Housing.svg'
            },
            'health': {
                'name': 'Health',
                'done': health['Done'],
                'not_done': health['Not done'],
                'five_yr_plans': health['Five years plans'],
                'altered_promise': health['Altered Promise'],
                'in_progress': health['In Progress'],
                'total': sum(health.values()),
                'completed_percentage': round(
                    (health['Done'] / sum(health.values())) * 100, 3),
                'card_img_name': 'Health.svg'
            },
            'jobs': {
                'name': 'Jobs, Business Creation',
                'done': jobs['Done'],
                'not_done': jobs['Not done'],
                'five_yr_plans': jobs['Five years plans'],
                'altered_promise': jobs['Altered Promise'],
                'in_progress': jobs['In Progress'],
                'total': sum(jobs.values()),
                'completed_percentage': round(
                    (jobs['Done'] / sum(jobs.values())) * 100, 3),
                'card_img_name': 'Jobs.svg'
            },
            'traffic': {
                'name': 'Traffic Management',
                'done': traffic['Done'],
                'not_done': traffic['Not done'],
                'five_yr_plans': traffic['Five years plans'],
                'altered_promise': traffic['Altered Promise'],
                'in_progress': traffic['In Progress'],
                'total': sum(traffic.values()),
                'completed_percentage': round(
                    (traffic['Done'] / sum(traffic.values())) * 100, 3),
                'card_img_name': 'Traffic Management.svg'
            },
            'governance': {
                'name': 'Governance',
                'done': governance['Done'],
                'not_done': governance['Not done'],
                'five_yr_plans': governance['Five years plans'],
                'altered_promise': governance['Altered Promise'],
                'in_progress': governance['In Progress'],
                'total': sum(governance.values()),
                'completed_percentage': round(
                    (governance['Done'] / sum(governance.values())) * 100, 3),
                'card_img_name': 'Governance.svg'
            },
            'environment': {
                'name': 'Environment and Sanitation',
                'done': environment['Done'],
                'not_done': environment['Not done'],
                'five_yr_plans': environment['Five years plans'],
                'altered_promise': environment['Altered Promise'],
                'in_progress': environment['In Progress'],
                'total': sum(environment.values()),
                'completed_percentage': round(
                    (environment['Done'] / sum(environment.values())) * 100, 3),
                'card_img_name': 'Environment.svg'
            },
            'women': {
                'name': 'Women, Youth, Persons With Disabilities',
                'done': women['Done'],
                'not_done': women['Not done'],
                'five_yr_plans': women['Five years plans'],
                'altered_promise': women['Altered Promise'],
                'in_progress': women['In Progress'],
                'total': sum(women.values()),
                'completed_percentage': round(
                    (women['Done'] / sum(women.values())) * 100, 3),
                'card_img_name': 'Social Inclusion.svg'
            }

        }

        return final_data

    except Exception as e:
        print e.message
        return {
            'housing': {
                'name': 'Housing',
                'done': 0,
                'not_done': 0,
                'five_yr_plans': 0,
                'altered_promise': 0,
                'in_progress': 0,
                'total': 0,
                'completed_percentage': 0,
                'card_img_name': 'Housing.svg'
            },
            'health': {
                'name': 'Housing',
                'done': 0,
                'not_done': 0,
                'five_yr_plans': 0,
                'altered_promise': 0,
                'in_progress': 0,
                'total': 0,
                'completed_percentage': 0,
                'card_img_name': 'Health.svg'
            },
            'jobs': {
                'name': 'Jobs, Business Creation',
                'done': 0,
                'not_done': 0,
                'five_yr_plans': 0,
                'altered_promise': 0,
                'in_progress': 0,
                'total': 0,
                'completed_percentage': 0,
                'card_img_name': 'Jobs.svg'
            },
            'traffic': {
                'name': 'Traffic Management',
                'done': 0,
                'not_done': 0,
                'five_yr_plans': 0,
                'altered_promise': 0,
                'in_progress': 0,
                'total': 0,
                'completed_percentage': 0,
                'card_img_name': 'Traffic Management.svg'
            },
            'governance': {
                'name': 'Governance',
                'done': 0,
                'not_done': 0,
                'five_yr_plans': 0,
                'altered_promise': 0,
                'in_progress': 0,
                'total': 0,
                'completed_percentage': 0,
                'card_img_name': 'Governance.svg'
            },
            'environment': {
                'name': 'Environment and Sanitation',
                'done': 0,
                'not_done': 0,
                'five_yr_plans': 0,
                'altered_promise': 0,
                'in_progress': 0,
                'total': 0,
                'completed_percentage': 0,
                'card_img_name': 'Environment.svg'
            },
            'women': {
                'name': 'Women, Youth, Persons With Disabilities',
                'done': 0,
                'not_done': 0,
                'five_yr_plans': 0,
                'altered_promise': 0,
                'in_progress': 0,
                'total': 0,
                'completed_percentage': 0,
                'card_img_name': 'Social Inclusion.svg'
            }

        }

