import os
from collections import OrderedDict

import dj_database_url

from hurumap.settings import *  # noqa
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

INSTALLED_APPS = ['our_land'] + INSTALLED_APPS

ROOT_URLCONF = 'our_land.urls'

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://our_land:our_land@localhost/our_land')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

STATIC_ROOT = '/staticfiles/'
STATICFILES_DIRS = (
  os.path.join(BASE_DIR, 'static/'),
)


# Localise this instance of HURUmap
HURUMAP['name'] = 'Our Land'
HURUMAP['url'] = 'https://our-land.org'
HURUMAP['description'] = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'\
 'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'\
 ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut'\
 'aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in'\
 'voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
HURUMAP['title_tagline'] = 'Making Census Data Easy to Use'

HURUMAP['facebook'] = 'CodeForAfrica'
HURUMAP['twitter'] = '@Code4Africa'
HURUMAP['email'] = 'hello@hurumap.org'

HURUMAP['github_url'] = 'https://github.com/CodeForAfrica/HURUmap-apps'

HURUMAP['ga_tracking_id'] = 'UA-44795600-21'

HURUMAP['country_code'] = 'ZA'
HURUMAP['country_name'] = 'South Africa'
HURUMAP['comparative_levels'] = ['district', 'province', 'country']

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'land')

HURUMAP['default_profile'] = hurumap_profile
HURUMAP['profile_builder'] = 'our_land.profiles.land.get_land_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2011')
HURUMAP['legacy_embed_geo_version'] = '2011'

# this is provided by mapit
HURUMAP['geodata'] = 'our_land.geo.GeoData'
HURUMAP['geometry_data'] = {}
HURUMAP['levels'] = {
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

HURUMAP['primary_release_year'] = {
    # use the 2011 release for wards, use the latest (2016) for everything else
    'ward': 2011,
}
HURUMAP['latest_release_year'] = '2016'
WAZIMAP['available_release_years'] = {
    # Release years with data for geo_levels.
    # Only specify geo_levels with limited releases.
    # Other geo_levels have data for all releases.
    'ward': [2011]
}
# If not set, the centre is determined from the geometry.
HURUMAP['map_centre']= None
HURUMAP['map_zoom']= None

HURUMAP['mapit'] = {
    'generations': {
        '2011': '1',
        '2016': '2',
        None: '1',
    }
}
# -------------------------------------------------------------------------------
#topics

HURUMAP['topics']['firmland'] = {
    'topic': 'firmland',
    'name': 'Firm & Agricultural Land',
    'icon': '/static/img/education.png',
    'desc': 'South Africa Firm and Agricultural Land',
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

# Making sure they are the same
WAZIMAP = HURUMAP
