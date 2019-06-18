# -*- coding: utf-8 -*-
import os
from collections import OrderedDict

import dj_database_url

from hurumap.settings import *  # noqa

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

INSTALLED_APPS = ['hurumap_land'] + INSTALLED_APPS

ROOT_URLCONF = 'hurumap_land.urls'

MIDDLEWARE_CLASSES = (
        'whitenoise.middleware.WhiteNoiseMiddleware',
    ) + MIDDLEWARE_CLASSES


# Static Files Handler
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

# -------------------------------------------------------------------------------------
# Database Configs
# -------------------------------------------------------------------------------------

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap:hurumap@localhost/hurumap_land')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)

# -------------------------------------------------------------------------------------
# HURUmap Config
# -------------------------------------------------------------------------------------

HURUMAP['name'] = 'HURUmap Land'
HURUMAP['url'] = 'https://land.hurumap.org'
HURUMAP['description'] = 'is a joint project of City Press, Rapport, '\
'Landbou Weekblad and Code for Africa. The data site gives infomediaries like '\
'journalists and civic activists an easy toolkit for finding and embedding '\
'interactive data visualizations into their storytelling on land ownership '\
'in South Africa. The data that informs the land ownership debate is often '\
'contested and incomplete,  We will keep sourcing, cleaning and adding data '\
'sets to this site, and work towards becoming the authoritative data source on this issue.'

HURUMAP['title_tagline'] = 'Who owns the land in South Africa'

HURUMAP['facebook'] = 'hashtag/onsgrond'
HURUMAP['twitter'] = 'hashtag/OnsGrond'
HURUMAP['email'] = 'info@codeforafrica.org'

HURUMAP['github_url'] = 'https://github.com/CodeForAfrica/HURUmap-apps'

HURUMAP['ga_tracking_id'] = 'UA-44795600-47'

HURUMAP['country_code'] = 'ZA'
HURUMAP['country_name'] = 'South Africa'
HURUMAP['comparative_levels'] = ['district', 'province', 'country']

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'land')

HURUMAP['default_profile'] = hurumap_profile
HURUMAP['profile_builder'] = 'hurumap_land.profiles.land.get_land_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2016')
HURUMAP['legacy_embed_geo_version'] = '2016'

# this is provided by mapit
HURUMAP['geodata'] = 'hurumap_land.geo.GeoData'
HURUMAP['geometry_data'] = {}
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['province', 'district', 'municipality'],
    },
    'province': {
        'children': ['district', 'municipality'],
    },
    'district': {
        'children': ['municipality'],
    },
    'municipality': {
        'plural': 'municipalities',
        'children': [],
    }
}

# HURUMAP['primary_release_year'] = {
#     # use the 2011 release for wards, use the latest (2016) for everything else
#     'ward': 2016,
# }
HURUMAP['primary_release_year'] = {
    'province': 2017,
}
HURUMAP['latest_release_year'] = '2017'
HURUMAP['primary_dataset_name'] = 'Land Audit Report'
HURUMAP['available_release_years'] = {
    # Release years with data for geo_levels.
    # Only specify geo_levels with limited releases.
    # Other geo_levels have data for all releases.
    'province': [2013, 2017]
}
# If not set, the centre is determined from the geometry.
HURUMAP['map_centre']= None
HURUMAP['map_zoom']= None

HURUMAP['mapit'] = {
    'generations': {
        '2011': '1',
        '2016': '2',
        None: '2',
    }
}
# -------------------------------------------------------------------------------
#topics

HURUMAP['topics']['farmland'] = {
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

HURUMAP['topics']['ervenland'] = {
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

HURUMAP['topics']['sectionaltitleland'] = {
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
        'sectional title ownership in hectares nationality',
        'Number of sectional title owners by nationality',
    ]
}
# -------------------------------------------------------------------------------------
# Showcase Stories

HURUMAP['showcase_stories'] = [
    {
        'title':  'A farmer\'s 15-year wait for land justice',
        'author': 'Jeanne-Marié Versluis',
        'brief':  'The government offered the farm to Rakgase in 2002 and accepted the offer he made, but nothing has come of the agreement. ',
        'link':   'https://city-press.news24.com/News/a-farmers-15-year-wait-for-land-justice-20180822',
        'img':    STATIC_URL + 'img/showcase/showcase_1.jpg'
    },
    {
        'title':  'Be prepared: It’s getting hotter and drier',
        'author': 'Mandi Smallhorne',
        'brief':  'What changes can we expect for our country and our lives as climate change takes hold? ',
        'link':   'https://city-press.news24.com/News/be-prepared-its-getting-hotter-and-drier-20180910',
        'img':    STATIC_URL + 'img/showcase/showcase_2.jpg'
    },
    {
        'title':  'What will climate change mean for SA agriculture?',
        'author': 'Mandi Smallhorne',
        'brief':  'What are the small shifts that mean big changes, particularly for agriculture, in a changing climate? ',
        'link':   'https://city-press.news24.com/News/what-will-climate-change-mean-for-sa-agriculture-20180817',
        'img':    STATIC_URL + 'img/showcase/showcase_3.jpg'
    }
]

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')


LOGGING['loggers']['hurumap_land'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

WAZIMAP = HURUMAP
