from hurumap.settings import *  # noqa

INSTALLED_APPS = ['hurumap_global'] + INSTALLED_APPS

MIDDLEWARE_CLASSES = (
        'whitenoise.middleware.WhiteNoiseMiddleware',
    ) + MIDDLEWARE_CLASSES
    