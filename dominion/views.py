import json
from django.conf import settings
from django.utils.module_loading import import_string
from wazimap.geo import geo_data, LocationNotFound
from django.views.generic import View
from wazimap.views import render_json_error 
from census.views import render_json_to_response

class GeographyCompareAPIView(View):

    def get(self, request, *args, **kwargs):
        self.geo_id = self.kwargs.get('geo_id1', None)
        self.comp_geo_id = self.kwargs.get('geo_id2', None)

        try:
            level, code = self.geo_id.split('-', 1)
            comp_level, comp_code = self.comp_geo_id.split('-', 1)

            self.geo = geo_data.get_geography(code, level)
            self.comp_geo = geo_data.get_geography(comp_code, comp_level)

            # load the profile
            compare_profile_method = settings.HURUMAP.get('compare_profile_builder', None)
            if not compare_profile_method:
                raise ValueError(
                    "You must define WAZIMAP.profile_builder in settings.py")

            compare_profile_method = import_string(compare_profile_method)
            compare_profile_data = compare_profile_method(self.geo, self.comp_geo)

            compare_profile_data['geography'] = self.geo.as_dict_deep()
            compare_profile_data['comp_geography'] = self.comp_geo.as_dict_deep()

            return render_json_to_response(compare_profile_data)

        except (ValueError, LocationNotFound) as e:
            return render_json_error(e.message, 404)
