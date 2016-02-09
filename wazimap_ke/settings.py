import os

# pull in the default wazimap settings
from wazimap.settings import *  # noqa


# insert our overrides before both census and wazimap
INSTALLED_APPS.insert(-2, 'wazimap_ke')


DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://censusreporter_ke:censusreporter_ke@localhost/censusreporter_ke')


# Localise this instance of Wazimap
WAZIMAP['name'] = 'Wazimap Kenya'
WAZIMAP['profile_builder'] = 'wazimap_ke.profiles.get_census_profile'
