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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_residential_ownership DROP CONSTRAINT IF EXISTS pk_workers_hostel_residential_ownership;
DROP TABLE IF EXISTS public.workers_hostel_residential_ownership;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_residential_ownership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_residential_ownership (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_residential_ownership character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_residential_ownership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_residential_ownership (geo_level, geo_code, geo_version, workers_hostel_residential_ownership, total) FROM stdin;
province	WC	2016	Yes; individually	0
province	WC	2016	Yes; jointly	2236
province	WC	2016	No	24202
province	WC	2016	Do not know	0
province	WC	2016	Unspecified	0
province	EC	2016	Yes; individually	654
province	EC	2016	Yes; jointly	4042
province	EC	2016	No	27677
province	EC	2016	Do not know	0
province	EC	2016	Unspecified	0
province	NC	2016	Yes; individually	3289
province	NC	2016	Yes; jointly	943
province	NC	2016	No	25878
province	NC	2016	Do not know	0
province	NC	2016	Unspecified	0
province	FS	2016	Yes; individually	0
province	FS	2016	Yes; jointly	0
province	FS	2016	No	5195
province	FS	2016	Do not know	0
province	FS	2016	Unspecified	0
province	KZN	2016	Yes; individually	6527
province	KZN	2016	Yes; jointly	544
province	KZN	2016	No	70393
province	KZN	2016	Do not know	0
province	KZN	2016	Unspecified	1041
province	NW	2016	Yes; individually	749
province	NW	2016	Yes; jointly	0
province	NW	2016	No	18052
province	NW	2016	Do not know	0
province	NW	2016	Unspecified	0
province	GT	2016	Yes; individually	17259
province	GT	2016	Yes; jointly	3113
province	GT	2016	No	121475
province	GT	2016	Do not know	0
province	GT	2016	Unspecified	0
province	MP	2016	Yes; individually	13958
province	MP	2016	Yes; jointly	5005
province	MP	2016	No	35951
province	MP	2016	Do not know	0
province	MP	2016	Unspecified	0
province	LIM	2016	Yes; individually	4667
province	LIM	2016	Yes; jointly	0
province	LIM	2016	No	35442
province	LIM	2016	Do not know	0
province	LIM	2016	Unspecified	794
country	ZA	2016	Yes; individually	47102
country	ZA	2016	Yes; jointly	15883
country	ZA	2016	No	364265
country	ZA	2016	Do not know	0
country	ZA	2016	Unspecified	1835
\.


--
-- Name: workers_hostel_residential_ownership pk_workers_hostel_residential_ownership; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_residential_ownership
    ADD CONSTRAINT pk_workers_hostel_residential_ownership PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_residential_ownership);


--
-- PostgreSQL database dump complete
--
