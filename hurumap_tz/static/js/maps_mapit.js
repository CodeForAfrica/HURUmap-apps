/***
 * A class that loads geography boundary information from
 * mapit.code4sa.org.
 */
function MapItGeometryLoader() {
    var self = this;
    self.mapit_url = MAPIT.url;
    self.mapit_codetype = MAPIT.code_type;
    self.mapit_countrycode = MAPIT.country_code;
    /**
     * Fetches geometry data for a comparison view and calls the +success+
     * callback with an object mapping each geo-id to a GeoJSON object.
     */
    this.loadGeometryForComparison = function(comparison, success) {
        // load all country, province, municipality and ward geo data
        var counter = comparison.geoIDs.length;
        var featureMap = {};
        var generation = MAPIT.generations[comparison.geoVersion];

        _.each(comparison.geoIDs, function(geoid) {
            // eg. province-WC
            var parts = geoid.split('-'),
                level = parts[0],
                code = geoid,
                url = '/code/' + self.mapit_codetype + '/' + code;



            url = url + '.geojson?generation=' + generation;
            var simplify = MAPIT.level_simplify[MAPIT.level_codes[level]];
            if (simplify) {
                url = url + '&simplify_tolerance=' + simplify;
            }

            d3.json(self.mapit_url + url, function(error, geojson) {
                --counter;
                if (error) return console.warn(error);
                var features = geojson.features;
                _.each(features, self.decorateFeature);

                // index by geoid
                _.each(features, function(feature) {
                    featureMap[feature.properties.geoid] = feature;
                });

                if (counter === 0) {
                    // collect those we're interested in
                    var usefulFeatures = {};

                    _.each(comparison.dataGeoIDs, function(geoid) {
                        var feature = featureMap[geoid];
                        feature.properties.name = comparison.data.geography[geoid].name;
                        usefulFeatures[geoid] = feature;
                    });

                    success(usefulFeatures);
                }
            });
        });
    };

    this.decorateFeature = function(feature, level, country) {
        feature.properties.level = level;
        feature.properties.country_code = country;
    };

    this.loadGeometryForLevel = function(level, geo_version, success) {
        var generation = MAPIT.generations[geo_version];
        var simplify = MAPIT.level_simplify[level];
        var mapit_codetype = this.mapit_codetype;

        var url_ = '/areas/' + level.toUpperCase();
        url_ = url_ + '?generation=' + generation + '&country=' + MAPIT.country_code;
        console.log(url_);
        d3.json(this.mapit_url + url_, function(error, data) {
          console.log(data);
          var areas = Object.keys(data);
          areas = areas.join();
          var url = '/areas/' + areas + '.geojson';

          d3.json(self.mapit_url + url, function(error, geojson) {
              var features = _.values(geojson.features);
              _.each(features, function(feature) {
                self.decorateFeature(feature, level, MAPIT.country_code);
              });
              success({features: features});
          });

        });
    };

    this.loadGeometryForGeo = function(geo_level, geo_code, geo_version, success) {
        var mapit_type = geo_level.toUpperCase();
        var mapit_simplify = MAPIT.level_simplify[geo_level];
        var generation = MAPIT.generations[geo_version];
        var mapit_codetype = this.mapit_codetype;
        var country_code = this.mapit_countrycode;

        var url_ ="/code/" + mapit_codetype + "/" + geo_code;
        url_ = url_ + "?generation=" + generation + "&type=" + mapit_type+ "&country=" + country_code;

        d3.json(this.mapit_url + url_, function(error, data) {
          if (error) return console.warn(error);
          var area = data;
          var url = '/area/' + area.id + '.geojson?simplify_tolerance='+ mapit_simplify;;

          d3.json(self.mapit_url + url, function(error, feature) {
              if (error) return console.warn(error);
              let geojson = {}
              geojson.type = "Feature";
              geojson.geometry = feature;
              geojson.properties = {}
              geojson.properties.name = area.name;
              self.decorateFeature(geojson, geo_level, MAPIT.country_code);
              console.log(geojson);
              success({feature: geojson});
          });
        });
    };

    this.loadGeometrySet = function(levelset, level, geo_version, success) {
        var generation = MAPIT.generations[geo_version];
        var url_ = '/areas/' + level.toUpperCase();
        url_ = url_ + '?generation=' + generation + '&country=' + MAPIT.country_code;

        d3.json(this.mapit_url + url_, function(error, data) {
          var areas = Object.keys(data);
          areas = areas.join();
          var url = '/areas/' + areas + '.geojson';

          d3.json(self.mapit_url + url, function(error, geojson) {
              var features = _.values(geojson.features);
              _.each(features, function(feature) {
                self.decorateFeature(feature, level, MAPIT.country_code);
              });
              success({features: features});
          });

        });
    };
}

GeometryLoader = new MapItGeometryLoader();
