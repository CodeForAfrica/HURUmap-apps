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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_ss_dwelling DROP CONSTRAINT IF EXISTS pk_workers_hostel_ss_dwelling;
DROP TABLE IF EXISTS public.workers_hostel_ss_dwelling;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_ss_dwelling; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_ss_dwelling (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_ss_dwelling character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_ss_dwelling; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_ss_dwelling (geo_level, geo_code, geo_version, workers_hostel_ss_dwelling, total) FROM stdin;
province	WC	2018	Yes	743
province	WC	2018	No	25696
province	WC	2018	Do not know	0
province	WC	2018	Unspecified	0
country	ZA	2018	Yes	10353
country	ZA	2018	No	415943
country	ZA	2018	Do not know	1574
country	ZA	2018	Unspecified	1216
province	NC	2018	Yes	3137
province	NC	2018	No	26223
province	NC	2018	Do not know	750
province	NC	2018	Unspecified	0
province	NW	2018	Yes	0
province	NW	2018	No	18801
province	NW	2018	Do not know	0
province	NW	2018	Unspecified	0
province	MP	2018	Yes	0
province	MP	2018	No	54446
province	MP	2018	Do not know	0
province	MP	2018	Unspecified	468
province	LIM	2018	Yes	0
province	LIM	2018	No	40155
province	LIM	2018	Do not know	0
province	LIM	2018	Unspecified	748
province	KZN	2018	Yes	3496
province	KZN	2018	No	75009
province	KZN	2018	Do not know	0
province	KZN	2018	Unspecified	0
province	GT	2018	Yes	0
province	GT	2018	No	141023
province	GT	2018	Do not know	824
province	GT	2018	Unspecified	0
province	FS	2018	Yes	0
province	FS	2018	No	5195
province	FS	2018	Do not know	0
province	FS	2018	Unspecified	0
province	EC	2018	Yes	2977
province	EC	2018	No	29395
province	EC	2018	Do not know	0
province	EC	2018	Unspecified	0
\.


--
-- Name: workers_hostel_ss_dwelling pk_workers_hostel_ss_dwelling; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_ss_dwelling
    ADD CONSTRAINT pk_workers_hostel_ss_dwelling PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_ss_dwelling);


--
-- PostgreSQL database dump complete
--

