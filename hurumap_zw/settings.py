# pull in the default HURUmap settings
from collections import OrderedDict

from hurumap.settings import *  # noqa

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap_zw:hurumap_zw@localhost/hurumap_zw')
DJANGO_SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY',
                                   'this is some not so secret key but..')
DEBUG = os.environ.get('DJANGO_DEBUG', True)
DJANGO_SETTINGS_MODULE = os.environ.get('DJANGO_SETTINGS_MODULE',
                                        'hurumap_zw.settings')

DATABASES = {
    'default': dj_database_url.parse(DATABASE_URL),
}
DATABASES['default']['ATOMIC_REQUESTS'] = True

# install this app before HURUmap
INSTALLED_APPS = ['hurumap_zw'] + INSTALLED_APPS

# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Zimbabwe'
HURUMAP['url'] = 'https://zimbabwe.hurumap.org'
HURUMAP['country_code'] = 'ZW'
HURUMAP['country_name'] = 'Zimbabwe'

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
        'children': ['ward'],
    },
    'ward': {
        'plural': 'wards',
        'children': [],
    },

}
HURUMAP['comparative_levels'] = ['country', 'province']
HURUMAP['geometry_data'] = {
    '2009': {
        'country': 'geo/country.topojson',
        'province': 'geo/province.topojson',
        'district': 'geo/district.topojson',
        'ward': 'geo/ward.topojson'
    }
}
HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['topics'] = OrderedDict()
HURUMAP['map_zoom'] = 12


LOGGING['loggers']['hurumap_zw'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP


