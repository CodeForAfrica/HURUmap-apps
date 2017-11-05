from wazimap.settings import *  # noqa

ADMINS = (('David Lemayian', 'david@codeforafrica.org'),)
MANAGERS = ADMINS

INSTALLED_APPS = ['hurumap'] + INSTALLED_APPS

TIME_ZONE = 'Africa/Nairobi'
LANGUAGE_CODE = 'en-ke'

TEMPLATE_CONTEXT_PROCESSORS = (
    'django.core.context_processors.media',
    'django.core.context_processors.request',
    'django.core.context_processors.static',
    'census.context_processors.api_url',
    'wazimap.context_processors.wazimap_settings',
    'hurumap.context_processors.hurumap_settings',
)


HURUMAP = WAZIMAP


HURUMAP['name'] = 'HURUmap'
HURUMAP['url'] = 'https://hurumap.org'

WAZIMAP['geodata'] = 'hurumap.geo.GeoData'
HURUMAP['geometry_data'] = {}

HURUMAP['ga_tracking_id'] = 'UA-44795600-8'

HURUMAP['facebook'] = 'CodeForAfrica'
HURUMAP['twitter'] = '@Code4Africa'
HURUMAP['contact_email'] = 'hello@hurumap.org'

HURUMAP['github_url'] = 'https://github.com/CodeForAfrica/HURUmap'
HURUMAP['openafrica_url'] = 'https://open.africa/'

HURUMAP['showcase_stories'] = [
    {
        'title': 'Marakwet locals intercept lorry ferrying 30 donkeys as demand for meat rises',
        'author': 'Stephen Rutto',
        'brief': 'Marakwet East locals intercepted a lorry transporting 30 donkeys in Chesoi, on suspicion that the animals had been stolen from from other areas.',
        'link': 'http://www.the-star.co.ke/news/2016/11/04/marakwet-locals-intercept-lorry-ferrying-30-donkeys-as-demand-for-meat_c1449795',
        'img': STATIC_URL + 'img/showcase/donkeys.jpg'
    },
    {
        'title': 'Two suspected thugs shot dead in Nairobi as crime rate soars',
        'author': 'Nancy Agutu',
        'brief': 'Two suspected thugs were shot dead in two separate incidents on Tuesday evening, and three guns with more than 30 bullets recovered.',
        'link': 'http://www.the-star.co.ke/news/2016/10/19/two-suspected-thugs-shot-dead-in-nairobi-as-crime-rate-soars_c1440749',
        'img': STATIC_URL + 'img/showcase/crime.jpg'
     },
    {
        'title': 'Narok, Homa Bay and West Pokot top in early pregnancy',
        'author': 'Monicah Mwangi',
        'brief': 'About one in every five teenage girls between 15-19 years have either had a live birth or are pregnant with their first child, according to a report by the United Nations Population Fund.',
        'link': 'http://www.the-star.co.ke/news/2016/11/02/narok-homa-bay-and-west-pokot-top-in-early-pregnancy_c1447958',
        'img': STATIC_URL + 'img/showcase/early-pregnancy.jpg'
     }
]

WAZIMAP = HURUMAP

LOGGING['loggers']['hurumap'] = {'level': 'DEBUG' if DEBUG else 'INFO'}
