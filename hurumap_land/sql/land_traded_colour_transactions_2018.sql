--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS public.land_traded_colour_transactions_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_traded_colour_transactions_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_traded_colour_transactions_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    breakdown_cc character varying(128) NOT NULL,
    month_cc character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_traded_colour_transactions_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_colour_transactions_2018 (geo_level, geo_code, geo_version, breakdown_cc, month_cc, total) FROM stdin;
country	ZA	2016	Government Agriculture	Dec2017	5
country	ZA	2016	Government Urban	Dec2017	1
country	ZA	2016	Private	Dec2017	52
country	ZA	2016	Other	Dec2017	6
country	ZA	2016	Government Agriculture	Jan2018	2
country	ZA	2016	Government Urban	Jan2018	1
country	ZA	2016	Private	Jan2018	40
country	ZA	2016	Other	Jan2018	4
country	ZA	2016	Government Agriculture	Feb2018	3
country	ZA	2016	Government Urban	Feb2018	2
country	ZA	2016	Private	Feb2018	51
country	ZA	2016	Other	Feb2018	11
country	ZA	2016	Government Agriculture	Mar2018	9
country	ZA	2016	Government Urban	Mar2018	2
country	ZA	2016	Private	Mar2018	79
country	ZA	2016	Other	Mar2018	17
country	ZA	2016	Government Agriculture	Apr2018	2
country	ZA	2016	Government Urban	Apr2018	\N
country	ZA	2016	Private	Apr2018	58
country	ZA	2016	Other	Apr2018	7
country	ZA	2016	Government Agriculture	May2018	3
country	ZA	2016	Government Urban	May2018	1
country	ZA	2016	Private	May2018	65
country	ZA	2016	Other	May2018	8
country	ZA	2016	Government Agriculture	Jun2018	2
country	ZA	2016	Government Urban	Jun2018	\N
country	ZA	2016	Private	Jun2018	48
country	ZA	2016	Other	Jun2018	7
country	ZA	2016	Government Agriculture	Jul2018	6
country	ZA	2016	Government Urban	Jul2018	4
country	ZA	2016	Private	Jul2018	59
country	ZA	2016	Other	Jul2018	3
country	ZA	2016	Government Agriculture	Aug2018	2
country	ZA	2016	Government Urban	Aug2018	1
country	ZA	2016	Private	Aug2018	51
country	ZA	2016	Other	Aug2018	11
country	ZA	2016	Government Agriculture	Sep2018	5
country	ZA	2016	Government Urban	Sep2018	\N
country	ZA	2016	Private	Sep2018	41
country	ZA	2016	Other	Sep2018	5
country	ZA	2016	Government Agriculture	Oct2018	17
country	ZA	2016	Government Urban	Oct2018	3
country	ZA	2016	Private	Oct2018	60
country	ZA	2016	Other	Oct2018	17
country	ZA	2016	Government Agriculture	Nov2018	1
country	ZA	2016	Government Urban	Nov2018	\N
country	ZA	2016	Private	Nov2018	38
country	ZA	2016	Other	Nov2018	17
province	EC	2016	Government Agriculture	Dec2017	1
province	EC	2016	Government Urban	Dec2017	\N
province	EC	2016	Private	Dec2017	4
province	EC	2016	Other	Dec2017	\N
province	EC	2016	Government Agriculture	Jan2018	\N
province	EC	2016	Government Urban	Jan2018	\N
province	EC	2016	Private	Jan2018	1
province	EC	2016	Other	Jan2018	\N
province	EC	2016	Government Agriculture	Feb2018	\N
province	EC	2016	Government Urban	Feb2018	1
province	EC	2016	Private	Feb2018	2
province	EC	2016	Other	Feb2018	1
province	EC	2016	Government Agriculture	Mar2018	\N
province	EC	2016	Government Urban	Mar2018	\N
province	EC	2016	Private	Mar2018	4
province	EC	2016	Other	Mar2018	3
province	EC	2016	Government Agriculture	Apr2018	\N
province	EC	2016	Government Urban	Apr2018	\N
province	EC	2016	Private	Apr2018	6
province	EC	2016	Other	Apr2018	\N
province	EC	2016	Government Agriculture	May2018	\N
province	EC	2016	Government Urban	May2018	\N
province	EC	2016	Private	May2018	3
province	EC	2016	Other	May2018	\N
province	EC	2016	Government Agriculture	Jun2018	\N
province	EC	2016	Government Urban	Jun2018	\N
province	EC	2016	Private	Jun2018	5
province	EC	2016	Other	Jun2018	\N
province	EC	2016	Government Agriculture	Jul2018	\N
province	EC	2016	Government Urban	Jul2018	\N
province	EC	2016	Private	Jul2018	13
province	EC	2016	Other	Jul2018	\N
province	EC	2016	Government Agriculture	Aug2018	\N
province	EC	2016	Government Urban	Aug2018	\N
province	EC	2016	Private	Aug2018	5
province	EC	2016	Other	Aug2018	1
province	EC	2016	Government Agriculture	Sep2018	\N
province	EC	2016	Government Urban	Sep2018	\N
province	EC	2016	Private	Sep2018	6
province	EC	2016	Other	Sep2018	\N
province	EC	2016	Government Agriculture	Oct2018	1
province	EC	2016	Government Urban	Oct2018	\N
province	EC	2016	Private	Oct2018	3
province	EC	2016	Other	Oct2018	\N
province	EC	2016	Government Agriculture	Nov2018	\N
province	EC	2016	Government Urban	Nov2018	\N
province	EC	2016	Private	Nov2018	5
province	EC	2016	Other	Nov2018	1
province	FS	2016	Government Agriculture	Dec2017	\N
province	FS	2016	Government Urban	Dec2017	\N
province	FS	2016	Private	Dec2017	4
province	FS	2016	Other	Dec2017	1
province	FS	2016	Government Agriculture	Jan2018	2
province	FS	2016	Government Urban	Jan2018	\N
province	FS	2016	Private	Jan2018	1
province	FS	2016	Other	Jan2018	\N
province	FS	2016	Government Agriculture	Feb2018	\N
province	FS	2016	Government Urban	Feb2018	\N
province	FS	2016	Private	Feb2018	7
province	FS	2016	Other	Feb2018	\N
province	FS	2016	Government Agriculture	Mar2018	1
province	FS	2016	Government Urban	Mar2018	\N
province	FS	2016	Private	Mar2018	10
province	FS	2016	Other	Mar2018	2
province	FS	2016	Government Agriculture	Apr2018	\N
province	FS	2016	Government Urban	Apr2018	\N
province	FS	2016	Private	Apr2018	4
province	FS	2016	Other	Apr2018	1
province	FS	2016	Government Agriculture	May2018	\N
province	FS	2016	Government Urban	May2018	\N
province	FS	2016	Private	May2018	10
province	FS	2016	Other	May2018	1
province	FS	2016	Government Agriculture	Jun2018	\N
province	FS	2016	Government Urban	Jun2018	\N
province	FS	2016	Private	Jun2018	6
province	FS	2016	Other	Jun2018	1
province	FS	2016	Government Agriculture	Jul2018	3
province	FS	2016	Government Urban	Jul2018	\N
province	FS	2016	Private	Jul2018	7
province	FS	2016	Other	Jul2018	\N
province	FS	2016	Government Agriculture	Aug2018	\N
province	FS	2016	Government Urban	Aug2018	\N
province	FS	2016	Private	Aug2018	3
province	FS	2016	Other	Aug2018	2
province	FS	2016	Government Agriculture	Sep2018	\N
province	FS	2016	Government Urban	Sep2018	\N
province	FS	2016	Private	Sep2018	4
province	FS	2016	Other	Sep2018	1
province	FS	2016	Government Agriculture	Oct2018	4
province	FS	2016	Government Urban	Oct2018	\N
province	FS	2016	Private	Oct2018	6
province	FS	2016	Other	Oct2018	1
province	FS	2016	Government Agriculture	Nov2018	\N
province	FS	2016	Government Urban	Nov2018	\N
province	FS	2016	Private	Nov2018	3
province	FS	2016	Other	Nov2018	1
province	GT	2016	Government Agriculture	Dec2017	1
province	GT	2016	Government Urban	Dec2017	\N
province	GT	2016	Private	Dec2017	6
province	GT	2016	Other	Dec2017	\N
province	GT	2016	Government Agriculture	Jan2018	\N
province	GT	2016	Government Urban	Jan2018	1
province	GT	2016	Private	Jan2018	3
province	GT	2016	Other	Jan2018	1
province	GT	2016	Government Agriculture	Feb2018	1
province	GT	2016	Government Urban	Feb2018	\N
province	GT	2016	Private	Feb2018	5
province	GT	2016	Other	Feb2018	\N
province	GT	2016	Government Agriculture	Mar2018	\N
province	GT	2016	Government Urban	Mar2018	\N
province	GT	2016	Private	Mar2018	10
province	GT	2016	Other	Mar2018	3
province	GT	2016	Government Agriculture	Apr2018	\N
province	GT	2016	Government Urban	Apr2018	\N
province	GT	2016	Private	Apr2018	9
province	GT	2016	Other	Apr2018	\N
province	GT	2016	Government Agriculture	May2018	\N
province	GT	2016	Government Urban	May2018	\N
province	GT	2016	Private	May2018	7
province	GT	2016	Other	May2018	3
province	GT	2016	Government Agriculture	Jun2018	\N
province	GT	2016	Government Urban	Jun2018	\N
province	GT	2016	Private	Jun2018	10
province	GT	2016	Other	Jun2018	2
province	GT	2016	Government Agriculture	Jul2018	\N
province	GT	2016	Government Urban	Jul2018	2
province	GT	2016	Private	Jul2018	8
province	GT	2016	Other	Jul2018	\N
province	GT	2016	Government Agriculture	Aug2018	1
province	GT	2016	Government Urban	Aug2018	\N
province	GT	2016	Private	Aug2018	5
province	GT	2016	Other	Aug2018	1
province	GT	2016	Government Agriculture	Sep2018	\N
province	GT	2016	Government Urban	Sep2018	\N
province	GT	2016	Private	Sep2018	7
province	GT	2016	Other	Sep2018	1
province	GT	2016	Government Agriculture	Oct2018	4
province	GT	2016	Government Urban	Oct2018	1
province	GT	2016	Private	Oct2018	13
province	GT	2016	Other	Oct2018	3
province	GT	2016	Government Agriculture	Nov2018	\N
province	GT	2016	Government Urban	Nov2018	\N
province	GT	2016	Private	Nov2018	6
province	GT	2016	Other	Nov2018	5
province	KZN	2016	Government Agriculture	Dec2017	1
province	KZN	2016	Government Urban	Dec2017	1
province	KZN	2016	Private	Dec2017	8
province	KZN	2016	Other	Dec2017	\N
province	KZN	2016	Government Agriculture	Jan2018	\N
province	KZN	2016	Government Urban	Jan2018	\N
province	KZN	2016	Private	Jan2018	6
province	KZN	2016	Other	Jan2018	\N
province	KZN	2016	Government Agriculture	Feb2018	1
province	KZN	2016	Government Urban	Feb2018	\N
province	KZN	2016	Private	Feb2018	4
province	KZN	2016	Other	Feb2018	3
province	KZN	2016	Government Agriculture	Mar2018	3
province	KZN	2016	Government Urban	Mar2018	\N
province	KZN	2016	Private	Mar2018	22
province	KZN	2016	Other	Mar2018	2
province	KZN	2016	Government Agriculture	Apr2018	\N
province	KZN	2016	Government Urban	Apr2018	\N
province	KZN	2016	Private	Apr2018	8
province	KZN	2016	Other	Apr2018	1
province	KZN	2016	Government Agriculture	May2018	\N
province	KZN	2016	Government Urban	May2018	\N
province	KZN	2016	Private	May2018	14
province	KZN	2016	Other	May2018	1
province	KZN	2016	Government Agriculture	Jun2018	\N
province	KZN	2016	Government Urban	Jun2018	\N
province	KZN	2016	Private	Jun2018	4
province	KZN	2016	Other	Jun2018	\N
province	KZN	2016	Government Agriculture	Jul2018	\N
province	KZN	2016	Government Urban	Jul2018	\N
province	KZN	2016	Private	Jul2018	10
province	KZN	2016	Other	Jul2018	\N
province	KZN	2016	Government Agriculture	Aug2018	\N
province	KZN	2016	Government Urban	Aug2018	\N
province	KZN	2016	Private	Aug2018	5
province	KZN	2016	Other	Aug2018	2
province	KZN	2016	Government Agriculture	Sep2018	\N
province	KZN	2016	Government Urban	Sep2018	\N
province	KZN	2016	Private	Sep2018	3
province	KZN	2016	Other	Sep2018	1
province	KZN	2016	Government Agriculture	Oct2018	\N
province	KZN	2016	Government Urban	Oct2018	1
province	KZN	2016	Private	Oct2018	11
province	KZN	2016	Other	Oct2018	1
province	KZN	2016	Government Agriculture	Nov2018	\N
province	KZN	2016	Government Urban	Nov2018	\N
province	KZN	2016	Private	Nov2018	9
province	KZN	2016	Other	Nov2018	2
province	LIM	2016	Government Agriculture	Dec2017	\N
province	LIM	2016	Government Urban	Dec2017	\N
province	LIM	2016	Private	Dec2017	7
province	LIM	2016	Other	Dec2017	1
province	LIM	2016	Government Agriculture	Jan2018	\N
province	LIM	2016	Government Urban	Jan2018	\N
province	LIM	2016	Private	Jan2018	6
province	LIM	2016	Other	Jan2018	1
province	LIM	2016	Government Agriculture	Feb2018	\N
province	LIM	2016	Government Urban	Feb2018	1
province	LIM	2016	Private	Feb2018	8
province	LIM	2016	Other	Feb2018	2
province	LIM	2016	Government Agriculture	Mar2018	\N
province	LIM	2016	Government Urban	Mar2018	1
province	LIM	2016	Private	Mar2018	10
province	LIM	2016	Other	Mar2018	1
province	LIM	2016	Government Agriculture	Apr2018	\N
province	LIM	2016	Government Urban	Apr2018	\N
province	LIM	2016	Private	Apr2018	7
province	LIM	2016	Other	Apr2018	1
province	LIM	2016	Government Agriculture	May2018	\N
province	LIM	2016	Government Urban	May2018	\N
province	LIM	2016	Private	May2018	15
province	LIM	2016	Other	May2018	\N
province	LIM	2016	Government Agriculture	Jun2018	\N
province	LIM	2016	Government Urban	Jun2018	\N
province	LIM	2016	Private	Jun2018	2
province	LIM	2016	Other	Jun2018	3
province	LIM	2016	Government Agriculture	Jul2018	\N
province	LIM	2016	Government Urban	Jul2018	1
province	LIM	2016	Private	Jul2018	8
province	LIM	2016	Other	Jul2018	\N
province	LIM	2016	Government Agriculture	Aug2018	\N
province	LIM	2016	Government Urban	Aug2018	\N
province	LIM	2016	Private	Aug2018	8
province	LIM	2016	Other	Aug2018	\N
province	LIM	2016	Government Agriculture	Sep2018	\N
province	LIM	2016	Government Urban	Sep2018	\N
province	LIM	2016	Private	Sep2018	3
province	LIM	2016	Other	Sep2018	\N
province	LIM	2016	Government Agriculture	Oct2018	\N
province	LIM	2016	Government Urban	Oct2018	\N
province	LIM	2016	Private	Oct2018	9
province	LIM	2016	Other	Oct2018	2
province	LIM	2016	Government Agriculture	Nov2018	\N
province	LIM	2016	Government Urban	Nov2018	\N
province	LIM	2016	Private	Nov2018	8
province	LIM	2016	Other	Nov2018	1
province	MP	2016	Government Agriculture	Dec2017	1
province	MP	2016	Government Urban	Dec2017	\N
province	MP	2016	Private	Dec2017	4
province	MP	2016	Other	Dec2017	1
province	MP	2016	Government Agriculture	Jan2018	\N
province	MP	2016	Government Urban	Jan2018	\N
province	MP	2016	Private	Jan2018	6
province	MP	2016	Other	Jan2018	2
province	MP	2016	Government Agriculture	Feb2018	1
province	MP	2016	Government Urban	Feb2018	\N
province	MP	2016	Private	Feb2018	9
province	MP	2016	Other	Feb2018	3
province	MP	2016	Government Agriculture	Mar2018	\N
province	MP	2016	Government Urban	Mar2018	\N
province	MP	2016	Private	Mar2018	9
province	MP	2016	Other	Mar2018	2
province	MP	2016	Government Agriculture	Apr2018	\N
province	MP	2016	Government Urban	Apr2018	\N
province	MP	2016	Private	Apr2018	7
province	MP	2016	Other	Apr2018	1
province	MP	2016	Government Agriculture	May2018	\N
province	MP	2016	Government Urban	May2018	\N
province	MP	2016	Private	May2018	6
province	MP	2016	Other	May2018	1
province	MP	2016	Government Agriculture	Jun2018	\N
province	MP	2016	Government Urban	Jun2018	\N
province	MP	2016	Private	Jun2018	5
province	MP	2016	Other	Jun2018	\N
province	MP	2016	Government Agriculture	Jul2018	2
province	MP	2016	Government Urban	Jul2018	1
province	MP	2016	Private	Jul2018	8
province	MP	2016	Other	Jul2018	1
province	MP	2016	Government Agriculture	Aug2018	\N
province	MP	2016	Government Urban	Aug2018	\N
province	MP	2016	Private	Aug2018	7
province	MP	2016	Other	Aug2018	2
province	MP	2016	Government Agriculture	Sep2018	3
province	MP	2016	Government Urban	Sep2018	\N
province	MP	2016	Private	Sep2018	7
province	MP	2016	Other	Sep2018	1
province	MP	2016	Government Agriculture	Oct2018	4
province	MP	2016	Government Urban	Oct2018	\N
province	MP	2016	Private	Oct2018	9
province	MP	2016	Other	Oct2018	5
province	MP	2016	Government Agriculture	Nov2018	\N
province	MP	2016	Government Urban	Nov2018	\N
province	MP	2016	Private	Nov2018	3
province	MP	2016	Other	Nov2018	5
province	NC	2016	Government Agriculture	Dec2017	\N
province	NC	2016	Government Urban	Dec2017	\N
province	NC	2016	Private	Dec2017	1
province	NC	2016	Other	Dec2017	2
province	NC	2016	Government Agriculture	Jan2018	\N
province	NC	2016	Government Urban	Jan2018	\N
province	NC	2016	Private	Jan2018	1
province	NC	2016	Other	Jan2018	\N
province	NC	2016	Government Agriculture	Feb2018	\N
province	NC	2016	Government Urban	Feb2018	\N
province	NC	2016	Private	Feb2018	1
province	NC	2016	Other	Feb2018	1
province	NC	2016	Government Agriculture	Mar2018	\N
province	NC	2016	Government Urban	Mar2018	1
province	NC	2016	Private	Mar2018	2
province	NC	2016	Other	Mar2018	3
province	NC	2016	Government Agriculture	Apr2018	\N
province	NC	2016	Government Urban	Apr2018	\N
province	NC	2016	Private	Apr2018	2
province	NC	2016	Other	Apr2018	1
province	NC	2016	Government Agriculture	May2018	\N
province	NC	2016	Government Urban	May2018	\N
province	NC	2016	Private	May2018	\N
province	NC	2016	Other	May2018	\N
province	NC	2016	Government Agriculture	Jun2018	\N
province	NC	2016	Government Urban	Jun2018	\N
province	NC	2016	Private	Jun2018	4
province	NC	2016	Other	Jun2018	\N
province	NC	2016	Government Agriculture	Jul2018	\N
province	NC	2016	Government Urban	Jul2018	\N
province	NC	2016	Private	Jul2018	\N
province	NC	2016	Other	Jul2018	\N
province	NC	2016	Government Agriculture	Aug2018	\N
province	NC	2016	Government Urban	Aug2018	\N
province	NC	2016	Private	Aug2018	3
province	NC	2016	Other	Aug2018	1
province	NC	2016	Government Agriculture	Sep2018	\N
province	NC	2016	Government Urban	Sep2018	\N
province	NC	2016	Private	Sep2018	1
province	NC	2016	Other	Sep2018	\N
province	NC	2016	Government Agriculture	Oct2018	3
province	NC	2016	Government Urban	Oct2018	\N
province	NC	2016	Private	Oct2018	\N
province	NC	2016	Other	Oct2018	\N
province	NC	2016	Government Agriculture	Nov2018	\N
province	NC	2016	Government Urban	Nov2018	\N
province	NC	2016	Private	Nov2018	1
province	NC	2016	Other	Nov2018	\N
province	NW	2016	Government Agriculture	Dec2017	1
province	NW	2016	Government Urban	Dec2017	\N
province	NW	2016	Private	Dec2017	16
province	NW	2016	Other	Dec2017	\N
province	NW	2016	Government Agriculture	Jan2018	\N
province	NW	2016	Government Urban	Jan2018	\N
province	NW	2016	Private	Jan2018	13
province	NW	2016	Other	Jan2018	\N
province	NW	2016	Government Agriculture	Feb2018	\N
province	NW	2016	Government Urban	Feb2018	\N
province	NW	2016	Private	Feb2018	10
province	NW	2016	Other	Feb2018	\N
province	NW	2016	Government Agriculture	Mar2018	5
province	NW	2016	Government Urban	Mar2018	\N
province	NW	2016	Private	Mar2018	9
province	NW	2016	Other	Mar2018	\N
province	NW	2016	Government Agriculture	Apr2018	\N
province	NW	2016	Government Urban	Apr2018	\N
province	NW	2016	Private	Apr2018	11
province	NW	2016	Other	Apr2018	2
province	NW	2016	Government Agriculture	May2018	2
province	NW	2016	Government Urban	May2018	1
province	NW	2016	Private	May2018	8
province	NW	2016	Other	May2018	2
province	NW	2016	Government Agriculture	Jun2018	2
province	NW	2016	Government Urban	Jun2018	\N
province	NW	2016	Private	Jun2018	9
province	NW	2016	Other	Jun2018	1
province	NW	2016	Government Agriculture	Jul2018	1
province	NW	2016	Government Urban	Jul2018	\N
province	NW	2016	Private	Jul2018	5
province	NW	2016	Other	Jul2018	2
province	NW	2016	Government Agriculture	Aug2018	1
province	NW	2016	Government Urban	Aug2018	1
province	NW	2016	Private	Aug2018	11
province	NW	2016	Other	Aug2018	1
province	NW	2016	Government Agriculture	Sep2018	1
province	NW	2016	Government Urban	Sep2018	\N
province	NW	2016	Private	Sep2018	6
province	NW	2016	Other	Sep2018	\N
province	NW	2016	Government Agriculture	Oct2018	1
province	NW	2016	Government Urban	Oct2018	1
province	NW	2016	Private	Oct2018	6
province	NW	2016	Other	Oct2018	4
province	NW	2016	Government Agriculture	Nov2018	\N
province	NW	2016	Government Urban	Nov2018	\N
province	NW	2016	Private	Nov2018	3
province	NW	2016	Other	Nov2018	1
province	WC	2016	Government Agriculture	Dec2017	\N
province	WC	2016	Government Urban	Dec2017	\N
province	WC	2016	Private	Dec2017	2
province	WC	2016	Other	Dec2017	1
province	WC	2016	Government Agriculture	Jan2018	\N
province	WC	2016	Government Urban	Jan2018	\N
province	WC	2016	Private	Jan2018	3
province	WC	2016	Other	Jan2018	\N
province	WC	2016	Government Agriculture	Feb2018	\N
province	WC	2016	Government Urban	Feb2018	\N
province	WC	2016	Private	Feb2018	5
province	WC	2016	Other	Feb2018	1
province	WC	2016	Government Agriculture	Mar2018	\N
province	WC	2016	Government Urban	Mar2018	\N
province	WC	2016	Private	Mar2018	3
province	WC	2016	Other	Mar2018	1
province	WC	2016	Government Agriculture	Apr2018	2
province	WC	2016	Government Urban	Apr2018	\N
province	WC	2016	Private	Apr2018	4
province	WC	2016	Other	Apr2018	\N
province	WC	2016	Government Agriculture	May2018	1
province	WC	2016	Government Urban	May2018	\N
province	WC	2016	Private	May2018	2
province	WC	2016	Other	May2018	\N
province	WC	2016	Government Agriculture	Jun2018	\N
province	WC	2016	Government Urban	Jun2018	\N
province	WC	2016	Private	Jun2018	3
province	WC	2016	Other	Jun2018	\N
province	WC	2016	Government Agriculture	Jul2018	\N
province	WC	2016	Government Urban	Jul2018	\N
province	WC	2016	Private	Jul2018	\N
province	WC	2016	Other	Jul2018	\N
province	WC	2016	Government Agriculture	Aug2018	\N
province	WC	2016	Government Urban	Aug2018	\N
province	WC	2016	Private	Aug2018	4
province	WC	2016	Other	Aug2018	1
province	WC	2016	Government Agriculture	Sep2018	1
province	WC	2016	Government Urban	Sep2018	\N
province	WC	2016	Private	Sep2018	4
province	WC	2016	Other	Sep2018	1
province	WC	2016	Government Agriculture	Oct2018	\N
province	WC	2016	Government Urban	Oct2018	\N
province	WC	2016	Private	Oct2018	3
province	WC	2016	Other	Oct2018	1
province	WC	2016	Government Agriculture	Nov2018	1
province	WC	2016	Government Urban	Nov2018	\N
province	WC	2016	Private	Nov2018	\N
province	WC	2016	Other	Nov2018	1
\.


--
-- PostgreSQL database dump complete
--

