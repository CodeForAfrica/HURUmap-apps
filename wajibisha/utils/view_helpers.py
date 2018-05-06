from wazimap.data.utils import get_session
import json

session = get_session()


def get_promises_by_status(geo_code, geo_level, status):
    try:
        if status:
            query = "SELECT promise,sector FROM promises WHERE geo_code='{}' " \
                    "AND geo_level='{}' AND status='{}'".format(
                geo_code, geo_level, status)
            session = get_session()
            result = session.execute(query).fetchall()
            return [{'promise': i[0], 'sector': i[1]} for i in result]
        else:
            return [{'promise': None, 'sector': None}]
    except Exception as e:
        return [{'promise': None, 'sector': None}]


def get_promises_by_category(geo_code, geo_level, category):
    try:
        if category:
            query = "SELECT promise,status FROM promises WHERE geo_code='{}' " \
                    "AND geo_level='{}' AND sector='{}'".format(
                geo_code, geo_level, category)
            session = get_session()
            result = session.execute(query).fetchall()
            return [{'promise': i[0], 'status': i[1]} for i in result]
        else:
            return [{'promise': None, 'sector': None}]
    except Exception as e:
        return [{'promise': None, 'sector': None}]
