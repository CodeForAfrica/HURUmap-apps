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

DROP TABLE IF EXISTS public.landsalesdistributiontransaction;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributiontransaction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landsalesdistributiontransaction (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landsalesdistributiontransaction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landsalesdistributiontransaction (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	Under 1.5K	163
country	ZA	2016	1,501-3K	229
country	ZA	2016	3,001-5K	280
country	ZA	2016	5,001-10K	731
country	ZA	2016	10,001-20K	820
country	ZA	2016	20,001-30K	411
country	ZA	2016	30,001-40K	218
country	ZA	2016	40,001-50K	214
country	ZA	2016	50,001-100K	525
country	ZA	2016	100,001-150K	224
country	ZA	2016	150,001-200K	115
country	ZA	2016	200,001-300K	113
country	ZA	2016	300,001-500K	92
country	ZA	2016	500,001-800K	46
country	ZA	2016	800,001-1M	10
country	ZA	2016	Above 1M	30
province	EC	2016	Under 1.5K	14
province	EC	2016	1,501-3K	40
province	EC	2016	3,001-5K	47
province	EC	2016	5,001-10K	87
province	EC	2016	10,001-20K	48
province	EC	2016	20,001-30K	23
province	EC	2016	30,001-40K	9
province	EC	2016	40,001-50K	17
province	EC	2016	50,001-100K	32
province	EC	2016	100,001-150K	10
province	EC	2016	150,001-200K	10
province	EC	2016	200,001-300K	5
province	EC	2016	300,001-500K	10
province	EC	2016	500,001-800K	4
province	EC	2016	800,001-1M	1
province	EC	2016	Above 1M	1
province	FS	2016	Under 1.5K	10
province	FS	2016	1,501-3K	24
province	FS	2016	3,001-5K	70
province	FS	2016	5,001-10K	192
province	FS	2016	10,001-20K	205
province	FS	2016	20,001-30K	65
province	FS	2016	30,001-40K	18
province	FS	2016	40,001-50K	19
province	FS	2016	50,001-100K	23
province	FS	2016	100,001-150K	6
province	FS	2016	150,001-200K	4
province	FS	2016	200,001-300K	4
province	FS	2016	300,001-500K	2
province	FS	2016	500,001-800K	1
province	GT	2016	Under 1.5K	4
province	GT	2016	1,501-3K	1
province	GT	2016	3,001-5K	2
province	GT	2016	5,001-10K	28
province	GT	2016	10,001-20K	79
province	GT	2016	20,001-30K	61
province	GT	2016	30,001-40K	44
province	GT	2016	40,001-50K	38
province	GT	2016	50,001-100K	107
province	GT	2016	100,001-150K	30
province	GT	2016	150,001-200K	13
province	GT	2016	200,001-300K	19
province	GT	2016	300,001-500K	16
province	GT	2016	500,001-800K	7
province	GT	2016	800,001-1M	1
province	GT	2016	Above 1M	17
province	KZN	2016	Under 1.5K	7
province	KZN	2016	1,501-3K	8
province	KZN	2016	3,001-5K	16
province	KZN	2016	5,001-10K	48
province	KZN	2016	10,001-20K	69
province	KZN	2016	20,001-30K	41
province	KZN	2016	30,001-40K	18
province	KZN	2016	40,001-50K	24
province	KZN	2016	50,001-100K	66
province	KZN	2016	100,001-150K	36
province	KZN	2016	150,001-200K	12
province	KZN	2016	200,001-300K	17
province	KZN	2016	300,001-500K	9
province	KZN	2016	500,001-800K	3
province	KZN	2016	800,001-1M	1
province	KZN	2016	Above 1M	5
province	LIM	2016	Under 1.5K	9
province	LIM	2016	1,501-3K	8
province	LIM	2016	3,001-5K	29
province	LIM	2016	5,001-10K	82
province	LIM	2016	10,001-20K	100
province	LIM	2016	20,001-30K	58
province	LIM	2016	30,001-40K	26
province	LIM	2016	40,001-50K	28
province	LIM	2016	50,001-100K	101
province	LIM	2016	100,001-150K	22
province	LIM	2016	150,001-200K	13
province	LIM	2016	200,001-300K	8
province	LIM	2016	300,001-500K	6
province	LIM	2016	500,001-800K	4
province	LIM	2016	800,001-1M	1
province	LIM	2016	Above 1M	1
province	MP	2016	Under 1.5K	4
province	MP	2016	1,501-3K	9
province	MP	2016	3,001-5K	11
province	MP	2016	5,001-10K	66
province	MP	2016	10,001-20K	84
province	MP	2016	20,001-30K	45
province	MP	2016	30,001-40K	33
province	MP	2016	40,001-50K	28
province	MP	2016	50,001-100K	41
province	MP	2016	100,001-150K	34
province	MP	2016	150,001-200K	18
province	MP	2016	200,001-300K	13
province	MP	2016	300,001-500K	11
province	MP	2016	500,001-800K	3
province	NC	2016	Under 1.5K	72
province	NC	2016	1,501-3K	87
province	NC	2016	3,001-5K	32
province	NC	2016	5,001-10K	30
province	NC	2016	10,001-20K	9
province	NC	2016	20,001-30K	3
province	NC	2016	50,001-100K	11
province	NC	2016	100,001-150K	7
province	NC	2016	150,001-200K	9
province	NC	2016	200,001-300K	17
province	NC	2016	300,001-500K	12
province	NC	2016	500,001-800K	2
province	NC	2016	800,001-1M	2
province	NC	2016	Above 1M	1
province	NW	2016	Under 1.5K	4
province	NW	2016	1,501-3K	12
province	NW	2016	3,001-5K	48
province	NW	2016	5,001-10K	138
province	NW	2016	10,001-20K	148
province	NW	2016	20,001-30K	69
province	NW	2016	30,001-40K	48
province	NW	2016	40,001-50K	32
province	NW	2016	50,001-100K	62
province	NW	2016	100,001-150K	35
province	NW	2016	150,001-200K	12
province	NW	2016	200,001-300K	6
province	NW	2016	300,001-500K	3
province	NW	2016	500,001-800K	5
province	NW	2016	800,001-1M	3
province	WC	2016	Under 1.5K	39
province	WC	2016	1,501-3K	40
province	WC	2016	3,001-5K	25
province	WC	2016	5,001-10K	60
province	WC	2016	10,001-20K	78
province	WC	2016	20,001-30K	46
province	WC	2016	30,001-40K	22
province	WC	2016	40,001-50K	28
province	WC	2016	50,001-100K	82
province	WC	2016	100,001-150K	44
province	WC	2016	150,001-200K	24
province	WC	2016	200,001-300K	24
province	WC	2016	300,001-500K	23
province	WC	2016	500,001-800K	17
province	WC	2016	800,001-1M	1
province	WC	2016	Above 1M	5
province	FS	2016	800,001-1M	\N
province	FS	2016	Above 1M	\N
province	MP	2016	800,001-1M	\N
province	MP	2016	Above 1M	\N
province	NC	2016	30,001-40K	\N
province	NC	2016	40,001-50K	\N
province	NW	2016	Above 1M	\N
\.


--
-- PostgreSQL database dump complete
--

