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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_subsidy DROP CONSTRAINT IF EXISTS pk_workers_hostel_subsidy;
DROP TABLE IF EXISTS public.workers_hostel_subsidy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_subsidy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_subsidy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_subsidy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_subsidy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_subsidy (geo_level, geo_code, geo_version, workers_hostel_subsidy, total) FROM stdin;
level1	ZA_1_008	2009	Yes	743
level1	ZA_1_008	2009	No	25696
level1	ZA_1_008	2009	Do not know	0
level1	ZA_1_008	2009	Unspecified	0
country	ZA	2009	Yes	12033
country	ZA	2009	No	406662
country	ZA	2009	Do not know	824
country	ZA	2009	Unspecified	9566
level1	ZA_1_006	2009	Yes	0
level1	ZA_1_006	2009	No	29111
level1	ZA_1_006	2009	Do not know	0
level1	ZA_1_006	2009	Unspecified	998
level1	ZA_1_007	2009	Yes	0
level1	ZA_1_007	2009	No	18801
level1	ZA_1_007	2009	Do not know	0
level1	ZA_1_007	2009	Unspecified	0
level1	ZA_1_004	2009	Yes	8313
level1	ZA_1_004	2009	No	39632
level1	ZA_1_004	2009	Do not know	0
level1	ZA_1_004	2009	Unspecified	6969
level1	ZA_1_005	2009	Yes	0
level1	ZA_1_005	2009	No	40903
level1	ZA_1_005	2009	Do not know	0
level1	ZA_1_005	2009	Unspecified	0
level1	ZA_1_001	2009	Yes	0
level1	ZA_1_001	2009	No	78506
level1	ZA_1_001	2009	Do not know	0
level1	ZA_1_001	2009	Unspecified	0
level1	ZA_1_009	2009	Yes	0
level1	ZA_1_009	2009	No	139424
level1	ZA_1_009	2009	Do not know	824
level1	ZA_1_009	2009	Unspecified	1599
level1	ZA_1_002	2009	Yes	0
level1	ZA_1_002	2009	No	5195
level1	ZA_1_002	2009	Do not know	0
level1	ZA_1_002	2009	Unspecified	0
level1	ZA_1_003	2009	Yes	2977
level1	ZA_1_003	2009	No	29395
level1	ZA_1_003	2009	Do not know	0
level1	ZA_1_003	2009	Unspecified	0
\.


--
-- Name: workers_hostel_subsidy pk_workers_hostel_subsidy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_subsidy
    ADD CONSTRAINT pk_workers_hostel_subsidy PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_subsidy);


--
-- PostgreSQL database dump complete
--

