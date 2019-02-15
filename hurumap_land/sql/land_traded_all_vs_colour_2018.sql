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
    total integer
);


--
-- Data for Name: land_traded_all_vs_colour_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_all_vs_colour_2018 (geo_level, geo_code, geo_version, transaction_group, month, total) FROM stdin;
country	ZA	2016	all	Dec	385
country	ZA	2016	colour	Dec	64
country	ZA	2016	all	Jan	266
country	ZA	2016	colour	Jan	47
country	ZA	2016	all	Feb	370
country	ZA	2016	colour	Feb	67
country	ZA	2016	all	Mar	417
country	ZA	2016	colour	Mar	107
country	ZA	2016	all	Apr	316
country	ZA	2016	colour	Apr	67
country	ZA	2016	all	May	384
country	ZA	2016	colour	May	77
country	ZA	2016	all	Jun	344
country	ZA	2016	colour	Jun	57
country	ZA	2016	all	Jul	281
country	ZA	2016	colour	Jul	72
country	ZA	2016	all	Aug	304
country	ZA	2016	colour	Aug	65
country	ZA	2016	all	Sep	292
country	ZA	2016	colour	Sep	51
country	ZA	2016	all	Oct	460
country	ZA	2016	colour	Oct	97
country	ZA	2016	all	Nov	323
country	ZA	2016	colour	Nov	56
province	EC	2016	all	Dec	19
province	EC	2016	colour	Dec	5
province	EC	2016	all	Jan	19
province	EC	2016	colour	Jan	1
province	EC	2016	all	Feb	24
province	EC	2016	colour	Feb	4
province	EC	2016	all	Mar	32
province	EC	2016	colour	Mar	7
province	EC	2016	all	Apr	32
province	EC	2016	colour	Apr	6
province	EC	2016	all	May	19
province	EC	2016	colour	May	3
province	EC	2016	all	Jun	32
province	EC	2016	colour	Jun	5
province	EC	2016	all	Jul	42
province	EC	2016	colour	Jul	13
province	EC	2016	all	Aug	35
province	EC	2016	colour	Aug	6
province	EC	2016	all	Sep	34
province	EC	2016	colour	Sep	6
province	EC	2016	all	Oct	40
province	EC	2016	colour	Oct	4
province	EC	2016	all	Nov	30
province	EC	2016	colour	Nov	6
province	FS	2016	all	Dec	52
province	FS	2016	colour	Dec	5
province	FS	2016	all	Jan	44
province	FS	2016	colour	Jan	3
province	FS	2016	all	Feb	70
province	FS	2016	colour	Feb	7
province	FS	2016	all	Mar	75
province	FS	2016	colour	Mar	13
province	FS	2016	all	Apr	40
province	FS	2016	colour	Apr	5
province	FS	2016	all	May	65
province	FS	2016	colour	May	11
province	FS	2016	all	Jun	36
province	FS	2016	colour	Jun	7
province	FS	2016	all	Jul	45
province	FS	2016	colour	Jul	10
province	FS	2016	all	Aug	42
province	FS	2016	colour	Aug	5
province	FS	2016	all	Sep	51
province	FS	2016	colour	Sep	5
province	FS	2016	all	Oct	60
province	FS	2016	colour	Oct	11
province	FS	2016	all	Nov	50
province	FS	2016	colour	Nov	4
province	GT	2016	all	Dec	36
province	GT	2016	colour	Dec	7
province	GT	2016	all	Jan	28
province	GT	2016	colour	Jan	5
province	GT	2016	all	Feb	51
province	GT	2016	colour	Feb	6
province	GT	2016	all	Mar	43
province	GT	2016	colour	Mar	13
province	GT	2016	all	Apr	38
province	GT	2016	colour	Apr	9
province	GT	2016	all	May	38
province	GT	2016	colour	May	10
province	GT	2016	all	Jun	37
province	GT	2016	colour	Jun	12
province	GT	2016	all	Jul	32
province	GT	2016	colour	Jul	10
province	GT	2016	all	Aug	32
province	GT	2016	colour	Aug	7
province	GT	2016	all	Sep	32
province	GT	2016	colour	Sep	8
province	GT	2016	all	Oct	67
province	GT	2016	colour	Oct	21
province	GT	2016	all	Nov	38
province	GT	2016	colour	Nov	11
province	KZN	2016	all	Dec	35
province	KZN	2016	colour	Dec	10
province	KZN	2016	all	Jan	19
province	KZN	2016	colour	Jan	6
province	KZN	2016	all	Feb	12
province	KZN	2016	colour	Feb	8
province	KZN	2016	all	Mar	50
province	KZN	2016	colour	Mar	27
province	KZN	2016	all	Apr	30
province	KZN	2016	colour	Apr	9
province	KZN	2016	all	May	37
province	KZN	2016	colour	May	15
province	KZN	2016	all	Jun	32
province	KZN	2016	colour	Jun	4
province	KZN	2016	all	Jul	25
province	KZN	2016	colour	Jul	10
province	KZN	2016	all	Aug	24
province	KZN	2016	colour	Aug	7
province	KZN	2016	all	Sep	33
province	KZN	2016	colour	Sep	4
province	KZN	2016	all	Oct	40
province	KZN	2016	colour	Oct	13
province	KZN	2016	all	Nov	19
province	KZN	2016	colour	Nov	11
province	LIM	2016	all	Dec	52
province	LIM	2016	colour	Dec	8
province	LIM	2016	all	Jan	28
province	LIM	2016	colour	Jan	7
province	LIM	2016	all	Feb	44
province	LIM	2016	colour	Feb	11
province	LIM	2016	all	Mar	45
province	LIM	2016	colour	Mar	12
province	LIM	2016	all	Apr	36
province	LIM	2016	colour	Apr	8
province	LIM	2016	all	May	49
province	LIM	2016	colour	May	15
province	LIM	2016	all	Jun	36
province	LIM	2016	colour	Jun	5
province	LIM	2016	all	Jul	35
province	LIM	2016	colour	Jul	9
province	LIM	2016	all	Aug	38
province	LIM	2016	colour	Aug	8
province	LIM	2016	all	Sep	24
province	LIM	2016	colour	Sep	3
province	LIM	2016	all	Oct	66
province	LIM	2016	colour	Oct	11
province	LIM	2016	all	Nov	39
province	LIM	2016	colour	Nov	9
province	MP	2016	all	Dec	36
province	MP	2016	colour	Dec	6
province	MP	2016	all	Jan	27
province	MP	2016	colour	Jan	8
province	MP	2016	all	Feb	58
province	MP	2016	colour	Feb	13
province	MP	2016	all	Mar	30
province	MP	2016	colour	Mar	11
province	MP	2016	all	Apr	27
province	MP	2016	colour	Apr	8
province	MP	2016	all	May	48
province	MP	2016	colour	May	7
province	MP	2016	all	Jun	30
province	MP	2016	colour	Jun	5
province	MP	2016	all	Jul	28
province	MP	2016	colour	Jul	12
province	MP	2016	all	Aug	30
province	MP	2016	colour	Aug	9
province	MP	2016	all	Sep	24
province	MP	2016	colour	Sep	11
province	MP	2016	all	Oct	50
province	MP	2016	colour	Oct	18
province	MP	2016	all	Nov	37
province	MP	2016	colour	Nov	8
province	NC	2016	all	Dec	38
province	NC	2016	colour	Dec	3
province	NC	2016	all	Jan	14
province	NC	2016	colour	Jan	1
province	NC	2016	all	Feb	24
province	NC	2016	colour	Feb	2
province	NC	2016	all	Mar	26
province	NC	2016	colour	Mar	6
province	NC	2016	all	Apr	14
province	NC	2016	colour	Apr	3
province	NC	2016	all	May	24
province	NC	2016	colour	May	\N
province	NC	2016	all	Jun	31
province	NC	2016	colour	Jun	4
province	NC	2016	all	Jul	12
province	NC	2016	colour	Jul	\N
province	NC	2016	all	Aug	26
province	NC	2016	colour	Aug	4
province	NC	2016	all	Sep	22
province	NC	2016	colour	Sep	1
province	NC	2016	all	Oct	29
province	NC	2016	colour	Oct	3
province	NC	2016	all	Nov	18
province	NC	2016	colour	Nov	1
province	NW	2016	all	Dec	64
province	NW	2016	colour	Dec	17
province	NW	2016	all	Jan	49
province	NW	2016	colour	Jan	13
province	NW	2016	all	Feb	49
province	NW	2016	colour	Feb	10
province	NW	2016	all	Mar	62
province	NW	2016	colour	Mar	14
province	NW	2016	all	Apr	46
province	NW	2016	colour	Apr	13
province	NW	2016	all	May	52
province	NW	2016	colour	May	13
province	NW	2016	all	Jun	67
province	NW	2016	colour	Jun	12
province	NW	2016	all	Jul	36
province	NW	2016	colour	Jul	8
province	NW	2016	all	Aug	41
province	NW	2016	colour	Aug	14
province	NW	2016	all	Sep	31
province	NW	2016	colour	Sep	7
province	NW	2016	all	Oct	52
province	NW	2016	colour	Oct	12
province	NW	2016	all	Nov	37
province	NW	2016	colour	Nov	4
province	WC	2016	all	Dec	53
province	WC	2016	colour	Dec	3
province	WC	2016	all	Jan	38
province	WC	2016	colour	Jan	3
province	WC	2016	all	Feb	38
province	WC	2016	colour	Feb	6
province	WC	2016	all	Mar	54
province	WC	2016	colour	Mar	4
province	WC	2016	all	Apr	53
province	WC	2016	colour	Apr	6
province	WC	2016	all	May	52
province	WC	2016	colour	May	3
province	WC	2016	all	Jun	43
province	WC	2016	colour	Jun	3
province	WC	2016	all	Jul	26
province	WC	2016	colour	Jul	\N
province	WC	2016	all	Aug	36
province	WC	2016	colour	Aug	5
province	WC	2016	all	Sep	41
province	WC	2016	colour	Sep	6
province	WC	2016	all	Oct	56
province	WC	2016	colour	Oct	4
province	WC	2016	all	Nov	55
province	WC	2016	colour	Nov	2
\.


--
-- PostgreSQL database dump complete
--
