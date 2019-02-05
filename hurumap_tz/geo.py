import logging

from shapely.geometry import asShape
from wazimap.geo import GeoData as BaseGeoData, LocationNotFound
from django.conf import settings

import settings

import requests

log = logging.getLogger(__name__)

MAPIT_SETTINGS = settings.HURUMAP['mapit'];

class GeoData(BaseGeoData):
    def get_geometry(self, geo):
        """ Get the geometry description for a geography. This is a dict
        with two keys, 'properties' which is a dict of properties,
        and 'shape' which is a shapely shape (may be None).
        """

        mapit_level = geo.geo_level
        mapit_codetype =  MAPIT_SETTINGS['code_type']
        url = MAPIT_SETTINGS['url'] + '/code/%s/%s' % (mapit_codetype, geo.geoid)

        code_resp = requests.get(url, verify=False)
        if code_resp.status_code == 404:
            return None

        code_resp.raise_for_status()
        code_resp = code_resp.json()
        area_id = code_resp['id']

        url_ = MAPIT_SETTINGS['url'] + '/area/%s.geojson?' + '&generation=%s' % ( area_id, MAPIT_SETTINGS['generations'][geo.version])
        simplify = MAPIT_SETTINGS['level_simplify'].get(mapit_level)
        if simplify:
            url_ = url_ + '&simplification_level=%s' % simplify

        resp = requests.get(url_, verify=False)
        if resp.status_code == 404:
            return None
        resp.raise_for_status()

        feature = resp.json()
        shape = asShape(feature['geometry'])

        return {
            'properties': feature['properties'],
            'shape': shape,
        }

    def get_locations_from_coords(self, longitude, latitude, levels=None, version=None):
        """
        Returns a list of geographies containing this point.
        """
        mapit_codetype =  MAPIT_SETTINGS['code_type']
        resp = requests.get(MAPIT_SETTINGS['url'] + '/point/4326/%s,%s?generation=%s' % (longitude, latitude, MAPIT_SETTINGS['generations'][version]), verify=False)
        resp.raise_for_status()

        geos = []
        for feature in resp.json().itervalues():
            try:
                geo = self.get_geography(feature['codes'][mapit_codetype],
                                         feature['type_name'].lower(),
                                         version=version)

                if not levels or geo.geo_level in levels:
                    geos.append(geo)
            except LocationNotFound as e:
                log.warn("Couldn't find geo that Mapit gave us: %s" % feature, exc_info=e)

        return geos
