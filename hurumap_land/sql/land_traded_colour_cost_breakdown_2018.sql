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

DROP TABLE IF EXISTS public.land_traded_colour_cost_breakdown_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_traded_colour_cost_breakdown_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_traded_colour_cost_breakdown_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    breakdown_cc character varying(128) NOT NULL,
    month_cc character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_traded_colour_cost_breakdown_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_colour_cost_breakdown_2018 (geo_level, geo_code, geo_version, breakdown_cc, month_cc, total) FROM stdin;
country	ZA	2016	Government Agriculture	Dec2017	85
country	ZA	2016	Government Urban	Dec2017	17
country	ZA	2016	Private	Dec2017	338
country	ZA	2016	Other	Dec2017	23
country	ZA	2016	Government Agriculture	Jan2018	23
country	ZA	2016	Government Urban	Jan2018	3
country	ZA	2016	Private	Jan2018	160
country	ZA	2016	Other	Jan2018	22
country	ZA	2016	Government Agriculture	Feb2018	23
country	ZA	2016	Government Urban	Feb2018	70
country	ZA	2016	Private	Feb2018	151
country	ZA	2016	Other	Feb2018	166
country	ZA	2016	Government Agriculture	Mar2018	120
country	ZA	2016	Government Urban	Mar2018	56
country	ZA	2016	Private	Mar2018	293
country	ZA	2016	Other	Mar2018	279
country	ZA	2016	Government Agriculture	Apr2018	131
country	ZA	2016	Government Urban	Apr2018	\N
country	ZA	2016	Private	Apr2018	286
country	ZA	2016	Other	Apr2018	96
country	ZA	2016	Government Agriculture	May2018	16
country	ZA	2016	Government Urban	May2018	1
country	ZA	2016	Private	May2018	232
country	ZA	2016	Other	May2018	41
country	ZA	2016	Government Agriculture	Jun2018	16
country	ZA	2016	Government Urban	Jun2018	\N
country	ZA	2016	Private	Jun2018	193
country	ZA	2016	Other	Jun2018	609
country	ZA	2016	Government Agriculture	Jul2018	19
country	ZA	2016	Government Urban	Jul2018	32
country	ZA	2016	Private	Jul2018	191
country	ZA	2016	Other	Jul2018	10
country	ZA	2016	Government Agriculture	Aug2018	6
country	ZA	2016	Government Urban	Aug2018	53
country	ZA	2016	Private	Aug2018	412
country	ZA	2016	Other	Aug2018	111
country	ZA	2016	Government Agriculture	Sep2018	33
country	ZA	2016	Government Urban	Sep2018	\N
country	ZA	2016	Private	Sep2018	210
country	ZA	2016	Other	Sep2018	64
country	ZA	2016	Government Agriculture	Oct2018	88
country	ZA	2016	Government Urban	Oct2018	28
country	ZA	2016	Private	Oct2018	209
country	ZA	2016	Other	Oct2018	256
country	ZA	2016	Government Agriculture	Nov2018	5
country	ZA	2016	Government Urban	Nov2018	\N
country	ZA	2016	Private	Nov2018	154
country	ZA	2016	Other	Nov2018	129
province	EC	2016	Government Agriculture	Dec2017	5
province	EC	2016	Government Urban	Dec2017	\N
province	EC	2016	Private	Dec2017	17
province	EC	2016	Other	Dec2017	\N
province	EC	2016	Government Agriculture	Jan2018	\N
province	EC	2016	Government Urban	Jan2018	\N
province	EC	2016	Private	Jan2018	\N
province	EC	2016	Other	Jan2018	\N
province	EC	2016	Government Agriculture	Feb2018	\N
province	EC	2016	Government Urban	Feb2018	70
province	EC	2016	Private	Feb2018	2
province	EC	2016	Other	Feb2018	8
province	EC	2016	Government Agriculture	Mar2018	\N
province	EC	2016	Government Urban	Mar2018	\N
province	EC	2016	Private	Mar2018	12
province	EC	2016	Other	Mar2018	26
province	EC	2016	Government Agriculture	Apr2018	\N
province	EC	2016	Government Urban	Apr2018	\N
province	EC	2016	Private	Apr2018	10
province	EC	2016	Other	Apr2018	\N
province	EC	2016	Government Agriculture	May2018	\N
province	EC	2016	Government Urban	May2018	\N
province	EC	2016	Private	May2018	11
province	EC	2016	Other	May2018	\N
province	EC	2016	Government Agriculture	Jun2018	\N
province	EC	2016	Government Urban	Jun2018	\N
province	EC	2016	Private	Jun2018	10
province	EC	2016	Other	Jun2018	\N
province	EC	2016	Government Agriculture	Jul2018	\N
province	EC	2016	Government Urban	Jul2018	\N
province	EC	2016	Private	Jul2018	38
province	EC	2016	Other	Jul2018	\N
province	EC	2016	Government Agriculture	Aug2018	\N
province	EC	2016	Government Urban	Aug2018	\N
province	EC	2016	Private	Aug2018	15
province	EC	2016	Other	Aug2018	6
province	EC	2016	Government Agriculture	Sep2018	\N
province	EC	2016	Government Urban	Sep2018	\N
province	EC	2016	Private	Sep2018	16
province	EC	2016	Other	Sep2018	\N
province	EC	2016	Government Agriculture	Oct2018	10
province	EC	2016	Government Urban	Oct2018	\N
province	EC	2016	Private	Oct2018	3
province	EC	2016	Other	Oct2018	\N
province	EC	2016	Government Agriculture	Nov2018	\N
province	EC	2016	Government Urban	Nov2018	\N
province	EC	2016	Private	Nov2018	12
province	EC	2016	Other	Nov2018	\N
province	FS	2016	Government Agriculture	Dec2017	\N
province	FS	2016	Government Urban	Dec2017	\N
province	FS	2016	Private	Dec2017	18
province	FS	2016	Other	Dec2017	2
province	FS	2016	Government Agriculture	Jan2018	23
province	FS	2016	Government Urban	Jan2018	\N
province	FS	2016	Private	Jan2018	4
province	FS	2016	Other	Jan2018	\N
province	FS	2016	Government Agriculture	Feb2018	\N
province	FS	2016	Government Urban	Feb2018	\N
province	FS	2016	Private	Feb2018	37
province	FS	2016	Other	Feb2018	\N
province	FS	2016	Government Agriculture	Mar2018	5
province	FS	2016	Government Urban	Mar2018	\N
province	FS	2016	Private	Mar2018	23
province	FS	2016	Other	Mar2018	1
province	FS	2016	Government Agriculture	Apr2018	\N
province	FS	2016	Government Urban	Apr2018	\N
province	FS	2016	Private	Apr2018	12
province	FS	2016	Other	Apr2018	9
province	FS	2016	Government Agriculture	May2018	\N
province	FS	2016	Government Urban	May2018	\N
province	FS	2016	Private	May2018	31
province	FS	2016	Other	May2018	2
province	FS	2016	Government Agriculture	Jun2018	\N
province	FS	2016	Government Urban	Jun2018	\N
province	FS	2016	Private	Jun2018	22
province	FS	2016	Other	Jun2018	150
province	FS	2016	Government Agriculture	Jul2018	4
province	FS	2016	Government Urban	Jul2018	\N
province	FS	2016	Private	Jul2018	11
province	FS	2016	Other	Jul2018	\N
province	FS	2016	Government Agriculture	Aug2018	\N
province	FS	2016	Government Urban	Aug2018	\N
province	FS	2016	Private	Aug2018	8
province	FS	2016	Other	Aug2018	9
province	FS	2016	Government Agriculture	Sep2018	\N
province	FS	2016	Government Urban	Sep2018	\N
province	FS	2016	Private	Sep2018	13
province	FS	2016	Other	Sep2018	46
province	FS	2016	Government Agriculture	Oct2018	18
province	FS	2016	Government Urban	Oct2018	\N
province	FS	2016	Private	Oct2018	7
province	FS	2016	Other	Oct2018	46
province	FS	2016	Government Agriculture	Nov2018	\N
province	FS	2016	Government Urban	Nov2018	\N
province	FS	2016	Private	Nov2018	1
province	FS	2016	Other	Nov2018	5
province	GT	2016	Government Agriculture	Dec2017	22
province	GT	2016	Government Urban	Dec2017	\N
province	GT	2016	Private	Dec2017	13
province	GT	2016	Other	Dec2017	\N
province	GT	2016	Government Agriculture	Jan2018	\N
province	GT	2016	Government Urban	Jan2018	3
province	GT	2016	Private	Jan2018	4
province	GT	2016	Other	Jan2018	2
province	GT	2016	Government Agriculture	Feb2018	2
province	GT	2016	Government Urban	Feb2018	\N
province	GT	2016	Private	Feb2018	9
province	GT	2016	Other	Feb2018	\N
province	GT	2016	Government Agriculture	Mar2018	\N
province	GT	2016	Government Urban	Mar2018	\N
province	GT	2016	Private	Mar2018	13
province	GT	2016	Other	Mar2018	150
province	GT	2016	Government Agriculture	Apr2018	\N
province	GT	2016	Government Urban	Apr2018	\N
province	GT	2016	Private	Apr2018	16
province	GT	2016	Other	Apr2018	\N
province	GT	2016	Government Agriculture	May2018	\N
province	GT	2016	Government Urban	May2018	\N
province	GT	2016	Private	May2018	7
province	GT	2016	Other	May2018	28
province	GT	2016	Government Agriculture	Jun2018	\N
province	GT	2016	Government Urban	Jun2018	\N
province	GT	2016	Private	Jun2018	39
province	GT	2016	Other	Jun2018	6
province	GT	2016	Government Agriculture	Jul2018	\N
province	GT	2016	Government Urban	Jul2018	19
province	GT	2016	Private	Jul2018	18
province	GT	2016	Other	Jul2018	\N
province	GT	2016	Government Agriculture	Aug2018	1
province	GT	2016	Government Urban	Aug2018	\N
province	GT	2016	Private	Aug2018	40
province	GT	2016	Other	Aug2018	\N
province	GT	2016	Government Agriculture	Sep2018	\N
province	GT	2016	Government Urban	Sep2018	\N
province	GT	2016	Private	Sep2018	75
province	GT	2016	Other	Sep2018	1
province	GT	2016	Government Agriculture	Oct2018	10
province	GT	2016	Government Urban	Oct2018	24
province	GT	2016	Private	Oct2018	15
province	GT	2016	Other	Oct2018	76
province	GT	2016	Government Agriculture	Nov2018	\N
province	GT	2016	Government Urban	Nov2018	\N
province	GT	2016	Private	Nov2018	17
province	GT	2016	Other	Nov2018	8
province	KZN	2016	Government Agriculture	Dec2017	4
province	KZN	2016	Government Urban	Dec2017	17
province	KZN	2016	Private	Dec2017	130
province	KZN	2016	Other	Dec2017	\N
province	KZN	2016	Government Agriculture	Jan2018	\N
province	KZN	2016	Government Urban	Jan2018	\N
province	KZN	2016	Private	Jan2018	21
province	KZN	2016	Other	Jan2018	\N
province	KZN	2016	Government Agriculture	Feb2018	14
province	KZN	2016	Government Urban	Feb2018	\N
province	KZN	2016	Private	Feb2018	5
province	KZN	2016	Other	Feb2018	8
province	KZN	2016	Government Agriculture	Mar2018	49
province	KZN	2016	Government Urban	Mar2018	\N
province	KZN	2016	Private	Mar2018	76
province	KZN	2016	Other	Mar2018	4
province	KZN	2016	Government Agriculture	Apr2018	\N
province	KZN	2016	Government Urban	Apr2018	\N
province	KZN	2016	Private	Apr2018	43
province	KZN	2016	Other	Apr2018	4
province	KZN	2016	Government Agriculture	May2018	\N
province	KZN	2016	Government Urban	May2018	\N
province	KZN	2016	Private	May2018	65
province	KZN	2016	Other	May2018	3
province	KZN	2016	Government Agriculture	Jun2018	\N
province	KZN	2016	Government Urban	Jun2018	\N
province	KZN	2016	Private	Jun2018	34
province	KZN	2016	Other	Jun2018	\N
province	KZN	2016	Government Agriculture	Jul2018	\N
province	KZN	2016	Government Urban	Jul2018	\N
province	KZN	2016	Private	Jul2018	67
province	KZN	2016	Other	Jul2018	\N
province	MP	2016	Other	Nov2018	52
province	KZN	2016	Government Agriculture	Aug2018	\N
province	KZN	2016	Government Urban	Aug2018	\N
province	KZN	2016	Private	Aug2018	140
province	KZN	2016	Other	Aug2018	38
province	KZN	2016	Government Agriculture	Sep2018	\N
province	KZN	2016	Government Urban	Sep2018	\N
province	KZN	2016	Private	Sep2018	14
province	KZN	2016	Other	Sep2018	11
province	KZN	2016	Government Agriculture	Oct2018	\N
province	KZN	2016	Government Urban	Oct2018	1
province	KZN	2016	Private	Oct2018	66
province	KZN	2016	Other	Oct2018	1
province	KZN	2016	Government Agriculture	Nov2018	\N
province	KZN	2016	Government Urban	Nov2018	\N
province	KZN	2016	Private	Nov2018	44
province	KZN	2016	Other	Nov2018	6
province	LIM	2016	Government Agriculture	Dec2017	\N
province	LIM	2016	Government Urban	Dec2017	\N
province	LIM	2016	Private	Dec2017	23
province	LIM	2016	Other	Dec2017	\N
province	LIM	2016	Government Agriculture	Jan2018	\N
province	LIM	2016	Government Urban	Jan2018	\N
province	LIM	2016	Private	Jan2018	21
province	LIM	2016	Other	Jan2018	3
province	LIM	2016	Government Agriculture	Feb2018	\N
province	LIM	2016	Government Urban	Feb2018	\N
province	LIM	2016	Private	Feb2018	28
province	LIM	2016	Other	Feb2018	6
province	LIM	2016	Government Agriculture	Mar2018	\N
province	LIM	2016	Government Urban	Mar2018	6
province	LIM	2016	Private	Mar2018	15
province	LIM	2016	Other	Mar2018	3
province	LIM	2016	Government Agriculture	Apr2018	\N
province	LIM	2016	Government Urban	Apr2018	\N
province	LIM	2016	Private	Apr2018	20
province	LIM	2016	Other	Apr2018	14
province	LIM	2016	Government Agriculture	May2018	\N
province	LIM	2016	Government Urban	May2018	\N
province	LIM	2016	Private	May2018	58
province	LIM	2016	Other	May2018	\N
province	LIM	2016	Government Agriculture	Jun2018	\N
province	LIM	2016	Government Urban	Jun2018	\N
province	LIM	2016	Private	Jun2018	15
province	LIM	2016	Other	Jun2018	452
province	LIM	2016	Government Agriculture	Jul2018	\N
province	LIM	2016	Government Urban	Jul2018	3
province	LIM	2016	Private	Jul2018	24
province	LIM	2016	Other	Jul2018	\N
province	LIM	2016	Government Agriculture	Aug2018	\N
province	LIM	2016	Government Urban	Aug2018	\N
province	LIM	2016	Private	Aug2018	116
province	LIM	2016	Other	Aug2018	\N
province	LIM	2016	Government Agriculture	Sep2018	\N
province	LIM	2016	Government Urban	Sep2018	\N
province	LIM	2016	Private	Sep2018	8
province	LIM	2016	Other	Sep2018	\N
province	LIM	2016	Government Agriculture	Oct2018	\N
province	LIM	2016	Government Urban	Oct2018	\N
province	LIM	2016	Private	Oct2018	39
province	LIM	2016	Other	Oct2018	3
province	LIM	2016	Government Agriculture	Nov2018	\N
province	LIM	2016	Government Urban	Nov2018	\N
province	LIM	2016	Private	Nov2018	63
province	LIM	2016	Other	Nov2018	4
province	MP	2016	Government Agriculture	Dec2017	8
province	MP	2016	Government Urban	Dec2017	\N
province	MP	2016	Private	Dec2017	19
province	MP	2016	Other	Dec2017	7
province	MP	2016	Government Agriculture	Jan2018	\N
province	MP	2016	Government Urban	Jan2018	\N
province	MP	2016	Private	Jan2018	20
province	MP	2016	Other	Jan2018	17
province	MP	2016	Government Agriculture	Feb2018	7
province	MP	2016	Government Urban	Feb2018	\N
province	MP	2016	Private	Feb2018	24
province	MP	2016	Other	Feb2018	143
province	MP	2016	Government Agriculture	Mar2018	\N
province	MP	2016	Government Urban	Mar2018	\N
province	MP	2016	Private	Mar2018	101
province	MP	2016	Other	Mar2018	60
province	MP	2016	Government Agriculture	Apr2018	\N
province	MP	2016	Government Urban	Apr2018	\N
province	MP	2016	Private	Apr2018	44
province	MP	2016	Other	Apr2018	23
province	MP	2016	Government Agriculture	May2018	\N
province	MP	2016	Government Urban	May2018	\N
province	MP	2016	Private	May2018	22
province	MP	2016	Other	May2018	5
province	MP	2016	Government Agriculture	Jun2018	\N
province	MP	2016	Government Urban	Jun2018	\N
province	MP	2016	Private	Jun2018	14
province	MP	2016	Other	Jun2018	\N
province	MP	2016	Government Agriculture	Jul2018	7
province	MP	2016	Government Urban	Jul2018	10
province	MP	2016	Private	Jul2018	25
province	MP	2016	Other	Jul2018	9
province	MP	2016	Government Agriculture	Aug2018	\N
province	MP	2016	Government Urban	Aug2018	\N
province	MP	2016	Private	Aug2018	15
province	MP	2016	Other	Aug2018	12
province	MP	2016	Government Agriculture	Sep2018	15
province	MP	2016	Government Urban	Sep2018	\N
province	MP	2016	Private	Sep2018	59
province	MP	2016	Other	Sep2018	2
province	MP	2016	Government Agriculture	Oct2018	15
province	MP	2016	Government Urban	Oct2018	\N
province	MP	2016	Private	Oct2018	58
province	MP	2016	Other	Oct2018	115
province	MP	2016	Government Agriculture	Nov2018	\N
province	MP	2016	Government Urban	Nov2018	\N
province	MP	2016	Private	Nov2018	3
province	NC	2016	Government Agriculture	Dec2017	\N
province	NC	2016	Government Urban	Dec2017	\N
province	NC	2016	Private	Dec2017	1
province	NC	2016	Other	Dec2017	12
province	NC	2016	Government Agriculture	Jan2018	\N
province	NC	2016	Government Urban	Jan2018	\N
province	NC	2016	Private	Jan2018	3
province	NC	2016	Other	Jan2018	\N
province	NC	2016	Government Agriculture	Feb2018	\N
province	NC	2016	Government Urban	Feb2018	\N
province	NC	2016	Private	Feb2018	11
province	NC	2016	Other	Feb2018	\N
province	NC	2016	Government Agriculture	Mar2018	\N
province	NC	2016	Government Urban	Mar2018	50
province	NC	2016	Private	Mar2018	26
province	NC	2016	Other	Mar2018	36
province	NC	2016	Government Agriculture	Apr2018	\N
province	NC	2016	Government Urban	Apr2018	\N
province	NC	2016	Private	Apr2018	2
province	NC	2016	Other	Apr2018	30
province	NC	2016	Government Agriculture	May2018	\N
province	NC	2016	Government Urban	May2018	\N
province	NC	2016	Private	May2018	\N
province	NC	2016	Other	May2018	\N
province	NC	2016	Government Agriculture	Jun2018	\N
province	NC	2016	Government Urban	Jun2018	\N
province	NC	2016	Private	Jun2018	23
province	NC	2016	Other	Jun2018	\N
province	NC	2016	Government Agriculture	Jul2018	\N
province	NC	2016	Government Urban	Jul2018	\N
province	NC	2016	Private	Jul2018	\N
province	NC	2016	Other	Jul2018	\N
province	NC	2016	Government Agriculture	Aug2018	\N
province	NC	2016	Government Urban	Aug2018	\N
province	NC	2016	Private	Aug2018	22
province	NC	2016	Other	Aug2018	24
province	NC	2016	Government Agriculture	Sep2018	\N
province	NC	2016	Government Urban	Sep2018	\N
province	NC	2016	Private	Sep2018	5
province	NC	2016	Other	Sep2018	\N
province	NC	2016	Government Agriculture	Oct2018	28
province	NC	2016	Government Urban	Oct2018	\N
province	NC	2016	Private	Oct2018	\N
province	NC	2016	Other	Oct2018	\N
province	NC	2016	Government Agriculture	Nov2018	\N
province	NC	2016	Government Urban	Nov2018	\N
province	NC	2016	Private	Nov2018	5
province	NC	2016	Other	Nov2018	\N
province	NW	2016	Government Agriculture	Dec2017	47
province	NW	2016	Government Urban	Dec2017	\N
province	NW	2016	Private	Dec2017	111
province	NW	2016	Other	Dec2017	\N
province	NW	2016	Government Agriculture	Jan2018	\N
province	NW	2016	Government Urban	Jan2018	\N
province	NW	2016	Private	Jan2018	72
province	NW	2016	Other	Jan2018	\N
province	NW	2016	Government Agriculture	Feb2018	\N
province	NW	2016	Government Urban	Feb2018	\N
province	NW	2016	Private	Feb2018	22
province	NW	2016	Other	Feb2018	\N
province	NW	2016	Government Agriculture	Mar2018	66
province	NW	2016	Government Urban	Mar2018	\N
province	NW	2016	Private	Mar2018	14
province	NW	2016	Other	Mar2018	\N
province	NW	2016	Government Agriculture	Apr2018	\N
province	NW	2016	Government Urban	Apr2018	\N
province	NW	2016	Private	Apr2018	131
province	NW	2016	Other	Apr2018	18
province	NW	2016	Government Agriculture	May2018	12
province	NW	2016	Government Urban	May2018	1
province	NW	2016	Private	May2018	28
province	NW	2016	Other	May2018	3
province	NW	2016	Government Agriculture	Jun2018	16
province	NW	2016	Government Urban	Jun2018	\N
province	NW	2016	Private	Jun2018	29
province	NW	2016	Other	Jun2018	1
province	NW	2016	Government Agriculture	Jul2018	9
province	NW	2016	Government Urban	Jul2018	\N
province	NW	2016	Private	Jul2018	8
province	NW	2016	Other	Jul2018	1
province	NW	2016	Government Agriculture	Aug2018	5
province	NW	2016	Government Urban	Aug2018	53
province	NW	2016	Private	Aug2018	28
province	NW	2016	Other	Aug2018	20
province	NW	2016	Government Agriculture	Sep2018	14
province	NW	2016	Government Urban	Sep2018	\N
province	NW	2016	Private	Sep2018	14
province	NW	2016	Other	Sep2018	\N
province	NW	2016	Government Agriculture	Oct2018	6
province	NW	2016	Government Urban	Oct2018	3
province	NW	2016	Private	Oct2018	16
province	NW	2016	Other	Oct2018	6
province	NW	2016	Government Agriculture	Nov2018	\N
province	NW	2016	Government Urban	Nov2018	\N
province	NW	2016	Private	Nov2018	11
province	NW	2016	Other	Nov2018	50
province	WC	2016	Government Agriculture	Dec2017	\N
province	WC	2016	Government Urban	Dec2017	\N
province	WC	2016	Private	Dec2017	5
province	WC	2016	Other	Dec2017	1
province	WC	2016	Government Agriculture	Jan2018	\N
province	WC	2016	Government Urban	Jan2018	\N
province	WC	2016	Private	Jan2018	14
province	WC	2016	Other	Jan2018	\N
province	WC	2016	Government Agriculture	Feb2018	\N
province	WC	2016	Government Urban	Feb2018	\N
province	WC	2016	Private	Feb2018	13
province	WC	2016	Other	Feb2018	2
province	WC	2016	Government Agriculture	Mar2018	\N
province	WC	2016	Government Urban	Mar2018	\N
province	WC	2016	Private	Mar2018	13
province	WC	2016	Other	Mar2018	\N
province	WC	2016	Government Agriculture	Apr2018	131
province	WC	2016	Government Urban	Apr2018	\N
province	WC	2016	Private	Apr2018	7
province	WC	2016	Other	Apr2018	\N
province	WC	2016	Government Agriculture	May2018	4
province	WC	2016	Government Urban	May2018	\N
province	WC	2016	Private	May2018	10
province	WC	2016	Other	May2018	\N
province	WC	2016	Government Agriculture	Jun2018	\N
province	WC	2016	Government Urban	Jun2018	\N
province	WC	2016	Private	Jun2018	7
province	WC	2016	Other	Jun2018	\N
province	WC	2016	Government Agriculture	Jul2018	\N
province	WC	2016	Government Urban	Jul2018	\N
province	WC	2016	Private	Jul2018	\N
province	WC	2016	Other	Jul2018	\N
province	WC	2016	Government Agriculture	Aug2018	\N
province	WC	2016	Government Urban	Aug2018	\N
province	WC	2016	Private	Aug2018	27
province	WC	2016	Other	Aug2018	1
province	WC	2016	Government Agriculture	Sep2018	3
province	WC	2016	Government Urban	Sep2018	\N
province	WC	2016	Private	Sep2018	6
province	WC	2016	Other	Sep2018	4
province	WC	2016	Government Agriculture	Oct2018	\N
province	WC	2016	Government Urban	Oct2018	\N
province	WC	2016	Private	Oct2018	5
province	WC	2016	Other	Oct2018	11
province	WC	2016	Government Agriculture	Nov2018	5
province	WC	2016	Government Urban	Nov2018	\N
province	WC	2016	Private	Nov2018	\N
province	WC	2016	Other	Nov2018	2
\.


--
-- PostgreSQL database dump complete
--

