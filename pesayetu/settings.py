from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['pesayetu'] + INSTALLED_APPS

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap:hurumap@localhost/pesayetu')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

PESAYETU = WAZIMAP

PESAYETU['name'] = 'PesaYetu'
PESAYETU['url'] = 'https://pesayetu.hurumap.org'
PESAYETU['country_code'] = 'KE'
PESAYETU['country_name'] = 'Kenya'
PESAYETU['description'] = 'is a tool the gives Kenyan Citizens access to ' \
                          'information on how money collected from taxpayers ' \
                          'is allocated. With this information, they can ask ' \
                          'what their elected officials are doing with it, and ' \
                          'from there the discussion can proceed towards how ' \
                          'money is spent in the future to better their lives.'
PESAYETU['title_tagline'] = 'Making Budget Data Easy to Use'

pesayetu_profile = os.environ.get('PESAYETU_PROFILE', 'pesayetu')

PESAYETU['default_profile'] = pesayetu_profile

PESAYETU['profile_builder'] = 'pesayetu.profiles.{}.get_profile'.format(
    pesayetu_profile)
PESAYETU['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
PESAYETU['legacy_embed_geo_version'] = '2009'

PESAYETU['map_centre'] = [0.3051933453207569, 37.908818734483155]
PESAYETU['map_zoom'] = 6

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

HURUMAP['USE_MAPIT'] = True
HURUMAP['geometry_data'] = {}
HURUMAP['mapit'] = {
    'url': 'https://mapit.hurumap.org',
    'country_code': 'KE',
    'generations': {
        '2009': '1',
        None: '1',
        # this should be based on the default_geo_version wazimap setting
    },
    'code_type': 'KEN',
    'level_simplify': {
        'country': 0,
        'county': 0
    },
    'map_country': {
        'centre': [0.3051933453207569, 37.908818734483155],
        'zoom': 6
    }
}

PESAYETU['primary_release_year'] = {
    'county': 2016,
}
PESAYETU['latest_release_year'] = '2016'
PESAYETU['primary_dataset_name'] = 'Budget'
PESAYETU['available_release_years'] = {
    'county': [2016]
}
FORMAT_MODULE_PATH = 'pesayetu.formats'

LOGGING['loggers']['pesayetu'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = PESAYETU
