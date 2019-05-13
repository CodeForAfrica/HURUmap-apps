from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import get_session, get_stat_data, group_remainder, \
    current_context, dataset_context
from wazimap.geo import LocationNotFound



def get_census_profile(geo, profile_name, request):
    geo.version = str(geo.version)
    # session = get_session()
    # year = current_context().get('year')
    data = {}
    # session.close()
    return data







