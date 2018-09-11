import os
from collections import OrderedDict

import dj_database_url

from hurumap.settings import *  # noqa
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

DEBUG = False

INSTALLED_APPS = ['our_land'] + INSTALLED_APPS

ROOT_URLCONF = 'our_land.urls'

MIDDLEWARE_CLASSES = (
        'whitenoise.middleware.WhiteNoiseMiddleware',
    ) + MIDDLEWARE_CLASSES


# Static Files Handler
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

# -------------------------------------------------------------------------------------
# HURUmap Config
# -------------------------------------------------------------------------------------

OUR_LAND = WAZIMAP


# -------------------------------------------------------------------------------------
# Database Configs
# -------------------------------------------------------------------------------------

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://our_land:our_land@localhost/our_land')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)

# Localise this instance of OUR_LAND
OUR_LAND['name'] = 'OurLand'
OUR_LAND['url'] = 'https://ourland.hurumap.org'
OUR_LAND['description'] = 'gives infomediaries like journalists '\
'and civic activists an easy \'plug & play\' toolkit for finding and embedding '\
'interactive data visualizations into their storytelling on land ownership '\
'in South Africa. Land ownership is a slow-burn issue in South Africa that will '\
'continue to shape the national discourse and economy for decades to come.'

OUR_LAND['facebook'] = 'CodeForAfrica'
OUR_LAND['twitter'] = '@Code4Africa'
OUR_LAND['email'] = 'info@codeforafrica.org'

OUR_LAND['github_url'] = 'https://github.com/CodeForAfrica/HURUmap-apps'

OUR_LAND['ga_tracking_id'] = 'UA-44795600-21'

OUR_LAND['country_code'] = 'ZA'
OUR_LAND['country_name'] = 'South Africa'
OUR_LAND['comparative_levels'] = ['district', 'province', 'country']

our_land_profile = os.environ.get('OUR_LAND_PROFILE', 'land')

OUR_LAND['default_profile'] = our_land_profile
OUR_LAND['profile_builder'] = 'our_land.profiles.land.get_land_profile'
OUR_LAND['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2016')
OUR_LAND['legacy_embed_geo_version'] = '2016'

# this is provided by mapit
OUR_LAND['geodata'] = 'our_land.geo.GeoData'
OUR_LAND['geometry_data'] = {}
OUR_LAND['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['province', 'district', 'municipality'],
    },
    'province': {
        'children': ['district', 'municipality', 'ward'],
    },
    'district': {
        'children': ['municipality', 'ward'],
    },
    'municipality': {
        'plural': 'municipalities',
        'children': ['ward'],
    },
    'ward': {
        'children': [],
    }
}

# OUR_LAND['primary_release_year'] = {
#     # use the 2011 release for wards, use the latest (2016) for everything else
#     'ward': 2016,
# }
OUR_LAND['latest_release_year'] = '2016'
# OUR_LAND['available_release_years'] = {
#     # Release years with data for geo_levels.
#     # Only specify geo_levels with limited releases.
#     # Other geo_levels have data for all releases.
#     'ward': [2011]
# }
# If not set, the centre is determined from the geometry.
OUR_LAND['map_centre']= None
OUR_LAND['map_zoom']= None

OUR_LAND['mapit'] = {
    'generations': {
        '2011': '1',
        '2016': '2',
        None: '1',
    }
}
# -------------------------------------------------------------------------------
#topics

OUR_LAND['topics']['farmland'] = {
    'topic': 'farmland',
    'name': 'Farm & Agricultural Land',
    'icon': '/static/img/education.png',
    'desc': 'South Africa farm and Agricultural Land',
    'profiles': [
        'Private land ownership in hectares per category',
        'Number of private land owners by category',
        'land ownership in hectares by race',
        'Number of land owners per race',
        'land ownership in hectares by gender',
        'Number of land owners per gender',
        'land ownership in hectares by nationality',
        'Number of land owners per nationality',
    ]
}

OUR_LAND['topics']['ervenland'] = {
        'topic': 'ervenland',
        'name': 'Erven & Urban Land',
        'icon': '/static/img/education.png',
        'desc': 'South Africa Erven and Urban Land',
        'profiles': [
            #'Private land ownership in hectares per category',
            #'Number of private land owners by category',
            'erven land ownership in hectares by race',
            'Number of erven land owners per race',
            'erven land ownership in hectares by gender',
            'Number of erven land owners per gender',
            'erven land ownership in hectares by nationality',
            'Number of erven land owners per nationality',
        ]
}

OUR_LAND['topics']['sectionaltitleland'] = {
    'topic': 'sectionaltitleland',
    'name': 'Sectional Title Land',
    'icon': '/static/img/education.png',
    'desc': 'South Africa Sectional Title Land',
    'profiles': [
        'sectional title ownership in hectares per category',
        'Number of sectional title owners by category',
        'sectional title ownership in hectares per race',
        'Number of sectional title owners by race',
        'sectional title ownership in hectares per gender',
        'Number of sectional title owners by gender',
        'sectional title ownership in hectares per nationality',
        'Number of sectional title owners by nationality',
    ]
}
# -------------------------------------------------------------------------------------
# Showcase Stories

OUR_LAND['showcase_stories'] = [
    {
        'title':  'Sample Story Title',
        'author': 'Stephen Rutto',
        'brief':  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        'link':   'https://city-press.news24.com/news/land-cleveage-and-conflict-201806215',
        'img':    STATIC_URL + 'img/showcase/our_land.jpg'
    },
    {
        'title':  'Sample Story Two Title',
        'author': 'Nancy Agutu',
        'brief':  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        'link':   'https://city-press.news24.com/news/land-cleveage-and-conflict-20180621',
        'img':    STATIC_URL + 'img/showcase/our_land.jpg'
    },
    {
        'title':  'Sample Story Three Title',
        'author': 'Monicah Mwangi',
        'brief':  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        'link':   'https://city-press.news24.com/news/land-cleveage-and-conflict-20180621',
        'img':    STATIC_URL + 'img/showcase/our_land.jpg'
    }
]

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

LOGGING['loggers']['our_land'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

WAZIMAP = OUR_LAND
