from django.conf import settings
from wazimap.geo import GeoData as GeoDataBase


class GeoData (GeoDataBase):

    def _setup_versions(self):
        """ Find all the geography versions.
        """

        # Geo Versions not needed for HURUmap Global (yet)
        if settings.HURUMAP['url'] == 'https://hurumap.org':
            self._versions = ['']
        else:
            self._versions = [
                x['version'] for x in self.geo_model.objects.values('version').distinct().all()]

        self._global_latest_version = sorted(self.versions)[-1]

        # _default_version = None means fall back to whatever is latest for
        # geography
        self._default_version = settings.WAZIMAP['default_geo_version']
