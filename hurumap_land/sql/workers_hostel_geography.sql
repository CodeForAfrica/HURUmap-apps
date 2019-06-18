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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_geography DROP CONSTRAINT IF EXISTS pk_workers_hostel_geography;
DROP TABLE IF EXISTS public.workers_hostel_geography;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_geography; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_geography (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_geography character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_geography; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_geography (geo_level, geo_code, geo_version, workers_hostel_geography, total) FROM stdin;
province	WC	2018	Urban formal	13039
province	WC	2018	Traditional	0
province	WC	2018	Farms	13400
country	ZA	2018	Urban formal	258389
country	ZA	2018	Traditional	19813
country	ZA	2018	Farms	150883
province	NC	2018	Urban formal	15522
province	NC	2018	Traditional	0
province	NC	2018	Farms	14588
province	NW	2018	Urban formal	13231
province	NW	2018	Traditional	749
province	NW	2018	Farms	4820
province	MP	2018	Urban formal	27149
province	MP	2018	Traditional	4439
province	MP	2018	Farms	23325
province	LIM	2018	Urban formal	2484
province	LIM	2018	Traditional	2530
province	LIM	2018	Farms	35889
province	KZN	2018	Urban formal	24755
province	KZN	2018	Traditional	5322
province	KZN	2018	Farms	48429
province	GT	2018	Urban formal	132407
province	GT	2018	Traditional	0
province	GT	2018	Farms	9439
province	FS	2018	Urban formal	4202
province	FS	2018	Traditional	0
province	FS	2018	Farms	994
province	EC	2018	Urban formal	25600
province	EC	2018	Traditional	6772
province	EC	2018	Farms	0
\.


--
-- Name: workers_hostel_geography pk_workers_hostel_geography; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_geography
    ADD CONSTRAINT pk_workers_hostel_geography PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_geography);


--
-- PostgreSQL database dump complete
--

