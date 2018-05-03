from wazimap.data.utils import get_session, get_stat_data
from wazimap.data.base import Base
# from wajibisha.settings import PROMISE_STATUS


PROMISE_STATUS = [
    'Done', 'Five years plans', 'Altered Promise', 'In Progress', 'Not done'
]


def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['promises'] = get_promises(geo, session)
    finally:
        # tidy up the session
        session.close()


def get_promises(geo, session):
    query = "SELECT sector,status,COUNT(status) FROM promises WHERE " \
            "geo_code='{}' AND geo_level='{}' GROUP BY sector,status"\
        .format(geo.geo_code, geo.geo_level)

    total_query = "SELECT status,COUNT(status) FROM promises WHERE " \
                  "geo_code='{}' AND geo_level='{}' GROUP BY status"\
        .format(geo.geo_code, geo.geo_level)

    promises = session.execute(query).fetchall()
    # returns (('Sector', 'Status', 'Occurence'), ....)

    promises_data = {}
    for k in promises:
        if k[0] not in promises_data.keys():
            promises_data[k[0]] = {k[1]:int(k[2])}
        else:
            promises_data[k[0]][k[1]] = int(k[2])

    # find any missing status and make it zero

    for key, value in promises_data.iteritems():
        missing_status = list(set(PROMISE_STATUS) - set(value.keys()))
        for i in missing_status:
            promises_data[key][i] = 0

    print promises_data

    totals = session.execute(total_query).fetchall()

    data_status_totals = {}
    for i in totals:
        data_status_totals[i[0]] = int(i[1])

    # find any missing status and make it zero

    missing_status = list(set(PROMISE_STATUS) - set(data_status_totals.keys()))

    for i in missing_status:
        data_status_totals[i] = 0

    print data_status_totals

    return {
        'sectors': promises_data,
        'totals': data_status_totals
    }



