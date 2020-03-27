CREATE TABLE IF NOT EXISTS public.percentage_of_households_with_hand_washing_station_by_year (
          geo_level TEXT,
geo_code TEXT,
geo_version NUMERIC,
parent_level TEXT,
parent_code TEXT,
year NUMERIC,
value NUMERIC
);

INSERT INTO public.percentage_of_households_with_hand_washing_station_by_year VALUES
    ('country','ZA',2009,'continent','AFR',2012,43.34616),
('country','ZA',2009,'continent','AFR',2013,43.47679),
('country','ZA',2009,'continent','AFR',2014,43.60693),
('country','ZA',2009,'continent','AFR',2015,43.73632),
('country','ZA',2009,'continent','AFR',2016,43.86494),
('country','ZA',2009,'continent','AFR',2017,43.99257),
('country','KE',2009,'continent','AFR',2013,24.48218),
('country','KE',2009,'continent','AFR',2014,24.52296),
('country','KE',2009,'continent','AFR',2015,24.5647),
('country','KE',2009,'continent','AFR',2016,24.6074),
('country','KE',2009,'continent','AFR',2017,24.65104),
('country','GH',2009,'continent','AFR',2013,40.83272),
('country','GH',2009,'continent','AFR',2014,40.88687),
('country','GH',2009,'continent','AFR',2015,40.9407),
('country','GH',2009,'continent','AFR',2016,40.99421),
('country','GH',2009,'continent','AFR',2017,41.04731),
('country','ET',2009,'continent','AFR',2012,7.54524),
('country','ET',2009,'continent','AFR',2013,7.62537),
('country','ET',2009,'continent','AFR',2014,7.70705),
('country','ET',2009,'continent','AFR',2015,7.79008),
('country','ET',2009,'continent','AFR',2016,7.87466),
('country','ET',2009,'continent','AFR',2017,7.96039);
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allPercentageOfHouseholdsWithHandWashingStationByYears','Our World in Data, 2017','https://sdg-tracker.org/water-and-sanitation') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allPercentageOfHouseholdsWithHandWashingStationByYears','Our World in Data, 2017','https://sdg-tracker.org/water-and-sanitation') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allPercentageOfHouseholdsWithHandWashingStationByYears','Our World in Data, 2017','https://sdg-tracker.org/water-and-sanitation') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ET','allPercentageOfHouseholdsWithHandWashingStationByYears','Our World in Data, 2017','https://sdg-tracker.org/water-and-sanitation') on conflict do nothing;

