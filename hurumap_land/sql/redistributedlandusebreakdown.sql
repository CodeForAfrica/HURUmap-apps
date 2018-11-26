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

ALTER TABLE IF EXISTS ONLY public.redistributedlandusebreakdown DROP CONSTRAINT IF EXISTS pk_redistributedlandusebreakdown;
DROP TABLE IF EXISTS public.redistributedlandusebreakdown;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: redistributedlandusebreakdown; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redistributedlandusebreakdown (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "redistributed land use breakdown" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: redistributedlandusebreakdown; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redistributedlandusebreakdown (geo_level, geo_code, geo_version, "redistributed land use breakdown", total) FROM stdin;
province	EC	2016	projects	4
province	FS	2016	projects	10
province	GT	2016	projects	6
province	KZN	2016	projects	20
province	LIM	2016	projects	8
province	MP	2016	projects	9
province	NC	2016	projects	7
province	NW	2016	projects	10
province	WC	2016	projects	1
country	ZA	2016	projects	75
province	EC	2016	households	25
province	FS	2016	households	23
province	GT	2016	households	2
province	KZN	2016	households	358
province	LIM	2016	households	12
province	MP	2016	households	16
province	NC	2016	households	10
province	NW	2016	households	32
province	WC	2016	households	0
country	ZA	2016	households	478
province	EC	2016	beneficiaries	31
province	FS	2016	beneficiaries	306
province	GT	2016	beneficiaries	114
province	KZN	2016	beneficiaries	736
province	LIM	2016	beneficiaries	16
province	MP	2016	beneficiaries	85
province	NC	2016	beneficiaries	12
province	NW	2016	beneficiaries	39
province	WC	2016	beneficiaries	9
country	ZA	2016	beneficiaries	1348
\.


--
-- Name: redistributedlandusebreakdown pk_redistributedlandusebreakdown; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redistributedlandusebreakdown
    ADD CONSTRAINT pk_redistributedlandusebreakdown PRIMARY KEY (geo_level, geo_code, geo_version, "redistributed land use breakdown");


--
-- PostgreSQL database dump complete
--

