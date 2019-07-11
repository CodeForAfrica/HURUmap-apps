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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_population_group DROP CONSTRAINT IF EXISTS pk_workers_hostel_population_group;
DROP TABLE IF EXISTS public.workers_hostel_population_group;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_population_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_population_group (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_population_group character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_population_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_population_group (geo_level, geo_code, geo_version, workers_hostel_population_group, total) FROM stdin;
province	ZA_1_008	2009	African/Black	18567
province	ZA_1_008	2009	Coloured	7872
province	ZA_1_008	2009	Indian/Asian	0
province	ZA_1_008	2009	White	0
country	ZA	2009	African/Black	410203
country	ZA	2009	Coloured	15206
country	ZA	2009	Indian/Asian	0
country	ZA	2009	White	3676
province	ZA_1_006	2009	African/Black	26749
province	ZA_1_006	2009	Coloured	3361
province	ZA_1_006	2009	Indian/Asian	0
province	ZA_1_006	2009	White	0
province	ZA_1_007	2009	African/Black	18801
province	ZA_1_007	2009	Coloured	0
province	ZA_1_007	2009	Indian/Asian	0
province	ZA_1_007	2009	White	0
province	ZA_1_004	2009	African/Black	51238
province	ZA_1_004	2009	Coloured	0
province	ZA_1_004	2009	Indian/Asian	0
province	ZA_1_004	2009	White	3676
province	ZA_1_005	2009	African/Black	40903
province	ZA_1_005	2009	Coloured	0
province	ZA_1_005	2009	Indian/Asian	0
province	ZA_1_005	2009	White	0
province	ZA_1_001	2009	African/Black	77180
province	ZA_1_001	2009	Coloured	1326
province	ZA_1_001	2009	Indian/Asian	0
province	ZA_1_001	2009	White	0
province	ZA_1_009	2009	African/Black	141846
province	ZA_1_009	2009	Coloured	0
province	ZA_1_009	2009	Indian/Asian	0
province	ZA_1_009	2009	White	0
province	ZA_1_002	2009	African/Black	5195
province	ZA_1_002	2009	Coloured	0
province	ZA_1_002	2009	Indian/Asian	0
province	ZA_1_002	2009	White	0
province	ZA_1_003	2009	African/Black	29725
province	ZA_1_003	2009	Coloured	2648
province	ZA_1_003	2009	Indian/Asian	0
province	ZA_1_003	2009	White	0
\.


--
-- Name: workers_hostel_population_group pk_workers_hostel_population_group; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_population_group
    ADD CONSTRAINT pk_workers_hostel_population_group PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_population_group);


--
-- PostgreSQL database dump complete
--
