import logging
import json

from wazimap.geo import geo_data
from wazimap.data.tables import get_datatable
from wazimap.data.utils import (calculate_median,
                                get_session, get_stat_data, group_remainder,
                                merge_dicts, get_datatable, current_context,
                                dataset_context)
from wazimap.geo import geo_data
from django.conf import settings
from collections import OrderedDict
from wazimap.data.base import Base
from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, \
    and_, desc, asc, cast

__author__ = 'timothy'

log = logging.getLogger(__name__)

# ensure tables are loaded
import elimu_yangu.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}


def get_profile(geo, profile_name, request, year):
    session = get_session()
    data = {}
    try:
        data['schools'] = get_schools_profile(geo, session, year)
        return data
    finally:
        session.close()


def get_schools_profile(geo, session, year):
    with dataset_context(year='2017'):
        # ownership status
        schools_dist, total_schools = get_stat_data(['ownership'], geo=geo,
                                                    session=session, only={
                'year_of_result': [year]})
        # school_dist_data, _ = get_stat_data('age in completed years',geo=geo, session=session, only={'year_of_result': [year]})
        if geo.geo_level == "country":
            reg = 'region'
        elif geo.geo_level == "region":
            reg = 'district'
        elif geo.geo_level == "district":
            reg = 'ward'
        region_dist, total_schools = get_stat_data([reg], geo=geo,
                                                   session=session, only={
                'year_of_result': [year]})

        category_dist, _ = get_stat_data(['more_than_40'], geo=geo,
                                         session=session,
                                         only={'year_of_result': [year]})

        gender_dist, _ = get_stat_data(['gender'], geo=geo, session=session,
                                       only={'year_of_result': [year]})
        # Choosing sorting option
        # Sorting will only be done using national_rank all, as regional and district ranks are unknown for some result esp historical
        rank_column = Base.metadata.tables[
            'secondary_school'].c.national_rank_all
        # Getting top for schools with more than 40 students
        top_schools_40_more = session.query(
            Base.metadata.tables['secondary_school']) \
            .filter(Base.metadata.tables[
                        'secondary_school'].c.geo_level == geo.geo_level) \
            .filter(
            Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code) \
            .filter(
            Base.metadata.tables['secondary_school'].c.year_of_result == year) \
            .filter(
            Base.metadata.tables['secondary_school'].c.more_than_40.like(
                "yes%")) \
            .order_by(asc(cast(rank_column, Integer))) \
            .all()
        # Getting top for schools with less than 40 students
        top_schools_40_less = session.query(
            Base.metadata.tables['secondary_school']) \
            .filter(Base.metadata.tables[
                        'secondary_school'].c.geo_level == geo.geo_level) \
            .filter(
            Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code) \
            .filter(
            Base.metadata.tables['secondary_school'].c.year_of_result == year) \
            .filter(
            Base.metadata.tables['secondary_school'].c.more_than_40.like("no%")) \
            .order_by(asc(cast(rank_column, Integer))) \
            .all()

        # Getting lowest schools with more than 40 students
        lowest_schools_40_more = session.query(
            Base.metadata.tables['secondary_school']) \
            .filter(Base.metadata.tables[
                        'secondary_school'].c.geo_level == geo.geo_level) \
            .filter(
            Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code) \
            .filter(
            Base.metadata.tables['secondary_school'].c.year_of_result == year) \
            .filter(
            Base.metadata.tables['secondary_school'].c.more_than_40.like(
                "yes%")) \
            .order_by(desc(cast(rank_column, Integer))) \
            .all()
        # Getting lowest for schools with less than 40 students
        lowest_schools_40_less = session.query(
            Base.metadata.tables['secondary_school']) \
            .filter(Base.metadata.tables[
                        'secondary_school'].c.geo_level == geo.geo_level) \
            .filter(
            Base.metadata.tables['secondary_school'].c.geo_code == geo.geo_code) \
            .filter(
            Base.metadata.tables['secondary_school'].c.year_of_result == year) \
            .filter(
            Base.metadata.tables['secondary_school'].c.more_than_40.like("no%")) \
            .order_by(desc(cast(rank_column, Integer))) \
            .all()
        # median gpa
        db_model_age = get_datatable('code_name_avg_gpa')
        objects = db_model_age.get_rows_for_geo(geo, session)
        median = calculate_median(objects, 'avg_gpa')

        # gpa in 1 point groups
        def gpa_recode(f, x):
            gpa = x
            if gpa >= 4:
                return '4+'
            bucket = 1 * (gpa / 1)
            return '%d-%d' % (bucket, bucket + 2)

        gpa_dist_data, total_schools = get_stat_data(
            'avg_gpa', geo, session,
            table_fields=['code', 'name', 'avg_gpa'],
            recode=gpa_recode, exclude=['unspecified'],
            only={'year_of_result': [year]})

        total_private = 0.0
        for data in schools_dist.get('Non-Government', {}).itervalues():
            if 'numerators' in data:
                total_private += data['numerators']['this']

    return {
        'schools_distribution': schools_dist,
        'region_distribution': region_dist,
        'category_distribution': category_dist,
        'best_schools_more_40': top_schools_40_more,
        'worst_schools_more_40': lowest_schools_40_more,
        'best_schools_less_40': top_schools_40_less,
        'worst_schools_less_40': lowest_schools_40_less,
        'gpa_group_distribution': gpa_dist_data,
        'gender_distribution': gender_dist,
        'total_schools': {
            "name": "Schools",
            "values": {"this": total_schools}
        },
        'median_gpa': {
            "name": "Median GPA",
            "values": {"this": median},
        },
    }
