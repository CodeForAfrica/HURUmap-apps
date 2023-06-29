import os
from collections import OrderedDict
from distutils.util import strtobool

import dj_database_url

from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['hurumap_zm'] + INSTALLED_APPS

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap:hurumap@localhost/hurumap_zm')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Zambia'
HURUMAP['url'] = 'https://zambia.hurumap.org'
HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['ga_tracking_id'] = os.environ.get('GA_TRACKING_ID')


HURUMAP['country_code'] = 'ZM'
HURUMAP['country_name'] = 'Zambia'
HURUMAP['country_profile'] = 'country-ZM-Zambia'
HURUMAP['profile_builder'] = 'hurumap_zm.profiles.get_census_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2010')
HURUMAP['legacy_embed_geo_version'] = '2010'
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['province'],
    },
    'province': {
        'plural': 'provinces',
    }
}
HURUMAP['comparative_levels'] = ['country', 'province']

HURUMAP['USE_MAPIT'] = True
# use mapit settings
HURUMAP['geometry_data'] = {}
HURUMAP['mapit'] = {
    'url': 'https://mapit.hurumap.org',
    'country_code': 'ZM',
    'generations': {
        '2010': '1',
        None: '1',
        # this should be based on the default_geo_version wazimap setting
    },
    'code_type': 'ZMB',
    'level_simplify': {
        'country': 0,
        'province': 0
    },
    'map_country': {
        'centre': [-13.1339, 27.8493],
        'zoom': 6
    }
}

HURUMAP['map_centre'] = [-13.1339, 27.8493]
HURUMAP['map_zoom'] = 6

# TODO: Move these

HURUMAP['topics'] = OrderedDict()

HURUMAP['topics']['census'] = {
    'topic': 'census',
    'name': 'census 2010',
    'icon': '/static/img/census.png',
    'order': 1,
    'desc': 'Census data collected in 2010',
    'profiles': [
        'Demographics'
    ]
}
HURUMAP['topics']['education'] = {
    'topic': 'education',
    'name': 'education',
    'icon': '/static/img/education.png',
    'desc': 'Education data from Twaweza',
    'profiles': [

    ]
}

HURUMAP['topics']['health'] = {
    'topic': 'health',
    'name': 'health',
    'icon': '/static/img/health.png',
    'order': 2,
    'desc': 'Health data collected in 2014 by the Kenya National Bureau of Statistics ',
    'profiles': [

    ]
}
HURUMAP['topics']['agriculture'] = {
    'topic': 'agriculture',
    'name': 'agriculture',
    'icon': '/static/img/development.png',
    'order': 3,
    'desc': 'Crop production and Livestock population for the year 2014 provided by the Ministry of Agriculture, Livestock and Fisheries.',
    'profiles': [

    ],
}

HURUMAP['primary_release_year'] = {
    'province': 2010,
}
HURUMAP['latest_release_year'] = '2010'
HURUMAP['primary_dataset_name'] = 'Census'
HURUMAP['available_release_years'] = {
    'province': [2010]
}

LOGGING['loggers']['hurumap_zm'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
