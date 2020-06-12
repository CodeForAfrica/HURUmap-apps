--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

-- Started on 2018-09-13 12:54:41 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.benefitedbeneficiaries DROP CONSTRAINT IF EXISTS pk_benefitedbeneficiaries;
DROP TABLE IF EXISTS public.benefitedbeneficiaries;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 356 (class 1259 OID 71288)
-- Name: benefitedbeneficiaries; Type: TABLE; Schema: public;
--

CREATE TABLE public.benefitedbeneficiaries (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    "outcome of redistribution programme" character varying(128) NOT NULL,
    total integer
);

--
-- TOC entry 3369 (class 0 OID 71288)
-- Dependencies: 356
-- Data for Name: benefitedbeneficiaries; Type: TABLE DATA; Schema: public;
--

COPY public.benefitedbeneficiaries (geo_level, geo_code, geo_version, year, "outcome of redistribution programme", total) FROM stdin;
level1	ZA_1_002	2009	2009/2010	benefited beneficiaries	844
level1	ZA_1_004	2009	2009/2010	benefited beneficiaries	382
level1	ZA_1_007	2009	2009/2010	benefited beneficiaries	74
level1	ZA_1_009	2009	2009/2010	benefited beneficiaries	4158
level1	ZA_1_005	2009	2009/2010	benefited beneficiaries	563
level1	ZA_1_008	2009	2009/2010	benefited beneficiaries	1053
level1	ZA_1_003	2009	2009/2010	benefited beneficiaries	98
level1	ZA_1_006	2009	2009/2010	benefited beneficiaries	3117
level1	ZA_1_001	2009	2009/2010	benefited beneficiaries	1073
level1	ZA_1_002	2009	2010/2011	benefited beneficiaries	281
level1	ZA_1_004	2009	2010/2011	benefited beneficiaries	102
level1	ZA_1_007	2009	2010/2011	benefited beneficiaries	161
level1	ZA_1_009	2009	2010/2011	benefited beneficiaries	1388
level1	ZA_1_005	2009	2010/2011	benefited beneficiaries	99
level1	ZA_1_008	2009	2010/2011	benefited beneficiaries	152
level1	ZA_1_003	2009	2010/2011	benefited beneficiaries	91
level1	ZA_1_006	2009	2010/2011	benefited beneficiaries	183
level1	ZA_1_001	2009	2010/2011	benefited beneficiaries	240
level1	ZA_1_002	2009	2011/2012	benefited beneficiaries	148
level1	ZA_1_004	2009	2011/2012	benefited beneficiaries	21
level1	ZA_1_007	2009	2011/2012	benefited beneficiaries	0
level1	ZA_1_009	2009	2011/2012	benefited beneficiaries	873
level1	ZA_1_005	2009	2011/2012	benefited beneficiaries	68
level1	ZA_1_008	2009	2011/2012	benefited beneficiaries	56
level1	ZA_1_003	2009	2011/2012	benefited beneficiaries	26
level1	ZA_1_006	2009	2011/2012	benefited beneficiaries	0
level1	ZA_1_001	2009	2011/2012	benefited beneficiaries	20
level1	ZA_1_002	2009	2012/2013	benefited beneficiaries	120
level1	ZA_1_004	2009	2012/2013	benefited beneficiaries	2
level1	ZA_1_007	2009	2012/2013	benefited beneficiaries	18
level1	ZA_1_009	2009	2012/2013	benefited beneficiaries	257
level1	ZA_1_005	2009	2012/2013	benefited beneficiaries	18
level1	ZA_1_008	2009	2012/2013	benefited beneficiaries	0
level1	ZA_1_003	2009	2012/2013	benefited beneficiaries	6
level1	ZA_1_006	2009	2012/2013	benefited beneficiaries	1
level1	ZA_1_001	2009	2012/2013	benefited beneficiaries	8
level1	ZA_1_002	2009	2013/2014	benefited beneficiaries	81
level1	ZA_1_004	2009	2013/2014	benefited beneficiaries	9
level1	ZA_1_007	2009	2013/2014	benefited beneficiaries	16
level1	ZA_1_009	2009	2013/2014	benefited beneficiaries	85
level1	ZA_1_005	2009	2013/2014	benefited beneficiaries	2109
level1	ZA_1_008	2009	2013/2014	benefited beneficiaries	20
level1	ZA_1_003	2009	2013/2014	benefited beneficiaries	10
level1	ZA_1_006	2009	2013/2014	benefited beneficiaries	32
level1	ZA_1_001	2009	2013/2014	benefited beneficiaries	1
level1	ZA_1_002	2009	2014/2015	benefited beneficiaries	79
level1	ZA_1_004	2009	2014/2015	benefited beneficiaries	5
level1	ZA_1_007	2009	2014/2015	benefited beneficiaries	19
level1	ZA_1_009	2009	2014/2015	benefited beneficiaries	178
level1	ZA_1_005	2009	2014/2015	benefited beneficiaries	16
level1	ZA_1_008	2009	2014/2015	benefited beneficiaries	4
level1	ZA_1_003	2009	2014/2015	benefited beneficiaries	28
level1	ZA_1_006	2009	2014/2015	benefited beneficiaries	35
level1	ZA_1_001	2009	2014/2015	benefited beneficiaries	6
level1	ZA_1_002	2009	2015/2016	benefited beneficiaries	82
level1	ZA_1_004	2009	2015/2016	benefited beneficiaries	100
level1	ZA_1_007	2009	2015/2016	benefited beneficiaries	18
level1	ZA_1_009	2009	2015/2016	benefited beneficiaries	104
level1	ZA_1_005	2009	2015/2016	benefited beneficiaries	20
level1	ZA_1_008	2009	2015/2016	benefited beneficiaries	71
level1	ZA_1_003	2009	2015/2016	benefited beneficiaries	47
level1	ZA_1_006	2009	2015/2016	benefited beneficiaries	11
level1	ZA_1_001	2009	2015/2016	benefited beneficiaries	11
level1	ZA_1_002	2009	2016/2017	benefited beneficiaries	59
level1	ZA_1_004	2009	2016/2017	benefited beneficiaries	5
level1	ZA_1_007	2009	2016/2017	benefited beneficiaries	14
level1	ZA_1_009	2009	2016/2017	benefited beneficiaries	602
level1	ZA_1_005	2009	2016/2017	benefited beneficiaries	15
level1	ZA_1_008	2009	2016/2017	benefited beneficiaries	220
level1	ZA_1_003	2009	2016/2017	benefited beneficiaries	11
level1	ZA_1_006	2009	2016/2017	benefited beneficiaries	52
level1	ZA_1_001	2009	2016/2017	benefited beneficiaries	293
level1	ZA_1_002	2009	2017/2018	benefited beneficiaries	31
level1	ZA_1_004	2009	2017/2018	benefited beneficiaries	306
level1	ZA_1_007	2009	2017/2018	benefited beneficiaries	114
level1	ZA_1_009	2009	2017/2018	benefited beneficiaries	736
level1	ZA_1_005	2009	2017/2018	benefited beneficiaries	16
level1	ZA_1_008	2009	2017/2018	benefited beneficiaries	85
level1	ZA_1_003	2009	2017/2018	benefited beneficiaries	12
level1	ZA_1_006	2009	2017/2018	benefited beneficiaries	39
level1	ZA_1_001	2009	2017/2018	benefited beneficiaries	9
country	ZA	2009	2009/2010	benefited beneficiaries	11362
country	ZA	2009	2010/2011	benefited beneficiaries	2697
country	ZA	2009	2011/2012	benefited beneficiaries	1212
country	ZA	2009	2012/2013	benefited beneficiaries	430
country	ZA	2009	2013/2014	benefited beneficiaries	2363
country	ZA	2009	2014/2015	benefited beneficiaries	370
country	ZA	2009	2015/2016	benefited beneficiaries	464
country	ZA	2009	2016/2017	benefited beneficiaries	1271
country	ZA	2009	2017/2018	benefited beneficiaries	1348
\.

ALTER TABLE IF EXISTS ONLY public.benefitedbeneficiaries
    ADD CONSTRAINT pk_benefitedbeneficiaries PRIMARY KEY (geo_level, geo_code, geo_version, year, "outcome of redistribution programme");

-- Completed on 2018-09-13 12:54:41 EAT

--
-- PostgreSQL database dump complete
--
