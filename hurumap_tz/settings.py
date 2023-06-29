import os
from collections import OrderedDict
from distutils.util import strtobool

from hurumap.settings import *  # noqa

# insert our overrides before both census and HURUmap
INSTALLED_APPS = ['hurumap_tz'] + INSTALLED_APPS

DATABASE_URL = os.environ.get(
    'DATABASE_URL',
    'postgresql://hurumap:hurumap@localhost/hurumap_tz')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Tanzania'
HURUMAP['url'] = 'https://tanzania.hurumap.org'
HURUMAP['country_code'] = 'TZ'
HURUMAP['country_name'] = 'Tanzania'
HURUMAP['country_profile'] = 'country-TZ-Tanzania'

# Define the profile to load

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')

HURUMAP['default_profile'] = hurumap_profile

HURUMAP['profile_builder'] = 'hurumap_tz.profiles.{}.get_profile'.format(
    hurumap_profile)
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HURUMAP['legacy_embed_geo_version'] = '2009'

HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['region', 'district', 'ward'],
    },
    'region': {
        'plural': 'regions',
        'children': ['district', 'ward'],
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

HURUMAP['comparative_levels'] = ["region", "country"]

HURUMAP['USE_MAPIT'] = True
# use mapit settings
HURUMAP['geometry_data'] = {}
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

HURUMAP['ga_tracking_id'] = os.environ.get('GA_TRACKING_ID')

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
        'primary school teachers',
        # 'primary school desks' #pending data discrepancy fix
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
        'traffic and crimes',
        'water sources',
        'airport types'
    ]
}

HURUMAP['showcase_stories'] = [
    {
        'title': 'Umbumbumbu wa Hesabu, Kiingereza unavyotishia mustakabali wa elimu Tanzania',
        'author': 'Mwananchi',
        'brief': 'Msingi dhaifu wa masomo ya Hisabati na Kiingereza unazidi kudhoofisha' \
                 ' elimu ya msingi nchini, jambo linalotishia mustakabali wa kuzalisha wataalamu bora watakaochochea maendeleo.',
        'link': 'https://data.mwananchi.co.tz/umbumbumbu-wa-hesabu-kiingereza-unavyotishia-mustakabali-wa-elimu-tanzania/',
        'img': STATIC_URL + 'img/showcase/uwezo.jpg'
    },
    {
        'title': 'Hii ndiyo siri ya utofauti wa kipato kati ya wanaume na wanawake Tanzania',
        'author': 'Mwananchi',
        'brief': 'Dar es Salaam. Licha ya kipato cha mfanyakazi kwa mwezi kuongezeka' \
                 ' nchini bado kuna mwanya mkubwa wa kimapato kijinsia baada ya wanaume kuingiza fedha nyingi zaidi kuliko wanawake.',
        'link': 'https://data.mwananchi.co.tz/hii-ndiyo-siri-ya-utofauti-wa-kipato-kati-ya-wanaume-na-wanawake-tanzania/',
        'img': STATIC_URL + 'img/showcase/kipato.jpg'
    },
    {
        'title': 'CTI calls streamlined taxation food processing sector',
        'author': 'IPP Media',
        'brief': 'A recent Confederation of Tanzania Industries (CTI) position' \
                 ' paper on regulatory authorities shows that although the manufacturing' \
                 ' sector generates tax revenues to the tune of 248 billion/- per year.',
        'link': 'http://ippmedia.com/en/news/cti-calls-streamlined-taxation-food-processing-sector',
        'img': STATIC_URL + 'img/showcase/cti.jpg'
    }
]

HURUMAP['primary_release_year'] = {
    'region': 2012,
}
HURUMAP['latest_release_year'] = '2012'
HURUMAP['primary_dataset_name'] = 'Census'
HURUMAP['available_release_years'] = {
    'region': [2012]
}

LOGGING['loggers']['hurumap_tz'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Empty NA label, avoids having long pages on missing geo level data
HURUMAP['na_label'] = ''
# Making sure they are the same
WAZIMAP = HURUMAP
