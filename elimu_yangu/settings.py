import os
from django.utils.translation import ugettext_lazy as _
from collections import OrderedDict
from distutils.util import strtobool

from hurumap.settings import *  # noqa

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

LANGUAGE_CODE = 'en'
ugettext = lambda s: s
LANGUAGES = (
    ('sw', _('Swahili')),
    ('en', _('English')),
)

USE_I18N = True

# Tell Django where the project's translation files should be.
LOCALE_PATHS = (
    os.path.join(BASE_DIR, 'locale'),
    os.path.join(BASE_DIR, 'careerguide/locale'),
    os.path.join(BASE_DIR, 'leaguetable/locale'),
    os.path.join(BASE_DIR, 'universityfinder/locale'),
)

# insert our overrides before both census and HURUmap
INSTALLED_APPS = ['elimu_yangu', 'elimu_yangu.careerguide',
                  'elimu_yangu.leaguetable',
                  'elimu_yangu.universityfinder'] + INSTALLED_APPS

ROOT_URLCONF = 'elimu_yangu.urls'

MIDDLEWARE_CLASSES = ('whitenoise.middleware.WhiteNoiseMiddleware') + MIDDLEWARE_CLASSES
# Static Files Handler
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

DATABASE_URL = os.environ.get(
    'DATABASE_URL',
    'postgresql://hurumap:hurumap@localhost/elimu_yangu')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

# Localise this instance of HURUmap
HURUMAP['name'] = 'Elimu Yangu'
HURUMAP['description'] = 'Comprises of three tools: league table- that shows ranking of different secondary schools\
                            bassed on their performance in each year, careerguide -finds best schools aligning to a choosen career\
                            and university finder - shows list of university courses that an a-level student could have a chance to be admitted,'
HURUMAP['url'] = 'https://elimuyangu.codefortanzania.org'
HURUMAP['country_code'] = 'TZ'
HURUMAP['country_name'] = 'Tanzania'
HURUMAP['country_profile'] = 'country-TZ-Tanzania'
# HURUMAP['profile_builder'] = 'elimu_yangu.profiles.get_census_profile'

# Define the profile to load

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')

HURUMAP['default_profile'] = hurumap_profile

HURUMAP['profile_builder'] = 'elimu_yangu.profiles.{}.get_profile'.format(
    hurumap_profile)
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HURUMAP['legacy_embed_geo_version'] = '2009'

HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['region', 'district'],
    },
    'region': {
        'plural': 'regions',
        'children': ['district'],
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

HURUMAP['comparative_levels'] = ["ward","district", "region", "country"]

HURUMAP['USE_MAPIT'] = True

HURUMAP['mapit'] = {
    'url': 'https://mapit.hurumap.org',
    'country_code': 'TZ',
    'generations': {
        '2009': '1',
        '2012': '1',
        None: '1',
        # this should be based on the default_geo_version wazimap setting
    },
    'code_type': 'TZA',
    'level_simplify': {
        'country': 0,
        'region': 0,
        'district': 0,
        'ward': 0
    },
    'map_country': {
        'centre': [-6.1523563, 35.6754813],
        'zoom': 6
    }
}

HURUMAP['ga_tracking_id'] = 'UA-91133100-8'
# HURUMAP['ga_tracking_ids'] = ['UA-44795600-8','UA-91133100-4']

HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['map_centre'] = [-6.1523563, 35.6754813]
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
        'traffic and crimes'
    ]
}

HURUMAP['primary_release_year'] = {
    'region': 2017,
}
HURUMAP['latest_release_year'] = '2017'
HURUMAP['primary_dataset_name'] = "School's League"
HURUMAP['available_release_years'] = {
    'region': [2017]
}

LOGGING['loggers']['elimu_yangu'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

# Making sure they are the same
WAZIMAP = HURUMAP
