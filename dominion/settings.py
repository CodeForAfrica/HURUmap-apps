# -*- coding: utf-8 -*-
import os
from collections import OrderedDict
from distutils.util import strtobool

import dj_database_url

from hurumap.settings import *  # noqa

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

INSTALLED_APPS = ['dominion'] + INSTALLED_APPS

ROOT_URLCONF = 'dominion.urls'

MIDDLEWARE_CLASSES = (
        'corsheaders.middleware.CorsMiddleware',
        'whitenoise.middleware.WhiteNoiseMiddleware',
    ) + MIDDLEWARE_CLASSES


TEMPLATES[0]['OPTIONS']['context_processors'] = TEMPLATES[0]['OPTIONS'][
                                                    'context_processors'] + [
                                                    'dominion.context_processors.asset_manifest']

STATICFILES_DIRS = [
     os.path.join(BASE_DIR, 'dominion/dominion_ui/build/static') # build appropriate path
]

# Static Files Handler
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

# -------------------------------------------------------------------------------------
# Database Configs
# -------------------------------------------------------------------------------------

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap:hurumap@localhost/dominion')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)

# -------------------------------------------------------------------------------------
# HURUmap Config
# -------------------------------------------------------------------------------------

HURUMAP['name'] = 'Dominion'
HURUMAP['url'] = 'https://dominion.investigate.africa'
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

HURUMAP['ga_tracking_id'] = 'UA-44795600-21'
HURUMAP['google_geocode_api_key'] = os.environ.get('GOOGLE_GEOCODE_API_KEY')

HURUMAP['country_code'] = 'ZA'
HURUMAP['country_name'] = 'South Africa'

# Multi-country support (complements `country_code/name` settings)
HURUMAP['countries'] = {
    'kenya': {
        'code': 'KE',
        'name': 'Kenya',
        'centre': [0.3051933453207569, 37.908818734483155],
        'zoom': 6
    },
    'south-africa': {
        'code': 'ZA',
        'name': 'South Africa',
        'centre': [-30, 24],
        'zoom': 5
    },
}

HURUMAP['comparative_levels'] = ['district', 'province', 'country']

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'land')

HURUMAP['default_profile'] = hurumap_profile
HURUMAP['profile_builder'] = 'dominion.profiles.land.get_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HURUMAP['legacy_embed_geo_version'] = '2009'


HURUMAP['levels'] = {
    'continent': {
        'plural': 'continents',
        'children': ['country', 'level1'],
    },
    'country': {
        'plural': 'countries',
        'children': ['level1']
    },
    'level1': {

    }
}
HURUMAP['USE_MAPIT'] = True
# this is provided by mapit
HURUMAP['geometry_data'] = {}
HURUMAP['mapit'] = {
    'url': 'https://mapit.hurumap.org',
    'country_code': '',
    'generations': {
        '2009': '1',
        '2016': '1',
        None: '1',
        # this should be based on the default_geo_version wazimap setting
    },
    'code_type': 'AFR',
    'level_simplify': {
        'continent': 0,
        'country': 0,
        'level1': 0
    },
}

HURUMAP['primary_dataset_name'] = 'Census'

HURUMAP['primary_release_year'] = {
    'ke': {
        'country': 2009,
        'level1': 2009
    },
    'za': {
        'country': 2016,
        'level1': 2016
    }
}
HURUMAP['latest_release_year'] = 'latest'

# default census release years
HURUMAP['available_release_years'] = {
    'country': [2009, 2016]
}

# census release years for each country and it's subnational geographies
HURUMAP['available_releases_years_per_country'] = {
    'ke': {
        'country': [2009],
        'level1': [2009]
    },
    'za': {
        'country': [2016],
        'level1': [2016]
    }
}



# If not set, the centre is determined from the geometry.
HURUMAP['map_centre']= None
HURUMAP['map_zoom']= 5

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
        'sectional title ownership in hectares per nationality',
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


CORS_ORIGIN_ALLOW_ALL = False

#whitelist localhost:3000 to serve rest frontend
CORS_ORIGIN_WHITELIST = (
        'localhost:3000/'
    )

LOGGING['loggers']['dominion'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

WAZIMAP = HURUMAP
