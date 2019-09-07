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

ALTER TABLE IF EXISTS ONLY public.disabledpeoplepartybenefited DROP CONSTRAINT IF EXISTS pk_disabledpeoplepartybenefited;
DROP TABLE IF EXISTS public.disabledpeoplepartybenefited;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: disabledpeoplepartybenefited; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.disabledpeoplepartybenefited (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    disabledpeoplepartybenefited character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: disabledpeoplepartybenefited; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.disabledpeoplepartybenefited (geo_level, geo_code, geo_version, year, disabledpeoplepartybenefited, total) FROM stdin;
level1	ZA_1_003	2009	2009/2010	disable people	0
level1	ZA_1_002	2009	2009/2010	disable people	0
level1	ZA_1_009	2009	2009/2010	disable people	0
level1	ZA_1_001	2009	2009/2010	disable people	1
level1	ZA_1_005	2009	2009/2010	disable people	14
level1	ZA_1_004	2009	2009/2010	disable people	1
level1	ZA_1_006	2009	2009/2010	disable people	2
level1	ZA_1_007	2009	2009/2010	disable people	0
level1	ZA_1_008	2009	2009/2010	disable people	14
country	ZA	2009	2009/2010	disable people	32
level1	ZA_1_003	2009	2010/2011	disable people	2
level1	ZA_1_002	2009	2010/2011	disable people	0
level1	ZA_1_009	2009	2010/2011	disable people	0
level1	ZA_1_001	2009	2010/2011	disable people	8
level1	ZA_1_005	2009	2010/2011	disable people	0
level1	ZA_1_004	2009	2010/2011	disable people	0
level1	ZA_1_006	2009	2010/2011	disable people	1
level1	ZA_1_007	2009	2010/2011	disable people	2
level1	ZA_1_008	2009	2010/2011	disable people	0
country	ZA	2009	2010/2011	disable people	13
level1	ZA_1_003	2009	2011/2012	disable people	1
level1	ZA_1_002	2009	2011/2012	disable people	0
level1	ZA_1_009	2009	2011/2012	disable people	0
level1	ZA_1_001	2009	2011/2012	disable people	1
level1	ZA_1_005	2009	2011/2012	disable people	0
level1	ZA_1_004	2009	2011/2012	disable people	0
level1	ZA_1_006	2009	2011/2012	disable people	0
level1	ZA_1_007	2009	2011/2012	disable people	0
level1	ZA_1_008	2009	2011/2012	disable people	0
country	ZA	2009	2011/2012	disable people	2
level1	ZA_1_003	2009	2012/2013	disable people	0
level1	ZA_1_002	2009	2012/2013	disable people	0
level1	ZA_1_009	2009	2012/2013	disable people	0
level1	ZA_1_001	2009	2012/2013	disable people	1
level1	ZA_1_005	2009	2012/2013	disable people	0
level1	ZA_1_004	2009	2012/2013	disable people	0
level1	ZA_1_006	2009	2012/2013	disable people	0
level1	ZA_1_007	2009	2012/2013	disable people	0
level1	ZA_1_008	2009	2012/2013	disable people	0
country	ZA	2009	2012/2013	disable people	1
level1	ZA_1_003	2009	2013/2014	disable people	0
level1	ZA_1_002	2009	2013/2014	disable people	0
level1	ZA_1_009	2009	2013/2014	disable people	0
level1	ZA_1_001	2009	2013/2014	disable people	0
level1	ZA_1_005	2009	2013/2014	disable people	0
level1	ZA_1_004	2009	2013/2014	disable people	0
level1	ZA_1_006	2009	2013/2014	disable people	0
level1	ZA_1_007	2009	2013/2014	disable people	0
level1	ZA_1_008	2009	2013/2014	disable people	0
country	ZA	2009	2013/2014	disable people	0
level1	ZA_1_003	2009	2014/2015	disable people	0
level1	ZA_1_002	2009	2014/2015	disable people	0
level1	ZA_1_009	2009	2014/2015	disable people	0
level1	ZA_1_001	2009	2014/2015	disable people	0
level1	ZA_1_005	2009	2014/2015	disable people	0
level1	ZA_1_004	2009	2014/2015	disable people	0
level1	ZA_1_006	2009	2014/2015	disable people	1
level1	ZA_1_007	2009	2014/2015	disable people	0
level1	ZA_1_008	2009	2014/2015	disable people	0
country	ZA	2009	2014/2015	disable people	1
level1	ZA_1_003	2009	2015/2016	disable people	0
level1	ZA_1_002	2009	2015/2016	disable people	0
level1	ZA_1_009	2009	2015/2016	disable people	1
level1	ZA_1_001	2009	2015/2016	disable people	0
level1	ZA_1_005	2009	2015/2016	disable people	0
level1	ZA_1_004	2009	2015/2016	disable people	1
level1	ZA_1_006	2009	2015/2016	disable people	0
level1	ZA_1_007	2009	2015/2016	disable people	0
level1	ZA_1_008	2009	2015/2016	disable people	0
country	ZA	2009	2015/2016	disable people	2
level1	ZA_1_003	2009	2016/2017	disable people	0
level1	ZA_1_002	2009	2016/2017	disable people	0
level1	ZA_1_009	2009	2016/2017	disable people	0
level1	ZA_1_001	2009	2016/2017	disable people	0
level1	ZA_1_005	2009	2016/2017	disable people	0
level1	ZA_1_004	2009	2016/2017	disable people	0
level1	ZA_1_006	2009	2016/2017	disable people	0
level1	ZA_1_007	2009	2016/2017	disable people	0
level1	ZA_1_008	2009	2016/2017	disable people	0
country	ZA	2009	2016/2017	disable people	0
level1	ZA_1_003	2009	2017/2018	disable people	1
level1	ZA_1_002	2009	2017/2018	disable people	0
level1	ZA_1_009	2009	2017/2018	disable people	0
level1	ZA_1_001	2009	2017/2018	disable people	0
level1	ZA_1_005	2009	2017/2018	disable people	0
level1	ZA_1_004	2009	2017/2018	disable people	0
level1	ZA_1_006	2009	2017/2018	disable people	0
level1	ZA_1_007	2009	2017/2018	disable people	0
level1	ZA_1_008	2009	2017/2018	disable people	0
country	ZA	2009	2017/2018	disable people	1
\.


--
-- Name: disabledpeoplepartybenefited pk_disabledpeoplepartybenefited; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.disabledpeoplepartybenefited
    ADD CONSTRAINT pk_disabledpeoplepartybenefited PRIMARY KEY (geo_level, geo_code, geo_version, year, disabledpeoplepartybenefited);


--
-- PostgreSQL database dump complete
--
