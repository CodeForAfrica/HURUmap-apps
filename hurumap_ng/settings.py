import os
from collections import OrderedDict
from distutils.util import strtobool

import dj_database_url
from hurumap.dashboard.settings import * # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['hurumap_ng'] + INSTALLED_APPS

MIDDLEWARE_CLASSES = (
                         'whitenoise.middleware.WhiteNoiseMiddleware',
                     ) + MIDDLEWARE_CLASSES

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap:hurumap@localhost/hurumap_ng')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Nigeria'
HURUMAP['url'] = 'https://nigeria.hurumap.org'
HURUMAP['twitter'] = '@nigerianstat'
HURUMAP['facebook'] = 'nigerianstatistics'

HURUMAP['ga_tracking_id'] = 'UA-44795600-49'

HURUMAP['country_code'] = 'NG'
HURUMAP['country_name'] = 'Nigeria'
HURUMAP['country_profile'] = 'country-NG-nigeria'
HURUMAP['profile_builder'] = 'hurumap_ng.profiles.get_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2016')
HURUMAP['legacy_embed_geo_version'] = '2016'
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['state'],
    },
    'state': {
        'plural': 'states',
    }
}
HURUMAP['comparative_levels'] = ['country', 'state']

HURUMAP['USE_MAPIT'] = True
# use mapit settings
HURUMAP['geometry_data'] = {}
HURUMAP['mapit'] = {
    'url': 'https://mapit.hurumap.org',
    'country_code': 'NG',
    'generations': {
        '2016': '1',
        None: '1',
        # this should be based on the default_geo_version wazimap setting
    },
    'code_type': 'HDX',
    'level_simplify': {
        'country': 0,
        'province': 0
    },
    'map_country': {
        'centre': [9.0820, 8.6753],
        'zoom': 6
    }
}

HURUMAP['map_centre'] = [9.0820, 8.6753]
HURUMAP['map_zoom'] = 6

HURUMAP['primary_release_year'] = {
    'province': 2018,
}
HURUMAP['latest_release_year'] = '2018'
HURUMAP['primary_dataset_name'] = 'Fiscal Debt'
HURUMAP['available_release_years'] = {
    'state': [2018]
}

LOGGING['loggers']['hurumap_ng'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# URLS
ROOT_URLCONF = 'hurumap_ng.urls'

# Making sure they are the same
WAZIMAP = HURUMAP
