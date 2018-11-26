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

ALTER TABLE IF EXISTS ONLY public.land_acquisation_challenges DROP CONSTRAINT IF EXISTS pk_land_acquisation_challenges;
DROP TABLE IF EXISTS public.land_acquisation_challenges;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_acquisation_challenges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_acquisation_challenges (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_acquisation_challenges character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_acquisation_challenges; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_acquisation_challenges (geo_level, geo_code, geo_version, land_acquisation_challenges, total) FROM stdin;
province	EC	2016	There are no challenges	2
province	EC	2016	Traditional leaders that favour certain groups of people	9
province	EC	2016	Difficulties in getting title documents	12
province	EC	2016	Unscrupulous sellers	12
province	EC	2016	Land is too expensive	23
province	EC	2016	Land is racialized	15
province	EC	2016	Land scarcity	22
province	EC	2016	None of these	2
province	EC	2016	Refused	1
province	EC	2016	Don't know/Haven't heard enough	2
province	FS	2016	There are no challenges	6
province	FS	2016	Traditional leaders that favour certain groups of people	5
province	FS	2016	Difficulties in getting title documents	11
province	FS	2016	Unscrupulous sellers	7
province	FS	2016	Land is too expensive	31
province	FS	2016	Land is racialized	20
province	FS	2016	Land scarcity	16
province	FS	2016	None of these	0
province	FS	2016	Refused	0
province	FS	2016	Don't know/Haven't heard enough	4
province	GT	2016	There are no challenges	2
province	GT	2016	Traditional leaders that favour certain groups of people	3
province	GT	2016	Difficulties in getting title documents	12
province	GT	2016	Unscrupulous sellers	6
province	GT	2016	Land is too expensive	37
province	GT	2016	Land is racialized	16
province	GT	2016	Land scarcity	17
province	GT	2016	None of these	1
province	GT	2016	Refused	0
province	GT	2016	Don't know/Haven't heard enough	6
province	KZN	2016	There are no challenges	3
province	KZN	2016	Traditional leaders that favour certain groups of people	6
province	KZN	2016	Difficulties in getting title documents	12
province	KZN	2016	Unscrupulous sellers	9
province	KZN	2016	Land is too expensive	16
province	KZN	2016	Land is racialized	15
province	KZN	2016	Land scarcity	16
province	KZN	2016	None of these	5
province	KZN	2016	Refused	1
province	KZN	2016	Don't know/Haven't heard enough	17
province	LIM	2016	There are no challenges	5
province	LIM	2016	Traditional leaders that favour certain groups of people	13
province	LIM	2016	Difficulties in getting title documents	10
province	LIM	2016	Unscrupulous sellers	1
province	LIM	2016	Land is too expensive	36
province	LIM	2016	Land is racialized	13
province	LIM	2016	Land scarcity	18
province	LIM	2016	None of these	1
province	LIM	2016	Refused	0
province	LIM	2016	Don't know/Haven't heard enough	3
province	MP	2016	There are no challenges	21
province	MP	2016	Traditional leaders that favour certain groups of people	1
province	MP	2016	Difficulties in getting title documents	8
province	MP	2016	Unscrupulous sellers	3
province	MP	2016	Land is too expensive	22
province	MP	2016	Land is racialized	12
province	MP	2016	Land scarcity	26
province	MP	2016	None of these	2
province	MP	2016	Refused	0
province	MP	2016	Don't know/Haven't heard enough	4
province	NW	2016	There are no challenges	1
province	NW	2016	Traditional leaders that favour certain groups of people	7
province	NW	2016	Difficulties in getting title documents	8
province	NW	2016	Unscrupulous sellers	7
province	NW	2016	Land is too expensive	21
province	NW	2016	Land is racialized	27
province	NW	2016	Land scarcity	12
province	NW	2016	None of these	2
province	NW	2016	Refused	0
province	NW	2016	Don't know/Haven't heard enough	15
province	NC	2016	There are no challenges	10
province	NC	2016	Traditional leaders that favour certain groups of people	0
province	NC	2016	Difficulties in getting title documents	17
province	NC	2016	Unscrupulous sellers	2
province	NC	2016	Land is too expensive	24
province	NC	2016	Land is racialized	15
province	NC	2016	Land scarcity	20
province	NC	2016	None of these	0
province	NC	2016	Refused	0
province	NC	2016	Don't know/Haven't heard enough	12
province	WC	2016	There are no challenges	0
province	WC	2016	Traditional leaders that favour certain groups of people	10
province	WC	2016	Difficulties in getting title documents	4
province	WC	2016	Unscrupulous sellers	3
province	WC	2016	Land is too expensive	44
province	WC	2016	Land is racialized	18
province	WC	2016	Land scarcity	11
province	WC	2016	None of these	1
province	WC	2016	Refused	0
province	WC	2016	Don't know/Haven't heard enough	9
country	ZA	2016	Difficulties in getting title documents	94
country	ZA	2016	Don't know/Haven't heard enough	72
country	ZA	2016	Land is racialized	151
country	ZA	2016	Land is too expensive	254
country	ZA	2016	Land scarcity	158
country	ZA	2016	None of these	16
country	ZA	2016	Refused	1
country	ZA	2016	There are no challenges	50
country	ZA	2016	Traditional leaders that favour certain groups of people	53
country	ZA	2016	Unscrupulous sellers	52
\.


--
-- Name: land_acquisation_challenges pk_land_acquisation_challenges; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.land_acquisation_challenges
    ADD CONSTRAINT pk_land_acquisation_challenges PRIMARY KEY (geo_level, geo_code, geo_version, land_acquisation_challenges);


--
-- PostgreSQL database dump complete
--

