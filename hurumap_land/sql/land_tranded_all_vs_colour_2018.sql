--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

DROP TABLE IF EXISTS public.land_traded_all_vs_colour_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_traded_all_vs_colour_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_traded_all_vs_colour_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    transaction_group character varying(128) NOT NULL,
    month character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: land_traded_all_vs_colour_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_all_vs_colour_2018 (geo_level, geo_code, geo_version, transaction_group, month, total) FROM stdin;
country	ZA	2016	all	Dec2017	385
country	ZA	2016	colour	Dec2017	64
country	ZA	2016	all	Jan2018	266
country	ZA	2016	colour	Jan2018	47
country	ZA	2016	all	Feb2018	370
country	ZA	2016	colour	Feb2018	67
country	ZA	2016	all	Mar2018	417
country	ZA	2016	colour	Mar2018	107
country	ZA	2016	all	Apr2018	316
country	ZA	2016	colour	Apr2018	67
country	ZA	2016	all	May2018	384
country	ZA	2016	colour	May2018	77
country	ZA	2016	all	Jun2018	344
country	ZA	2016	colour	Jun2018	57
country	ZA	2016	all	Jul2018	281
country	ZA	2016	colour	Jul2018	72
country	ZA	2016	all	Aug2018	304
country	ZA	2016	colour	Aug2018	65
country	ZA	2016	all	Sep2018	292
country	ZA	2016	colour	Sep2018	51
country	ZA	2016	all	Oct2018	460
country	ZA	2016	colour	Oct2018	97
country	ZA	2016	all	Nov2018	323
country	ZA	2016	colour	Nov2018	56
province	EC	2016	all	Dec2017	19
province	EC	2016	colour	Dec2017	5
province	EC	2016	all	Jan2018	19
province	EC	2016	colour	Jan2018	1
province	EC	2016	all	Feb2018	24
province	EC	2016	colour	Feb2018	4
province	EC	2016	all	Mar2018	32
province	EC	2016	colour	Mar2018	7
province	EC	2016	all	Apr2018	32
province	EC	2016	colour	Apr2018	6
province	EC	2016	all	May2018	19
province	EC	2016	colour	May2018	3
province	EC	2016	all	Jun2018	32
province	EC	2016	colour	Jun2018	5
province	EC	2016	all	Jul2018	42
province	EC	2016	colour	Jul2018	13
province	EC	2016	all	Aug2018	35
province	EC	2016	colour	Aug2018	6
province	EC	2016	all	Sep2018	34
province	EC	2016	colour	Sep2018	6
province	EC	2016	all	Oct2018	40
province	EC	2016	colour	Oct2018	4
province	EC	2016	all	Nov2018	30
province	EC	2016	colour	Nov2018	6
province	FS	2016	all	Dec2017	52
province	FS	2016	colour	Dec2017	5
province	FS	2016	all	Jan2018	44
province	FS	2016	colour	Jan2018	3
province	FS	2016	all	Feb2018	70
province	FS	2016	colour	Feb2018	7
province	FS	2016	all	Mar2018	75
province	FS	2016	colour	Mar2018	13
province	FS	2016	all	Apr2018	40
province	FS	2016	colour	Apr2018	5
province	FS	2016	all	May2018	65
province	FS	2016	colour	May2018	11
province	FS	2016	all	Jun2018	36
province	FS	2016	colour	Jun2018	7
province	FS	2016	all	Jul2018	45
province	FS	2016	colour	Jul2018	10
province	FS	2016	all	Aug2018	42
province	FS	2016	colour	Aug2018	5
province	FS	2016	all	Sep2018	51
province	FS	2016	colour	Sep2018	5
province	FS	2016	all	Oct2018	60
province	FS	2016	colour	Oct2018	11
province	FS	2016	all	Nov2018	50
province	FS	2016	colour	Nov2018	4
province	GT	2016	all	Dec2017	36
province	GT	2016	colour	Dec2017	7
province	GT	2016	all	Jan2018	28
province	GT	2016	colour	Jan2018	5
province	GT	2016	all	Feb2018	51
province	GT	2016	colour	Feb2018	6
province	GT	2016	all	Mar2018	43
province	GT	2016	colour	Mar2018	13
province	GT	2016	all	Apr2018	38
province	GT	2016	colour	Apr2018	9
province	GT	2016	all	May2018	38
province	GT	2016	colour	May2018	10
province	GT	2016	all	Jun2018	37
province	GT	2016	colour	Jun2018	12
province	GT	2016	all	Jul2018	32
province	GT	2016	colour	Jul2018	10
province	GT	2016	all	Aug2018	32
province	GT	2016	colour	Aug2018	7
province	GT	2016	all	Sep2018	32
province	GT	2016	colour	Sep2018	8
province	GT	2016	all	Oct2018	67
province	GT	2016	colour	Oct2018	21
province	GT	2016	all	Nov2018	38
province	GT	2016	colour	Nov2018	11
province	KZN	2016	all	Dec2017	35
province	KZN	2016	colour	Dec2017	10
province	KZN	2016	all	Jan2018	19
province	KZN	2016	colour	Jan2018	6
province	KZN	2016	all	Feb2018	12
province	KZN	2016	colour	Feb2018	8
province	KZN	2016	all	Mar2018	50
province	KZN	2016	colour	Mar2018	27
province	KZN	2016	all	Apr2018	30
province	KZN	2016	colour	Apr2018	9
province	KZN	2016	all	May2018	37
province	KZN	2016	colour	May2018	15
province	KZN	2016	all	Jun2018	32
province	KZN	2016	colour	Jun2018	4
province	KZN	2016	all	Jul2018	25
province	KZN	2016	colour	Jul2018	10
province	KZN	2016	all	Aug2018	24
province	KZN	2016	colour	Aug2018	7
province	KZN	2016	all	Sep2018	33
province	KZN	2016	colour	Sep2018	4
province	KZN	2016	all	Oct2018	40
province	KZN	2016	colour	Oct2018	13
province	KZN	2016	all	Nov2018	19
province	KZN	2016	colour	Nov2018	11
province	LIM	2016	all	Dec2017	52
province	LIM	2016	colour	Dec2017	8
province	LIM	2016	all	Jan2018	28
province	LIM	2016	colour	Jan2018	7
province	LIM	2016	all	Feb2018	44
province	LIM	2016	colour	Feb2018	11
province	LIM	2016	all	Mar2018	45
province	LIM	2016	colour	Mar2018	12
province	LIM	2016	all	Apr2018	36
province	LIM	2016	colour	Apr2018	8
province	LIM	2016	all	May2018	49
province	LIM	2016	colour	May2018	15
province	LIM	2016	all	Jun2018	36
province	LIM	2016	colour	Jun2018	5
province	LIM	2016	all	Jul2018	35
province	LIM	2016	colour	Jul2018	9
province	LIM	2016	all	Aug2018	38
province	LIM	2016	colour	Aug2018	8
province	LIM	2016	all	Sep2018	24
province	LIM	2016	colour	Sep2018	3
province	LIM	2016	all	Oct2018	66
province	LIM	2016	colour	Oct2018	11
province	LIM	2016	all	Nov2018	39
province	LIM	2016	colour	Nov2018	9
province	MP	2016	all	Dec2017	36
province	MP	2016	colour	Dec2017	6
province	MP	2016	all	Jan2018	27
province	MP	2016	colour	Jan2018	8
province	MP	2016	all	Feb2018	58
province	MP	2016	colour	Feb2018	13
province	MP	2016	all	Mar2018	30
province	MP	2016	colour	Mar2018	11
province	MP	2016	all	Apr2018	27
province	MP	2016	colour	Apr2018	8
province	MP	2016	all	May2018	48
province	MP	2016	colour	May2018	7
province	MP	2016	all	Jun2018	30
province	MP	2016	colour	Jun2018	5
province	MP	2016	all	Jul2018	28
province	MP	2016	colour	Jul2018	12
province	MP	2016	all	Aug2018	30
province	MP	2016	colour	Aug2018	9
province	MP	2016	all	Sep2018	24
province	MP	2016	colour	Sep2018	11
province	MP	2016	all	Oct2018	50
province	MP	2016	colour	Oct2018	18
province	MP	2016	all	Nov2018	37
province	MP	2016	colour	Nov2018	8
province	NC	2016	all	Dec2017	38
province	NC	2016	colour	Dec2017	3
province	NC	2016	all	Jan2018	14
province	NC	2016	colour	Jan2018	1
province	NC	2016	all	Feb2018	24
province	NC	2016	colour	Feb2018	2
province	NC	2016	all	Mar2018	26
province	NC	2016	colour	Mar2018	6
province	NC	2016	all	Apr2018	14
province	NC	2016	colour	Apr2018	3
province	NC	2016	all	May2018	24
province	NC	2016	colour	May2018	\N
province	NC	2016	all	Jun2018	31
province	NC	2016	colour	Jun2018	4
province	NC	2016	all	Jul2018	12
province	NC	2016	colour	Jul2018	\N
province	NC	2016	all	Aug2018	26
province	NC	2016	colour	Aug2018	4
province	NC	2016	all	Sep2018	22
province	NC	2016	colour	Sep2018	1
province	NC	2016	all	Oct2018	29
province	NC	2016	colour	Oct2018	3
province	NC	2016	all	Nov2018	18
province	NC	2016	colour	Nov2018	1
province	NW	2016	all	Dec2017	64
province	NW	2016	colour	Dec2017	17
province	NW	2016	all	Jan2018	49
province	NW	2016	colour	Jan2018	13
province	NW	2016	all	Feb2018	49
province	NW	2016	colour	Feb2018	10
province	NW	2016	all	Mar2018	62
province	NW	2016	colour	Mar2018	14
province	NW	2016	all	Apr2018	46
province	NW	2016	colour	Apr2018	13
province	NW	2016	all	May2018	52
province	NW	2016	colour	May2018	13
province	NW	2016	all	Jun2018	67
province	NW	2016	colour	Jun2018	12
province	NW	2016	all	Jul2018	36
province	NW	2016	colour	Jul2018	8
province	NW	2016	all	Aug2018	41
province	NW	2016	colour	Aug2018	14
province	NW	2016	all	Sep2018	31
province	NW	2016	colour	Sep2018	7
province	NW	2016	all	Oct2018	52
province	NW	2016	colour	Oct2018	12
province	NW	2016	all	Nov2018	37
province	NW	2016	colour	Nov2018	4
province	WC	2016	all	Dec2017	53
province	WC	2016	colour	Dec2017	3
province	WC	2016	all	Jan2018	38
province	WC	2016	colour	Jan2018	3
province	WC	2016	all	Feb2018	38
province	WC	2016	colour	Feb2018	6
province	WC	2016	all	Mar2018	54
province	WC	2016	colour	Mar2018	4
province	WC	2016	all	Apr2018	53
province	WC	2016	colour	Apr2018	6
province	WC	2016	all	May2018	52
province	WC	2016	colour	May2018	3
province	WC	2016	all	Jun2018	43
province	WC	2016	colour	Jun2018	3
province	WC	2016	all	Jul2018	26
province	WC	2016	colour	Jul2018	\N
province	WC	2016	all	Aug2018	36
province	WC	2016	colour	Aug2018	5
province	WC	2016	all	Sep2018	41
province	WC	2016	colour	Sep2018	6
province	WC	2016	all	Oct2018	56
province	WC	2016	colour	Oct2018	4
province	WC	2016	all	Nov2018	55
province	WC	2016	colour	Nov2018	2
\.


--
-- PostgreSQL database dump complete
--

