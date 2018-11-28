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

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectarespergender DROP CONSTRAINT IF EXISTS pk_sectionaltitleownershipinhectarespergender;
DROP TABLE IF EXISTS public.sectionaltitleownershipinhectarespergender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sectionaltitleownershipinhectarespergender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sectionaltitleownershipinhectarespergender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares per gender" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: sectionaltitleownershipinhectarespergender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sectionaltitleownershipinhectarespergender (geo_level, geo_code, geo_version, "sectional title ownership in hectares per gender", total) FROM stdin;
province	EC	2016	Male	323
province	FS	2016	Male	170
province	GT	2016	Male	1253
province	KZN	2016	Male	475
province	LIM	2016	Male	203
province	MP	2016	Male	26
province	NW	2016	Male	33
province	NC	2016	Male	2
province	WC	2016	Male	151
country	ZA	2016	Male	2636
province	EC	2016	Female	57
province	FS	2016	Female	550
province	GT	2016	Female	1466
province	KZN	2016	Female	219
province	LIM	2016	Female	1057
province	MP	2016	Female	39
province	NW	2016	Female	28
province	NC	2016	Female	3
province	WC	2016	Female	249
country	ZA	2016	Female	3668
province	EC	2016	Male-Female	313
province	FS	2016	Male-Female	529
province	GT	2016	Male-Female	1832
province	KZN	2016	Male-Female	340
province	LIM	2016	Male-Female	284
province	MP	2016	Male-Female	43
province	NW	2016	Male-Female	1081
province	NC	2016	Male-Female	1
province	WC	2016	Male-Female	162
country	ZA	2016	Male-Female	4585
province	EC	2016	Co-ownership	5
province	FS	2016	Co-ownership	3
province	GT	2016	Co-ownership	197
province	KZN	2016	Co-ownership	25
province	LIM	2016	Co-ownership	1
province	MP	2016	Co-ownership	12
province	NW	2016	Co-ownership	2
province	NC	2016	Co-ownership	0
province	WC	2016	Co-ownership	31
country	ZA	2016	Co-ownership	277
province	EC	2016	Other	3
province	FS	2016	Other	1
province	GT	2016	Other	175
province	KZN	2016	Other	15
province	LIM	2016	Other	1
province	MP	2016	Other	1
province	NW	2016	Other	2
province	NC	2016	Other	0
province	WC	2016	Other	31
country	ZA	2016	Other	229
\.


--
-- Name: sectionaltitleownershipinhectarespergender pk_sectionaltitleownershipinhectarespergender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sectionaltitleownershipinhectarespergender
    ADD CONSTRAINT pk_sectionaltitleownershipinhectarespergender PRIMARY KEY (geo_level, geo_code, geo_version, "sectional title ownership in hectares per gender");


--
-- PostgreSQL database dump complete
--

