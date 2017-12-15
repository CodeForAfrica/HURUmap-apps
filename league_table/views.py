from django.http import HttpResponse
from django.shortcuts import render_to_response, render

import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields, get_model_for_db_table
from django.conf import settings
from wazimap.data.utils import (LocationNotFound, calculate_median, get_session, get_stat_data,
                                merge_dicts, get_objects_by_geo, group_remainder)

from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast
from wazimap.data.base import Base

# handling schools page
def schools(request):
    # Getting the session
    session = get_session()

    # Fetching schools
    schools = session.query(Base.metadata.tables['secondary_schools'])\
                    .filter(Base.metadata.tables['secondary_schools'].c.geo_level == "country")\
                    .order_by(asc(cast(Base.metadata.tables['secondary_schools'].c.national_rank_all, Integer)))\
                    .all()

    return render(request,'schools.html',{'schools':schools})

# handling specific school page
def specific_school(request, code):
    # Getting the session
    session = get_session()

    # Fetching schools
    school = session.query(Base.metadata.tables['secondary_schools'])\
                    .filter(Base.metadata.tables['secondary_schools'].c.geo_level == "country")\
                    .filter(Base.metadata.tables['secondary_schools'].c.code == code)\
                    .one()

    return render(request, 'specific_school.html',{'school':school})