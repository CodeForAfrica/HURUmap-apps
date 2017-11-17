from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['pesayetu'] + INSTALLED_APPS


DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://pesayetu:pesayetu@localhost/pesayetu')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


PESAYETU = WAZIMAP

PESAYETU['name'] = 'HURUmap Kenya'
PESAYETU['url'] = 'https://pesayetu.hurumap.org'
PESAYETU['country_code'] = 'KE'
PESAYETU['country_name'] = 'Kenya'

pesayetu_profile = os.environ.get('HURUMAP_PROFILE', 'census')

PESAYETU['default_profile'] = pesayetu_profile

PESAYETU['country_profile'] = 'country-KE-Kenya'
PESAYETU['profile_builder'] = 'hurumap_ke.profiles.{}.get_profile'.format(
    pesayetu_profile)
PESAYETU['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
PESAYETU['legacy_embed_geo_version'] = '2009'

PESAYETU['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['county'],
    },
    'county': {
        'plural': 'counties',
    }
}
PESAYETU['comparative_levels'] = ['country']
PESAYETU['geometry_data'] = {
    '2009': {
        'country': 'geo/country.topojson',
        'county': 'geo/county.topojson'
    }
}

LOGGING['loggers']['pesayetu'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = PESAYETU