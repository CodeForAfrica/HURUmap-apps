CREATE TABLE IF NOT EXISTS public.percentage_of_households_with_hand_washing_station (
          geo_level TEXT,
geo_code TEXT,
geo_version NUMERIC,
parent_level TEXT,
parent_code TEXT,
 NUMERIC
);

INSERT INTO public.percentage_of_households_with_hand_washing_station VALUES
    (NULL,NULL,NULL,NULL,NULL,51.2),
(NULL,NULL,NULL,NULL,NULL,35.7),
(NULL,NULL,NULL,NULL,NULL,79),
(NULL,NULL,NULL,NULL,NULL,51.1),
(NULL,NULL,NULL,NULL,NULL,37.4),
(NULL,NULL,NULL,NULL,NULL,62.5),
(NULL,NULL,NULL,NULL,NULL,52.5),
(NULL,NULL,NULL,NULL,NULL,61),
(NULL,NULL,NULL,NULL,NULL,31.8),
(NULL,NULL,NULL,NULL,NULL,91.7),
(NULL,NULL,NULL,NULL,NULL,48.2),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN),
('country','GH',2009,'continent','AFR',NaN);
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allPercentageOfHouseholdsWithHandWashingStations','Ghana Multiple Indicator Cluster Survey, 2018','https://www.washdata.org/sites/default/files/documents/reports/2020-03/Ghana-2017-2018-MICS-Report.pdf') on conflict do nothing;

