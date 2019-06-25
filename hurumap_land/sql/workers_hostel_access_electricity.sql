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
province	WC	2016	Yes	26439
province	WC	2016	No	0
province	WC	2016	Do not know	0
province	WC	2016	Unspecified	0
province	EC	2016	Yes	32372
province	EC	2016	No	0
province	EC	2016	Do not know	0
province	EC	2016	Unspecified	0
province	NC	2016	Yes	29792
province	NC	2016	No	317
province	NC	2016	Do not know	0
province	NC	2016	Unspecified	0
province	FS	2016	Yes	5195
province	FS	2016	No	0
province	FS	2016	Do not know	0
province	FS	2016	Unspecified	0
province	KZN	2016	Yes	49260
province	KZN	2016	No	29245
province	KZN	2016	Do not know	0
province	KZN	2016	Unspecified	0
province	NW	2016	Yes	18801
province	NW	2016	No	0
province	NW	2016	Do not know	0
province	NW	2016	Unspecified	0
province	GT	2016	Yes	133445
province	GT	2016	No	8402
province	GT	2016	Do not know	0
province	GT	2016	Unspecified	0
province	MP	2016	Yes	51053
province	MP	2016	No	3860
province	MP	2016	Do not know	0
province	MP	2016	Unspecified	0
province	LIM	2016	Yes	33159
province	LIM	2016	No	6103
province	LIM	2016	Do not know	1640
province	LIM	2016	Unspecified	0
country	ZA	2016	Yes	379517
country	ZA	2016	No	47928
country	ZA	2016	Do not know	1640
country	ZA	2016	Unspecified	0
\.


--
-- Name: workers_hostel_access_electricity pk_workers_hostel_access_electricity; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_access_electricity
    ADD CONSTRAINT pk_workers_hostel_access_electricity PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_access_electricity);


--
-- PostgreSQL database dump complete
--
