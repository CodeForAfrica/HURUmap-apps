import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields, get_model_for_db_table
from django.conf import settings
from wazimap.data.utils import (LocationNotFound, calculate_median, get_session, get_stat_data,
                                merge_dicts, get_objects_by_geo, group_remainder)

from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast
from wazimap.data.base import Base

__author__ = 'timothy'

log = logging.getLogger(__name__)

# ensure tables are loaded
import elimu_yangu.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}

def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['schools'] = get_schools_profile(geo, session)
        return data

    finally:
        session.close()

def get_schools_profile(geo, session):
    print geo.geo_level
    # ownership status
    schools_dist, total_schools = get_stat_data(['ownership'], geo, session)

    # region status
    region_dist, total_schools = get_stat_data(['region'], geo, session)

    #current result year
    year = '2017'

    # Choosing sorting option
    #Sorting will only be done using national_rank all, as regional and district ranks are unknown for some result esp historical
    rank_column = Base.metadata.tables['secondary_school'].c.national_rank_all

    # Getting top for schools with more than 40 students
    top_schools_40_more = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo.geo_level)\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .filter(Base.metadata.tables['secondary_school'].c.more_than_40 == "yes")\
                    .order_by(asc(cast(rank_column, Integer)))\
                    .all()
    # Getting top for schools with less than 40 students
    top_schools_40_less = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo.geo_level)\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .filter(Base.metadata.tables['secondary_school'].c.more_than_40 == "no")\
                    .order_by(asc(cast(rank_column, Integer)))\
                    .all()

    # Getting lowest schools with more than 40 students
    lowest_schools_40_more = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo.geo_level)\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .filter(Base.metadata.tables['secondary_school'].c.more_than_40 == "yes")\
                    .order_by(desc(cast(rank_column, Integer)))\
                    .all()
    # Getting lowest for schools with less than 40 students
    lowest_schools_40_less = session.query(Base.metadata.tables['secondary_school'])\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_level == geo.geo_level)\
                    .filter(Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code)\
                    .filter(Base.metadata.tables['secondary_school'].c.year_of_result == year)\
                    .filter(Base.metadata.tables['secondary_school'].c.more_than_40 == "no")\
                    .order_by(desc(cast(rank_column, Integer)))\
                    .all()

    # median gpa
    db_model_age = get_model_from_fields(['code', 'name', 'avg_gpa'], geo.geo_level)
    objects = get_objects_by_geo(db_model_age, geo, session, ['avg_gpa'])
    median = calculate_median(objects, 'avg_gpa')

    # gpa in 1 point groups
    def gpa_recode(f, x):
        gpa = x
        if gpa >= 4:
            return '4+'
        bucket = 1 * (gpa / 1)
        return '%d-%d' % (bucket, bucket + 2)

    gpa_dist_data, _ = get_stat_data(
        'avg_gpa', geo, session,
        table_fields=['code', 'name', 'avg_gpa'],
        recode=gpa_recode, exclude=['unspecified'])

    total_private = 0.0
    for data in schools_dist['PRIVATE'].itervalues():
        if 'numerators' in data:
            total_private += data['numerators']['this']

    return {
        'schools_distribution': schools_dist,
        'region_distribution': region_dist,
        'best_schools_more_40': top_schools_40_more,
        'worst_schools_more_40': lowest_schools_40_more,
        'best_schools_less_40': top_schools_40_less,
        'worst_schools_less_40': lowest_schools_40_less,
        'gpa_group_distribution': gpa_dist_data,
        'median_gpa': {
            "name": "Median GPA",
            "values": {"this": median},
        },
    }
