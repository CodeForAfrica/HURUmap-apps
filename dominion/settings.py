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

HURUMAP['ga_tracking_id'] = 'UA-44795600-47'
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
HURUMAP['compare_profile_builder'] = 'dominion.profiles.land.get_comparison_profile'

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
    'country': [2009, 2016, 2017, 2018]
}

# census release years for each country and it's subnational geographies
HURUMAP['available_releases_years_per_country'] = {
    'ke': {
        'country': [2009],
        'level1': [2009]
    },
    'za': {
        'country': [2018, 2017, 2016],
        'level1': [2018, 2017, 2016]
    }
}



# If not set, the centre is determined from the geometry.
HURUMAP['map_centre']= None
HURUMAP['map_zoom']= 5

# -------------------------------------------------------------------------------
#topics

HURUMAP['topics'] = {
    'demographics',  # population group
    'farmland',  # farm and Agricultural land
    'ervenland',  # erven land
    'sectionaltitleland',  # sectional title land
    'redistributionandrestitution',  # redistribution and restitution
    'afrobarometer',
    'landsales',
    'landsalescolour',
    'workershostel'
}
# -------------------------------------------------------------------------------------
# Showcase Stories
HURUMAP['showcase_stories'] = [
    {
        'index': 0,
        'title':  'Deforestation: 48 Years of Kenya\'s Unspoken Disaster',
        'author': 'Africa Uncensored',
        'brief':  'Deforestation in Kenya, how did it happen? Who is responsible?',
        'link':   '',
        'date': '05 Apr 2019',
        'mediaSrc':   'https://www.youtube.com/embed/PDhuK4KrIoU',
        'media': 'iframe',
        'country': 'KE'
    },
    {
        'index': 1,
        'title':  'Handing land to black farmers: More complicated than you think',
        'author': 'Peter Delius',
        'brief':  'There is no sustainable way back to farming for the overwhelming majority of the population, says Peter Delius.',
        'link':   'https://city-press.news24.com/Voices/handing-land-to-black-farmers-more-complicated-than-you-think-20180919',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase6.jpg',
        'date': '19 Sep 2018',
        'media': 'img',
        'country': 'ZA'
    },
    {
        'index': 2,
        'title':  'Be prepared: It’s getting hotter and drier',
        'author': 'Mandi Smallhorne',
        'brief':  'What changes can we expect for our country and our lives as climate change takes hold? ',
        'link':   'https://city-press.news24.com/News/be-prepared-its-getting-hotter-and-drier-20180910',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase2.jpg',
        'date': '10 Sep 2018',
        'media': 'img',
        'country': 'ZA'

    },
    {
        'index': 3,
        'title':  'A farmer\'s 15-year wait for land justice',
        'author': 'Jeanne-Marié Versluis',
        'brief':  'The government offered the farm to Rakgase in 2002 and accepted the offer he made, but nothing has come of the agreement. ',
        'link':   'https://city-press.news24.com/News/a-farmers-15-year-wait-for-land-justice-20180822',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase1.jpg',
        'date': '22 Aug 2018',
        'media': 'img',
        'country': 'ZA'
    },
    {
        'index': 4,
        'title':  'What will climate change mean for SA agriculture?',
        'author': 'Mandi Smallhorne',
        'brief':  'What are the small shifts that mean big changes, particularly for agriculture, in a changing climate? ',
        'link':   'https://city-press.news24.com/News/what-will-climate-change-mean-for-sa-agriculture-20180817',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase3.jpg',
        'date': '17 Aug 2018',
        'media': 'img',
        'country': 'ZA'
    },
    {
        'index': 5,
        'title':  'Block 40’s struggle for decent homes may finally be over',
        'author': 'Andile Nayika',
        'brief':  'DASHED DREAMS Block 40 residents Thobile Tshume and Nomandla Dala aren’t hopeful their situation will change, despite 300 families being promised plots, title deeds and RDP houses in the contested area',
        'link':   'https://city-press.news24.com/News/block-40s-struggle-for-decent-homes-may-finally-be-over-20180806',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase5.jpg',
        'date': '06 Aug 2018',
        'media': 'img',
        'country': 'ZA'

    },
    {
        'index': 6,
        'title':  'Land reform gone wrong: A black day near White River',
        'author': 'Sizwe sama Yende',
        'brief':  'Pile of rubble is what was left when 28 houses were demolished at Phumlani Village ',
        'link':   'https://city-press.news24.com/News/land-reform-gone-wrong-a-black-day-near-white-river-20180806',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase8.jpg',
        'date': '06 Aug 2018',
        'media': 'img',
        'country': 'ZA'
    },
    {
        'index': 7,
        'title':  'Despair after land and a future are stolen',
        'author': 'Onthatile Kgoadigoadi',
        'brief':  'Lufhereng residents stand next to their farmland that is situated in Doornkop plot 239 IQ in Soweto. They claim to have lost their land to the Lufhereng Housing Project through nefarious practices.',
        'link':   'https://city-press.news24.com/News/despair-after-land-and-a-future-are-stolen-20180715-2',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase9.jpg',
        'date': '15 Jul 2018',
        'media': 'img',
        'country': 'ZA'
    },
    {
        'index': 8,
        'title':  'We want our own land',
        'author': 'Tebogo Letsie',
        'brief':  'In the Northern Cape, tempers flared and the question of the indigenous people’s rights was raised, but what was clear is that land expropriation without compensation has support from the majority of the communities. ',
        'link':   'https://city-press.news24.com/News/we-want-our-own-land-20180711-2',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase4.jpg',
        'date': '11 Jul 2018',
        'media': 'img',
        'country': 'ZA'
    },
    {
        'index': 9,
        'title':  'Community vs chief | The story of a struggle for land',
        'author': 'Poloko Tau',
        'brief':  'In Matiwaneskop near Ladysmith, KwaZulu-Natal, the community is refusing to be ruled by Inkosi Ntandoyenkosi Shabalala. They say that, when their forefathers bought the land in the 1800s, they had no chief and were just a group of 120 ordinary people.',
        'link':   'https://city-press.news24.com/News/community-vs-chief-the-story-of-a-struggle-for-land-20180624',
        'mediaSrc':    STATIC_URL + 'img/showcase/showcase7.jpg',
        'date': '24 Jun 2018',
        'media': 'img',
        'country': 'ZA'
    },
    {
        'index': 10,
        'title':  'The forgotten struggle of Kenyan indigenous people',
        'author': 'Africa Uncensored',
        'brief':  '“You need to tell me [an indigenous person] why you need my land, what my role will be and what’s my future involvement in that land”.',
        'link':   '',
        'date': '23 Jun 2017',
        'mediaSrc':   'https://www.youtube.com/embed/miBC5d7NNzk',
        'media': 'iframe',
        'country': 'KE'
    },
]

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')


CORS_ORIGIN_ALLOW_ALL = True

#whitelist localhost:3000 to serve rest frontend
# CORS_ORIGIN_WHITELIST = (
#         'localhost:3000/'
#     )

# color scheme

HURUMAP['theme'] = {
    'charts': {
        'colorbrewer': {
            'dominion': [
                '#7f9442', '#de9f3a'
            ],
        },
        'color_scale': 'dominion',
        'chart_height': 320
    }
}

LOGGING['loggers']['dominion'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

WAZIMAP = HURUMAP
