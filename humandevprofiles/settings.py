from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['humandevprofiles'] + INSTALLED_APPS


DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://humandev:humandev@localhost/humandev')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


HUMANDEV = WAZIMAP

HUMANDEV['name'] = 'PesaYetu'
HUMANDEV['url'] = 'https://pesayetu.hurumap.org'
HUMANDEV['country_code'] = 'KE'
HUMANDEV['country_name'] = 'Kenya'
HUMANDEV['description'] = 'is a tool the gives Kenyan Citizens access to ' \
                          'information on how money collected from taxpayers ' \
                          'is allocated. With this information, they can ask ' \
                          'what their elected officials are doing with it, and ' \
                          'from there the discussion can proceed towards how ' \
                          'money is spent in the future to better their lives.'
HUMANDEV['title_tagline'] = 'Making Budget Data Easy to Use'

humandev_profile = os.environ.get('HUMANDEV_PROFILE', 'pesayetu')


HUMANDEV['default_profile'] = humandev_profile

HUMANDEV['profile_builder'] = 'humandevprofiles.profiles.{}.get_profile'.format(
    humandev_profile)
HUMANDEV['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HUMANDEV['legacy_embed_geo_version'] = '2009'


HUMANDEV['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['county'],
    },
    'county': {
        'plural': 'counties',
    }
}
HUMANDEV['comparative_levels'] = ['country']
HUMANDEV['geometry_data'] = {
    '2009': {
        'country': 'geo/country.topojson',
        'county': 'geo/county.topojson'
    }
}
FORMAT_MODULE_PATH = 'pesayetu.formats'

LOGGING['loggers']['pesayetu'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HUMANDEV