from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import get_session, get_stat_data, group_remainder

# ensure tables are loaded
#import our_land.tables  # noqa

def get_land_profile(geo, profile_name, request):
    session = get_session()
    try:
        data = {}
        sections = []
        selected_sections = []
        return data

    finally:
        session.close()
