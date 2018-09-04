--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;


ALTER TABLE IF EXISTS ONLY public.privatelandownershipinhectarespercategory DROP CONSTRAINT IF EXISTS pk_privatelandownershipinhectarespercategory;
DROP TABLE IF EXISTS public.privatelandownershipinhectarespercategory;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: privatelandownershipinhectarespercategory; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.privatelandownershipinhectarespercategory (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "private land ownership in hectares per category" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: privatelandownershipinhectarespercategory; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.privatelandownershipinhectarespercategory (geo_level, geo_code, geo_version, "private land ownership in hectares per category", total) FROM stdin;
province	EC	2011	Individual	4692320
province	FS	2011	Individual	5005878
province	GT	2011	Individual	546612
province	KZN	2011	Individual	1579543
province	LIM	2011	Individual	1718861
province	MP	2011	Individual	1432232
province	NW	2011	Individual	3215926
province	NC	2011	Individual	15083393
province	WC	2011	Individual	3756518
province	EC	2011	Company	1982479
province	FS	2011	Company	1978952
province	GT	2011	Company	618342
province	KZN	2011	Company	1627042
province	LIM	2011	Company	3918210
province	MP	2011	Company	2219322
province	NW	2011	Company	2025825
province	NC	2011	Company	5641747
province	WC	2011	Company	3187986
province	EC	2011	CBOs	190249
province	FS	2011	CBOs	126044
province	GT	2011	CBOs	60650
province	KZN	2011	CBOs	300556
province	LIM	2011	CBOs	705466
province	MP	2011	CBOs	240947
province	NW	2011	CBOs	341807
province	NC	2011	CBOs	1247673
province	WC	2011	CBOs	336097
province	EC	2011	Trust	3964671
province	FS	2011	Trust	4894214
province	GT	2011	Trust	133797
province	KZN	2011	Trust	1562455
province	LIM	2011	Trust	1355839
province	MP	2011	Trust	1219721
province	NW	2011	Trust	1953015
province	NC	2011	Trust	10057482
province	WC	2011	Trust	4150662
province	EC	2011	Co-ownership	69870
province	FS	2011	Co-ownership	31470
province	GT	2011	Co-ownership	11556
province	KZN	2011	Co-ownership	161950
province	LIM	2011	Co-ownership	60564
province	MP	2011	Co-ownership	36185
province	NW	2011	Co-ownership	117724
province	NC	2011	Co-ownership	126464
province	WC	2011	Co-ownership	267807
country	ZA	2011	Individual	37031283
country	ZA	2011	Company	23199904
country	ZA	2011	CBOs	3549489
country	ZA	2011	Trust	29291857
country	ZA	2011	Co-ownership	883589
\.


--
-- Name: privatelandownershipinhectarespercategory pk_privatelandownershipinhectarespercategory; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE IF EXISTS ONLY public.privatelandownershipinhectarespercategory
    ADD CONSTRAINT pk_privatelandownershipinhectarespercategory PRIMARY KEY (geo_level, geo_code, geo_version, "private land ownership in hectares per category");


--
-- PostgreSQL database dump complete
--

