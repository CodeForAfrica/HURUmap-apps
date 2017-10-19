from django.conf import settings


def hurumap_settings(request):

    return {
        'HURUMAP': settings.HURUMAP
    }
