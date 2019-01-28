import os
from collections import OrderedDict

from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['hurumap_et'] + INSTALLED_APPS

MIDDLEWARE_CLASSES = (
    'whitenoise.middleware.WhiteNoiseMiddleware',
) + MIDDLEWARE_CLASSES

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap:hurumap@localhost/hurumap_et')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Ethiopia'
HURUMAP['url'] = os.environ.get('HURUMAP_URL', 'https://ethiopia.hurumap.org')
HURUMAP['country_code'] = 'ET'
HURUMAP['country_name'] = 'Ethiopia'


# Define the profile to load

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')

HURUMAP['default_profile'] = hurumap_profile

HURUMAP['country_profile'] = 'country-ET-Ethiopia'
HURUMAP['profile_builder'] = 'hurumap_et.profiles.{}.get_profile'.format(
    hurumap_profile)
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
HURUMAP['geometry_data'] = {
    '2010': {
        'country': 'geo/country.topojson',
        'province': 'geo/province.topojson',
    }
}

HURUMAP['ga_tracking_id'] = 'UA-44795600-8'

HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['map_centre'] = [9.005401, 38.763611]
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

HURUMAP['primary_release_year'] = {
    'county': 2010,
}
HURUMAP['latest_release_year'] = '2010'
HURUMAP['primary_dataset_name'] = 'Census'
HURUMAP['available_release_years'] = {
    # Release years with data for geo_levels.
    # Only specify geo_levels with limited releases.
    # Other geo_levels have data for all releases.
    'county': [2010]
}

LOGGING['loggers']['hurumap_et'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
