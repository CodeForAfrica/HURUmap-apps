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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_gender DROP CONSTRAINT IF EXISTS pk_workers_hostel_gender;
DROP TABLE IF EXISTS public.workers_hostel_gender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_gender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_gender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_gender (geo_level, geo_code, geo_version, workers_hostel_gender, total) FROM stdin;
country	ZA	2016	Male	315484
province	GT	2016	Male	112026
province	KZN	2016	Male	57772
province	MP	2016	Male	36287
province	LIM	2016	Male	31241
province	NC	2016	Male	21529
province	NW	2016	Male	18218
province	WC	2016	Male	17491
province	EC	2016	Male	17447
province	FS	2016	Male	3474
country	ZA	2016	Female	113601
province	GT	2016	Female	29821
province	KZN	2016	Female	20734
province	MP	2016	Female	18627
province	EC	2016	Female	14925
province	LIM	2016	Female	9662
province	WC	2016	Female	8948
province	NC	2016	Female	8580
province	FS	2016	Female	1721
province	NW	2016	Female	583
\.


--
-- Name: workers_hostel_gender pk_workers_hostel_gender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_gender
    ADD CONSTRAINT pk_workers_hostel_gender PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_gender);


--
-- PostgreSQL database dump complete
--

