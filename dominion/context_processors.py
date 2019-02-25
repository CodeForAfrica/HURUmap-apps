import json

def asset_manifest(request):
    asset_manifest = {};
    try:
        with open('./dominion/dominion_ui/build/asset-manifest.json') as f:
            asset_manifest_contents = json.load(f)
            asset_manifest_content = dict(asset_manifest_contents)
            for key, value in asset_manifest_contents.iteritems():
                # Strip starting `static/` from values
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

