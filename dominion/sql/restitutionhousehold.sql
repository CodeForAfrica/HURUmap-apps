--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.restitutionhouseholds DROP CONSTRAINT IF EXISTS pk_restitutionhouseholds;
DROP TABLE IF EXISTS public.restitutionhouseholds;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionhouseholds; Type: TABLE; Schema: public;
--

CREATE TABLE public.restitutionhouseholds (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionhouseholds character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionhouseholds; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionhouseholds (geo_level, geo_code, geo_version, restitutionhouseholds, year, total) FROM stdin;
level1	ZA_1_002	2009	households	2017/2018	525
level1	ZA_1_004	2009	households	2017/2018	0
level1	ZA_1_007	2009	households	2017/2018	251
level1	ZA_1_009	2009	households	2017/2018	1890
level1	ZA_1_005	2009	households	2017/2018	1089
level1	ZA_1_008	2009	households	2017/2018	103
level1	ZA_1_003	2009	households	2017/2018	31
level1	ZA_1_006	2009	households	2017/2018	3601
level1	ZA_1_001	2009	households	2017/2018	245
country	ZA	2009	households	2017/2018	7735
level1	ZA_1_002	2009	households	2009/2010	1816
level1	ZA_1_004	2009	households	2009/2010	125
level1	ZA_1_007	2009	households	2009/2010	0
level1	ZA_1_009	2009	households	2009/2010	3950
level1	ZA_1_005	2009	households	2009/2010	1099
level1	ZA_1_008	2009	households	2009/2010	300
level1	ZA_1_003	2009	households	2009/2010	89
level1	ZA_1_006	2009	households	2009/2010	796
level1	ZA_1_001	2009	households	2009/2010	1119
country	ZA	2009	households	2009/2010	9294
level1	ZA_1_002	2009	households	2010/2011	3634
level1	ZA_1_004	2009	households	2010/2011	151
level1	ZA_1_007	2009	households	2010/2011	356
level1	ZA_1_009	2009	households	2010/2011	3835
level1	ZA_1_005	2009	households	2010/2011	2444
level1	ZA_1_008	2009	households	2010/2011	117
level1	ZA_1_003	2009	households	2010/2011	1136
level1	ZA_1_006	2009	households	2010/2011	39
level1	ZA_1_001	2009	households	2010/2011	1598
country	ZA	2009	households	2010/2011	13310
level1	ZA_1_002	2009	households	2011/2012	1072
level1	ZA_1_004	2009	households	2011/2012	533
level1	ZA_1_007	2009	households	2011/2012	34
level1	ZA_1_009	2009	households	2011/2012	4581
level1	ZA_1_005	2009	households	2011/2012	2274
level1	ZA_1_008	2009	households	2011/2012	2709
level1	ZA_1_003	2009	households	2011/2012	672
level1	ZA_1_006	2009	households	2011/2012	1646
level1	ZA_1_001	2009	households	2011/2012	916
country	ZA	2009	households	2011/2012	14437
level1	ZA_1_002	2009	households	2012/2013	4767
level1	ZA_1_004	2009	households	2012/2013	1081
level1	ZA_1_007	2009	households	2012/2013	286
level1	ZA_1_009	2009	households	2012/2013	4454
level1	ZA_1_005	2009	households	2012/2013	1465
level1	ZA_1_008	2009	households	2012/2013	3489
level1	ZA_1_003	2009	households	2012/2013	1576
level1	ZA_1_006	2009	households	2012/2013	5769
level1	ZA_1_001	2009	households	2012/2013	1101
country	ZA	2009	households	2012/2013	23988
level1	ZA_1_002	2009	households	2013/2014	2521
level1	ZA_1_004	2009	households	2013/2014	120
level1	ZA_1_007	2009	households	2013/2014	78
level1	ZA_1_009	2009	households	2013/2014	489
level1	ZA_1_005	2009	households	2013/2014	682
level1	ZA_1_008	2009	households	2013/2014	1617
level1	ZA_1_003	2009	households	2013/2014	767
level1	ZA_1_006	2009	households	2013/2014	656
level1	ZA_1_001	2009	households	2013/2014	1202
country	ZA	2009	households	2013/2014	8132
level1	ZA_1_002	2009	households	2014/2015	3383
level1	ZA_1_004	2009	households	2014/2015	218
level1	ZA_1_007	2009	households	2014/2015	677
level1	ZA_1_009	2009	households	2014/2015	2340
level1	ZA_1_005	2009	households	2014/2015	1952
level1	ZA_1_008	2009	households	2014/2015	1557
level1	ZA_1_003	2009	households	2014/2015	1155
level1	ZA_1_006	2009	households	2014/2015	2725
level1	ZA_1_001	2009	households	2014/2015	1450
country	ZA	2009	households	2014/2015	15457
level1	ZA_1_002	2009	households	2015/2016	4335
level1	ZA_1_004	2009	households	2015/2016	283
level1	ZA_1_007	2009	households	2015/2016	919
level1	ZA_1_009	2009	households	2015/2016	1129
level1	ZA_1_005	2009	households	2015/2016	3317
level1	ZA_1_008	2009	households	2015/2016	2105
level1	ZA_1_003	2009	households	2015/2016	609
level1	ZA_1_006	2009	households	2015/2016	143
level1	ZA_1_001	2009	households	2015/2016	1398
country	ZA	2009	households	2015/2016	14238
level1	ZA_1_002	2009	households	2016/2017	3419
level1	ZA_1_004	2009	households	2016/2017	346
level1	ZA_1_007	2009	households	2016/2017	702
level1	ZA_1_009	2009	households	2016/2017	2454
level1	ZA_1_005	2009	households	2016/2017	1620
level1	ZA_1_008	2009	households	2016/2017	993
level1	ZA_1_003	2009	households	2016/2017	1067
level1	ZA_1_006	2009	households	2016/2017	1347
level1	ZA_1_001	2009	households	2016/2017	1148
country	ZA	2009	households	2016/2017	13096
\.


ALTER TABLE ONLY public.restitutionhouseholds
    ADD CONSTRAINT pk_restitutionhouseholds PRIMARY KEY (geo_level, geo_code, geo_version, restitutionhouseholds, year);

--
-- PostgreSQL database dump complete
--
