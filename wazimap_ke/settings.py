import os

import dj_database_url

# pull in the default wazimap settings
from wazimap.settings import *  # noqa


# insert our overrides before both census and wazimap
INSTALLED_APPS = ['wazimap_ke'] + INSTALLED_APPS


DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://wazimap:wazimap@localhost/wazimap')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of Wazimap
WAZIMAP['name'] = 'Wazimap Kenya'
WAZIMAP['url'] = 'http://kenya.wazimap.org'
WAZIMAP['country_code'] = 'KE'
WAZIMAP['profile_builder'] = 'wazimap_ke.profiles.get_census_profile'
WAZIMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['county'],
    },
    'county': {
        'plural': 'counties',
    }
}
WAZIMAP['comparative_levels'] = ['country']
WAZIMAP['geometry_data'] = {
    'country': 'geo/country.topojson',
    'county': 'geo/county.topojson',
}

WAZIMAP['ga_tracking_id'] = 'UA-44795600-8'
WAZIMAP['twitter'] = '@Code4Africa'

WAZIMAP['map_centre'] = [0.3051933453207569, 37.908818734483155]
WAZIMAP['map_zoom'] = 6
