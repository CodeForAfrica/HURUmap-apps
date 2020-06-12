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

ALTER TABLE IF EXISTS ONLY public.redistributionprogrammeoutcomebyyear DROP CONSTRAINT IF EXISTS pk_redistributionprogrammeoutcomebyyear;
DROP TABLE IF EXISTS public.redistributionprogrammeoutcomebyyear;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 356 (class 1259 OID 71288)
-- Name: redistributionprogrammeoutcomebyyear; Type: TABLE; Schema: public;
--

CREATE TABLE public.redistributionprogrammeoutcomebyyear (
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
-- Data for Name: redistributionprogrammeoutcomebyyear; Type: TABLE DATA; Schema: public;
--

COPY public.redistributionprogrammeoutcomebyyear (geo_level, geo_code, geo_version, year, "outcome of redistribution programme", total) FROM stdin;
level1	ZA_1_002	2009	2009/2010	projects transferred	64
level1	ZA_1_004	2009	2009/2010	projects transferred	55
level1	ZA_1_007	2009	2009/2010	projects transferred	20
level1	ZA_1_009	2009	2009/2010	projects transferred	66
level1	ZA_1_005	2009	2009/2010	projects transferred	77
level1	ZA_1_008	2009	2009/2010	projects transferred	35
level1	ZA_1_003	2009	2009/2010	projects transferred	14
level1	ZA_1_006	2009	2009/2010	projects transferred	25
level1	ZA_1_001	2009	2009/2010	projects transferred	18
level1	ZA_1_002	2009	2010/2011	projects transferred	35
level1	ZA_1_004	2009	2010/2011	projects transferred	21
level1	ZA_1_007	2009	2010/2011	projects transferred	21
level1	ZA_1_009	2009	2010/2011	projects transferred	60
level1	ZA_1_005	2009	2010/2011	projects transferred	18
level1	ZA_1_008	2009	2010/2011	projects transferred	53
level1	ZA_1_003	2009	2010/2011	projects transferred	28
level1	ZA_1_006	2009	2010/2011	projects transferred	44
level1	ZA_1_001	2009	2010/2011	projects transferred	11
level1	ZA_1_002	2009	2011/2012	projects transferred	55
level1	ZA_1_004	2009	2011/2012	projects transferred	41
level1	ZA_1_007	2009	2011/2012	projects transferred	23
level1	ZA_1_009	2009	2011/2012	projects transferred	61
level1	ZA_1_005	2009	2011/2012	projects transferred	24
level1	ZA_1_008	2009	2011/2012	projects transferred	39
level1	ZA_1_003	2009	2011/2012	projects transferred	19
level1	ZA_1_006	2009	2011/2012	projects transferred	38
level1	ZA_1_001	2009	2011/2012	projects transferred	11
level1	ZA_1_002	2009	2012/2013	projects transferred	27
level1	ZA_1_004	2009	2012/2013	projects transferred	28
level1	ZA_1_007	2009	2012/2013	projects transferred	13
level1	ZA_1_009	2009	2012/2013	projects transferred	30
level1	ZA_1_005	2009	2012/2013	projects transferred	12
level1	ZA_1_008	2009	2012/2013	projects transferred	33
level1	ZA_1_003	2009	2012/2013	projects transferred	10
level1	ZA_1_006	2009	2012/2013	projects transferred	26
level1	ZA_1_001	2009	2012/2013	projects transferred	6
level1	ZA_1_002	2009	2013/2014	projects transferred	30
level1	ZA_1_004	2009	2013/2014	projects transferred	9
level1	ZA_1_007	2009	2013/2014	projects transferred	17
level1	ZA_1_009	2009	2013/2014	projects transferred	27
level1	ZA_1_005	2009	2013/2014	projects transferred	8
level1	ZA_1_008	2009	2013/2014	projects transferred	23
level1	ZA_1_003	2009	2013/2014	projects transferred	8
level1	ZA_1_006	2009	2013/2014	projects transferred	31
level1	ZA_1_001	2009	2013/2014	projects transferred	2
level1	ZA_1_002	2009	2014/2015	projects transferred	19
level1	ZA_1_004	2009	2014/2015	projects transferred	14
level1	ZA_1_007	2009	2014/2015	projects transferred	17
level1	ZA_1_009	2009	2014/2015	projects transferred	15
level1	ZA_1_005	2009	2014/2015	projects transferred	13
level1	ZA_1_008	2009	2014/2015	projects transferred	10
level1	ZA_1_003	2009	2014/2015	projects transferred	14
level1	ZA_1_006	2009	2014/2015	projects transferred	32
level1	ZA_1_001	2009	2014/2015	projects transferred	10
level1	ZA_1_002	2009	2015/2016	projects transferred	16
level1	ZA_1_004	2009	2015/2016	projects transferred	14
level1	ZA_1_007	2009	2015/2016	projects transferred	11
level1	ZA_1_009	2009	2015/2016	projects transferred	18
level1	ZA_1_005	2009	2015/2016	projects transferred	11
level1	ZA_1_008	2009	2015/2016	projects transferred	10
level1	ZA_1_003	2009	2015/2016	projects transferred	13
level1	ZA_1_006	2009	2015/2016	projects transferred	9
level1	ZA_1_001	2009	2015/2016	projects transferred	2
level1	ZA_1_002	2009	2016/2017	projects transferred	11
level1	ZA_1_004	2009	2016/2017	projects transferred	7
level1	ZA_1_007	2009	2016/2017	projects transferred	8
level1	ZA_1_009	2009	2016/2017	projects transferred	19
level1	ZA_1_005	2009	2016/2017	projects transferred	10
level1	ZA_1_008	2009	2016/2017	projects transferred	7
level1	ZA_1_003	2009	2016/2017	projects transferred	11
level1	ZA_1_006	2009	2016/2017	projects transferred	9
level1	ZA_1_001	2009	2016/2017	projects transferred	3
level1	ZA_1_002	2009	2017/2018	projects transferred	4
level1	ZA_1_004	2009	2017/2018	projects transferred	10
level1	ZA_1_007	2009	2017/2018	projects transferred	6
level1	ZA_1_009	2009	2017/2018	projects transferred	20
level1	ZA_1_005	2009	2017/2018	projects transferred	8
level1	ZA_1_008	2009	2017/2018	projects transferred	9
level1	ZA_1_003	2009	2017/2018	projects transferred	7
level1	ZA_1_006	2009	2017/2018	projects transferred	10
level1	ZA_1_001	2009	2017/2018	projects transferred	1
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
level1	ZA_1_002	2009	2009/2010	benefited households	188
level1	ZA_1_004	2009	2009/2010	benefited households	10
level1	ZA_1_007	2009	2009/2010	benefited households	30
level1	ZA_1_009	2009	2009/2010	benefited households	1690
level1	ZA_1_005	2009	2009/2010	benefited households	132
level1	ZA_1_008	2009	2009/2010	benefited households	77
level1	ZA_1_003	2009	2009/2010	benefited households	0
level1	ZA_1_006	2009	2009/2010	benefited households	814
level1	ZA_1_001	2009	2009/2010	benefited households	3
level1	ZA_1_002	2009	2010/2011	benefited households	91
level1	ZA_1_004	2009	2010/2011	benefited households	20
level1	ZA_1_007	2009	2010/2011	benefited households	90
level1	ZA_1_009	2009	2010/2011	benefited households	242
level1	ZA_1_005	2009	2010/2011	benefited households	50
level1	ZA_1_008	2009	2010/2011	benefited households	14
level1	ZA_1_003	2009	2010/2011	benefited households	0
level1	ZA_1_006	2009	2010/2011	benefited households	58
level1	ZA_1_001	2009	2010/2011	benefited households	209
level1	ZA_1_002	2009	2011/2012	benefited households	70
level1	ZA_1_004	2009	2011/2012	benefited households	0
level1	ZA_1_007	2009	2011/2012	benefited households	0
level1	ZA_1_009	2009	2011/2012	benefited households	221
level1	ZA_1_005	2009	2011/2012	benefited households	30
level1	ZA_1_008	2009	2011/2012	benefited households	16
level1	ZA_1_003	2009	2011/2012	benefited households	0
level1	ZA_1_006	2009	2011/2012	benefited households	0
level1	ZA_1_001	2009	2011/2012	benefited households	17
level1	ZA_1_002	2009	2012/2013	benefited households	69
level1	ZA_1_004	2009	2012/2013	benefited households	0
level1	ZA_1_007	2009	2012/2013	benefited households	9
level1	ZA_1_009	2009	2012/2013	benefited households	74
level1	ZA_1_005	2009	2012/2013	benefited households	13
level1	ZA_1_008	2009	2012/2013	benefited households	0
level1	ZA_1_003	2009	2012/2013	benefited households	0
level1	ZA_1_006	2009	2012/2013	benefited households	1
level1	ZA_1_001	2009	2012/2013	benefited households	11
level1	ZA_1_002	2009	2013/2014	benefited households	55
level1	ZA_1_004	2009	2013/2014	benefited households	3
level1	ZA_1_007	2009	2013/2014	benefited households	14
level1	ZA_1_009	2009	2013/2014	benefited households	7
level1	ZA_1_005	2009	2013/2014	benefited households	7
level1	ZA_1_008	2009	2013/2014	benefited households	0
level1	ZA_1_003	2009	2013/2014	benefited households	0
level1	ZA_1_006	2009	2013/2014	benefited households	24
level1	ZA_1_001	2009	2013/2014	benefited households	0
level1	ZA_1_002	2009	2014/2015	benefited households	38
level1	ZA_1_004	2009	2014/2015	benefited households	3
level1	ZA_1_007	2009	2014/2015	benefited households	5
level1	ZA_1_009	2009	2014/2015	benefited households	147
level1	ZA_1_005	2009	2014/2015	benefited households	15
level1	ZA_1_008	2009	2014/2015	benefited households	18
level1	ZA_1_003	2009	2014/2015	benefited households	16
level1	ZA_1_006	2009	2014/2015	benefited households	37
level1	ZA_1_001	2009	2014/2015	benefited households	1
level1	ZA_1_002	2009	2015/2016	benefited households	38
level1	ZA_1_004	2009	2015/2016	benefited households	16
level1	ZA_1_007	2009	2015/2016	benefited households	3
level1	ZA_1_009	2009	2015/2016	benefited households	15
level1	ZA_1_005	2009	2015/2016	benefited households	14
level1	ZA_1_008	2009	2015/2016	benefited households	35
level1	ZA_1_003	2009	2015/2016	benefited households	42
level1	ZA_1_006	2009	2015/2016	benefited households	20
level1	ZA_1_001	2009	2015/2016	benefited households	8
level1	ZA_1_002	2009	2016/2017	benefited households	54
level1	ZA_1_004	2009	2016/2017	benefited households	2
level1	ZA_1_007	2009	2016/2017	benefited households	6
level1	ZA_1_009	2009	2016/2017	benefited households	116
level1	ZA_1_005	2009	2016/2017	benefited households	15
level1	ZA_1_008	2009	2016/2017	benefited households	170
level1	ZA_1_003	2009	2016/2017	benefited households	11
level1	ZA_1_006	2009	2016/2017	benefited households	37
level1	ZA_1_001	2009	2016/2017	benefited households	85
level1	ZA_1_002	2009	2017/2018	benefited households	25
level1	ZA_1_004	2009	2017/2018	benefited households	23
level1	ZA_1_007	2009	2017/2018	benefited households	2
level1	ZA_1_009	2009	2017/2018	benefited households	358
level1	ZA_1_005	2009	2017/2018	benefited households	12
level1	ZA_1_008	2009	2017/2018	benefited households	16
level1	ZA_1_003	2009	2017/2018	benefited households	10
level1	ZA_1_006	2009	2017/2018	benefited households	32
level1	ZA_1_001	2009	2017/2018	benefited households	0
country	ZA	2009	2009/2010	projects transferred	374
country	ZA	2009	2010/2011	projects transferred	291
country	ZA	2009	2011/2012	projects transferred	311
country	ZA	2009	2012/2013	projects transferred	185
country	ZA	2009	2013/2014	projects transferred	155
country	ZA	2009	2014/2015	projects transferred	144
country	ZA	2009	2015/2016	projects transferred	104
country	ZA	2009	2016/2017	projects transferred	85
country	ZA	2009	2017/2018	projects transferred	75
country	ZA	2009	2009/2010	benefited beneficiaries	11362
country	ZA	2009	2010/2011	benefited beneficiaries	2697
country	ZA	2009	2011/2012	benefited beneficiaries	1212
country	ZA	2009	2012/2013	benefited beneficiaries	430
country	ZA	2009	2013/2014	benefited beneficiaries	2363
country	ZA	2009	2014/2015	benefited beneficiaries	370
country	ZA	2009	2015/2016	benefited beneficiaries	464
country	ZA	2009	2016/2017	benefited beneficiaries	1271
country	ZA	2009	2017/2018	benefited beneficiaries	1348
country	ZA	2009	2009/2010	benefited households	2944
country	ZA	2009	2010/2011	benefited households	774
country	ZA	2009	2011/2012	benefited households	354
country	ZA	2009	2012/2013	benefited households	177
country	ZA	2009	2013/2014	benefited households	110
country	ZA	2009	2014/2015	benefited households	280
country	ZA	2009	2015/2016	benefited households	191
country	ZA	2009	2016/2017	benefited households	496
country	ZA	2009	2017/2018	benefited households	478
\.

ALTER TABLE IF EXISTS ONLY public.redistributionprogrammeoutcomebyyear
    ADD CONSTRAINT pk_redistributionprogrammeoutcomebyyear PRIMARY KEY (geo_level, geo_code, geo_version, year, "outcome of redistribution programme");

-- Completed on 2018-09-13 12:54:41 EAT

--
-- PostgreSQL database dump complete
--
