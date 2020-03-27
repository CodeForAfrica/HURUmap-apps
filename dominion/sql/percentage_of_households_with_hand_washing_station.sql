CREATE TABLE IF NOT EXISTS public.percentage_of_households_with_hand_washing_station (
          geo_level TEXT,
geo_code TEXT,
geo_version NUMERIC,
parent_level TEXT,
parent_code TEXT,
name TEXT,
value NUMERIC
);

INSERT INTO public.percentage_of_households_with_hand_washing_station VALUES
    ('level1','ET_1_011',2009,'country','ET','Tigray',51.2),
(NULL,NULL,NULL,NULL,NULL,'Affar',35.7),
('level1','ET_1_003',2009,'country','ET','Amhara',79),
('level1','ET_1_008',2009,'country','ET','Oromiya',51.1),
('level1','ET_1_010',2009,'country','ET','Somali',37.4),
(NULL,NULL,NULL,NULL,NULL,'BenishangulGumuz',62.5),
('level1','ET_1_009',2009,'country','ET','SNNPR',52.5),
(NULL,NULL,NULL,NULL,NULL,'Gambela',61),
(NULL,NULL,NULL,NULL,NULL,'Harari',31.8),
('level1','ET_1_001',2009,'country','ET','Addis Ababa',91.7),
('level1','ET_1_005',2009,'country','ET','Dire Dawa',48.2),
('level1','ZA_1_008',2009,'country','ZA','Western',58.1),
(NULL,NULL,NULL,NULL,NULL,'Central',58.1),
(NULL,NULL,NULL,NULL,NULL,'Greater Accra',49.7),
(NULL,NULL,NULL,NULL,NULL,'Volta',36.6),
('level1','ZA_1_003',2009,'country','ZA','Eastern',65),
(NULL,NULL,NULL,NULL,NULL,'Ashanti',51.7),
(NULL,NULL,NULL,NULL,NULL,'Brong Ahafo',38.7),
('level1','ZA_1_006',2009,'country','ZA','Northern',31.5),
(NULL,NULL,NULL,NULL,NULL,'Upper East',34.5),
(NULL,NULL,NULL,NULL,NULL,'Upper West',25.8),
('level1','ZA_1_008',2009,'country','ZA','Western Cape',81.70038384),
('level1','ZA_1_003',2009,'country','ZA','Eastern Cape',63.09956247),
('level1','ZA_1_006',2009,'country','ZA','Northern Cape',73.67489691),
('level1','ZA_1_002',2009,'country','ZA','Free State',72.54725911),
('level1','ZA_1_001',2009,'country','ZA','KwaZulu-Natal',53.64577624),
('level1','ZA_1_007',2009,'country','ZA','North West',55.65677526),
('level1','ZA_1_009',2009,'country','ZA','Gauteng',82.7881125),
('level1','ZA_1_004',2009,'country','ZA','Mpumalanga',51.16583863),
('level1','ZA_1_005',2009,'country','ZA','Limpopo',32.39339953),
('country','ZA',2009,'continent','AFR','South Africa',62.96355605);
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ET','allPercentageOfHouseholdsWithHandWashingStations','Ethiopia Demographic and Health Survey, 2016','https://dhsprogram.com/pubs/pdf/FR328/FR328.pdf') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allPercentageOfHouseholdsWithHandWashingStations','General Household Survey, 2018','http://www.statssa.gov.za/publications/P0318/P03182018.pdf') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allPercentageOfHouseholdsWithHandWashingStations','General Household Survey, 2018','http://www.statssa.gov.za/publications/P0318/P03182018.pdf') on conflict do nothing;

