import os
from collections import OrderedDict

import dj_database_url

from hurumap.settings import *  # noqa
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['our_land'] + INSTALLED_APPS

STATIC_ROOT = os.path.join(BASE_DIR, 'static')

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://our_land:our_land@localhost/our_land')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

# Localise this instance of HURUmap
HURUMAP['name'] = 'Our Land'
HURUMAP['url'] = 'https://our-land.org'
HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['ga_tracking_id'] = 'UA-44795600-21'

HURUMAP['country_code'] = 'ZA'
HURUMAP['country_name'] = 'South Africa'
HURUMAP['comparative_levels'] = ['district', 'province', 'country']

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')

HURUMAP['default_profile'] = hurumap_profile
HURUMAP['profile_builder'] = 'our_land.profiles.census.get_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2011')
HURUMAP['legacy_embed_geo_version'] = '2011'

# this is provided by mapit
HURUMAP['geodata'] = 'our_land.geo.GeoData'
HURUMAP['geometry_data'] = {}
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['province', 'district', 'municipality'],
    },
    'province': {
        'children': ['district', 'municipality', 'ward'],
    },
    'district': {
        'children': ['municipality', 'ward'],
    },
    'municipality': {
        'plural': 'municipalities',
        'children': ['ward'],
    },
    'ward': {
        'children': [],
    }
}

HURUMAP['primary_release_year'] = {
    # use the 2011 release for wards, use the latest (2016) for everything else
    'ward': 2011,
}
HURUMAP['latest_release_year'] = '2016'
WAZIMAP['available_release_years'] = {
    # Release years with data for geo_levels.
    # Only specify geo_levels with limited releases.
    # Other geo_levels have data for all releases.
    'ward': [2011]
}
# If not set, the centre is determined from the geometry.
HURUMAP['map_centre']= None
HURUMAP['map_zoom']= None

HURUMAP['mapit'] = {
    'generations': {
        '2011': '1',
        '2016': '2',
        None: '1',
    }
}

LOGGING['loggers']['our_land'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
