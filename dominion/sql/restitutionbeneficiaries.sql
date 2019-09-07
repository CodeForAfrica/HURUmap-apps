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

ALTER TABLE IF EXISTS ONLY public.restitutionbeneficiaries DROP CONSTRAINT IF EXISTS pk_restitutionbeneficiaries;
DROP TABLE IF EXISTS public.restitutionbeneficiaries;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionbeneficiaries; Type: TABLE; Schema: public;
--

CREATE TABLE public.restitutionbeneficiaries (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionbeneficiaries character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionbeneficiaries; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionbeneficiaries (geo_level, geo_code, geo_version, restitutionbeneficiaries, year, total) FROM stdin;
level1	ZA_1_003	2009	beneficiaries	2017/2018	6237
level1	ZA_1_002	2009	beneficiaries	2017/2018	0
level1	ZA_1_009	2009	beneficiaries	2017/2018	794
level1	ZA_1_001	2009	beneficiaries	2017/2018	7154
level1	ZA_1_005	2009	beneficiaries	2017/2018	3893
level1	ZA_1_004	2009	beneficiaries	2017/2018	1353
level1	ZA_1_006	2009	beneficiaries	2017/2018	659
level1	ZA_1_007	2009	beneficiaries	2017/2018	10630
level1	ZA_1_008	2009	beneficiaries	2017/2018	1226
country	ZA	2009	beneficiaries	2017/2018	31946
level1	ZA_1_003	2009	beneficiaries	2009/2010	7404
level1	ZA_1_002	2009	beneficiaries	2009/2010	269
level1	ZA_1_009	2009	beneficiaries	2009/2010	0
level1	ZA_1_001	2009	beneficiaries	2009/2010	23845
level1	ZA_1_005	2009	beneficiaries	2009/2010	4291
level1	ZA_1_004	2009	beneficiaries	2009/2010	2353
level1	ZA_1_006	2009	beneficiaries	2009/2010	3075
level1	ZA_1_007	2009	beneficiaries	2009/2010	3498
level1	ZA_1_008	2009	beneficiaries	2009/2010	3498
country	ZA	2009	beneficiaries	2009/2010	48233
level1	ZA_1_003	2009	beneficiaries	2010/2011	12339
level1	ZA_1_002	2009	beneficiaries	2010/2011	742
level1	ZA_1_009	2009	beneficiaries	2010/2011	907
level1	ZA_1_001	2009	beneficiaries	2010/2011	22261
level1	ZA_1_005	2009	beneficiaries	2010/2011	6901
level1	ZA_1_004	2009	beneficiaries	2010/2011	442
level1	ZA_1_006	2009	beneficiaries	2010/2011	2658
level1	ZA_1_007	2009	beneficiaries	2010/2011	107
level1	ZA_1_008	2009	beneficiaries	2010/2011	4038
country	ZA	2009	beneficiaries	2010/2011	50395
level1	ZA_1_003	2009	beneficiaries	2011/2012	3387
level1	ZA_1_002	2009	beneficiaries	2011/2012	2192
level1	ZA_1_009	2009	beneficiaries	2011/2012	102
level1	ZA_1_001	2009	beneficiaries	2011/2012	22273
level1	ZA_1_005	2009	beneficiaries	2011/2012	7848
level1	ZA_1_004	2009	beneficiaries	2011/2012	9157
level1	ZA_1_006	2009	beneficiaries	2011/2012	3626
level1	ZA_1_007	2009	beneficiaries	2011/2012	22383
level1	ZA_1_008	2009	beneficiaries	2011/2012	1828
country	ZA	2009	beneficiaries	2011/2012	72796
level1	ZA_1_003	2009	beneficiaries	2012/2013	27161
level1	ZA_1_002	2009	beneficiaries	2012/2013	5356
level1	ZA_1_009	2009	beneficiaries	2012/2013	1488
level1	ZA_1_001	2009	beneficiaries	2012/2013	25865
level1	ZA_1_005	2009	beneficiaries	2012/2013	3818
level1	ZA_1_004	2009	beneficiaries	2012/2013	11727
level1	ZA_1_006	2009	beneficiaries	2012/2013	8691
level1	ZA_1_007	2009	beneficiaries	2012/2013	24161
level1	ZA_1_008	2009	beneficiaries	2012/2013	3011
country	ZA	2009	beneficiaries	2012/2013	111278
level1	ZA_1_003	2009	beneficiaries	2013/2014	7357
level1	ZA_1_002	2009	beneficiaries	2013/2014	532
level1	ZA_1_009	2009	beneficiaries	2013/2014	153
level1	ZA_1_001	2009	beneficiaries	2013/2014	2013
level1	ZA_1_005	2009	beneficiaries	2013/2014	2142
level1	ZA_1_004	2009	beneficiaries	2013/2014	10667
level1	ZA_1_006	2009	beneficiaries	2013/2014	3726
level1	ZA_1_007	2009	beneficiaries	2013/2014	4606
level1	ZA_1_008	2009	beneficiaries	2013/2014	5709
country	ZA	2009	beneficiaries	2013/2014	36905
level1	ZA_1_003	2009	beneficiaries	2014/2015	20603
level1	ZA_1_002	2009	beneficiaries	2014/2015	1094
level1	ZA_1_009	2009	beneficiaries	2014/2015	2755
level1	ZA_1_001	2009	beneficiaries	2014/2015	16012
level1	ZA_1_005	2009	beneficiaries	2014/2015	7242
level1	ZA_1_004	2009	beneficiaries	2014/2015	9910
level1	ZA_1_006	2009	beneficiaries	2014/2015	5482
level1	ZA_1_007	2009	beneficiaries	2014/2015	10611
level1	ZA_1_008	2009	beneficiaries	2014/2015	4891
country	ZA	2009	beneficiaries	2014/2015	78600
level1	ZA_1_003	2009	beneficiaries	2015/2016	21853
level1	ZA_1_002	2009	beneficiaries	2015/2016	969
level1	ZA_1_009	2009	beneficiaries	2015/2016	2049
level1	ZA_1_001	2009	beneficiaries	2015/2016	5983
level1	ZA_1_005	2009	beneficiaries	2015/2016	9951
level1	ZA_1_004	2009	beneficiaries	2015/2016	15285
level1	ZA_1_006	2009	beneficiaries	2015/2016	3483
level1	ZA_1_007	2009	beneficiaries	2015/2016	257
level1	ZA_1_008	2009	beneficiaries	2015/2016	3577
country	ZA	2009	beneficiaries	2015/2016	63407
level1	ZA_1_003	2009	beneficiaries	2016/2017	27613
level1	ZA_1_002	2009	beneficiaries	2016/2017	892
level1	ZA_1_009	2009	beneficiaries	2016/2017	2132
level1	ZA_1_001	2009	beneficiaries	2016/2017	11364
level1	ZA_1_005	2009	beneficiaries	2016/2017	6386
level1	ZA_1_004	2009	beneficiaries	2016/2017	10513
level1	ZA_1_006	2009	beneficiaries	2016/2017	6563
level1	ZA_1_007	2009	beneficiaries	2016/2017	4521
level1	ZA_1_008	2009	beneficiaries	2016/2017	4686
country	ZA	2009	beneficiaries	2016/2017	74670
\.


ALTER TABLE ONLY public.restitutionbeneficiaries
    ADD CONSTRAINT pk_restitutionbeneficiaries PRIMARY KEY (geo_level, geo_code, geo_version, restitutionbeneficiaries, year);

--
-- PostgreSQL database dump complete
--
