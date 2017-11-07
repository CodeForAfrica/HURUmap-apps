# pull in the default HURUmap settings
from hurumap.settings import *  # noqa
from collections import OrderedDict

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap_ug:hurumap_ug@localhost/hurumap_ug')
DJANGO_SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY',
                                   'this is some not so secret key but..')
DEBUG = os.environ.get('DJANGO_DEBUG', True)
DJANGO_SETTINGS_MODULE = os.environ.get('DJANGO_SETTINGS_MODULE',
                                        'hurumap_ug.settings')

DATABASES = {
    'default': dj_database_url.parse(DATABASE_URL),
}
DATABASES['default']['ATOMIC_REQUESTS'] = True

# install this app before HURUmap
INSTALLED_APPS = ['hurumap_ug'] + INSTALLED_APPS

# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Uganda'
HURUMAP['url'] = 'https://uganda.hurumap.org'
HURUMAP['country_code'] = 'UG'
HURUMAP['country_name'] = 'Uganda'

# Define the profile to load

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')


HURUMAP['country_profile'] = 'country-UG-Uganda'
HURUMAP['profile_builder'] = 'hurumap_ug.profile.get_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HURUMAP['legacy_embed_geo_version'] = '2009'
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['region'],
    },
    'region': {
        'plural': 'regions',
        'children': ['district'],
    },
    'district': {
        'plural': 'districts',
        'children': ['subcounty'],
    },
    'subcounty': {
        'plural': 'subcounties',
        'children': []
    }
}

HURUMAP['geometry_data'] = {
    '2009': {
        'country': 'geo/country.topojson',
        'region': 'geo/region.topojson',
        'district': 'geo/district.topojson',
        'subcounty': 'geo/subcounty.topojson',
    }
}

HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['topics'] = OrderedDict()

HURUMAP['topics']['census'] = {
    'topic': 'census',
    'name': 'census',
    'icon': '/static/img/census.png',
    'order': 1,
    'desc': 'Census data collected in 2009 by the Uganda National Bureau of \
                    Statistics',
    'profiles': [
        'Demographics',
        'households',
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
    'desc': 'Health data',
    'profiles': [
        'disabilities',
    ]
}

HURUMAP['topics']['development'] = {
    'topic': 'development',
    'name': 'development',
    'icon': '/static/img/development.png',
    'desc': '',
    'profiles': [
        'elections2016'
    ]
}

LOGGING['loggers']['hurumap_ug'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
