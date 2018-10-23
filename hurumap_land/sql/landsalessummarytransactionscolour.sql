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

DROP TABLE IF EXISTS public.landsalessummarytransactionscolour;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalessummarytransactionscolour; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalessummarytransactionscolour (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_breakdown character varying(128) NOT NULL,
    month character varying(100) NOT NULL,
    total integer
);


ALTER TABLE public.landsalessummarytransactionscolour OWNER TO our_land;

--
-- Data for Name: landsalessummarytransactionscolour; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalessummarytransactionscolour (geo_level, geo_code, geo_version, land_breakdown, month, total) FROM stdin;
country	ZA	2016	all	Aug	388
country	ZA	2016	all	Sep	364
country	ZA	2016	all	Oct	433
country	ZA	2016	all	Nov	273
country	ZA	2016	all	Dec	385
country	ZA	2016	all	Jan	266
country	ZA	2016	all	Feb	370
country	ZA	2016	all	Mar	417
country	ZA	2016	all	Apr	316
country	ZA	2016	all	May	384
country	ZA	2016	all	Jun	344
country	ZA	2016	all	Jul	281
country	ZA	2016	colour	Aug	81
country	ZA	2016	colour	Sep	71
country	ZA	2016	colour	Oct	85
country	ZA	2016	colour	Nov	53
country	ZA	2016	colour	Dec	64
country	ZA	2016	colour	Jan	47
country	ZA	2016	colour	Feb	67
country	ZA	2016	colour	Mar	107
country	ZA	2016	colour	Apr	67
country	ZA	2016	colour	May	77
country	ZA	2016	colour	Jun	57
country	ZA	2016	colour	Jul	72
country	ZA	2016	Government Agriculture	Aug	8
country	ZA	2016	Government Agriculture	Sep	7
country	ZA	2016	Government Agriculture	Oct	3
country	ZA	2016	Government Agriculture	Nov	3
country	ZA	2016	Government Agriculture	Dec	5
country	ZA	2016	Government Agriculture	Jan	2
country	ZA	2016	Government Agriculture	Feb	3
country	ZA	2016	Government Agriculture	Mar	9
country	ZA	2016	Government Agriculture	Apr	2
country	ZA	2016	Government Agriculture	May	3
country	ZA	2016	Government Agriculture	Jun	2
country	ZA	2016	Government Agriculture	Jul	6
country	ZA	2016	Government Urban	Aug	1
country	ZA	2016	Government Urban	Sep	\N
country	ZA	2016	Government Urban	Oct	3
country	ZA	2016	Government Urban	Nov	1
country	ZA	2016	Government Urban	Dec	1
country	ZA	2016	Government Urban	Jan	1
country	ZA	2016	Government Urban	Feb	2
country	ZA	2016	Government Urban	Mar	2
country	ZA	2016	Government Urban	Apr	\N
country	ZA	2016	Government Urban	May	1
country	ZA	2016	Government Urban	Jun	\N
country	ZA	2016	Government Urban	Jul	4
country	ZA	2016	Private	Aug	65
country	ZA	2016	Private	Sep	58
country	ZA	2016	Private	Oct	71
country	ZA	2016	Private	Nov	37
country	ZA	2016	Private	Dec	52
country	ZA	2016	Private	Jan	40
country	ZA	2016	Private	Feb	51
country	ZA	2016	Private	Mar	79
country	ZA	2016	Private	Apr	58
country	ZA	2016	Private	May	65
country	ZA	2016	Private	Jun	48
country	ZA	2016	Private	Jul	59
country	ZA	2016	Other	Aug	7
country	ZA	2016	Other	Sep	6
country	ZA	2016	Other	Oct	8
country	ZA	2016	Other	Nov	12
country	ZA	2016	Other	Dec	6
country	ZA	2016	Other	Jan	4
country	ZA	2016	Other	Feb	11
country	ZA	2016	Other	Mar	17
country	ZA	2016	Other	Apr	7
country	ZA	2016	Other	May	8
country	ZA	2016	Other	Jun	7
country	ZA	2016	Other	Jul	3
province	EC	2016	all	Aug	37
province	EC	2016	all	Sep	36
province	EC	2016	all	Oct	49
province	EC	2016	all	Nov	17
province	EC	2016	all	Dec	19
province	EC	2016	all	Jan	19
province	EC	2016	all	Feb	24
province	EC	2016	all	Mar	32
province	EC	2016	all	Apr	32
province	EC	2016	all	May	19
province	EC	2016	all	Jun	32
province	EC	2016	all	Jul	42
province	EC	2016	colour	Aug	9
province	EC	2016	colour	Sep	4
province	EC	2016	colour	Oct	6
province	EC	2016	colour	Nov	4
province	EC	2016	colour	Dec	5
province	EC	2016	colour	Jan	1
province	EC	2016	colour	Feb	4
province	EC	2016	colour	Mar	7
province	EC	2016	colour	Apr	6
province	EC	2016	colour	May	3
province	EC	2016	colour	Jun	5
province	EC	2016	colour	Jul	13
province	EC	2016	Government Agriculture	Aug	\N
province	EC	2016	Government Agriculture	Sep	1
province	EC	2016	Government Agriculture	Oct	\N
province	EC	2016	Government Agriculture	Nov	\N
province	EC	2016	Government Agriculture	Dec	1
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
province	EC	2016	Government Urban	Feb	1
province	EC	2016	Government Urban	Mar	\N
province	EC	2016	Government Urban	Apr	\N
province	EC	2016	Government Urban	May	\N
province	EC	2016	Government Urban	Jun	\N
province	EC	2016	Government Urban	Jul	\N
province	EC	2016	Private	Aug	8
province	EC	2016	Private	Sep	3
province	EC	2016	Private	Oct	5
province	EC	2016	Private	Nov	3
province	EC	2016	Private	Dec	4
province	EC	2016	Private	Jan	1
province	EC	2016	Private	Feb	2
province	EC	2016	Private	Mar	4
province	EC	2016	Private	Apr	6
province	EC	2016	Private	May	3
province	EC	2016	Private	Jun	5
province	EC	2016	Private	Jul	13
province	EC	2016	Other	Aug	1
province	EC	2016	Other	Sep	\N
province	EC	2016	Other	Oct	1
province	EC	2016	Other	Nov	1
province	EC	2016	Other	Dec	\N
province	EC	2016	Other	Jan	\N
province	EC	2016	Other	Feb	1
province	EC	2016	Other	Mar	3
province	EC	2016	Other	Apr	\N
province	EC	2016	Other	May	\N
province	EC	2016	Other	Jun	\N
province	EC	2016	Other	Jul	\N
province	FS	2016	all	Aug	69
province	FS	2016	all	Sep	49
province	FS	2016	all	Oct	63
province	FS	2016	all	Nov	35
province	FS	2016	all	Dec	52
province	FS	2016	all	Jan	44
province	FS	2016	all	Feb	70
province	FS	2016	all	Mar	75
province	FS	2016	all	Apr	40
province	FS	2016	all	May	65
province	FS	2016	all	Jun	36
province	FS	2016	all	Jul	45
province	FS	2016	colour	Aug	8
province	FS	2016	colour	Sep	6
province	FS	2016	colour	Oct	6
province	FS	2016	colour	Nov	4
province	FS	2016	colour	Dec	5
province	FS	2016	colour	Jan	3
province	FS	2016	colour	Feb	7
province	FS	2016	colour	Mar	13
province	FS	2016	colour	Apr	5
province	FS	2016	colour	May	11
province	FS	2016	colour	Jun	7
province	FS	2016	colour	Jul	10
province	FS	2016	Government Agriculture	Aug	1
province	FS	2016	Government Agriculture	Sep	\N
province	FS	2016	Government Agriculture	Oct	\N
province	FS	2016	Government Agriculture	Nov	\N
province	FS	2016	Government Agriculture	Dec	\N
province	FS	2016	Government Agriculture	Jan	2
province	FS	2016	Government Agriculture	Feb	\N
province	FS	2016	Government Agriculture	Mar	1
province	FS	2016	Government Agriculture	Apr	\N
province	FS	2016	Government Agriculture	May	\N
province	FS	2016	Government Agriculture	Jun	\N
province	FS	2016	Government Agriculture	Jul	3
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
province	FS	2016	Private	Aug	5
province	FS	2016	Private	Sep	6
province	FS	2016	Private	Oct	5
province	FS	2016	Private	Nov	3
province	FS	2016	Private	Dec	4
province	FS	2016	Private	Jan	1
province	FS	2016	Private	Feb	7
province	FS	2016	Private	Mar	10
province	FS	2016	Private	Apr	4
province	FS	2016	Private	May	10
province	FS	2016	Private	Jun	6
province	FS	2016	Private	Jul	7
province	FS	2016	Other	Aug	2
province	FS	2016	Other	Sep	\N
province	FS	2016	Other	Oct	1
province	FS	2016	Other	Nov	1
province	FS	2016	Other	Dec	1
province	FS	2016	Other	Jan	\N
province	FS	2016	Other	Feb	\N
province	FS	2016	Other	Mar	2
province	FS	2016	Other	Apr	1
province	FS	2016	Other	May	1
province	FS	2016	Other	Jun	1
province	FS	2016	Other	Jul	\N
province	GT	2016	all	Aug	51
province	GT	2016	all	Sep	43
province	GT	2016	all	Oct	43
province	GT	2016	all	Nov	27
province	GT	2016	all	Dec	36
province	GT	2016	all	Jan	28
province	GT	2016	all	Feb	51
province	GT	2016	all	Mar	43
province	GT	2016	all	Apr	38
province	GT	2016	all	May	38
province	GT	2016	all	Jun	37
province	GT	2016	all	Jul	32
province	GT	2016	colour	Aug	13
province	GT	2016	colour	Sep	14
province	GT	2016	colour	Oct	15
province	GT	2016	colour	Nov	5
province	GT	2016	colour	Dec	7
province	GT	2016	colour	Jan	5
province	GT	2016	colour	Feb	6
province	GT	2016	colour	Mar	13
province	GT	2016	colour	Apr	9
province	GT	2016	colour	May	10
province	GT	2016	colour	Jun	12
province	GT	2016	colour	Jul	10
province	GT	2016	Government Agriculture	Aug	2
province	GT	2016	Government Agriculture	Sep	\N
province	GT	2016	Government Agriculture	Oct	\N
province	GT	2016	Government Agriculture	Nov	\N
province	GT	2016	Government Agriculture	Dec	1
province	GT	2016	Government Agriculture	Jan	\N
province	GT	2016	Government Agriculture	Feb	1
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
province	GT	2016	Government Urban	Jan	1
province	GT	2016	Government Urban	Feb	\N
province	GT	2016	Government Urban	Mar	\N
province	GT	2016	Government Urban	Apr	\N
province	GT	2016	Government Urban	May	\N
province	GT	2016	Government Urban	Jun	\N
province	GT	2016	Government Urban	Jul	2
province	GT	2016	Private	Aug	11
province	GT	2016	Private	Sep	13
province	GT	2016	Private	Oct	15
province	GT	2016	Private	Nov	3
province	GT	2016	Private	Dec	6
province	GT	2016	Private	Jan	3
province	GT	2016	Private	Feb	5
province	GT	2016	Private	Mar	10
province	GT	2016	Private	Apr	9
province	GT	2016	Private	May	7
province	GT	2016	Private	Jun	10
province	GT	2016	Private	Jul	8
province	GT	2016	Other	Aug	\N
province	GT	2016	Other	Sep	1
province	GT	2016	Other	Oct	\N
province	GT	2016	Other	Nov	2
province	GT	2016	Other	Dec	\N
province	GT	2016	Other	Jan	1
province	GT	2016	Other	Feb	\N
province	GT	2016	Other	Mar	3
province	GT	2016	Other	Apr	\N
province	GT	2016	Other	May	3
province	GT	2016	Other	Jun	2
province	GT	2016	Other	Jul	\N
province	KZN	2016	all	Aug	36
province	KZN	2016	all	Sep	26
province	KZN	2016	all	Oct	49
province	KZN	2016	all	Nov	29
province	KZN	2016	all	Dec	35
province	KZN	2016	all	Jan	19
province	KZN	2016	all	Feb	12
province	KZN	2016	all	Mar	50
province	KZN	2016	all	Apr	30
province	KZN	2016	all	May	37
province	KZN	2016	all	Jun	32
province	KZN	2016	all	Jul	25
province	KZN	2016	colour	Aug	8
province	KZN	2016	colour	Sep	10
province	KZN	2016	colour	Oct	22
province	KZN	2016	colour	Nov	8
province	KZN	2016	colour	Dec	10
province	KZN	2016	colour	Jan	6
province	KZN	2016	colour	Feb	8
province	KZN	2016	colour	Mar	27
province	KZN	2016	colour	Apr	9
province	KZN	2016	colour	May	15
province	KZN	2016	colour	Jun	4
province	KZN	2016	colour	Jul	10
province	KZN	2016	Government Agriculture	Aug	\N
province	KZN	2016	Government Agriculture	Sep	\N
province	KZN	2016	Government Agriculture	Oct	2
province	KZN	2016	Government Agriculture	Nov	\N
province	KZN	2016	Government Agriculture	Dec	1
province	KZN	2016	Government Agriculture	Jan	\N
province	KZN	2016	Government Agriculture	Feb	1
province	KZN	2016	Government Agriculture	Mar	3
province	KZN	2016	Government Agriculture	Apr	\N
province	KZN	2016	Government Agriculture	May	\N
province	KZN	2016	Government Agriculture	Jun	\N
province	KZN	2016	Government Agriculture	Jul	\N
province	KZN	2016	Government Urban	Aug	\N
province	KZN	2016	Government Urban	Sep	\N
province	KZN	2016	Government Urban	Oct	\N
province	KZN	2016	Government Urban	Nov	\N
province	KZN	2016	Government Urban	Dec	1
province	KZN	2016	Government Urban	Jan	\N
province	KZN	2016	Government Urban	Feb	\N
province	KZN	2016	Government Urban	Mar	\N
province	KZN	2016	Government Urban	Apr	\N
province	KZN	2016	Government Urban	May	\N
province	KZN	2016	Government Urban	Jun	\N
province	KZN	2016	Government Urban	Jul	\N
province	KZN	2016	Private	Aug	8
province	KZN	2016	Private	Sep	8
province	KZN	2016	Private	Oct	20
province	KZN	2016	Private	Nov	8
province	KZN	2016	Private	Dec	8
province	KZN	2016	Private	Jan	6
province	KZN	2016	Private	Feb	4
province	KZN	2016	Private	Mar	22
province	KZN	2016	Private	Apr	8
province	KZN	2016	Private	May	14
province	KZN	2016	Private	Jun	4
province	KZN	2016	Private	Jul	10
province	KZN	2016	Other	Aug	\N
province	KZN	2016	Other	Sep	2
province	KZN	2016	Other	Oct	\N
province	KZN	2016	Other	Nov	\N
province	KZN	2016	Other	Dec	\N
province	KZN	2016	Other	Jan	\N
province	KZN	2016	Other	Feb	3
province	KZN	2016	Other	Mar	2
province	KZN	2016	Other	Apr	1
province	KZN	2016	Other	May	1
province	KZN	2016	Other	Jun	\N
province	KZN	2016	Other	Jul	\N
province	LIM	2016	all	Aug	46
province	LIM	2016	all	Sep	45
province	LIM	2016	all	Oct	41
province	LIM	2016	all	Nov	39
province	LIM	2016	all	Dec	52
province	LIM	2016	all	Jan	28
province	LIM	2016	all	Feb	44
province	LIM	2016	all	Mar	45
province	LIM	2016	all	Apr	36
province	LIM	2016	all	May	49
province	LIM	2016	all	Jun	36
province	LIM	2016	all	Jul	35
province	LIM	2016	colour	Aug	10
province	LIM	2016	colour	Sep	5
province	LIM	2016	colour	Oct	6
province	LIM	2016	colour	Nov	9
province	LIM	2016	colour	Dec	8
province	LIM	2016	colour	Jan	7
province	LIM	2016	colour	Feb	11
province	LIM	2016	colour	Mar	12
province	LIM	2016	colour	Apr	8
province	LIM	2016	colour	May	15
province	LIM	2016	colour	Jun	5
province	LIM	2016	colour	Jul	9
province	LIM	2016	Government Agriculture	Aug	\N
province	LIM	2016	Government Agriculture	Sep	2
province	LIM	2016	Government Agriculture	Oct	\N
province	LIM	2016	Government Agriculture	Nov	1
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
province	LIM	2016	Government Urban	Feb	1
province	LIM	2016	Government Urban	Mar	1
province	LIM	2016	Government Urban	Apr	\N
province	LIM	2016	Government Urban	May	\N
province	LIM	2016	Government Urban	Jun	\N
province	LIM	2016	Government Urban	Jul	1
province	LIM	2016	Private	Aug	10
province	LIM	2016	Private	Sep	3
province	LIM	2016	Private	Oct	5
province	LIM	2016	Private	Nov	6
province	LIM	2016	Private	Dec	7
province	LIM	2016	Private	Jan	6
province	LIM	2016	Private	Feb	8
province	LIM	2016	Private	Mar	10
province	LIM	2016	Private	Apr	7
province	LIM	2016	Private	May	15
province	LIM	2016	Private	Jun	2
province	LIM	2016	Private	Jul	8
province	LIM	2016	Other	Aug	\N
province	LIM	2016	Other	Sep	\N
province	LIM	2016	Other	Oct	1
province	LIM	2016	Other	Nov	1
province	LIM	2016	Other	Dec	1
province	LIM	2016	Other	Jan	1
province	LIM	2016	Other	Feb	2
province	LIM	2016	Other	Mar	1
province	LIM	2016	Other	Apr	1
province	LIM	2016	Other	May	\N
province	LIM	2016	Other	Jun	3
province	LIM	2016	Other	Jul	\N
province	MP	2016	all	Aug	28
province	MP	2016	all	Sep	20
province	MP	2016	all	Oct	35
province	MP	2016	all	Nov	33
province	MP	2016	all	Dec	36
province	MP	2016	all	Jan	27
province	MP	2016	all	Feb	58
province	MP	2016	all	Mar	30
province	MP	2016	all	Apr	27
province	MP	2016	all	May	48
province	MP	2016	all	Jun	30
province	MP	2016	all	Jul	28
province	MP	2016	colour	Aug	9
province	MP	2016	colour	Sep	9
province	MP	2016	colour	Oct	9
province	MP	2016	colour	Nov	12
province	MP	2016	colour	Dec	6
province	MP	2016	colour	Jan	8
province	MP	2016	colour	Feb	13
province	MP	2016	colour	Mar	11
province	MP	2016	colour	Apr	8
province	MP	2016	colour	May	7
province	MP	2016	colour	Jun	5
province	MP	2016	colour	Jul	12
province	MP	2016	Government Agriculture	Aug	1
province	MP	2016	Government Agriculture	Sep	1
province	MP	2016	Government Agriculture	Oct	1
province	MP	2016	Government Agriculture	Nov	1
province	MP	2016	Government Agriculture	Dec	1
province	MP	2016	Government Agriculture	Jan	\N
province	MP	2016	Government Agriculture	Feb	1
province	MP	2016	Government Agriculture	Mar	\N
province	MP	2016	Government Agriculture	Apr	\N
province	MP	2016	Government Agriculture	May	\N
province	MP	2016	Government Agriculture	Jun	\N
province	MP	2016	Government Agriculture	Jul	2
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
province	MP	2016	Government Urban	Jul	1
province	MP	2016	Private	Aug	6
province	MP	2016	Private	Sep	6
province	MP	2016	Private	Oct	7
province	MP	2016	Private	Nov	6
province	MP	2016	Private	Dec	4
province	MP	2016	Private	Jan	6
province	MP	2016	Private	Feb	9
province	MP	2016	Private	Mar	9
province	MP	2016	Private	Apr	7
province	MP	2016	Private	May	6
province	MP	2016	Private	Jun	5
province	MP	2016	Private	Jul	8
province	MP	2016	Other	Aug	2
province	MP	2016	Other	Sep	2
province	MP	2016	Other	Oct	1
province	MP	2016	Other	Nov	5
province	MP	2016	Other	Dec	1
province	MP	2016	Other	Jan	2
province	MP	2016	Other	Feb	3
province	MP	2016	Other	Mar	2
province	MP	2016	Other	Apr	1
province	MP	2016	Other	May	1
province	MP	2016	Other	Jun	\N
province	MP	2016	Other	Jul	1
province	NC	2016	all	Aug	35
province	NC	2016	all	Sep	28
province	NC	2016	all	Oct	37
province	NC	2016	all	Nov	11
province	NC	2016	all	Dec	38
province	NC	2016	all	Jan	14
province	NC	2016	all	Feb	24
province	NC	2016	all	Mar	26
province	NC	2016	all	Apr	14
province	NC	2016	all	May	24
province	NC	2016	all	Jun	31
province	NC	2016	all	Jul	12
province	NC	2016	colour	Aug	5
province	NC	2016	colour	Sep	6
province	NC	2016	colour	Oct	3
province	NC	2016	colour	Nov	1
province	NC	2016	colour	Dec	3
province	NC	2016	colour	Jan	1
province	NC	2016	colour	Feb	2
province	NC	2016	colour	Mar	6
province	NC	2016	colour	Apr	3
province	NC	2016	colour	May	\N
province	NC	2016	colour	Jun	4
province	NC	2016	colour	Jul	\N
province	NC	2016	Government Agriculture	Aug	2
province	NC	2016	Government Agriculture	Sep	1
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
province	NC	2016	Government Urban	Oct	1
province	NC	2016	Government Urban	Nov	\N
province	NC	2016	Government Urban	Dec	\N
province	NC	2016	Government Urban	Jan	\N
province	NC	2016	Government Urban	Feb	\N
province	NC	2016	Government Urban	Mar	1
province	NC	2016	Government Urban	Apr	\N
province	NC	2016	Government Urban	May	\N
province	NC	2016	Government Urban	Jun	\N
province	NC	2016	Government Urban	Jul	\N
province	NC	2016	Private	Aug	2
province	NC	2016	Private	Sep	5
province	NC	2016	Private	Oct	\N
province	NC	2016	Private	Nov	\N
province	NC	2016	Private	Dec	1
province	NC	2016	Private	Jan	1
province	NC	2016	Private	Feb	1
province	NC	2016	Private	Mar	2
province	NC	2016	Private	Apr	2
province	NC	2016	Private	May	\N
province	NC	2016	Private	Jun	4
province	NC	2016	Private	Jul	\N
province	NC	2016	Other	Aug	1
province	NC	2016	Other	Sep	\N
province	NC	2016	Other	Oct	2
province	NC	2016	Other	Nov	1
province	NC	2016	Other	Dec	2
province	NC	2016	Other	Jan	\N
province	NC	2016	Other	Feb	1
province	NC	2016	Other	Mar	3
province	NC	2016	Other	Apr	1
province	NC	2016	Other	May	\N
province	NC	2016	Other	Jun	\N
province	NC	2016	Other	Jul	\N
province	NW	2016	all	Aug	44
province	NW	2016	all	Sep	63
province	NW	2016	all	Oct	53
province	NW	2016	all	Nov	40
province	NW	2016	all	Dec	64
province	NW	2016	all	Jan	49
province	NW	2016	all	Feb	49
province	NW	2016	all	Mar	62
province	NW	2016	all	Apr	46
province	NW	2016	all	May	52
province	NW	2016	all	Jun	67
province	NW	2016	all	Jul	36
province	NW	2016	colour	Aug	14
province	NW	2016	colour	Sep	12
province	NW	2016	colour	Oct	17
province	NW	2016	colour	Nov	8
province	NW	2016	colour	Dec	17
province	NW	2016	colour	Jan	13
province	NW	2016	colour	Feb	10
province	NW	2016	colour	Mar	14
province	NW	2016	colour	Apr	13
province	NW	2016	colour	May	13
province	NW	2016	colour	Jun	12
province	NW	2016	colour	Jul	8
province	NW	2016	Government Agriculture	Aug	2
province	NW	2016	Government Agriculture	Sep	1
province	NW	2016	Government Agriculture	Oct	\N
province	NW	2016	Government Agriculture	Nov	1
province	NW	2016	Government Agriculture	Dec	1
province	NW	2016	Government Agriculture	Jan	\N
province	NW	2016	Government Agriculture	Feb	\N
province	NW	2016	Government Agriculture	Mar	5
province	NW	2016	Government Agriculture	Apr	\N
province	NW	2016	Government Agriculture	May	2
province	NW	2016	Government Agriculture	Jun	2
province	NW	2016	Government Agriculture	Jul	1
province	NW	2016	Government Urban	Aug	\N
province	NW	2016	Government Urban	Sep	\N
province	NW	2016	Government Urban	Oct	2
province	NW	2016	Government Urban	Nov	\N
province	NW	2016	Government Urban	Dec	\N
province	NW	2016	Government Urban	Jan	\N
province	NW	2016	Government Urban	Feb	\N
province	NW	2016	Government Urban	Mar	\N
province	NW	2016	Government Urban	Apr	\N
province	NW	2016	Government Urban	May	1
province	NW	2016	Government Urban	Jun	\N
province	NW	2016	Government Urban	Jul	\N
province	NW	2016	Private	Aug	12
province	NW	2016	Private	Sep	10
province	NW	2016	Private	Oct	13
province	NW	2016	Private	Nov	6
province	NW	2016	Private	Dec	16
province	NW	2016	Private	Jan	13
province	NW	2016	Private	Feb	10
province	NW	2016	Private	Mar	9
province	NW	2016	Private	Apr	11
province	NW	2016	Private	May	8
province	NW	2016	Private	Jun	9
province	NW	2016	Private	Jul	5
province	NW	2016	Other	Aug	\N
province	NW	2016	Other	Sep	1
province	NW	2016	Other	Oct	2
province	NW	2016	Other	Nov	1
province	NW	2016	Other	Dec	\N
province	NW	2016	Other	Jan	\N
province	NW	2016	Other	Feb	\N
province	NW	2016	Other	Mar	\N
province	NW	2016	Other	Apr	2
province	NW	2016	Other	May	2
province	NW	2016	Other	Jun	1
province	NW	2016	Other	Jul	2
province	WC	2016	all	Aug	42
province	WC	2016	all	Sep	54
province	WC	2016	all	Oct	63
province	WC	2016	all	Nov	42
province	WC	2016	all	Dec	53
province	WC	2016	all	Jan	38
province	WC	2016	all	Feb	38
province	WC	2016	all	Mar	54
province	WC	2016	all	Apr	53
province	WC	2016	all	May	52
province	WC	2016	all	Jun	43
province	WC	2016	all	Jul	26
province	WC	2016	colour	Aug	5
province	WC	2016	colour	Sep	5
province	WC	2016	colour	Oct	1
province	WC	2016	colour	Nov	2
province	WC	2016	colour	Dec	3
province	WC	2016	colour	Jan	3
province	WC	2016	colour	Feb	6
province	WC	2016	colour	Mar	4
province	WC	2016	colour	Apr	6
province	WC	2016	colour	May	3
province	WC	2016	colour	Jun	3
province	WC	2016	colour	Jul	\N
province	WC	2016	Government Agriculture	Aug	\N
province	WC	2016	Government Agriculture	Sep	1
province	WC	2016	Government Agriculture	Oct	\N
province	WC	2016	Government Agriculture	Nov	\N
province	WC	2016	Government Agriculture	Dec	\N
province	WC	2016	Government Agriculture	Jan	\N
province	WC	2016	Government Agriculture	Feb	\N
province	WC	2016	Government Agriculture	Mar	\N
province	WC	2016	Government Agriculture	Apr	2
province	WC	2016	Government Agriculture	May	1
province	WC	2016	Government Agriculture	Jun	\N
province	WC	2016	Government Agriculture	Jul	\N
province	WC	2016	Government Urban	Aug	1
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
province	WC	2016	Private	Aug	3
province	WC	2016	Private	Sep	4
province	WC	2016	Private	Oct	1
province	WC	2016	Private	Nov	2
province	WC	2016	Private	Dec	2
province	WC	2016	Private	Jan	3
province	WC	2016	Private	Feb	5
province	WC	2016	Private	Mar	3
province	WC	2016	Private	Apr	4
province	WC	2016	Private	May	2
province	WC	2016	Private	Jun	3
province	WC	2016	Private	Jul	\N
province	WC	2016	Other	Aug	1
province	WC	2016	Other	Sep	\N
province	WC	2016	Other	Oct	\N
province	WC	2016	Other	Nov	\N
province	WC	2016	Other	Dec	1
province	WC	2016	Other	Jan	\N
province	WC	2016	Other	Feb	1
province	WC	2016	Other	Mar	1
province	WC	2016	Other	Apr	\N
province	WC	2016	Other	May	\N
province	WC	2016	Other	Jun	\N
province	WC	2016	Other	Jul	\N
\.


--
-- PostgreSQL database dump complete
--
