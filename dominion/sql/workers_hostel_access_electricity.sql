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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_access_electricity DROP CONSTRAINT IF EXISTS pk_workers_hostel_access_electricity;
DROP TABLE IF EXISTS public.workers_hostel_access_electricity;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_access_electricity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_access_electricity (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_access_electricity character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_access_electricity; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_access_electricity (geo_level, geo_code, geo_version, workers_hostel_access_electricity, total) FROM stdin;
province	ZA_1_008	2009	Yes	26439
province	ZA_1_008	2009	No	0
province	ZA_1_008	2009	Do not know	0
province	ZA_1_008	2009	Unspecified	0
province	ZA_1_003	2009	Yes	32372
province	ZA_1_003	2009	No	0
province	ZA_1_003	2009	Do not know	0
province	ZA_1_003	2009	Unspecified	0
province	ZA_1_006	2009	Yes	29792
province	ZA_1_006	2009	No	317
province	ZA_1_006	2009	Do not know	0
province	ZA_1_006	2009	Unspecified	0
province	ZA_1_002	2009	Yes	5195
province	ZA_1_002	2009	No	0
province	ZA_1_002	2009	Do not know	0
province	ZA_1_002	2009	Unspecified	0
province	ZA_1_001	2009	Yes	49260
province	ZA_1_001	2009	No	29245
province	ZA_1_001	2009	Do not know	0
province	ZA_1_001	2009	Unspecified	0
province	ZA_1_007	2009	Yes	18801
province	ZA_1_007	2009	No	0
province	ZA_1_007	2009	Do not know	0
province	ZA_1_007	2009	Unspecified	0
province	ZA_1_009	2009	Yes	133445
province	ZA_1_009	2009	No	8402
province	ZA_1_009	2009	Do not know	0
province	ZA_1_009	2009	Unspecified	0
province	ZA_1_004	2009	Yes	51053
province	ZA_1_004	2009	No	3860
province	ZA_1_004	2009	Do not know	0
province	ZA_1_004	2009	Unspecified	0
province	ZA_1_005	2009	Yes	33159
province	ZA_1_005	2009	No	6103
province	ZA_1_005	2009	Do not know	1640
province	ZA_1_005	2009	Unspecified	0
country	ZA	2009	Yes	379517
country	ZA	2009	No	47928
country	ZA	2009	Do not know	1640
country	ZA	2009	Unspecified	0
\.


--
-- Name: workers_hostel_access_electricity pk_workers_hostel_access_electricity; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_access_electricity
    ADD CONSTRAINT pk_workers_hostel_access_electricity PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_access_electricity);


--
-- PostgreSQL database dump complete
--
