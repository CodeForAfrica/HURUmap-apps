import os
from collections import OrderedDict
from distutils.util import strtobool

from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['hurumap_ke'] + INSTALLED_APPS

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap:hurumap@localhost/hurumap_ke')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Kenya'
HURUMAP['url'] = os.environ.get('HURUMAP_URL', 'https://kenya.hurumap.org')
HURUMAP['country_code'] = 'KE'
HURUMAP['country_name'] = 'Kenya'

# Define the profile to load

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')

HURUMAP['default_profile'] = hurumap_profile

HURUMAP['country_profile'] = 'country-KE-Kenya'
HURUMAP['profile_builder'] = 'hurumap_ke.profiles.{}.get_profile'.format(
    hurumap_profile)
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HURUMAP['legacy_embed_geo_version'] = '2009'

HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['county'],
    },
    'county': {
        'plural': 'counties',
    }
}
HURUMAP['comparative_levels'] = ['country']

HURUMAP['USE_MAPIT'] = True

# use mapit settings
HURUMAP['geometry_data'] = {}
HURUMAP['mapit'] = {
    'url': 'https://mapit.hurumap.org',
    'country_code': 'KE',
    'generations': {
        '2009': '1',
        None: '1',
        # this should be based on the default_geo_version wazimap setting
    },
    'code_type': 'KEN',
    'level_simplify': {
        'country': 0,
        'county': 0
    },
    'map_country': {
        'centre': [0.3051933453207569, 37.908818734483155],
        'zoom': 6
    }
}

HURUMAP['ga_tracking_id'] = os.environ.get('GA_TRACKING_ID')

HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['map_centre'] = [0.3051933453207569, 37.908818734483155]
HURUMAP['map_zoom'] = 6

# TODO: Move these

HURUMAP['topics'] = OrderedDict()

HURUMAP['topics']['census'] = {
    'topic': 'census',
    'name': 'census 2009',
    'icon': '/static/img/census.png',
    'order': 1,
    'desc': 'Census data collected in 2009 provided by the Kenya National \
                Bureau of Statistics',
    'profiles': [
        'Demographics',
        'Households',
        'Protests',
        'School fires',
        'Crime report',
        'Employment',
        'Voter registration 2015',
        'Voter registration 2017',
        'Religion'
    ]
}

HURUMAP['topics']['education'] = {
    'topic': 'education',
    'name': 'education',
    'icon': '/static/img/education.png',
    'desc': 'Education data from Twaweza',
    'profiles': [
        'Education',
    ]
}

HURUMAP['topics']['health'] = {
    'topic': 'health',
    'name': 'health',
    'icon': '/static/img/health.png',
    'order': 2,
    'desc': 'Health data collected in 2014 by the Kenya National Bureau of \
                Statistics ',
    'profiles': [
        'Contraceptive use',
        'Maternal care indicators',
        'Knowledge of HIV prevention methods',
        'ITN',
        'Fertility',
        'Vaccinations',
        'Type treatment',
        'Nutrition',
        'Health ratios'
    ]
}

HURUMAP['topics']['development'] = {
    'topic': 'development',
    'name': 'development',
    'icon': '/static/img/development.png',
    'order': 3,
    'desc': 'Crop production and Livestock population for the year 2014 \
            provided by the Ministry of Agriculture, Livestock and Fisheries.',
    'profiles': [
        'Crop production',
        'Livestock'
    ],
}

HURUMAP['primary_release_year'] = {
    'county': 2019,
}
HURUMAP['latest_release_year'] = '2019'
HURUMAP['primary_dataset_name'] = 'Census'
HURUMAP['available_release_years'] = {
    # Release years with data for geo_levels.
    # Only specify geo_levels with limited releases.
    # Other geo_levels have data for all releases.
    'county': [2019, 2009]
}

LOGGING['loggers']['hurumap_ke'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
