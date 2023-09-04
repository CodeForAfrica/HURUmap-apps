import os
# pull in the default HURUmap settings
from collections import OrderedDict
from distutils.util import strtobool

from hurumap.settings import *  # noqa

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap:hurumap@localhost/hurumap_zw')
DJANGO_SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY',
                                   'this is some not so secret key but..')
DEBUG = os.environ.get('DJANGO_DEBUG', True)
DJANGO_SETTINGS_MODULE = os.environ.get('DJANGO_SETTINGS_MODULE',
                                        'hurumap_zw.settings')

DATABASES['default'] = dj_database_url.parse(DATABASE_URL)

DATABASES['default']['ATOMIC_REQUESTS'] = True

# install this app before HURUmap
INSTALLED_APPS = ['hurumap_zw'] + INSTALLED_APPS

# Localise this instance of HURUmap
HURUMAP['name'] = os.environ.get('HURUMAP_NAME', 'HURUmap Zimbabwe')
HURUMAP['url'] = os.environ.get('HURUMAP_URL', 'https://zimbabwe.hurumap.org')

HURUMAP['country_code'] = 'ZW'
HURUMAP['country_name'] = 'Zimbabwe'

HURUMAP['ga_tracking_id'] = os.environ.get('GA_TRACKING_ID')

# Define the profile to load

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')

HURUMAP['default_profile'] = hurumap_profile

HURUMAP['country_profile'] = 'country-ZW-Zimbabwe'
HURUMAP['profile_builder'] = 'hurumap_zw.profiles.census.get_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HURUMAP['legacy_embed_geo_version'] = '2009'
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['province'],
    },
    'province': {
        'plural': 'provinces',
        'children': ['district'],
    },
    'district': {
        'plural': 'districts',
        'children': [],
    },
}
HURUMAP['comparative_levels'] = ['country', 'province']

HURUMAP['USE_MAPIT'] = True
# use mapit settings
HURUMAP['geometry_data'] = {}
HURUMAP['mapit'] = {
    'url': 'https://mapit.hurumap.org',
    'country_code': 'ZW',
    'generations': {
        '2009': '1',
        '2017': '1',
        None: '1',
        # this should be based on the default_geo_version wazimap setting
    },
    'code_type': 'ZWE',
    'level_simplify': {
        'country': 0,
        'province': 0,
        'district': 0
    },
    'map_country': {
        'centre': [-19.0154, 29.1549],
        'zoom': 6
    }
}

HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['topics'] = OrderedDict()
HURUMAP['map_zoom'] = 6
HURUMAP['map_centre'] = [-19.0154, 29.1549]

HURUMAP['primary_release_year'] = {
    'province': 2017,
}
HURUMAP['latest_release_year'] = '2017'
HURUMAP['primary_dataset_name'] = 'Census'
HURUMAP['available_release_years'] = {
    'province': [2017]
}

HURUMAP['showcase_stories'] = [
    {
        'title': 'Render to Caesar! Churches in Byo owe council $2.7m',
        'author': 'Tanaka Mrewa',
        'brief': 'Churches in Bulawayo owe a combined $2.7 million in unpaid bills to the' \
            ' Bulawayo City Council (BCC), with council officials urging the churches to be faithful in paying their debt.',
        'link': 'https://www.cite.org.zw/render-to-caesar-churches-in-byo-owe-council-2-7m/',
        'img': STATIC_URL + 'img/showcase/showcase1.jpg'
    },
    {
        'title': 'Cowdray Park to get more schools',
        'author': 'Tanaka Mrewa',
        'brief': 'The Bulawayo City Council (BCC) is working on a project to build more ' \
            'schools in Cowdray Park, as the available schools cannot meet the demand.',
        'link': 'https://www.cite.org.zw/cowdray-park-to-get-more-schools//',
        'img': STATIC_URL + 'img/showcase/showcase2.png'
    },
    {
        'title': 'Bulawayo top 10 best performing primary schools',
        'author': 'Lungile Ngwenya',
        'brief': 'The province recorded an overall 86.9% pass rate double the national ' \
            'pass rate which is 44.73%. 54 out of 124 schools on Bulawayo attained at least 80%.',
        'link': 'https://www.cite.org.zw/bulawayo-top-10-best-performing-primary-schools/',
        'img': STATIC_URL + 'img/showcase/showcase3.png'
    }
]

LOGGING['loggers']['hurumap_zw'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
