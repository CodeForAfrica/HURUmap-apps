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
province	WC	2009	African/Black	18567
province	WC	2009	Coloured	7872
province	WC	2009	Indian/Asian	0
province	WC	2009	White	0
country	ZA	2009	African/Black	410203
country	ZA	2009	Coloured	15206
country	ZA	2009	Indian/Asian	0
country	ZA	2009	White	3676
province	NC	2009	African/Black	26749
province	NC	2009	Coloured	3361
province	NC	2009	Indian/Asian	0
province	NC	2009	White	0
province	NW	2009	African/Black	18801
province	NW	2009	Coloured	0
province	NW	2009	Indian/Asian	0
province	NW	2009	White	0
province	MP	2009	African/Black	51238
province	MP	2009	Coloured	0
province	MP	2009	Indian/Asian	0
province	MP	2009	White	3676
province	LIM	2009	African/Black	40903
province	LIM	2009	Coloured	0
province	LIM	2009	Indian/Asian	0
province	LIM	2009	White	0
province	KZN	2009	African/Black	77180
province	KZN	2009	Coloured	1326
province	KZN	2009	Indian/Asian	0
province	KZN	2009	White	0
province	GT	2009	African/Black	141846
province	GT	2009	Coloured	0
province	GT	2009	Indian/Asian	0
province	GT	2009	White	0
province	FS	2009	African/Black	5195
province	FS	2009	Coloured	0
province	FS	2009	Indian/Asian	0
province	FS	2009	White	0
province	EC	2009	African/Black	29725
province	EC	2009	Coloured	2648
province	EC	2009	Indian/Asian	0
province	EC	2009	White	0
\.


--
-- Name: workers_hostel_population_group pk_workers_hostel_population_group; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_population_group
    ADD CONSTRAINT pk_workers_hostel_population_group PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_population_group);


--
-- PostgreSQL database dump complete
--
