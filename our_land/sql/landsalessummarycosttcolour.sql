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

DROP TABLE public.landsalessummarycosttcolour;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalessummarycosttcolour; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalessummarycosttcolour (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_breakdown character varying(128) NOT NULL,
    month character varying(100) NOT NULL,
    total integer
);


ALTER TABLE public.landsalessummarycosttcolour OWNER TO our_land;

--
-- Data for Name: landsalessummarycosttcolour; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalessummarycosttcolour (geo_level, geo_code, geo_version, land_breakdown, month, total) FROM stdin;
country	ZA	2016	Government Agriculture	Aug	56
country	ZA	2016	Government Agriculture	Sep	79
country	ZA	2016	Government Agriculture	Oct	27
country	ZA	2016	Government Agriculture	Nov	20
country	ZA	2016	Government Agriculture	Dec	85
country	ZA	2016	Government Agriculture	Jan	23
country	ZA	2016	Government Agriculture	Feb	23
country	ZA	2016	Government Agriculture	Mar	120
country	ZA	2016	Government Agriculture	Apr	131
country	ZA	2016	Government Agriculture	May	16
country	ZA	2016	Government Agriculture	Jun	16
country	ZA	2016	Government Agriculture	Jul	19
country	ZA	2016	Government Urban	Aug	6
country	ZA	2016	Government Urban	Sep	\N
country	ZA	2016	Government Urban	Oct	87
country	ZA	2016	Government Urban	Nov	1
country	ZA	2016	Government Urban	Dec	17
country	ZA	2016	Government Urban	Jan	3
country	ZA	2016	Government Urban	Feb	70
country	ZA	2016	Government Urban	Mar	56
country	ZA	2016	Government Urban	Apr	\N
country	ZA	2016	Government Urban	May	1
country	ZA	2016	Government Urban	Jun	\N
country	ZA	2016	Government Urban	Jul	32
country	ZA	2016	Private	Aug	238
country	ZA	2016	Private	Sep	214
country	ZA	2016	Private	Oct	227
country	ZA	2016	Private	Nov	164
country	ZA	2016	Private	Dec	338
country	ZA	2016	Private	Jan	160
country	ZA	2016	Private	Feb	151
country	ZA	2016	Private	Mar	293
country	ZA	2016	Private	Apr	286
country	ZA	2016	Private	May	232
country	ZA	2016	Private	Jun	193
country	ZA	2016	Private	Jul	191
country	ZA	2016	Other	Aug	18
country	ZA	2016	Other	Sep	211
country	ZA	2016	Other	Oct	50
country	ZA	2016	Other	Nov	122
country	ZA	2016	Other	Dec	23
country	ZA	2016	Other	Jan	22
country	ZA	2016	Other	Feb	166
country	ZA	2016	Other	Mar	279
country	ZA	2016	Other	Apr	96
country	ZA	2016	Other	May	41
country	ZA	2016	Other	Jun	609
country	ZA	2016	Other	Jul	10
province	EC	2016	Government Agriculture	Aug	\N
province	EC	2016	Government Agriculture	Sep	7
province	EC	2016	Government Agriculture	Oct	\N
province	EC	2016	Government Agriculture	Nov	\N
province	EC	2016	Government Agriculture	Dec	5
province	EC	2016	Government Agriculture	Jan	\N
province	EC	2016	Government Agriculture	Feb	\N
province	EC	2016	Government Agriculture	Mar	\N
province	EC	2016	Government Agriculture	Apr	\N
province	EC	2016	Government Agriculture	May	\N
province	EC	2016	Government Agriculture	Jun	\N
province	EC	2016	Government Agriculture	Jul	\N
province	EC	2016	Government Urban	Aug	\N
province	EC	2016	Government Urban	Sep	\N
province	EC	2016	Government Urban	Oct	\N
province	EC	2016	Government Urban	Nov	\N
province	EC	2016	Government Urban	Dec	\N
province	EC	2016	Government Urban	Jan	\N
province	EC	2016	Government Urban	Feb	70
province	EC	2016	Government Urban	Mar	\N
province	EC	2016	Government Urban	Apr	\N
province	EC	2016	Government Urban	May	\N
province	EC	2016	Government Urban	Jun	\N
province	EC	2016	Government Urban	Jul	\N
province	EC	2016	Private	Aug	45
province	EC	2016	Private	Sep	6
province	EC	2016	Private	Oct	3
province	EC	2016	Private	Nov	13
province	EC	2016	Private	Dec	17
province	EC	2016	Private	Jan	\N
province	EC	2016	Private	Feb	2
province	EC	2016	Private	Mar	12
province	EC	2016	Private	Apr	10
province	EC	2016	Private	May	11
province	EC	2016	Private	Jun	10
province	EC	2016	Private	Jul	38
province	EC	2016	Other	Aug	2
province	EC	2016	Other	Sep	\N
province	EC	2016	Other	Oct	6
province	EC	2016	Other	Nov	13
province	EC	2016	Other	Dec	\N
province	EC	2016	Other	Jan	\N
province	EC	2016	Other	Feb	8
province	EC	2016	Other	Mar	26
province	EC	2016	Other	Apr	\N
province	EC	2016	Other	May	\N
province	EC	2016	Other	Jun	\N
province	EC	2016	Other	Jul	\N
province	FS	2016	Government Agriculture	Aug	5
province	FS	2016	Government Agriculture	Sep	\N
province	FS	2016	Government Agriculture	Oct	\N
province	FS	2016	Government Agriculture	Nov	\N
province	FS	2016	Government Agriculture	Dec	\N
province	FS	2016	Government Agriculture	Jan	23
province	FS	2016	Government Agriculture	Feb	\N
province	FS	2016	Government Agriculture	Mar	5
province	FS	2016	Government Agriculture	Apr	\N
province	FS	2016	Government Agriculture	May	\N
province	FS	2016	Government Agriculture	Jun	\N
province	FS	2016	Government Agriculture	Jul	4
province	FS	2016	Government Urban	Aug	\N
province	FS	2016	Government Urban	Sep	\N
province	FS	2016	Government Urban	Oct	\N
province	FS	2016	Government Urban	Nov	\N
province	FS	2016	Government Urban	Dec	\N
province	FS	2016	Government Urban	Jan	\N
province	FS	2016	Government Urban	Feb	\N
province	FS	2016	Government Urban	Mar	\N
province	FS	2016	Government Urban	Apr	\N
province	FS	2016	Government Urban	May	\N
province	FS	2016	Government Urban	Jun	\N
province	FS	2016	Government Urban	Jul	\N
province	FS	2016	Private	Aug	11
province	FS	2016	Private	Sep	14
province	FS	2016	Private	Oct	9
province	FS	2016	Private	Nov	23
province	FS	2016	Private	Dec	18
province	FS	2016	Private	Jan	4
province	FS	2016	Private	Feb	37
province	FS	2016	Private	Mar	23
province	FS	2016	Private	Apr	12
province	FS	2016	Private	May	31
province	FS	2016	Private	Jun	22
province	FS	2016	Private	Jul	11
province	FS	2016	Other	Aug	1
province	FS	2016	Other	Sep	\N
province	FS	2016	Other	Oct	21
province	FS	2016	Other	Nov	1
province	FS	2016	Other	Dec	2
province	FS	2016	Other	Jan	\N
province	FS	2016	Other	Feb	\N
province	FS	2016	Other	Mar	1
province	FS	2016	Other	Apr	9
province	FS	2016	Other	May	2
province	FS	2016	Other	Jun	150
province	FS	2016	Other	Jul	\N
province	GT	2016	Government Agriculture	Aug	14
province	GT	2016	Government Agriculture	Sep	\N
province	GT	2016	Government Agriculture	Oct	\N
province	GT	2016	Government Agriculture	Nov	\N
province	GT	2016	Government Agriculture	Dec	22
province	GT	2016	Government Agriculture	Jan	\N
province	GT	2016	Government Agriculture	Feb	2
province	GT	2016	Government Agriculture	Mar	\N
province	GT	2016	Government Agriculture	Apr	\N
province	GT	2016	Government Agriculture	May	\N
province	GT	2016	Government Agriculture	Jun	\N
province	GT	2016	Government Agriculture	Jul	\N
province	GT	2016	Government Urban	Aug	\N
province	GT	2016	Government Urban	Sep	\N
province	GT	2016	Government Urban	Oct	\N
province	GT	2016	Government Urban	Nov	\N
province	GT	2016	Government Urban	Dec	\N
province	GT	2016	Government Urban	Jan	3
province	GT	2016	Government Urban	Feb	\N
province	GT	2016	Government Urban	Mar	\N
province	GT	2016	Government Urban	Apr	\N
province	GT	2016	Government Urban	May	\N
province	GT	2016	Government Urban	Jun	\N
province	GT	2016	Government Urban	Jul	19
province	GT	2016	Private	Aug	12
province	GT	2016	Private	Sep	25
province	GT	2016	Private	Oct	66
province	GT	2016	Private	Nov	7
province	GT	2016	Private	Dec	13
province	GT	2016	Private	Jan	4
province	GT	2016	Private	Feb	9
province	GT	2016	Private	Mar	13
province	GT	2016	Private	Apr	16
province	GT	2016	Private	May	7
province	GT	2016	Private	Jun	39
province	GT	2016	Private	Jul	18
province	GT	2016	Other	Aug	\N
province	GT	2016	Other	Sep	5
province	GT	2016	Other	Oct	\N
province	GT	2016	Other	Nov	4
province	GT	2016	Other	Dec	\N
province	GT	2016	Other	Jan	2
province	GT	2016	Other	Feb	\N
province	GT	2016	Other	Mar	150
province	GT	2016	Other	Apr	\N
province	GT	2016	Other	May	28
province	GT	2016	Other	Jun	6
province	GT	2016	Other	Jul	\N
province	KZN	2016	Government Agriculture	Aug	\N
province	KZN	2016	Government Agriculture	Sep	\N
province	KZN	2016	Government Agriculture	Oct	14
province	KZN	2016	Government Agriculture	Nov	\N
province	KZN	2016	Government Agriculture	Dec	4
province	KZN	2016	Government Agriculture	Jan	\N
province	KZN	2016	Government Agriculture	Feb	14
province	KZN	2016	Government Agriculture	Mar	49
province	KZN	2016	Government Agriculture	Apr	\N
province	KZN	2016	Government Agriculture	May	\N
province	KZN	2016	Government Agriculture	Jun	\N
province	KZN	2016	Government Agriculture	Jul	\N
province	KZN	2016	Government Urban	Aug	\N
province	KZN	2016	Government Urban	Sep	\N
province	KZN	2016	Government Urban	Oct	\N
province	KZN	2016	Government Urban	Nov	\N
province	KZN	2016	Government Urban	Dec	17
province	KZN	2016	Government Urban	Jan	\N
province	KZN	2016	Government Urban	Feb	\N
province	KZN	2016	Government Urban	Mar	\N
province	KZN	2016	Government Urban	Apr	\N
province	KZN	2016	Government Urban	May	\N
province	KZN	2016	Government Urban	Jun	\N
province	KZN	2016	Government Urban	Jul	\N
province	KZN	2016	Private	Aug	30
province	KZN	2016	Private	Sep	79
province	KZN	2016	Private	Oct	40
province	KZN	2016	Private	Nov	49
province	KZN	2016	Private	Dec	130
province	KZN	2016	Private	Jan	21
province	KZN	2016	Private	Feb	5
province	KZN	2016	Private	Mar	76
province	KZN	2016	Private	Apr	43
province	KZN	2016	Private	May	65
province	KZN	2016	Private	Jun	34
province	KZN	2016	Private	Jul	67
province	KZN	2016	Other	Aug	\N
province	KZN	2016	Other	Sep	169
province	KZN	2016	Other	Oct	\N
province	KZN	2016	Other	Nov	\N
province	KZN	2016	Other	Dec	\N
province	KZN	2016	Other	Jan	\N
province	KZN	2016	Other	Feb	8
province	KZN	2016	Other	Mar	4
province	KZN	2016	Other	Apr	4
province	KZN	2016	Other	May	3
province	KZN	2016	Other	Jun	\N
province	KZN	2016	Other	Jul	\N
province	LIM	2016	Government Agriculture	Aug	\N
province	LIM	2016	Government Agriculture	Sep	26
province	LIM	2016	Government Agriculture	Oct	\N
province	LIM	2016	Government Agriculture	Nov	8
province	LIM	2016	Government Agriculture	Dec	\N
province	LIM	2016	Government Agriculture	Jan	\N
province	LIM	2016	Government Agriculture	Feb	\N
province	LIM	2016	Government Agriculture	Mar	\N
province	LIM	2016	Government Agriculture	Apr	\N
province	LIM	2016	Government Agriculture	May	\N
province	LIM	2016	Government Agriculture	Jun	\N
province	LIM	2016	Government Agriculture	Jul	\N
province	LIM	2016	Government Urban	Aug	\N
province	LIM	2016	Government Urban	Sep	\N
province	LIM	2016	Government Urban	Oct	\N
province	LIM	2016	Government Urban	Nov	1
province	LIM	2016	Government Urban	Dec	\N
province	LIM	2016	Government Urban	Jan	\N
province	LIM	2016	Government Urban	Feb	\N
province	LIM	2016	Government Urban	Mar	6
province	LIM	2016	Government Urban	Apr	\N
province	LIM	2016	Government Urban	May	\N
province	LIM	2016	Government Urban	Jun	\N
province	LIM	2016	Government Urban	Jul	3
province	LIM	2016	Private	Aug	46
province	LIM	2016	Private	Sep	7
province	LIM	2016	Private	Oct	36
province	LIM	2016	Private	Nov	26
province	LIM	2016	Private	Dec	23
province	LIM	2016	Private	Jan	21
province	LIM	2016	Private	Feb	28
province	LIM	2016	Private	Mar	15
province	LIM	2016	Private	Apr	20
province	LIM	2016	Private	May	58
province	LIM	2016	Private	Jun	15
province	LIM	2016	Private	Jul	24
province	LIM	2016	Other	Aug	\N
province	LIM	2016	Other	Sep	\N
province	LIM	2016	Other	Oct	1
province	LIM	2016	Other	Nov	9
province	LIM	2016	Other	Dec	\N
province	LIM	2016	Other	Jan	3
province	LIM	2016	Other	Feb	6
province	LIM	2016	Other	Mar	3
province	LIM	2016	Other	Apr	14
province	LIM	2016	Other	May	\N
province	LIM	2016	Other	Jun	452
province	LIM	2016	Other	Jul	\N
province	MP	2016	Government Agriculture	Aug	4
province	MP	2016	Government Agriculture	Sep	8
province	MP	2016	Government Agriculture	Oct	13
province	MP	2016	Government Agriculture	Nov	7
province	MP	2016	Government Agriculture	Dec	8
province	MP	2016	Government Agriculture	Jan	\N
province	MP	2016	Government Agriculture	Feb	7
province	MP	2016	Government Agriculture	Mar	\N
province	MP	2016	Government Agriculture	Apr	\N
province	MP	2016	Government Agriculture	May	\N
province	MP	2016	Government Agriculture	Jun	\N
province	MP	2016	Government Agriculture	Jul	7
province	MP	2016	Government Urban	Aug	\N
province	MP	2016	Government Urban	Sep	\N
province	MP	2016	Government Urban	Oct	\N
province	MP	2016	Government Urban	Nov	\N
province	MP	2016	Government Urban	Dec	\N
province	MP	2016	Government Urban	Jan	\N
province	MP	2016	Government Urban	Feb	\N
province	MP	2016	Government Urban	Mar	\N
province	MP	2016	Government Urban	Apr	\N
province	MP	2016	Government Urban	May	\N
province	MP	2016	Government Urban	Jun	\N
province	MP	2016	Government Urban	Jul	10
province	MP	2016	Private	Aug	10
province	MP	2016	Private	Sep	16
province	MP	2016	Private	Oct	46
province	MP	2016	Private	Nov	20
province	MP	2016	Private	Dec	19
province	MP	2016	Private	Jan	20
province	MP	2016	Private	Feb	24
province	MP	2016	Private	Mar	101
province	MP	2016	Private	Apr	44
province	MP	2016	Private	May	22
province	MP	2016	Private	Jun	14
province	MP	2016	Private	Jul	25
province	MP	2016	Other	Aug	4
province	MP	2016	Other	Sep	32
province	MP	2016	Other	Oct	\N
province	MP	2016	Other	Nov	75
province	MP	2016	Other	Dec	7
province	MP	2016	Other	Jan	17
province	MP	2016	Other	Feb	143
province	MP	2016	Other	Mar	60
province	MP	2016	Other	Apr	23
province	MP	2016	Other	May	5
province	MP	2016	Other	Jun	\N
province	MP	2016	Other	Jul	9
province	NW	2016	Government Agriculture	Aug	9
province	NW	2016	Government Agriculture	Sep	7
province	NW	2016	Government Agriculture	Oct	\N
province	NW	2016	Government Agriculture	Nov	5
province	NW	2016	Government Agriculture	Dec	47
province	NW	2016	Government Agriculture	Jan	\N
province	NW	2016	Government Agriculture	Feb	\N
province	NW	2016	Government Agriculture	Mar	66
province	NW	2016	Government Agriculture	Apr	\N
province	NW	2016	Government Agriculture	May	12
province	NW	2016	Government Agriculture	Jun	16
province	NW	2016	Government Agriculture	Jul	9
province	NW	2016	Government Urban	Aug	\N
province	NW	2016	Government Urban	Sep	\N
province	NW	2016	Government Urban	Oct	7
province	NW	2016	Government Urban	Nov	\N
province	NW	2016	Government Urban	Dec	\N
province	NW	2016	Government Urban	Jan	\N
province	NW	2016	Government Urban	Feb	\N
province	NW	2016	Government Urban	Mar	\N
province	NW	2016	Government Urban	Apr	\N
province	NW	2016	Government Urban	May	1
province	NW	2016	Government Urban	Jun	\N
province	NW	2016	Government Urban	Jul	\N
province	NW	2016	Private	Aug	41
province	NW	2016	Private	Sep	38
province	NW	2016	Private	Oct	26
province	NW	2016	Private	Nov	19
province	NW	2016	Private	Dec	111
province	NW	2016	Private	Jan	72
province	NW	2016	Private	Feb	22
province	NW	2016	Private	Mar	14
province	NW	2016	Private	Apr	131
province	NW	2016	Private	May	28
province	NW	2016	Private	Jun	29
province	NW	2016	Private	Jul	8
province	NW	2016	Other	Aug	\N
province	NW	2016	Other	Sep	5
province	NW	2016	Other	Oct	8
province	NW	2016	Other	Nov	2
province	NW	2016	Other	Dec	\N
province	NW	2016	Other	Jan	\N
province	NW	2016	Other	Feb	\N
province	NW	2016	Other	Mar	\N
province	NW	2016	Other	Apr	18
province	NW	2016	Other	May	3
province	NW	2016	Other	Jun	1
province	NW	2016	Other	Jul	1
province	WC	2016	Government Agriculture	Aug	\N
province	WC	2016	Government Agriculture	Sep	15
province	WC	2016	Government Agriculture	Oct	\N
province	WC	2016	Government Agriculture	Nov	\N
province	WC	2016	Government Agriculture	Dec	\N
province	WC	2016	Government Agriculture	Jan	\N
province	WC	2016	Government Agriculture	Feb	\N
province	WC	2016	Government Agriculture	Mar	\N
province	WC	2016	Government Agriculture	Apr	131
province	WC	2016	Government Agriculture	May	4
province	WC	2016	Government Agriculture	Jun	\N
province	WC	2016	Government Agriculture	Jul	\N
province	WC	2016	Government Urban	Aug	6
province	WC	2016	Government Urban	Sep	\N
province	WC	2016	Government Urban	Oct	\N
province	WC	2016	Government Urban	Nov	\N
province	WC	2016	Government Urban	Dec	\N
province	WC	2016	Government Urban	Jan	\N
province	WC	2016	Government Urban	Feb	\N
province	WC	2016	Government Urban	Mar	\N
province	WC	2016	Government Urban	Apr	\N
province	WC	2016	Government Urban	May	\N
province	WC	2016	Government Urban	Jun	\N
province	WC	2016	Government Urban	Jul	\N
province	WC	2016	Private	Aug	12
province	WC	2016	Private	Sep	28
province	WC	2016	Private	Oct	1
province	WC	2016	Private	Nov	7
province	WC	2016	Private	Dec	5
province	WC	2016	Private	Jan	14
province	WC	2016	Private	Feb	13
province	WC	2016	Private	Mar	13
province	WC	2016	Private	Apr	7
province	WC	2016	Private	May	10
province	WC	2016	Private	Jun	7
province	WC	2016	Private	Jul	\N
province	WC	2016	Other	Aug	3
province	WC	2016	Other	Sep	\N
province	WC	2016	Other	Oct	\N
province	WC	2016	Other	Nov	\N
province	WC	2016	Other	Dec	1
province	WC	2016	Other	Jan	\N
province	WC	2016	Other	Feb	2
province	WC	2016	Other	Mar	\N
province	WC	2016	Other	Apr	\N
province	WC	2016	Other	May	\N
province	WC	2016	Other	Jun	\N
province	WC	2016	Other	Jul	\N
province	NC	2016	Government Agriculture	Aug	24
province	NC	2016	Government Agriculture	Sep	16
province	NC	2016	Government Agriculture	Oct	\N
province	NC	2016	Government Agriculture	Nov	\N
province	NC	2016	Government Agriculture	Dec	\N
province	NC	2016	Government Agriculture	Jan	\N
province	NC	2016	Government Agriculture	Feb	\N
province	NC	2016	Government Agriculture	Mar	\N
province	NC	2016	Government Agriculture	Apr	\N
province	NC	2016	Government Agriculture	May	\N
province	NC	2016	Government Agriculture	Jun	\N
province	NC	2016	Government Agriculture	Jul	\N
province	NC	2016	Government Urban	Aug	\N
province	NC	2016	Government Urban	Sep	\N
province	NC	2016	Government Urban	Oct	80
province	NC	2016	Government Urban	Nov	\N
province	NC	2016	Government Urban	Dec	\N
province	NC	2016	Government Urban	Jan	\N
province	NC	2016	Government Urban	Feb	\N
province	NC	2016	Government Urban	Mar	50
province	NC	2016	Government Urban	Apr	\N
province	NC	2016	Government Urban	May	\N
province	NC	2016	Government Urban	Jun	\N
province	NC	2016	Government Urban	Jul	\N
province	NC	2016	Private	Aug	31
province	NC	2016	Private	Sep	1
province	NC	2016	Private	Oct	\N
province	NC	2016	Private	Nov	\N
province	NC	2016	Private	Dec	1
province	NC	2016	Private	Jan	3
province	NC	2016	Private	Feb	11
province	NC	2016	Private	Mar	26
province	NC	2016	Private	Apr	2
province	NC	2016	Private	May	\N
province	NC	2016	Private	Jun	23
province	NC	2016	Private	Jul	\N
province	NC	2016	Other	Aug	8
province	NC	2016	Other	Sep	\N
province	NC	2016	Other	Oct	15
province	NC	2016	Other	Nov	18
province	NC	2016	Other	Dec	12
province	NC	2016	Other	Jan	\N
province	NC	2016	Other	Feb	\N
province	NC	2016	Other	Mar	36
province	NC	2016	Other	Apr	30
province	NC	2016	Other	May	\N
province	NC	2016	Other	Jun	\N
province	NC	2016	Other	Jul	\N
\.


--
-- PostgreSQL database dump complete
--

