from hurumap.settings import *  # noqa

INSTALLED_APPS = ['hurumap_global'] + INSTALLED_APPS

HURUMAP['google_geocode_api_key'] = os.environ.get('GOOGLE_GEOCODE_API_KEY')

WAZIMAP = HURUMAP
