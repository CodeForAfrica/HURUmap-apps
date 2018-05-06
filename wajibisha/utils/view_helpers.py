from wazimap.data.utils import get_session
import json

session = get_session()


def get_promises(geo_code, geo_level):
    try:

        query = "SELECT promise,status,sector FROM promises WHERE geo_code='{}' " \
                "AND geo_level='{}'".format(
            geo_code, geo_level)
        session = get_session()
        result = session.execute(query).fetchall()
        return [{'promise': i[0], 'status': i[1], 'sector':i[2]} for i in result]

    except Exception as e:
        return [
            {'promise': None, 'status': None, 'sector': None}
        ]


def get_promise_sectors(geo_code, geo_level):
    try:

        query = "SELECT DISTINCT sector FROM promises WHERE geo_code='{}' " \
                "AND geo_level='{}'".format(
            geo_code, geo_level)
        session = get_session()
        result = session.execute(query).fetchall()
        return [i[0] for i in result]

    except Exception as e:
        return []


def get_promise_statuses(geo_code, geo_level):
    try:

        query = "SELECT DISTINCT status FROM promises WHERE geo_code='{}' " \
                "AND geo_level='{}'".format(
            geo_code, geo_level)
        session = get_session()
        result = session.execute(query).fetchall()
        return [i[0] for i in result]

    except Exception as e:
        return []



