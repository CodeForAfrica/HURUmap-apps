--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.youthpartybenefited DROP CONSTRAINT IF EXISTS pk_youthpartybenefited;
DROP TABLE IF EXISTS public.youthpartybenefited;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: youthpartybenefited; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.youthpartybenefited (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    youthpartybenefited character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: youthpartybenefited; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.youthpartybenefited (geo_level, geo_code, geo_version, year, youthpartybenefited, total) FROM stdin;
level1	ZA_1_003	2009	2009/2010	youth	117
level1	ZA_1_002	2009	2009/2010	youth	89
level1	ZA_1_009	2009	2009/2010	youth	18
level1	ZA_1_001	2009	2009/2010	youth	1990
level1	ZA_1_005	2009	2009/2010	youth	275
level1	ZA_1_004	2009	2009/2010	youth	593
level1	ZA_1_006	2009	2009/2010	youth	41
level1	ZA_1_007	2009	2009/2010	youth	549
level1	ZA_1_008	2009	2009/2010	youth	466
country	ZA	2009	2009/2010	youth	4138
level1	ZA_1_003	2009	2010/2011	youth	72
level1	ZA_1_002	2009	2010/2011	youth	39
level1	ZA_1_009	2009	2010/2011	youth	60
level1	ZA_1_001	2009	2010/2011	youth	664
level1	ZA_1_005	2009	2010/2011	youth	50
level1	ZA_1_004	2009	2010/2011	youth	63
level1	ZA_1_006	2009	2010/2011	youth	30
level1	ZA_1_007	2009	2010/2011	youth	74
level1	ZA_1_008	2009	2010/2011	youth	65
country	ZA	2009	2010/2011	youth	1117
level1	ZA_1_003	2009	2011/2012	youth	48
level1	ZA_1_002	2009	2011/2012	youth	1
level1	ZA_1_009	2009	2011/2012	youth	0
level1	ZA_1_001	2009	2011/2012	youth	395
level1	ZA_1_005	2009	2011/2012	youth	23
level1	ZA_1_004	2009	2011/2012	youth	18
level1	ZA_1_006	2009	2011/2012	youth	4
level1	ZA_1_007	2009	2011/2012	youth	0
level1	ZA_1_008	2009	2011/2012	youth	6
country	ZA	2009	2011/2012	youth	495
level1	ZA_1_003	2009	2012/2013	youth	43
level1	ZA_1_002	2009	2012/2013	youth	0
level1	ZA_1_009	2009	2012/2013	youth	6
level1	ZA_1_001	2009	2012/2013	youth	43
level1	ZA_1_005	2009	2012/2013	youth	1
level1	ZA_1_004	2009	2012/2013	youth	0
level1	ZA_1_006	2009	2012/2013	youth	2
level1	ZA_1_007	2009	2012/2013	youth	0
level1	ZA_1_008	2009	2012/2013	youth	0
country	ZA	2009	2012/2013	youth	95
level1	ZA_1_003	2009	2013/2014	youth	8
level1	ZA_1_002	2009	2013/2014	youth	1
level1	ZA_1_009	2009	2013/2014	youth	0
level1	ZA_1_001	2009	2013/2014	youth	1
level1	ZA_1_005	2009	2013/2014	youth	6
level1	ZA_1_004	2009	2013/2014	youth	0
level1	ZA_1_006	2009	2013/2014	youth	2
level1	ZA_1_007	2009	2013/2014	youth	0
level1	ZA_1_008	2009	2013/2014	youth	0
country	ZA	2009	2013/2014	youth	18
level1	ZA_1_003	2009	2014/2015	youth	8
level1	ZA_1_002	2009	2014/2015	youth	0
level1	ZA_1_009	2009	2014/2015	youth	8
level1	ZA_1_001	2009	2014/2015	youth	12
level1	ZA_1_005	2009	2014/2015	youth	3
level1	ZA_1_004	2009	2014/2015	youth	0
level1	ZA_1_006	2009	2014/2015	youth	5
level1	ZA_1_007	2009	2014/2015	youth	0
level1	ZA_1_008	2009	2014/2015	youth	2
country	ZA	2009	2014/2015	youth	38
level1	ZA_1_003	2009	2015/2016	youth	24
level1	ZA_1_002	2009	2015/2016	youth	0
level1	ZA_1_009	2009	2015/2016	youth	1
level1	ZA_1_001	2009	2015/2016	youth	8
level1	ZA_1_005	2009	2015/2016	youth	8
level1	ZA_1_004	2009	2015/2016	youth	4
level1	ZA_1_006	2009	2015/2016	youth	2
level1	ZA_1_007	2009	2015/2016	youth	0
level1	ZA_1_008	2009	2015/2016	youth	2
country	ZA	2009	2015/2016	youth	49
level1	ZA_1_003	2009	2016/2017	youth	6
level1	ZA_1_002	2009	2016/2017	youth	0
level1	ZA_1_009	2009	2016/2017	youth	1
level1	ZA_1_001	2009	2016/2017	youth	191
level1	ZA_1_005	2009	2016/2017	youth	4
level1	ZA_1_004	2009	2016/2017	youth	83
level1	ZA_1_006	2009	2016/2017	youth	6
level1	ZA_1_007	2009	2016/2017	youth	20
level1	ZA_1_008	2009	2016/2017	youth	0
country	ZA	2009	2016/2017	youth	311
level1	ZA_1_003	2009	2017/2018	youth	7
level1	ZA_1_002	2009	2017/2018	youth	32
level1	ZA_1_009	2009	2017/2018	youth	2
level1	ZA_1_001	2009	2017/2018	youth	151
level1	ZA_1_005	2009	2017/2018	youth	3
level1	ZA_1_004	2009	2017/2018	youth	43
level1	ZA_1_006	2009	2017/2018	youth	0
level1	ZA_1_007	2009	2017/2018	youth	18
level1	ZA_1_008	2009	2017/2018	youth	0
country	ZA	2009	2017/2018	youth	256
\.


--
-- Name: youthpartybenefited pk_youthpartybenefited; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.youthpartybenefited
    ADD CONSTRAINT pk_youthpartybenefited PRIMARY KEY (geo_level, geo_code, geo_version, year, youthpartybenefited);


--
-- PostgreSQL database dump complete
--
