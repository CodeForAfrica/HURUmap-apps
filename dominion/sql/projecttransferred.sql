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

ALTER TABLE IF EXISTS ONLY public.projecttransferred DROP CONSTRAINT IF EXISTS pk_projecttransferred;
DROP TABLE IF EXISTS public.projecttransferred;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 356 (class 1259 OID 71288)
-- Name: projecttransferred; Type: TABLE; Schema: public;
--

CREATE TABLE public.projecttransferred (
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
-- Data for Name: projecttransferred; Type: TABLE DATA; Schema: public;
--

COPY public.projecttransferred (geo_level, geo_code, geo_version, year, "outcome of redistribution programme", total) FROM stdin;
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
level1	ZA_1_002	2009	2009/2010	projects transferred	64
country	ZA	2009	2009/2010	projects transferred	374
country	ZA	2009	2010/2011	projects transferred	291
country	ZA	2009	2011/2012	projects transferred	311
country	ZA	2009	2012/2013	projects transferred	185
country	ZA	2009	2013/2014	projects transferred	155
country	ZA	2009	2014/2015	projects transferred	144
country	ZA	2009	2015/2016	projects transferred	104
country	ZA	2009	2016/2017	projects transferred	85
country	ZA	2009	2017/2018	projects transferred	75
\.

ALTER TABLE IF EXISTS ONLY public.projecttransferred
    ADD CONSTRAINT pk_projecttransferred PRIMARY KEY (geo_level, geo_code, geo_version, year, "outcome of redistribution programme");

-- Completed on 2018-09-13 12:54:41 EAT

--
-- PostgreSQL database dump complete
--
