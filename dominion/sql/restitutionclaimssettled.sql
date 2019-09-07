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

ALTER TABLE IF EXISTS ONLY public.restitutionclaimseettled DROP CONSTRAINT IF EXISTS pk_restitutionclaimseettled;
DROP TABLE IF EXISTS public.restitutionclaimseettled;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionclaimseettled; Type: TABLE; Schema: public;
--

CREATE TABLE public.restitutionclaimseettled (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionclaimseettled character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionclaimseettled; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionclaimseettled (geo_level, geo_code, geo_version, restitutionclaimseettled, year, total) FROM stdin;
level1	ZA_1_003	2009	claims settled	2017/2018	65
level1	ZA_1_002	2009	claims settled	2017/2018	0
level1	ZA_1_009	2009	claims settled	2017/2018	18
level1	ZA_1_001	2009	claims settled	2017/2018	159
level1	ZA_1_005	2009	claims settled	2017/2018	289
level1	ZA_1_004	2009	claims settled	2017/2018	35
level1	ZA_1_006	2009	claims settled	2017/2018	2
level1	ZA_1_007	2009	claims settled	2017/2018	48
level1	ZA_1_008	2009	claims settled	2017/2018	234
country	ZA	2009	claims settled	2017/2018	850
level1	ZA_1_003	2009	claims settled	2009/2010	7
level1	ZA_1_002	2009	claims settled	2009/2010	3
level1	ZA_1_009	2009	claims settled	2009/2010	0
level1	ZA_1_001	2009	claims settled	2009/2010	10
level1	ZA_1_005	2009	claims settled	2009/2010	1
level1	ZA_1_004	2009	claims settled	2009/2010	5
level1	ZA_1_006	2009	claims settled	2009/2010	3
level1	ZA_1_007	2009	claims settled	2009/2010	2
level1	ZA_1_008	2009	claims settled	2009/2010	2
country	ZA	2009	claims settled	2009/2010	33
level1	ZA_1_003	2009	claims settled	2010/2011	176
level1	ZA_1_002	2009	claims settled	2010/2011	3
level1	ZA_1_009	2009	claims settled	2010/2011	2
level1	ZA_1_001	2009	claims settled	2010/2011	11
level1	ZA_1_005	2009	claims settled	2010/2011	38
level1	ZA_1_004	2009	claims settled	2010/2011	14
level1	ZA_1_006	2009	claims settled	2010/2011	13
level1	ZA_1_007	2009	claims settled	2010/2011	9
level1	ZA_1_008	2009	claims settled	2010/2011	191
country	ZA	2009	claims settled	2010/2011	457
level1	ZA_1_003	2009	claims settled	2011/2012	126
level1	ZA_1_002	2009	claims settled	2011/2012	4
level1	ZA_1_009	2009	claims settled	2011/2012	38
level1	ZA_1_001	2009	claims settled	2011/2012	25
level1	ZA_1_005	2009	claims settled	2011/2012	159
level1	ZA_1_004	2009	claims settled	2011/2012	14
level1	ZA_1_006	2009	claims settled	2011/2012	0
level1	ZA_1_007	2009	claims settled	2011/2012	6
level1	ZA_1_008	2009	claims settled	2011/2012	44
country	ZA	2009	claims settled	2011/2012	416
level1	ZA_1_003	2009	claims settled	2012/2013	53
level1	ZA_1_002	2009	claims settled	2012/2013	5
level1	ZA_1_009	2009	claims settled	2012/2013	118
level1	ZA_1_001	2009	claims settled	2012/2013	61
level1	ZA_1_005	2009	claims settled	2012/2013	105
level1	ZA_1_004	2009	claims settled	2012/2013	47
level1	ZA_1_006	2009	claims settled	2012/2013	3
level1	ZA_1_007	2009	claims settled	2012/2013	12
level1	ZA_1_008	2009	claims settled	2012/2013	198
country	ZA	2009	claims settled	2012/2013	602
level1	ZA_1_003	2009	claims settled	2013/2014	21
level1	ZA_1_002	2009	claims settled	2013/2014	6
level1	ZA_1_009	2009	claims settled	2013/2014	4
level1	ZA_1_001	2009	claims settled	2013/2014	10
level1	ZA_1_005	2009	claims settled	2013/2014	2
level1	ZA_1_004	2009	claims settled	2013/2014	10
level1	ZA_1_006	2009	claims settled	2013/2014	4
level1	ZA_1_007	2009	claims settled	2013/2014	3
level1	ZA_1_008	2009	claims settled	2013/2014	210
country	ZA	2009	claims settled	2013/2014	270
level1	ZA_1_003	2009	claims settled	2014/2015	79
level1	ZA_1_002	2009	claims settled	2014/2015	1
level1	ZA_1_009	2009	claims settled	2014/2015	9
level1	ZA_1_001	2009	claims settled	2014/2015	59
level1	ZA_1_005	2009	claims settled	2014/2015	35
level1	ZA_1_004	2009	claims settled	2014/2015	35
level1	ZA_1_006	2009	claims settled	2014/2015	9
level1	ZA_1_007	2009	claims settled	2014/2015	7
level1	ZA_1_008	2009	claims settled	2014/2015	194
country	ZA	2009	claims settled	2014/2015	428
level1	ZA_1_003	2009	claims settled	2015/2016	80
level1	ZA_1_002	2009	claims settled	2015/2016	5
level1	ZA_1_009	2009	claims settled	2015/2016	18
level1	ZA_1_001	2009	claims settled	2015/2016	50
level1	ZA_1_005	2009	claims settled	2015/2016	189
level1	ZA_1_004	2009	claims settled	2015/2016	59
level1	ZA_1_006	2009	claims settled	2015/2016	8
level1	ZA_1_007	2009	claims settled	2015/2016	30
level1	ZA_1_008	2009	claims settled	2015/2016	178
country	ZA	2009	claims settled	2015/2016	617
level1	ZA_1_003	2009	claims settled	2016/2017	89
level1	ZA_1_002	2009	claims settled	2016/2017	3
level1	ZA_1_009	2009	claims settled	2016/2017	24
level1	ZA_1_001	2009	claims settled	2016/2017	110
level1	ZA_1_005	2009	claims settled	2016/2017	122
level1	ZA_1_004	2009	claims settled	2016/2017	74
level1	ZA_1_006	2009	claims settled	2016/2017	14
level1	ZA_1_007	2009	claims settled	2016/2017	12
level1	ZA_1_008	2009	claims settled	2016/2017	356
country	ZA	2009	claims settled	2016/2017	804
\.


ALTER TABLE ONLY public.restitutionclaimseettled
    ADD CONSTRAINT pk_restitutionclaimseettled PRIMARY KEY (geo_level, geo_code, geo_version, restitutionclaimseettled, year);

--
-- PostgreSQL database dump complete
--
