import os
from collections import OrderedDict
import dj_database_url

# pull in the default hurumap settings
from hurumap.settings import *  # noqa


# insert our overrides before both census and hurumap
INSTALLED_APPS = ['hurumap_ke'] + INSTALLED_APPS


DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://hurumap_ke:hurumap_ke\
                                                @localhost/hurumap_ke')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Kenya'
HURUMAP['url'] = 'https://kenya.hurumap.org'
HURUMAP['country_code'] = 'KE'
HURUMAP['country_name'] = 'Kenya'


# Define the profile to load

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')

HURUMAP['default_profile'] = hurumap_profile

HURUMAP['country_profile'] = 'country-KE-Kenya'
HURUMAP['profile_builder'] = 'hurumap_ke.profiles.{}.get_profile'.format(hurumap_profile)
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
HURUMAP['geometry_data'] = {
    '2009': {
        'country': 'geo/country.topojson',
        'county': 'geo/county.topojson'
    }
}

HURUMAP['ga_tracking_id'] = ['UA-44795600-8']
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

LOGGING['loggers']['hurumap_ke'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
