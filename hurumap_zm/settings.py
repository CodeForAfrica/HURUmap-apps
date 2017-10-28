import os
from collections import OrderedDict
import dj_database_url

# pull in the default HURUmap settings
from hurumap.settings import *  # noqa


# insert our overrides before both census and HURUmap
INSTALLED_APPS = ['hurumap_zm'] + INSTALLED_APPS


DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://hurumap_zm:hurumap_zm@localhost/hurumap_zm')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Zambia'
HURUMAP['url'] = 'https://zambia.hurumap.org'
HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['ga_tracking_id'] = 'UA-44795600-21'

HURUMAP['country_code'] = 'ZM'
HURUMAP['country_name'] = 'Zambia'
HURUMAP['country_profile'] = 'country-ZM-Zambia'
HURUMAP['profile_builder'] = 'hurumap_zm.profiles.get_census_profile'
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['province'],
    },
    'province': {
        'plural': 'provinces',
    }
}
HURUMAP['comparative_levels'] = ['country']
HURUMAP['geometry_data'] = {
    'country': 'geo/ZMBadm0.topojson',
    'province': 'geo/ZMBadm1.topojson',
}

HURUMAP['map_centre'] = [-13.1339, 27.8493]
HURUMAP['map_zoom'] = 6

HURUMAP['topics'] = OrderedDict()

HURUMAP['topics']['census'] = {
    'topic': 'census',
    'name': 'census 2010',
    'icon': '/static/img/census.png',
    'order': 1,
    'desc': 'Census data collected in 2010',
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

    ]
}

HURUMAP['topics']['health'] = {
        'topic': 'health',
        'name': 'health',
        'icon': '/static/img/health.png',
        'order': 2,
        'desc': 'Health data collected in 2014 by the Kenya National Bureau of Statistics ',
        'profiles': [

        ]
     }
HURUMAP['topics']['agriculture'] = {
        'topic': 'agriculture',
        'name': 'agriculture',
        'icon': '/static/img/development.png',
        'order': 3,
        'desc': 'Crop production and Livestock population for the year 2014 provided by the Ministry of Agriculture, Livestock and Fisheries.',
        'profiles': [

        ],
    }

