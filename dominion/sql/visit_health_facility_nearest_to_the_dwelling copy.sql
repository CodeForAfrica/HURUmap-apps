CREATE TABLE IF NOT EXISTS public.visit_health_facility_nearest_to_the_dwelling (
          geo_level TEXT,
geo_code TEXT,
geo_version NUMERIC,
parent_level TEXT,
parent_code TEXT,
geo version NUMERIC,
name TEXT,
variable TEXT,
number NUMERIC
);

INSERT INTO public.visit_health_facility_nearest_to_the_dwelling VALUES
    ('level1','ZA_1_003',2009,'country','ZA',NULL,'Eastern Cape','No',264037.843),
('level1','ZA_1_003',2009,'country','ZA',NULL,'Eastern Cape','Yes',6244099.685),
('level1','ZA_1_003',2009,'country','ZA',NULL,'Eastern Cape','Total',6508137.528),
('level1','ZA_1_002',2009,'country','ZA',NULL,'Free State','No',216033.476),
('level1','ZA_1_002',2009,'country','ZA',NULL,'Free State','Total',2891248.08),
('level1','ZA_1_002',2009,'country','ZA',NULL,'Free State','Yes',2675214.604),
('level1','ZA_1_009',2009,'country','ZA',NULL,'Gauteng','Yes',13533853.73),
('level1','ZA_1_009',2009,'country','ZA',NULL,'Gauteng','No',1126890.768),
('level1','ZA_1_009',2009,'country','ZA',NULL,'Gauteng','Total',14660744.49),
('level1','ZA_1_001',2009,'country','ZA',NULL,'KwaZulu-Natal','No',355578.1124),
('level1','ZA_1_001',2009,'country','ZA',NULL,'KwaZulu-Natal','Total',11215217.59),
('level1','ZA_1_001',2009,'country','ZA',NULL,'KwaZulu-Natal','Yes',10859639.48),
('level1','ZA_1_005',2009,'country','ZA',NULL,'Limpopo','No',230456.5544),
('level1','ZA_1_005',2009,'country','ZA',NULL,'Limpopo','Total',5853756.091),
('level1','ZA_1_005',2009,'country','ZA',NULL,'Limpopo','Yes',5623299.536),
('level1','ZA_1_004',2009,'country','ZA',NULL,'Mpumalanga','Total',4523433.483),
('level1','ZA_1_004',2009,'country','ZA',NULL,'Mpumalanga','No',191967.0113),
('level1','ZA_1_004',2009,'country','ZA',NULL,'Mpumalanga','Yes',4331466.471),
('level1','ZA_1_007',2009,'country','ZA',NULL,'North West','No',424599.8645),
('level1','ZA_1_007',2009,'country','ZA',NULL,'North West','Total',3925218.337),
('level1','ZA_1_007',2009,'country','ZA',NULL,'North West','Yes',3500618.473),
('level1','ZA_1_006',2009,'country','ZA',NULL,'Northern Cape','Total',1229794.398),
('level1','ZA_1_006',2009,'country','ZA',NULL,'Northern Cape','Yes',1133960.567),
('level1','ZA_1_006',2009,'country','ZA',NULL,'Northern Cape','No',95833.83181),
('country','ZA',2009,'continent','AFR',NULL,'South Africa','Total',57457811.01),
('country','ZA',2009,'continent','AFR',NULL,'South Africa','No',3756597.712),
('country','ZA',2009,'continent','AFR',NULL,'South Africa','Yes',53701213.3),
('level1','ZA_1_008',2009,'country','ZA',NULL,'Western Cape','No',851200.2502),
('level1','ZA_1_008',2009,'country','ZA',NULL,'Western Cape','Total',6650261.006),
('level1','ZA_1_008',2009,'country','ZA',NULL,'Western Cape','Yes',5799060.756);
      


