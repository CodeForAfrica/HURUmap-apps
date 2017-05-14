import os
from collections import OrderedDict
import dj_database_url

# pull in the default HURUmap settings
from hurumap.settings import *  # noqa


# insert our overrides before both census and HURUmap
INSTALLED_APPS = ['hurumap_tz'] + INSTALLED_APPS

DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://hurumap_tz:hurumap_tz@localhost/hurumap_tz')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Tanzania'
HURUMAP['url'] = 'https://tanzania.hurumap.org'
HURUMAP['country_code'] = 'TZ'
HURUMAP['country_name'] = 'Tanzania'
HURUMAP['country_profile'] = 'country-TZ-Tanzania'
HURUMAP['profile_builder'] = 'hurumap_tz.profiles.get_census_profile'
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['region','district','ward'],
    },
    'region': {
        'plural': 'regions',
        'children': ['district','ward'],
    },
    'district': {
        'plural': 'districts',
        'children': ['ward'],
    },
    'ward': {
        'plural': 'wards',
        'children': [],
    }
}

HURUMAP['comparative_levels'] = ["ward", "district", "region", "country"]
HURUMAP['geometry_data'] = {
    'country': 'geo/country.topojson',
    'region': 'geo/region.topojson',
    'district': 'geo/district.topojson',
    'ward': 'geo/ward.topojson',
}

HURUMAP['ga_tracking_ids'] = ["UA-91133100-4", "UA-44795600-27", "UA-92541368-2"]
HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['map_centre'] = [-6.1523563,35.6754813]
HURUMAP['map_zoom'] = 6

HURUMAP['topics'] = OrderedDict()

HURUMAP['topics']['census'] = {
    'topic': 'census',
    'name': 'census',
    'icon': '/static/img/census.png',
    'order': 1,
    'desc': 'Census data collected in 2009',
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
        'literacy and numeracy tests',
        'school attendance',
    ]
}

HURUMAP['topics']['health'] = {
    'topic': 'health',
    'name': 'health',
    'icon': '/static/img/health.png',
    'desc': 'Health data',
    'profiles': [
        'pepfar',
        'causes of death',
        'health centers distribution',
        'health workers distribution',
        'family planning clients',
        'place of delivery',
        'tetanus vaccine',
    ]
}

HURUMAP['topics']['development'] = {
    'topic': 'development',
    'name': 'development',
    'icon': '/static/img/development.png',
    'desc': '',
    'profiles': [
        #todo
    ]
}