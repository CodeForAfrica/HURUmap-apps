import json
import os

from django.conf import settings

def asset_manifest(request):
    manifest_filepath = os.path.join(settings.BASE_DIR, 'dominion/dominion_ui/build/asset-manifest.json')
    asset_manifest = {};
    try:
        with open(manifest_filepath) as f:
            asset_manifest_contents = json.load(f)
            for key, value in asset_manifest_contents.items():
                # Strip starting `/static/` from values
                if key == 'main.js':
                    asset_manifest['main'] = value[8:]
                elif key == 'runtime~main.js':
                    asset_manifest['runtime'] = value[8:]
                elif key.startswith('static/js/1') and key.endswith('chunk.js'):
                    asset_manifest['vendor'] = value[8:]

    except Exception as e:
        print(e.message)

    return {
        'asset_manifest': asset_manifest
    }
