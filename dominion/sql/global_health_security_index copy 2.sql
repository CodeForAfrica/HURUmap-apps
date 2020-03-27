CREATE TABLE IF NOT EXISTS public.global_health_security_index (
          geo_level TEXT,
geo_code TEXT,
geo_version NUMERIC,
parent_level TEXT,
parent_code TEXT,
category TEXT,
score NUMERIC
);

INSERT INTO public.global_health_security_index VALUES
    ('country','ET',2009,'continent','AFR','Overall Score Normed',0.382021),
('country','ET',2009,'continent','AFR','Demographic Domain Score',0.28569545),
('country','ET',2009,'continent','AFR','Health Care Domain Score',0.39330463),
('country','ET',2009,'continent','AFR','Public Health Domain Score',0.622299852),
('country','ET',2009,'continent','AFR','Disease Dynamics Domain Score',0.499217243),
('country','ET',2009,'continent','AFR','Political Domestic Domain Score',0.272946162),
('country','ET',2009,'continent','AFR','Political International Domain Score',0.492468433),
('country','ET',2009,'continent','AFR','Economic Domain Score',0.156768353),
('country','KE',2009,'continent','AFR','Overall Score Normed',0.385436),
('country','KE',2009,'continent','AFR','Demographic Domain Score',0.610453351),
('country','KE',2009,'continent','AFR','Health Care Domain Score',0.415088725),
('country','KE',2009,'continent','AFR','Public Health Domain Score',0.489142677),
('country','KE',2009,'continent','AFR','Disease Dynamics Domain Score',0.406130325),
('country','KE',2009,'continent','AFR','Political Domestic Domain Score',0.316426717),
('country','KE',2009,'continent','AFR','Political International Domain Score',0.518261714),
('country','KE',2009,'continent','AFR','Economic Domain Score',0.20694373),
('country','ZA',2009,'continent','AFR','Overall Score Normed',0.697292),
('country','ZA',2009,'continent','AFR','Demographic Domain Score',0.739000698),
('country','ZA',2009,'continent','AFR','Health Care Domain Score',0.492333001),
('country','ZA',2009,'continent','AFR','Public Health Domain Score',0.910898968),
('country','ZA',2009,'continent','AFR','Disease Dynamics Domain Score',0.728928869),
('country','ZA',2009,'continent','AFR','Political Domestic Domain Score',0.555658151),
('country','ZA',2009,'continent','AFR','Political International Domain Score',0.806992812),
('country','ZA',2009,'continent','AFR','Economic Domain Score',0.458012442),
('country','GH',2009,'continent','AFR','Overall Score Normed',0.462565),
('country','GH',2009,'continent','AFR','Demographic Domain Score',0.526023873),
('country','GH',2009,'continent','AFR','Health Care Domain Score',0.370472249),
('country','GH',2009,'continent','AFR','Public Health Domain Score',0.543649558),
('country','GH',2009,'continent','AFR','Disease Dynamics Domain Score',0.431181585),
('country','GH',2009,'continent','AFR','Political Domestic Domain Score',0.500767939),
('country','GH',2009,'continent','AFR','Political International Domain Score',0.616686004),
('country','GH',2009,'continent','AFR','Economic Domain Score',0.248491531);
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ET','allGlobalHealthSecurityIndices','Global Health Security Index, 2019','https://www.ghsindex.org/wp-content/uploads/2019/10/2019-Global-Health-Security-Index.pdf') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allGlobalHealthSecurityIndices','Global Health Security Index, 2019','https://www.ghsindex.org/wp-content/uploads/2019/10/2019-Global-Health-Security-Index.pdf') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allGlobalHealthSecurityIndices','Global Health Security Index, 2019','https://www.ghsindex.org/wp-content/uploads/2019/10/2019-Global-Health-Security-Index.pdf') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allGlobalHealthSecurityIndices','Global Health Security Index, 2019','https://www.ghsindex.org/wp-content/uploads/2019/10/2019-Global-Health-Security-Index.pdf') on conflict do nothing;

