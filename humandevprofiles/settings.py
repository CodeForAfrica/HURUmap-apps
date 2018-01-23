# coding=utf-8
from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['humandevprofiles'] + INSTALLED_APPS


DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://humandev:humandev@localhost/humandev')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


HURUMAP = WAZIMAP

HURUMAP['name'] = 'Human Development Profiles'
HURUMAP['url'] = 'https://hd.hurumap.org'

humandev_profile = os.environ.get('HUMANDEV_PROFILE', 'hd_profiles')


HURUMAP['default_profile'] = humandev_profile

HURUMAP['profile_builder'] = 'humandevprofiles.profiles.{}.get_profile'.format(
    humandev_profile)
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HURUMAP['legacy_embed_geo_version'] = '2009'

HURUMAP['showcase_stories'] = [
    {
        'title': 'Figures of the week: Human development progress in Africa and globally',
        'author': 'Amy Copley',
        'brief': 'Figures of the week: Human development progress in Africa and globally',
        'link': 'https://www.brookings.edu/blog/africa-in-focus/2017/03/24/figures-of-the-week-human-development-progress-in-africa-and-globally/',
        'img': STATIC_URL + 'img/showcase/africa_hdi.jpg'
    },
    {
        'title': "Analysis: South Africa’s Performance in UNDP Human "
                 "Development Report 2015",
        'author': 'Nancy Agutu',
        'brief': "Analysis: South Africa’s Performance in UNDP Human Development Report 2015.",
        'link': 'https://www.brandsouthafrica.com/south-africa-fast-facts/news-facts/analysis-south-africa-s-performance-in-undp-human-development-report-2015',
        'img': STATIC_URL + 'img/showcase/southafrica_analysis.gif'
    },
    {
        'title': 'Malawi\'s human development index on the rise-UN report',
        'author': 'Monicah Mwangi',
        'brief': 'Malawi\'s human development index on the rise-UN report',
        'link': 'http://www.africanews.com/2017/03/23/malawi-s-human-development-index-on-the-rise-un-report/',
        'img': STATIC_URL + 'img/showcase/malawi_hdi.jpg'
    }
]


HURUMAP['levels'] = {
    'continent': {
        'plural': 'continents',
        'children': ['country'],
    },
    'country': {
        'plural': 'countries',
    }
}
HURUMAP['comparative_levels'] = ['country']
HURUMAP['geometry_data'] = {
    '2009': {
        'continent': 'geo/continent.topojson',
        'country': 'geo/country.topojson'
    }
}

LOGGING['loggers']['humandev'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP