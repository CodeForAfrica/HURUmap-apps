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
country	ZA	2016	Government Agriculture	Dec	5
country	ZA	2016	Government Urban	Dec	1
country	ZA	2016	Private	Dec	52
country	ZA	2016	Other	Dec	6
country	ZA	2016	Government Agriculture	Jan	2
country	ZA	2016	Government Urban	Jan	1
country	ZA	2016	Private	Jan	40
country	ZA	2016	Other	Jan	4
country	ZA	2016	Government Agriculture	Feb	3
country	ZA	2016	Government Urban	Feb	2
country	ZA	2016	Private	Feb	51
country	ZA	2016	Other	Feb	11
country	ZA	2016	Government Agriculture	Mar	9
country	ZA	2016	Government Urban	Mar	2
country	ZA	2016	Private	Mar	79
country	ZA	2016	Other	Mar	17
country	ZA	2016	Government Agriculture	Apr	2
country	ZA	2016	Government Urban	Apr	\N
country	ZA	2016	Private	Apr	58
country	ZA	2016	Other	Apr	7
country	ZA	2016	Government Agriculture	May	3
country	ZA	2016	Government Urban	May	1
country	ZA	2016	Private	May	65
country	ZA	2016	Other	May	8
country	ZA	2016	Government Agriculture	Jun	2
country	ZA	2016	Government Urban	Jun	\N
country	ZA	2016	Private	Jun	48
country	ZA	2016	Other	Jun	7
country	ZA	2016	Government Agriculture	Jul	6
country	ZA	2016	Government Urban	Jul	4
country	ZA	2016	Private	Jul	59
country	ZA	2016	Other	Jul	3
country	ZA	2016	Government Agriculture	Aug	2
country	ZA	2016	Government Urban	Aug	1
country	ZA	2016	Private	Aug	51
country	ZA	2016	Other	Aug	11
country	ZA	2016	Government Agriculture	Sep	5
country	ZA	2016	Government Urban	Sep	\N
country	ZA	2016	Private	Sep	41
country	ZA	2016	Other	Sep	5
country	ZA	2016	Government Agriculture	Oct	17
country	ZA	2016	Government Urban	Oct	3
country	ZA	2016	Private	Oct	60
country	ZA	2016	Other	Oct	17
country	ZA	2016	Government Agriculture	Nov	1
country	ZA	2016	Government Urban	Nov	\N
country	ZA	2016	Private	Nov	38
country	ZA	2016	Other	Nov	17
province	EC	2016	Government Agriculture	Dec	1
province	EC	2016	Government Urban	Dec	\N
province	EC	2016	Private	Dec	4
province	EC	2016	Other	Dec	\N
province	EC	2016	Government Agriculture	Jan	\N
province	EC	2016	Government Urban	Jan	\N
province	EC	2016	Private	Jan	1
province	EC	2016	Other	Jan	\N
province	EC	2016	Government Agriculture	Feb	\N
province	EC	2016	Government Urban	Feb	1
province	EC	2016	Private	Feb	2
province	EC	2016	Other	Feb	1
province	EC	2016	Government Agriculture	Mar	\N
province	EC	2016	Government Urban	Mar	\N
province	EC	2016	Private	Mar	4
province	EC	2016	Other	Mar	3
province	EC	2016	Government Agriculture	Apr	\N
province	EC	2016	Government Urban	Apr	\N
province	EC	2016	Private	Apr	6
province	EC	2016	Other	Apr	\N
province	EC	2016	Government Agriculture	May	\N
province	EC	2016	Government Urban	May	\N
province	EC	2016	Private	May	3
province	EC	2016	Other	May	\N
province	EC	2016	Government Agriculture	Jun	\N
province	EC	2016	Government Urban	Jun	\N
province	EC	2016	Private	Jun	5
province	EC	2016	Other	Jun	\N
province	EC	2016	Government Agriculture	Jul	\N
province	EC	2016	Government Urban	Jul	\N
province	EC	2016	Private	Jul	13
province	EC	2016	Other	Jul	\N
province	EC	2016	Government Agriculture	Aug	\N
province	EC	2016	Government Urban	Aug	\N
province	EC	2016	Private	Aug	5
province	EC	2016	Other	Aug	1
province	EC	2016	Government Agriculture	Sep	\N
province	EC	2016	Government Urban	Sep	\N
province	EC	2016	Private	Sep	6
province	EC	2016	Other	Sep	\N
province	EC	2016	Government Agriculture	Oct	1
province	EC	2016	Government Urban	Oct	\N
province	EC	2016	Private	Oct	3
province	EC	2016	Other	Oct	\N
province	EC	2016	Government Agriculture	Nov	\N
province	EC	2016	Government Urban	Nov	\N
province	EC	2016	Private	Nov	5
province	EC	2016	Other	Nov	1
province	FS	2016	Government Agriculture	Dec	\N
province	FS	2016	Government Urban	Dec	\N
province	FS	2016	Private	Dec	4
province	FS	2016	Other	Dec	1
province	FS	2016	Government Agriculture	Jan	2
province	FS	2016	Government Urban	Jan	\N
province	FS	2016	Private	Jan	1
province	FS	2016	Other	Jan	\N
province	FS	2016	Government Agriculture	Feb	\N
province	FS	2016	Government Urban	Feb	\N
province	FS	2016	Private	Feb	7
province	FS	2016	Other	Feb	\N
province	FS	2016	Government Agriculture	Mar	1
province	FS	2016	Government Urban	Mar	\N
province	FS	2016	Private	Mar	10
province	FS	2016	Other	Mar	2
province	FS	2016	Government Agriculture	Apr	\N
province	FS	2016	Government Urban	Apr	\N
province	FS	2016	Private	Apr	4
province	FS	2016	Other	Apr	1
province	FS	2016	Government Agriculture	May	\N
province	FS	2016	Government Urban	May	\N
province	FS	2016	Private	May	10
province	FS	2016	Other	May	1
province	FS	2016	Government Agriculture	Jun	\N
province	FS	2016	Government Urban	Jun	\N
province	FS	2016	Private	Jun	6
province	FS	2016	Other	Jun	1
province	FS	2016	Government Agriculture	Jul	3
province	FS	2016	Government Urban	Jul	\N
province	FS	2016	Private	Jul	7
province	FS	2016	Other	Jul	\N
province	FS	2016	Government Agriculture	Aug	\N
province	FS	2016	Government Urban	Aug	\N
province	FS	2016	Private	Aug	3
province	FS	2016	Other	Aug	2
province	FS	2016	Government Agriculture	Sep	\N
province	FS	2016	Government Urban	Sep	\N
province	FS	2016	Private	Sep	4
province	FS	2016	Other	Sep	1
province	FS	2016	Government Agriculture	Oct	4
province	FS	2016	Government Urban	Oct	\N
province	FS	2016	Private	Oct	6
province	FS	2016	Other	Oct	1
province	FS	2016	Government Agriculture	Nov	\N
province	FS	2016	Government Urban	Nov	\N
province	FS	2016	Private	Nov	3
province	FS	2016	Other	Nov	1
province	GT	2016	Government Agriculture	Dec	1
province	GT	2016	Government Urban	Dec	\N
province	GT	2016	Private	Dec	6
province	GT	2016	Other	Dec	\N
province	GT	2016	Government Agriculture	Jan	\N
province	GT	2016	Government Urban	Jan	1
province	GT	2016	Private	Jan	3
province	GT	2016	Other	Jan	1
province	GT	2016	Government Agriculture	Feb	1
province	GT	2016	Government Urban	Feb	\N
province	GT	2016	Private	Feb	5
province	GT	2016	Other	Feb	\N
province	GT	2016	Government Agriculture	Mar	\N
province	GT	2016	Government Urban	Mar	\N
province	GT	2016	Private	Mar	10
province	GT	2016	Other	Mar	3
province	GT	2016	Government Agriculture	Apr	\N
province	GT	2016	Government Urban	Apr	\N
province	GT	2016	Private	Apr	9
province	GT	2016	Other	Apr	\N
province	GT	2016	Government Agriculture	May	\N
province	GT	2016	Government Urban	May	\N
province	GT	2016	Private	May	7
province	GT	2016	Other	May	3
province	GT	2016	Government Agriculture	Jun	\N
province	GT	2016	Government Urban	Jun	\N
province	GT	2016	Private	Jun	10
province	GT	2016	Other	Jun	2
province	GT	2016	Government Agriculture	Jul	\N
province	GT	2016	Government Urban	Jul	2
province	GT	2016	Private	Jul	8
province	GT	2016	Other	Jul	\N
province	GT	2016	Government Agriculture	Aug	1
province	GT	2016	Government Urban	Aug	\N
province	GT	2016	Private	Aug	5
province	GT	2016	Other	Aug	1
province	GT	2016	Government Agriculture	Sep	\N
province	GT	2016	Government Urban	Sep	\N
province	GT	2016	Private	Sep	7
province	GT	2016	Other	Sep	1
province	GT	2016	Government Agriculture	Oct	4
province	GT	2016	Government Urban	Oct	1
province	GT	2016	Private	Oct	13
province	GT	2016	Other	Oct	3
province	GT	2016	Government Agriculture	Nov	\N
province	GT	2016	Government Urban	Nov	\N
province	GT	2016	Private	Nov	6
province	GT	2016	Other	Nov	5
province	KZN	2016	Government Agriculture	Dec	1
province	KZN	2016	Government Urban	Dec	1
province	KZN	2016	Private	Dec	8
province	KZN	2016	Other	Dec	\N
province	KZN	2016	Government Agriculture	Jan	\N
province	KZN	2016	Government Urban	Jan	\N
province	KZN	2016	Private	Jan	6
province	KZN	2016	Other	Jan	\N
province	KZN	2016	Government Agriculture	Feb	1
province	KZN	2016	Government Urban	Feb	\N
province	KZN	2016	Private	Feb	4
province	KZN	2016	Other	Feb	3
province	KZN	2016	Government Agriculture	Mar	3
province	KZN	2016	Government Urban	Mar	\N
province	KZN	2016	Private	Mar	22
province	KZN	2016	Other	Mar	2
province	KZN	2016	Government Agriculture	Apr	\N
province	KZN	2016	Government Urban	Apr	\N
province	KZN	2016	Private	Apr	8
province	KZN	2016	Other	Apr	1
province	KZN	2016	Government Agriculture	May	\N
province	KZN	2016	Government Urban	May	\N
province	KZN	2016	Private	May	14
province	KZN	2016	Other	May	1
province	KZN	2016	Government Agriculture	Jun	\N
province	KZN	2016	Government Urban	Jun	\N
province	KZN	2016	Private	Jun	4
province	KZN	2016	Other	Jun	\N
province	KZN	2016	Government Agriculture	Jul	\N
province	KZN	2016	Government Urban	Jul	\N
province	KZN	2016	Private	Jul	10
province	KZN	2016	Other	Jul	\N
province	KZN	2016	Government Agriculture	Aug	\N
province	KZN	2016	Government Urban	Aug	\N
province	KZN	2016	Private	Aug	5
province	KZN	2016	Other	Aug	2
province	KZN	2016	Government Agriculture	Sep	\N
province	KZN	2016	Government Urban	Sep	\N
province	KZN	2016	Private	Sep	3
province	KZN	2016	Other	Sep	1
province	KZN	2016	Government Agriculture	Oct	\N
province	KZN	2016	Government Urban	Oct	1
province	KZN	2016	Private	Oct	11
province	KZN	2016	Other	Oct	1
province	KZN	2016	Government Agriculture	Nov	\N
province	KZN	2016	Government Urban	Nov	\N
province	KZN	2016	Private	Nov	9
province	KZN	2016	Other	Nov	2
province	LIM	2016	Government Agriculture	Dec	\N
province	LIM	2016	Government Urban	Dec	\N
province	LIM	2016	Private	Dec	7
province	LIM	2016	Other	Dec	1
province	LIM	2016	Government Agriculture	Jan	\N
province	LIM	2016	Government Urban	Jan	\N
province	LIM	2016	Private	Jan	6
province	LIM	2016	Other	Jan	1
province	LIM	2016	Government Agriculture	Feb	\N
province	LIM	2016	Government Urban	Feb	1
province	LIM	2016	Private	Feb	8
province	LIM	2016	Other	Feb	2
province	LIM	2016	Government Agriculture	Mar	\N
province	LIM	2016	Government Urban	Mar	1
province	LIM	2016	Private	Mar	10
province	LIM	2016	Other	Mar	1
province	LIM	2016	Government Agriculture	Apr	\N
province	LIM	2016	Government Urban	Apr	\N
province	LIM	2016	Private	Apr	7
province	LIM	2016	Other	Apr	1
province	LIM	2016	Government Agriculture	May	\N
province	LIM	2016	Government Urban	May	\N
province	LIM	2016	Private	May	15
province	LIM	2016	Other	May	\N
province	LIM	2016	Government Agriculture	Jun	\N
province	LIM	2016	Government Urban	Jun	\N
province	LIM	2016	Private	Jun	2
province	LIM	2016	Other	Jun	3
province	LIM	2016	Government Agriculture	Jul	\N
province	LIM	2016	Government Urban	Jul	1
province	LIM	2016	Private	Jul	8
province	LIM	2016	Other	Jul	\N
province	LIM	2016	Government Agriculture	Aug	\N
province	LIM	2016	Government Urban	Aug	\N
province	LIM	2016	Private	Aug	8
province	LIM	2016	Other	Aug	\N
province	LIM	2016	Government Agriculture	Sep	\N
province	LIM	2016	Government Urban	Sep	\N
province	LIM	2016	Private	Sep	3
province	LIM	2016	Other	Sep	\N
province	LIM	2016	Government Agriculture	Oct	\N
province	LIM	2016	Government Urban	Oct	\N
province	LIM	2016	Private	Oct	9
province	LIM	2016	Other	Oct	2
province	LIM	2016	Government Agriculture	Nov	\N
province	LIM	2016	Government Urban	Nov	\N
province	LIM	2016	Private	Nov	8
province	LIM	2016	Other	Nov	1
province	MP	2016	Government Agriculture	Dec	1
province	MP	2016	Government Urban	Dec	\N
province	MP	2016	Private	Dec	4
province	MP	2016	Other	Dec	1
province	MP	2016	Government Agriculture	Jan	\N
province	MP	2016	Government Urban	Jan	\N
province	MP	2016	Private	Jan	6
province	MP	2016	Other	Jan	2
province	MP	2016	Government Agriculture	Feb	1
province	MP	2016	Government Urban	Feb	\N
province	MP	2016	Private	Feb	9
province	MP	2016	Other	Feb	3
province	MP	2016	Government Agriculture	Mar	\N
province	MP	2016	Government Urban	Mar	\N
province	MP	2016	Private	Mar	9
province	MP	2016	Other	Mar	2
province	MP	2016	Government Agriculture	Apr	\N
province	MP	2016	Government Urban	Apr	\N
province	MP	2016	Private	Apr	7
province	MP	2016	Other	Apr	1
province	MP	2016	Government Agriculture	May	\N
province	MP	2016	Government Urban	May	\N
province	MP	2016	Private	May	6
province	MP	2016	Other	May	1
province	MP	2016	Government Agriculture	Jun	\N
province	MP	2016	Government Urban	Jun	\N
province	MP	2016	Private	Jun	5
province	MP	2016	Other	Jun	\N
province	MP	2016	Government Agriculture	Jul	2
province	MP	2016	Government Urban	Jul	1
province	MP	2016	Private	Jul	8
province	MP	2016	Other	Jul	1
province	MP	2016	Government Agriculture	Aug	\N
province	MP	2016	Government Urban	Aug	\N
province	MP	2016	Private	Aug	7
province	MP	2016	Other	Aug	2
province	MP	2016	Government Agriculture	Sep	3
province	MP	2016	Government Urban	Sep	\N
province	MP	2016	Private	Sep	7
province	MP	2016	Other	Sep	1
province	MP	2016	Government Agriculture	Oct	4
province	MP	2016	Government Urban	Oct	\N
province	MP	2016	Private	Oct	9
province	MP	2016	Other	Oct	5
province	MP	2016	Government Agriculture	Nov	\N
province	MP	2016	Government Urban	Nov	\N
province	MP	2016	Private	Nov	3
province	MP	2016	Other	Nov	5
province	NC	2016	Government Agriculture	Dec	\N
province	NC	2016	Government Urban	Dec	\N
province	NC	2016	Private	Dec	1
province	NC	2016	Other	Dec	2
province	NC	2016	Government Agriculture	Jan	\N
province	NC	2016	Government Urban	Jan	\N
province	NC	2016	Private	Jan	1
province	NC	2016	Other	Jan	\N
province	NC	2016	Government Agriculture	Feb	\N
province	NC	2016	Government Urban	Feb	\N
province	NC	2016	Private	Feb	1
province	NC	2016	Other	Feb	1
province	NC	2016	Government Agriculture	Mar	\N
province	NC	2016	Government Urban	Mar	1
province	NC	2016	Private	Mar	2
province	NC	2016	Other	Mar	3
province	NC	2016	Government Agriculture	Apr	\N
province	NC	2016	Government Urban	Apr	\N
province	NC	2016	Private	Apr	2
province	NC	2016	Other	Apr	1
province	NC	2016	Government Agriculture	May	\N
province	NC	2016	Government Urban	May	\N
province	NC	2016	Private	May	\N
province	NC	2016	Other	May	\N
province	NC	2016	Government Agriculture	Jun	\N
province	NC	2016	Government Urban	Jun	\N
province	NC	2016	Private	Jun	4
province	NC	2016	Other	Jun	\N
province	NC	2016	Government Agriculture	Jul	\N
province	NC	2016	Government Urban	Jul	\N
province	NC	2016	Private	Jul	\N
province	NC	2016	Other	Jul	\N
province	NC	2016	Government Agriculture	Aug	\N
province	NC	2016	Government Urban	Aug	\N
province	NC	2016	Private	Aug	3
province	NC	2016	Other	Aug	1
province	NC	2016	Government Agriculture	Sep	\N
province	NC	2016	Government Urban	Sep	\N
province	NC	2016	Private	Sep	1
province	NC	2016	Other	Sep	\N
province	NC	2016	Government Agriculture	Oct	3
province	NC	2016	Government Urban	Oct	\N
province	NC	2016	Private	Oct	\N
province	NC	2016	Other	Oct	\N
province	NC	2016	Government Agriculture	Nov	\N
province	NC	2016	Government Urban	Nov	\N
province	NC	2016	Private	Nov	1
province	NC	2016	Other	Nov	\N
province	NW	2016	Government Agriculture	Dec	1
province	NW	2016	Government Urban	Dec	\N
province	NW	2016	Private	Dec	16
province	NW	2016	Other	Dec	\N
province	NW	2016	Government Agriculture	Jan	\N
province	NW	2016	Government Urban	Jan	\N
province	NW	2016	Private	Jan	13
province	NW	2016	Other	Jan	\N
province	NW	2016	Government Agriculture	Feb	\N
province	NW	2016	Government Urban	Feb	\N
province	NW	2016	Private	Feb	10
province	NW	2016	Other	Feb	\N
province	NW	2016	Government Agriculture	Mar	5
province	NW	2016	Government Urban	Mar	\N
province	NW	2016	Private	Mar	9
province	NW	2016	Other	Mar	\N
province	NW	2016	Government Agriculture	Apr	\N
province	NW	2016	Government Urban	Apr	\N
province	NW	2016	Private	Apr	11
province	NW	2016	Other	Apr	2
province	NW	2016	Government Agriculture	May	2
province	NW	2016	Government Urban	May	1
province	NW	2016	Private	May	8
province	NW	2016	Other	May	2
province	NW	2016	Government Agriculture	Jun	2
province	NW	2016	Government Urban	Jun	\N
province	NW	2016	Private	Jun	9
province	NW	2016	Other	Jun	1
province	NW	2016	Government Agriculture	Jul	1
province	NW	2016	Government Urban	Jul	\N
province	NW	2016	Private	Jul	5
province	NW	2016	Other	Jul	2
province	NW	2016	Government Agriculture	Aug	1
province	NW	2016	Government Urban	Aug	1
province	NW	2016	Private	Aug	11
province	NW	2016	Other	Aug	1
province	NW	2016	Government Agriculture	Sep	1
province	NW	2016	Government Urban	Sep	\N
province	NW	2016	Private	Sep	6
province	NW	2016	Other	Sep	\N
province	NW	2016	Government Agriculture	Oct	1
province	NW	2016	Government Urban	Oct	1
province	NW	2016	Private	Oct	6
province	NW	2016	Other	Oct	4
province	NW	2016	Government Agriculture	Nov	\N
province	NW	2016	Government Urban	Nov	\N
province	NW	2016	Private	Nov	3
province	NW	2016	Other	Nov	1
province	WC	2016	Government Agriculture	Dec	\N
province	WC	2016	Government Urban	Dec	\N
province	WC	2016	Private	Dec	2
province	WC	2016	Other	Dec	1
province	WC	2016	Government Agriculture	Jan	\N
province	WC	2016	Government Urban	Jan	\N
province	WC	2016	Private	Jan	3
province	WC	2016	Other	Jan	\N
province	WC	2016	Government Agriculture	Feb	\N
province	WC	2016	Government Urban	Feb	\N
province	WC	2016	Private	Feb	5
province	WC	2016	Other	Feb	1
province	WC	2016	Government Agriculture	Mar	\N
province	WC	2016	Government Urban	Mar	\N
province	WC	2016	Private	Mar	3
province	WC	2016	Other	Mar	1
province	WC	2016	Government Agriculture	Apr	2
province	WC	2016	Government Urban	Apr	\N
province	WC	2016	Private	Apr	4
province	WC	2016	Other	Apr	\N
province	WC	2016	Government Agriculture	May	1
province	WC	2016	Government Urban	May	\N
province	WC	2016	Private	May	2
province	WC	2016	Other	May	\N
province	WC	2016	Government Agriculture	Jun	\N
province	WC	2016	Government Urban	Jun	\N
province	WC	2016	Private	Jun	3
province	WC	2016	Other	Jun	\N
province	WC	2016	Government Agriculture	Jul	\N
province	WC	2016	Government Urban	Jul	\N
province	WC	2016	Private	Jul	\N
province	WC	2016	Other	Jul	\N
province	WC	2016	Government Agriculture	Aug	\N
province	WC	2016	Government Urban	Aug	\N
province	WC	2016	Private	Aug	4
province	WC	2016	Other	Aug	1
province	WC	2016	Government Agriculture	Sep	1
province	WC	2016	Government Urban	Sep	\N
province	WC	2016	Private	Sep	4
province	WC	2016	Other	Sep	1
province	WC	2016	Government Agriculture	Oct	\N
province	WC	2016	Government Urban	Oct	\N
province	WC	2016	Private	Oct	3
province	WC	2016	Other	Oct	1
province	WC	2016	Government Agriculture	Nov	1
province	WC	2016	Government Urban	Nov	\N
province	WC	2016	Private	Nov	\N
province	WC	2016	Other	Nov	1
\.


--
-- PostgreSQL database dump complete
--
