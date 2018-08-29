--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectaresperrace DROP CONSTRAINT IF EXISTS pk_sectionaltitleownershipinhectaresperrace;
DROP TABLE IF EXISTS public.sectionaltitleownershipinhectaresperrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sectionaltitleownershipinhectaresperrace; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.sectionaltitleownershipinhectaresperrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares per race" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.sectionaltitleownershipinhectaresperrace OWNER TO our_land;

--
-- Data for Name: sectionaltitleownershipinhectaresperrace; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.sectionaltitleownershipinhectaresperrace (geo_level, geo_code, geo_version, "sectional title ownership in hectares per race", total) FROM stdin;
province	EC	2011	White	388
province	FS	2011	White	631
province	GT	2011	White	1964
province	KZN	2011	White	578
province	MP	2011	White	70
province	NW	2011	White	59
province	NC	2011	White	4
province	WC	2011	White	354
province	EC	2011	African	128
province	FS	2011	African	14
province	GT	2011	African	1523
province	KZN	2011	African	86
province	MP	2011	African	15
province	NW	2011	African	16
province	NC	2011	African	1
province	WC	2011	African	30
province	EC	2011	Coloured	22
province	FS	2011	Coloured	230
province	GT	2011	Coloured	734
province	KZN	2011	Coloured	84
province	MP	2011	Coloured	7
province	NW	2011	Coloured	1046
province	NC	2011	Coloured	1
province	WC	2011	Coloured	63
province	EC	2011	Indian	123
province	FS	2011	Indian	10
province	GT	2011	Indian	227
province	KZN	2011	Indian	136
province	MP	2011	Indian	5
province	NW	2011	Indian	6
province	NC	2011	Indian	0
province	WC	2011	Indian	45
province	EC	2011	Other	8
province	FS	2011	Other	341
province	GT	2011	Other	173
province	KZN	2011	Other	41
province	MP	2011	Other	3
province	NW	2011	Other	4
province	NC	2011	Other	0
province	WC	2011	Other	31
province	EC	2011	Co-own	32
province	FS	2011	Co-own	27
province	GT	2011	Co-own	304
province	KZN	2011	Co-own	149
province	MP	2011	Co-own	22
province	NW	2011	Co-own	15
province	NC	2011	Co-own	1
province	WC	2011	Co-own	101
country	ZA	2011	White	5118
country	ZA	2011	African	1989
country	ZA	2011	Coloured	2375
country	ZA	2011	Indian	556
country	ZA	2011	Other	703
country	ZA	2011	Co-own	655
province	LIM	2011	White	1069
province	LIM	2011	African	176
province	LIM	2011	Coloured	188
province	LIM	2011	Indian	4
province	LIM	2011	Other	103
province	LIM	2011	Co-own	6
\.


--
-- Name: sectionaltitleownershipinhectaresperrace pk_sectionaltitleownershipinhectaresperrace; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectaresperrace
    ADD CONSTRAINT pk_sectionaltitleownershipinhectaresperrace PRIMARY KEY (geo_level, geo_code, geo_version, "sectional title ownership in hectares per race");


--
-- PostgreSQL database dump complete
--

