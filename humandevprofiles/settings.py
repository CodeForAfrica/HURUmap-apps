from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['humandevprofiles'] + INSTALLED_APPS


DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://humandev:humandev@localhost/humandev')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


HUMANDEV = WAZIMAP

HUMANDEV['name'] = 'AP Human Development Country Profiles'
HUMANDEV['url'] = 'https://hd.hurumap.org'

humandev_profile = os.environ.get('HUMANDEV_PROFILE', 'humandev')


HUMANDEV['default_profile'] = humandev_profile

HUMANDEV['profile_builder'] = 'humandevprofiles.profiles.{}.get_profile'.format(
    humandev_profile)
HUMANDEV['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HUMANDEV['legacy_embed_geo_version'] = '2009'


HUMANDEV['levels'] = {
    'continent': {
        'plural': 'continents',
        'children': ['country'],
    },
    'country': {
        'plural': 'countries',
    }
}
HUMANDEV['comparative_levels'] = ['country']
HUMANDEV['geometry_data'] = {
    '2009': {
        'country': 'geo/continent.topojson',
        'county': 'geo/country.topojson'
    }
}

LOGGING['loggers']['humandev'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HUMANDEV