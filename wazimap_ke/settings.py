import os

import dj_database_url

# pull in the default wazimap settings
from wazimap.settings import *  # noqa


# insert our overrides before both census and wazimap
INSTALLED_APPS.insert(-2, 'wazimap_ke')


DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://censusreporter_ke:censusreporter_ke@localhost/censusreporter_ke')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of Wazimap
WAZIMAP['name'] = 'Wazimap Kenya'
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
