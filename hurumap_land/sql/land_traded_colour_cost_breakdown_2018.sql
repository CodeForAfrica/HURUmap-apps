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
country	ZA	2016	Government Agriculture	Dec	85
country	ZA	2016	Government Urban	Dec	17
country	ZA	2016	Private	Dec	338
country	ZA	2016	Other	Dec	23
country	ZA	2016	Government Agriculture	Jan	23
country	ZA	2016	Government Urban	Jan	3
country	ZA	2016	Private	Jan	160
country	ZA	2016	Other	Jan	22
country	ZA	2016	Government Agriculture	Feb	23
country	ZA	2016	Government Urban	Feb	70
country	ZA	2016	Private	Feb	151
country	ZA	2016	Other	Feb	166
country	ZA	2016	Government Agriculture	Mar	120
country	ZA	2016	Government Urban	Mar	56
country	ZA	2016	Private	Mar	293
country	ZA	2016	Other	Mar	279
country	ZA	2016	Government Agriculture	Apr	131
country	ZA	2016	Government Urban	Apr	\N
country	ZA	2016	Private	Apr	286
country	ZA	2016	Other	Apr	96
country	ZA	2016	Government Agriculture	May	16
country	ZA	2016	Government Urban	May	1
country	ZA	2016	Private	May	232
country	ZA	2016	Other	May	41
country	ZA	2016	Government Agriculture	Jun	16
country	ZA	2016	Government Urban	Jun	\N
country	ZA	2016	Private	Jun	193
country	ZA	2016	Other	Jun	609
country	ZA	2016	Government Agriculture	Jul	19
country	ZA	2016	Government Urban	Jul	32
country	ZA	2016	Private	Jul	191
country	ZA	2016	Other	Jul	10
country	ZA	2016	Government Agriculture	Aug	6
country	ZA	2016	Government Urban	Aug	53
country	ZA	2016	Private	Aug	412
country	ZA	2016	Other	Aug	111
country	ZA	2016	Government Agriculture	Sep	33
country	ZA	2016	Government Urban	Sep	\N
country	ZA	2016	Private	Sep	210
country	ZA	2016	Other	Sep	64
country	ZA	2016	Government Agriculture	Oct	88
country	ZA	2016	Government Urban	Oct	28
country	ZA	2016	Private	Oct	209
country	ZA	2016	Other	Oct	256
country	ZA	2016	Government Agriculture	Nov	5
country	ZA	2016	Government Urban	Nov	\N
country	ZA	2016	Private	Nov	154
country	ZA	2016	Other	Nov	129
province	EC	2016	Government Agriculture	Dec	5
province	EC	2016	Government Urban	Dec	\N
province	EC	2016	Private	Dec	17
province	EC	2016	Other	Dec	\N
province	EC	2016	Government Agriculture	Jan	\N
province	EC	2016	Government Urban	Jan	\N
province	EC	2016	Private	Jan	\N
province	EC	2016	Other	Jan	\N
province	EC	2016	Government Agriculture	Feb	\N
province	EC	2016	Government Urban	Feb	70
province	EC	2016	Private	Feb	2
province	EC	2016	Other	Feb	8
province	EC	2016	Government Agriculture	Mar	\N
province	EC	2016	Government Urban	Mar	\N
province	EC	2016	Private	Mar	12
province	EC	2016	Other	Mar	26
province	EC	2016	Government Agriculture	Apr	\N
province	EC	2016	Government Urban	Apr	\N
province	EC	2016	Private	Apr	10
province	EC	2016	Other	Apr	\N
province	EC	2016	Government Agriculture	May	\N
province	EC	2016	Government Urban	May	\N
province	EC	2016	Private	May	11
province	EC	2016	Other	May	\N
province	EC	2016	Government Agriculture	Jun	\N
province	EC	2016	Government Urban	Jun	\N
province	EC	2016	Private	Jun	10
province	EC	2016	Other	Jun	\N
province	EC	2016	Government Agriculture	Jul	\N
province	EC	2016	Government Urban	Jul	\N
province	EC	2016	Private	Jul	38
province	EC	2016	Other	Jul	\N
province	EC	2016	Government Agriculture	Aug	\N
province	EC	2016	Government Urban	Aug	\N
province	EC	2016	Private	Aug	15
province	EC	2016	Other	Aug	6
province	EC	2016	Government Agriculture	Sep	\N
province	EC	2016	Government Urban	Sep	\N
province	EC	2016	Private	Sep	16
province	EC	2016	Other	Sep	\N
province	EC	2016	Government Agriculture	Oct	10
province	EC	2016	Government Urban	Oct	\N
province	EC	2016	Private	Oct	3
province	EC	2016	Other	Oct	\N
province	EC	2016	Government Agriculture	Nov	\N
province	EC	2016	Government Urban	Nov	\N
province	EC	2016	Private	Nov	12
province	EC	2016	Other	Nov	\N
province	FS	2016	Government Agriculture	Dec	\N
province	FS	2016	Government Urban	Dec	\N
province	FS	2016	Private	Dec	18
province	FS	2016	Other	Dec	2
province	FS	2016	Government Agriculture	Jan	23
province	FS	2016	Government Urban	Jan	\N
province	FS	2016	Private	Jan	4
province	FS	2016	Other	Jan	\N
province	FS	2016	Government Agriculture	Feb	\N
province	FS	2016	Government Urban	Feb	\N
province	FS	2016	Private	Feb	37
province	FS	2016	Other	Feb	\N
province	FS	2016	Government Agriculture	Mar	5
province	FS	2016	Government Urban	Mar	\N
province	FS	2016	Private	Mar	23
province	FS	2016	Other	Mar	1
province	FS	2016	Government Agriculture	Apr	\N
province	FS	2016	Government Urban	Apr	\N
province	FS	2016	Private	Apr	12
province	FS	2016	Other	Apr	9
province	FS	2016	Government Agriculture	May	\N
province	FS	2016	Government Urban	May	\N
province	FS	2016	Private	May	31
province	FS	2016	Other	May	2
province	FS	2016	Government Agriculture	Jun	\N
province	FS	2016	Government Urban	Jun	\N
province	FS	2016	Private	Jun	22
province	FS	2016	Other	Jun	150
province	FS	2016	Government Agriculture	Jul	4
province	FS	2016	Government Urban	Jul	\N
province	FS	2016	Private	Jul	11
province	FS	2016	Other	Jul	\N
province	FS	2016	Government Agriculture	Aug	\N
province	FS	2016	Government Urban	Aug	\N
province	FS	2016	Private	Aug	8
province	FS	2016	Other	Aug	9
province	FS	2016	Government Agriculture	Sep	\N
province	FS	2016	Government Urban	Sep	\N
province	FS	2016	Private	Sep	13
province	FS	2016	Other	Sep	46
province	FS	2016	Government Agriculture	Oct	18
province	FS	2016	Government Urban	Oct	\N
province	FS	2016	Private	Oct	7
province	FS	2016	Other	Oct	46
province	FS	2016	Government Agriculture	Nov	\N
province	FS	2016	Government Urban	Nov	\N
province	FS	2016	Private	Nov	1
province	FS	2016	Other	Nov	5
province	GT	2016	Government Agriculture	Dec	22
province	GT	2016	Government Urban	Dec	\N
province	GT	2016	Private	Dec	13
province	GT	2016	Other	Dec	\N
province	GT	2016	Government Agriculture	Jan	\N
province	GT	2016	Government Urban	Jan	3
province	GT	2016	Private	Jan	4
province	GT	2016	Other	Jan	2
province	GT	2016	Government Agriculture	Feb	2
province	GT	2016	Government Urban	Feb	\N
province	GT	2016	Private	Feb	9
province	GT	2016	Other	Feb	\N
province	GT	2016	Government Agriculture	Mar	\N
province	GT	2016	Government Urban	Mar	\N
province	GT	2016	Private	Mar	13
province	GT	2016	Other	Mar	150
province	GT	2016	Government Agriculture	Apr	\N
province	GT	2016	Government Urban	Apr	\N
province	GT	2016	Private	Apr	16
province	GT	2016	Other	Apr	\N
province	GT	2016	Government Agriculture	May	\N
province	GT	2016	Government Urban	May	\N
province	GT	2016	Private	May	7
province	GT	2016	Other	May	28
province	GT	2016	Government Agriculture	Jun	\N
province	GT	2016	Government Urban	Jun	\N
province	GT	2016	Private	Jun	39
province	GT	2016	Other	Jun	6
province	GT	2016	Government Agriculture	Jul	\N
province	GT	2016	Government Urban	Jul	19
province	GT	2016	Private	Jul	18
province	GT	2016	Other	Jul	\N
province	GT	2016	Government Agriculture	Aug	1
province	GT	2016	Government Urban	Aug	\N
province	GT	2016	Private	Aug	40
province	GT	2016	Other	Aug	\N
province	GT	2016	Government Agriculture	Sep	\N
province	GT	2016	Government Urban	Sep	\N
province	GT	2016	Private	Sep	75
province	GT	2016	Other	Sep	1
province	GT	2016	Government Agriculture	Oct	10
province	GT	2016	Government Urban	Oct	24
province	GT	2016	Private	Oct	15
province	GT	2016	Other	Oct	76
province	GT	2016	Government Agriculture	Nov	\N
province	GT	2016	Government Urban	Nov	\N
province	GT	2016	Private	Nov	17
province	GT	2016	Other	Nov	8
province	KZN	2016	Government Agriculture	Dec	4
province	KZN	2016	Government Urban	Dec	17
province	KZN	2016	Private	Dec	130
province	KZN	2016	Other	Dec	\N
province	KZN	2016	Government Agriculture	Jan	\N
province	KZN	2016	Government Urban	Jan	\N
province	KZN	2016	Private	Jan	21
province	KZN	2016	Other	Jan	\N
province	KZN	2016	Government Agriculture	Feb	14
province	KZN	2016	Government Urban	Feb	\N
province	KZN	2016	Private	Feb	5
province	KZN	2016	Other	Feb	8
province	KZN	2016	Government Agriculture	Mar	49
province	KZN	2016	Government Urban	Mar	\N
province	KZN	2016	Private	Mar	76
province	KZN	2016	Other	Mar	4
province	KZN	2016	Government Agriculture	Apr	\N
province	KZN	2016	Government Urban	Apr	\N
province	KZN	2016	Private	Apr	43
province	KZN	2016	Other	Apr	4
province	KZN	2016	Government Agriculture	May	\N
province	KZN	2016	Government Urban	May	\N
province	KZN	2016	Private	May	65
province	KZN	2016	Other	May	3
province	KZN	2016	Government Agriculture	Jun	\N
province	KZN	2016	Government Urban	Jun	\N
province	KZN	2016	Private	Jun	34
province	KZN	2016	Other	Jun	\N
province	KZN	2016	Government Agriculture	Jul	\N
province	KZN	2016	Government Urban	Jul	\N
province	KZN	2016	Private	Jul	67
province	KZN	2016	Other	Jul	\N
province	MP	2016	Other	Nov	52
province	KZN	2016	Government Agriculture	Aug	\N
province	KZN	2016	Government Urban	Aug	\N
province	KZN	2016	Private	Aug	140
province	KZN	2016	Other	Aug	38
province	KZN	2016	Government Agriculture	Sep	\N
province	KZN	2016	Government Urban	Sep	\N
province	KZN	2016	Private	Sep	14
province	KZN	2016	Other	Sep	11
province	KZN	2016	Government Agriculture	Oct	\N
province	KZN	2016	Government Urban	Oct	1
province	KZN	2016	Private	Oct	66
province	KZN	2016	Other	Oct	1
province	KZN	2016	Government Agriculture	Nov	\N
province	KZN	2016	Government Urban	Nov	\N
province	KZN	2016	Private	Nov	44
province	KZN	2016	Other	Nov	6
province	LIM	2016	Government Agriculture	Dec	\N
province	LIM	2016	Government Urban	Dec	\N
province	LIM	2016	Private	Dec	23
province	LIM	2016	Other	Dec	\N
province	LIM	2016	Government Agriculture	Jan	\N
province	LIM	2016	Government Urban	Jan	\N
province	LIM	2016	Private	Jan	21
province	LIM	2016	Other	Jan	3
province	LIM	2016	Government Agriculture	Feb	\N
province	LIM	2016	Government Urban	Feb	\N
province	LIM	2016	Private	Feb	28
province	LIM	2016	Other	Feb	6
province	LIM	2016	Government Agriculture	Mar	\N
province	LIM	2016	Government Urban	Mar	6
province	LIM	2016	Private	Mar	15
province	LIM	2016	Other	Mar	3
province	LIM	2016	Government Agriculture	Apr	\N
province	LIM	2016	Government Urban	Apr	\N
province	LIM	2016	Private	Apr	20
province	LIM	2016	Other	Apr	14
province	LIM	2016	Government Agriculture	May	\N
province	LIM	2016	Government Urban	May	\N
province	LIM	2016	Private	May	58
province	LIM	2016	Other	May	\N
province	LIM	2016	Government Agriculture	Jun	\N
province	LIM	2016	Government Urban	Jun	\N
province	LIM	2016	Private	Jun	15
province	LIM	2016	Other	Jun	452
province	LIM	2016	Government Agriculture	Jul	\N
province	LIM	2016	Government Urban	Jul	3
province	LIM	2016	Private	Jul	24
province	LIM	2016	Other	Jul	\N
province	LIM	2016	Government Agriculture	Aug	\N
province	LIM	2016	Government Urban	Aug	\N
province	LIM	2016	Private	Aug	116
province	LIM	2016	Other	Aug	\N
province	LIM	2016	Government Agriculture	Sep	\N
province	LIM	2016	Government Urban	Sep	\N
province	LIM	2016	Private	Sep	8
province	LIM	2016	Other	Sep	\N
province	LIM	2016	Government Agriculture	Oct	\N
province	LIM	2016	Government Urban	Oct	\N
province	LIM	2016	Private	Oct	39
province	LIM	2016	Other	Oct	3
province	LIM	2016	Government Agriculture	Nov	\N
province	LIM	2016	Government Urban	Nov	\N
province	LIM	2016	Private	Nov	63
province	LIM	2016	Other	Nov	4
province	MP	2016	Government Agriculture	Dec	8
province	MP	2016	Government Urban	Dec	\N
province	MP	2016	Private	Dec	19
province	MP	2016	Other	Dec	7
province	MP	2016	Government Agriculture	Jan	\N
province	MP	2016	Government Urban	Jan	\N
province	MP	2016	Private	Jan	20
province	MP	2016	Other	Jan	17
province	MP	2016	Government Agriculture	Feb	7
province	MP	2016	Government Urban	Feb	\N
province	MP	2016	Private	Feb	24
province	MP	2016	Other	Feb	143
province	MP	2016	Government Agriculture	Mar	\N
province	MP	2016	Government Urban	Mar	\N
province	MP	2016	Private	Mar	101
province	MP	2016	Other	Mar	60
province	MP	2016	Government Agriculture	Apr	\N
province	MP	2016	Government Urban	Apr	\N
province	MP	2016	Private	Apr	44
province	MP	2016	Other	Apr	23
province	MP	2016	Government Agriculture	May	\N
province	MP	2016	Government Urban	May	\N
province	MP	2016	Private	May	22
province	MP	2016	Other	May	5
province	MP	2016	Government Agriculture	Jun	\N
province	MP	2016	Government Urban	Jun	\N
province	MP	2016	Private	Jun	14
province	MP	2016	Other	Jun	\N
province	MP	2016	Government Agriculture	Jul	7
province	MP	2016	Government Urban	Jul	10
province	MP	2016	Private	Jul	25
province	MP	2016	Other	Jul	9
province	MP	2016	Government Agriculture	Aug	\N
province	MP	2016	Government Urban	Aug	\N
province	MP	2016	Private	Aug	15
province	MP	2016	Other	Aug	12
province	MP	2016	Government Agriculture	Sep	15
province	MP	2016	Government Urban	Sep	\N
province	MP	2016	Private	Sep	59
province	MP	2016	Other	Sep	2
province	MP	2016	Government Agriculture	Oct	15
province	MP	2016	Government Urban	Oct	\N
province	MP	2016	Private	Oct	58
province	MP	2016	Other	Oct	115
province	MP	2016	Government Agriculture	Nov	\N
province	MP	2016	Government Urban	Nov	\N
province	MP	2016	Private	Nov	3
province	NC	2016	Government Agriculture	Dec	\N
province	NC	2016	Government Urban	Dec	\N
province	NC	2016	Private	Dec	1
province	NC	2016	Other	Dec	12
province	NC	2016	Government Agriculture	Jan	\N
province	NC	2016	Government Urban	Jan	\N
province	NC	2016	Private	Jan	3
province	NC	2016	Other	Jan	\N
province	NC	2016	Government Agriculture	Feb	\N
province	NC	2016	Government Urban	Feb	\N
province	NC	2016	Private	Feb	11
province	NC	2016	Other	Feb	\N
province	NC	2016	Government Agriculture	Mar	\N
province	NC	2016	Government Urban	Mar	50
province	NC	2016	Private	Mar	26
province	NC	2016	Other	Mar	36
province	NC	2016	Government Agriculture	Apr	\N
province	NC	2016	Government Urban	Apr	\N
province	NC	2016	Private	Apr	2
province	NC	2016	Other	Apr	30
province	NC	2016	Government Agriculture	May	\N
province	NC	2016	Government Urban	May	\N
province	NC	2016	Private	May	\N
province	NC	2016	Other	May	\N
province	NC	2016	Government Agriculture	Jun	\N
province	NC	2016	Government Urban	Jun	\N
province	NC	2016	Private	Jun	23
province	NC	2016	Other	Jun	\N
province	NC	2016	Government Agriculture	Jul	\N
province	NC	2016	Government Urban	Jul	\N
province	NC	2016	Private	Jul	\N
province	NC	2016	Other	Jul	\N
province	NC	2016	Government Agriculture	Aug	\N
province	NC	2016	Government Urban	Aug	\N
province	NC	2016	Private	Aug	22
province	NC	2016	Other	Aug	24
province	NC	2016	Government Agriculture	Sep	\N
province	NC	2016	Government Urban	Sep	\N
province	NC	2016	Private	Sep	5
province	NC	2016	Other	Sep	\N
province	NC	2016	Government Agriculture	Oct	28
province	NC	2016	Government Urban	Oct	\N
province	NC	2016	Private	Oct	\N
province	NC	2016	Other	Oct	\N
province	NC	2016	Government Agriculture	Nov	\N
province	NC	2016	Government Urban	Nov	\N
province	NC	2016	Private	Nov	5
province	NC	2016	Other	Nov	\N
province	NW	2016	Government Agriculture	Dec	47
province	NW	2016	Government Urban	Dec	\N
province	NW	2016	Private	Dec	111
province	NW	2016	Other	Dec	\N
province	NW	2016	Government Agriculture	Jan	\N
province	NW	2016	Government Urban	Jan	\N
province	NW	2016	Private	Jan	72
province	NW	2016	Other	Jan	\N
province	NW	2016	Government Agriculture	Feb	\N
province	NW	2016	Government Urban	Feb	\N
province	NW	2016	Private	Feb	22
province	NW	2016	Other	Feb	\N
province	NW	2016	Government Agriculture	Mar	66
province	NW	2016	Government Urban	Mar	\N
province	NW	2016	Private	Mar	14
province	NW	2016	Other	Mar	\N
province	NW	2016	Government Agriculture	Apr	\N
province	NW	2016	Government Urban	Apr	\N
province	NW	2016	Private	Apr	131
province	NW	2016	Other	Apr	18
province	NW	2016	Government Agriculture	May	12
province	NW	2016	Government Urban	May	1
province	NW	2016	Private	May	28
province	NW	2016	Other	May	3
province	NW	2016	Government Agriculture	Jun	16
province	NW	2016	Government Urban	Jun	\N
province	NW	2016	Private	Jun	29
province	NW	2016	Other	Jun	1
province	NW	2016	Government Agriculture	Jul	9
province	NW	2016	Government Urban	Jul	\N
province	NW	2016	Private	Jul	8
province	NW	2016	Other	Jul	1
province	NW	2016	Government Agriculture	Aug	5
province	NW	2016	Government Urban	Aug	53
province	NW	2016	Private	Aug	28
province	NW	2016	Other	Aug	20
province	NW	2016	Government Agriculture	Sep	14
province	NW	2016	Government Urban	Sep	\N
province	NW	2016	Private	Sep	14
province	NW	2016	Other	Sep	\N
province	NW	2016	Government Agriculture	Oct	6
province	NW	2016	Government Urban	Oct	3
province	NW	2016	Private	Oct	16
province	NW	2016	Other	Oct	6
province	NW	2016	Government Agriculture	Nov	\N
province	NW	2016	Government Urban	Nov	\N
province	NW	2016	Private	Nov	11
province	NW	2016	Other	Nov	50
province	WC	2016	Government Agriculture	Dec	\N
province	WC	2016	Government Urban	Dec	\N
province	WC	2016	Private	Dec	5
province	WC	2016	Other	Dec	1
province	WC	2016	Government Agriculture	Jan	\N
province	WC	2016	Government Urban	Jan	\N
province	WC	2016	Private	Jan	14
province	WC	2016	Other	Jan	\N
province	WC	2016	Government Agriculture	Feb	\N
province	WC	2016	Government Urban	Feb	\N
province	WC	2016	Private	Feb	13
province	WC	2016	Other	Feb	2
province	WC	2016	Government Agriculture	Mar	\N
province	WC	2016	Government Urban	Mar	\N
province	WC	2016	Private	Mar	13
province	WC	2016	Other	Mar	\N
province	WC	2016	Government Agriculture	Apr	131
province	WC	2016	Government Urban	Apr	\N
province	WC	2016	Private	Apr	7
province	WC	2016	Other	Apr	\N
province	WC	2016	Government Agriculture	May	4
province	WC	2016	Government Urban	May	\N
province	WC	2016	Private	May	10
province	WC	2016	Other	May	\N
province	WC	2016	Government Agriculture	Jun	\N
province	WC	2016	Government Urban	Jun	\N
province	WC	2016	Private	Jun	7
province	WC	2016	Other	Jun	\N
province	WC	2016	Government Agriculture	Jul	\N
province	WC	2016	Government Urban	Jul	\N
province	WC	2016	Private	Jul	\N
province	WC	2016	Other	Jul	\N
province	WC	2016	Government Agriculture	Aug	\N
province	WC	2016	Government Urban	Aug	\N
province	WC	2016	Private	Aug	27
province	WC	2016	Other	Aug	1
province	WC	2016	Government Agriculture	Sep	3
province	WC	2016	Government Urban	Sep	\N
province	WC	2016	Private	Sep	6
province	WC	2016	Other	Sep	4
province	WC	2016	Government Agriculture	Oct	\N
province	WC	2016	Government Urban	Oct	\N
province	WC	2016	Private	Oct	5
province	WC	2016	Other	Oct	11
province	WC	2016	Government Agriculture	Nov	5
province	WC	2016	Government Urban	Nov	\N
province	WC	2016	Private	Nov	\N
province	WC	2016	Other	Nov	2
\.


--
-- PostgreSQL database dump complete
--
