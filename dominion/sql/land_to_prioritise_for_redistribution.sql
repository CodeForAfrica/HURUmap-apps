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

ALTER TABLE IF EXISTS ONLY public.land_to_prioritise_for_redistribution DROP CONSTRAINT IF EXISTS pk_land_to_prioritise_for_redistribution;
DROP TABLE IF EXISTS public.land_to_prioritise_for_redistribution;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_to_prioritise_for_redistribution; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_to_prioritise_for_redistribution (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_to_prioritise_for_redistribution character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_to_prioritise_for_redistribution; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_to_prioritise_for_redistribution (geo_level, geo_code, geo_version, land_to_prioritise_for_redistribution, total) FROM stdin;
province	EC	2016	Land should not be redistributed	5
province	EC	2016	Agricultural land	22
province	EC	2016	Urban occupied land	2
province	EC	2016	Urban vacant land	11
province	EC	2016	Land taken during forced removals	40
province	EC	2016	Communal land in rural areas	9
province	EC	2016	None of these	1
province	EC	2016	All of the land	9
province	EC	2016	Refused	1
province	EC	2016	Don't know/Haven't heard enough	1
province	FS	2016	Land should not be redistributed	5
province	FS	2016	Agricultural land	31
province	FS	2016	Urban occupied land	5
province	FS	2016	Urban vacant land	7
province	FS	2016	Land taken during forced removals	33
province	FS	2016	Communal land in rural areas	7
province	FS	2016	None of these	0
province	FS	2016	All of the land	5
province	FS	2016	Refused	0
province	FS	2016	Don't know/Haven't heard enough	7
province	GT	2016	Land should not be redistributed	1
province	GT	2016	Agricultural land	30
province	GT	2016	Urban occupied land	9
province	GT	2016	Urban vacant land	16
province	GT	2016	Land taken during forced removals	24
province	GT	2016	Communal land in rural areas	11
province	GT	2016	None of these	1
province	GT	2016	All of the land	1
province	GT	2016	Refused	0
province	GT	2016	Don't know/Haven't heard enough	7
province	KZN	2016	Land should not be redistributed	6
province	KZN	2016	Agricultural land	9
province	KZN	2016	Urban occupied land	7
province	KZN	2016	Urban vacant land	22
province	KZN	2016	Land taken during forced removals	25
province	KZN	2016	Communal land in rural areas	7
province	KZN	2016	None of these	3
province	KZN	2016	All of the land	2
province	KZN	2016	Refused	2
province	KZN	2016	Don't know/Haven't heard enough	18
province	LIM	2016	Land should not be redistributed	1
province	LIM	2016	Agricultural land	35
province	LIM	2016	Urban occupied land	6
province	LIM	2016	Urban vacant land	14
province	LIM	2016	Land taken during forced removals	34
province	LIM	2016	Communal land in rural areas	8
province	LIM	2016	None of these	0
province	LIM	2016	All of the land	1
province	LIM	2016	Refused	0
province	LIM	2016	Don't know/Haven't heard enough	2
province	MP	2016	Land should not be redistributed	27
province	MP	2016	Agricultural land	13
province	MP	2016	Urban occupied land	2
province	MP	2016	Urban vacant land	18
province	MP	2016	Land taken during forced removals	28
province	MP	2016	Communal land in rural areas	4
province	MP	2016	None of these	1
province	MP	2016	All of the land	1
province	MP	2016	Refused	0
province	MP	2016	Don't know/Haven't heard enough	7
province	NW	2016	Land should not be redistributed	0
province	NW	2016	Agricultural land	12
province	NW	2016	Urban occupied land	17
province	NW	2016	Urban vacant land	15
province	NW	2016	Land taken during forced removals	19
province	NW	2016	Communal land in rural areas	9
province	NW	2016	None of these	2
province	NW	2016	All of the land	2
province	NW	2016	Refused	0
province	NW	2016	Don't know/Haven't heard enough	24
province	NC	2016	Land should not be redistributed	13
province	NC	2016	Agricultural land	25
province	NC	2016	Urban occupied land	13
province	NC	2016	Urban vacant land	13
province	NC	2016	Land taken during forced removals	18
province	NC	2016	Communal land in rural areas	8
province	NC	2016	None of these	0
province	NC	2016	All of the land	0
province	NC	2016	Refused	0
province	NC	2016	Don't know/Haven't heard enough	13
province	WC	2016	Land should not be redistributed	1
province	WC	2016	Agricultural land	16
province	WC	2016	Urban occupied land	6
province	WC	2016	Urban vacant land	29
province	WC	2016	Land taken during forced removals	31
province	WC	2016	Communal land in rural areas	9
province	WC	2016	None of these	2
province	WC	2016	All of the land	1
province	WC	2016	Refused	1
province	WC	2016	Don't know/Haven't heard enough	6
country	ZA	2016	Agricultural land	192
country	ZA	2016	All of the land	22
country	ZA	2016	Communal land in rural areas	70
country	ZA	2016	Don't know/Haven't heard enough	85
country	ZA	2016	Land should not be redistributed	58
country	ZA	2016	Land taken during forced removals	250
country	ZA	2016	None of these	10
country	ZA	2016	Refused	3
country	ZA	2016	Urban occupied land	67
country	ZA	2016	Urban vacant land	143
\.


--
-- Name: land_to_prioritise_for_redistribution pk_land_to_prioritise_for_redistribution; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.land_to_prioritise_for_redistribution
    ADD CONSTRAINT pk_land_to_prioritise_for_redistribution PRIMARY KEY (geo_level, geo_code, geo_version, land_to_prioritise_for_redistribution);


--
-- PostgreSQL database dump complete
--

