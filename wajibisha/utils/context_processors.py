from wazimap.data.utils import get_session

PROMISE_STATUS = [
    'Done', 'Five years plans', 'Altered Promise', 'In Progress', 'Not done'
]


def get_homepage_promises(request):
    session = get_session()

    query = "SELECT sector,status,COUNT(status) FROM promises WHERE " \
            "geo_code='47' AND geo_level='county' GROUP BY sector,status"

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

    return {
        'health_total': sum(promises_data['Health'].values()),
        'health_fulfilled': promises_data['Health'].get('Done', 0),
        'housing_total': sum(promises_data['Housing'].values()),
        'housing_fulfilled': promises_data['Housing'].get('Done', 0),
        'jobs_total': sum(promises_data['Jobs, Business Creation'].values()),
        'jobs_fulfilled': promises_data['Jobs, Business Creation'].get('Done',
                                                                       0)
    }
