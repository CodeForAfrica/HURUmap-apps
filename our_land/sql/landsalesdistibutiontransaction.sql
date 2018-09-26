--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

-- Started on 2018-09-24 18:16:18 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS public.landsalesdistributiontransaction;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 355 (class 1259 OID 76460)
-- Name: landsalesdistributiontransaction; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributiontransaction (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total numeric
);


ALTER TABLE public.landsalesdistributiontransaction OWNER TO our_land;

--
-- TOC entry 3366 (class 0 OID 76460)
-- Dependencies: 355
-- Data for Name: landsalesdistributiontransaction; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributiontransaction (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	less than 1 500	163
country	ZA	2016	1 501 - 3 000	229
country	ZA	2016	3 001 - 5 000	280
country	ZA	2016	5 001 - 10 000	731
country	ZA	2016	10 001 - 20 000	820
country	ZA	2016	20 001 - 30 000	411
country	ZA	2016	30 001 - 40 000	218
country	ZA	2016	40 001 - 50 000	214
country	ZA	2016	50 001 - 100 000	525
country	ZA	2016	100 001 - 150 000	224
country	ZA	2016	150 001 - 200 000	115
country	ZA	2016	200 001 - 300 000	113
country	ZA	2016	300 001 - 500 000	92
country	ZA	2016	500 001 - 800 000	46
country	ZA	2016	800 001 - 1 000 000	10
country	ZA	2016	greater than 1 000 000	30
province	EC	2016	less than 1 500	14
province	EC	2016	1 501 - 3 000	40
province	EC	2016	3 001 - 5 000	47
province	EC	2016	5 001 - 10 000	87
province	EC	2016	10 001 - 20 000	48
province	EC	2016	20 001 - 30 000	23
province	EC	2016	30 001 - 40 000	9
province	EC	2016	40 001 - 50 000	17
province	EC	2016	50 001 - 100 000	32
province	EC	2016	100 001 - 150 000	10
province	EC	2016	150 001 - 200 000	10
province	EC	2016	200 001 - 300 000	5
province	EC	2016	300 001 - 500 000	10
province	EC	2016	500 001 - 800 000	4
province	EC	2016	800 001 - 1 000 000	1
province	EC	2016	greater than 1 000 000	1
province	FS	2016	less than 1 500	10
province	FS	2016	1 501 - 3 000	24
province	FS	2016	3 001 - 5 000	70
province	FS	2016	5 001 - 10 000	192
province	FS	2016	10 001 - 20 000	205
province	FS	2016	20 001 - 30 000	65
province	FS	2016	30 001 - 40 000	18
province	FS	2016	40 001 - 50 000	19
province	FS	2016	50 001 - 100 000	23
province	FS	2016	100 001 - 150 000	6
province	FS	2016	150 001 - 200 000	4
province	FS	2016	200 001 - 300 000	4
province	FS	2016	300 001 - 500 000	2
province	FS	2016	500 001 - 800 000	1
province	FS	2016	800 001 - 1 000 000	NaN
province	FS	2016	greater than 1 000 000	NaN
province	GT	2016	less than 1 500	4
province	GT	2016	1 501 - 3 000	1
province	GT	2016	3 001 - 5 000	2
province	GT	2016	5 001 - 10 000	28
province	GT	2016	10 001 - 20 000	79
province	GT	2016	20 001 - 30 000	61
province	GT	2016	30 001 - 40 000	44
province	GT	2016	40 001 - 50 000	38
province	GT	2016	50 001 - 100 000	107
province	GT	2016	100 001 - 150 000	30
province	GT	2016	150 001 - 200 000	13
province	GT	2016	200 001 - 300 000	19
province	GT	2016	300 001 - 500 000	16
province	GT	2016	500 001 - 800 000	7
province	GT	2016	800 001 - 1 000 000	1
province	GT	2016	greater than 1 000 000	17
province	KZN	2016	less than 1 500	7
province	KZN	2016	1 501 - 3 000	8
province	KZN	2016	3 001 - 5 000	16
province	KZN	2016	5 001 - 10 000	48
province	KZN	2016	10 001 - 20 000	69
province	KZN	2016	20 001 - 30 000	41
province	KZN	2016	30 001 - 40 000	18
province	KZN	2016	40 001 - 50 000	24
province	KZN	2016	50 001 - 100 000	66
province	KZN	2016	100 001 - 150 000	36
province	KZN	2016	150 001 - 200 000	12
province	KZN	2016	200 001 - 300 000	17
province	KZN	2016	300 001 - 500 000	9
province	KZN	2016	500 001 - 800 000	3
province	KZN	2016	800 001 - 1 000 000	1
province	KZN	2016	greater than 1 000 000	5
province	LIM	2016	less than 1 500	9
province	LIM	2016	1 501 - 3 000	8
province	LIM	2016	3 001 - 5 000	29
province	LIM	2016	5 001 - 10 000	82
province	LIM	2016	10 001 - 20 000	100
province	LIM	2016	20 001 - 30 000	58
province	LIM	2016	30 001 - 40 000	26
province	LIM	2016	40 001 - 50 000	28
province	LIM	2016	50 001 - 100 000	101
province	LIM	2016	100 001 - 150 000	22
province	LIM	2016	150 001 - 200 000	13
province	LIM	2016	200 001 - 300 000	8
province	LIM	2016	300 001 - 500 000	6
province	LIM	2016	500 001 - 800 000	4
province	LIM	2016	800 001 - 1 000 000	1
province	LIM	2016	greater than 1 000 000	1
province	MP	2016	less than 1 500	4
province	MP	2016	1 501 - 3 000	9
province	MP	2016	3 001 - 5 000	11
province	MP	2016	5 001 - 10 000	66
province	MP	2016	10 001 - 20 000	84
province	MP	2016	20 001 - 30 000	45
province	MP	2016	30 001 - 40 000	33
province	MP	2016	40 001 - 50 000	28
province	MP	2016	50 001 - 100 000	41
province	MP	2016	100 001 - 150 000	34
province	MP	2016	150 001 - 200 000	18
province	MP	2016	200 001 - 300 000	13
province	MP	2016	300 001 - 500 000	11
province	MP	2016	500 001 - 800 000	3
province	MP	2016	800 001 - 1 000 000	NaN
province	MP	2016	greater than 1 000 000	NaN
province	NC	2016	less than 1 500	72
province	NC	2016	1 501 - 3 000	87
province	NC	2016	3 001 - 5 000	32
province	NC	2016	5 001 - 10 000	30
province	NC	2016	10 001 - 20 000	9
province	NC	2016	20 001 - 30 000	3
province	NC	2016	30 001 - 40 000	NaN
province	NC	2016	40 001 - 50 000	NaN
province	NC	2016	50 001 - 100 000	11
province	NC	2016	100 001 - 150 000	7
province	NC	2016	150 001 - 200 000	9
province	NC	2016	200 001 - 300 000	17
province	NC	2016	300 001 - 500 000	12
province	NC	2016	500 001 - 800 000	2
province	NC	2016	800 001 - 1 000 000	2
province	NC	2016	greater than 1 000 000	1
province	NW	2016	less than 1 500	4
province	NW	2016	1 501 - 3 000	12
province	NW	2016	3 001 - 5 000	48
province	NW	2016	5 001 - 10 000	138
province	NW	2016	10 001 - 20 000	148
province	NW	2016	20 001 - 30 000	69
province	NW	2016	30 001 - 40 000	48
province	NW	2016	40 001 - 50 000	32
province	NW	2016	50 001 - 100 000	62
province	NW	2016	100 001 - 150 000	35
province	NW	2016	150 001 - 200 000	12
province	NW	2016	200 001 - 300 000	6
province	NW	2016	300 001 - 500 000	3
province	NW	2016	500 001 - 800 000	5
province	NW	2016	800 001 - 1 000 000	3
province	NW	2016	greater than 1 000 000	NaN
province	WC	2016	less than 1 500	39
province	WC	2016	1 501 - 3 000	40
province	WC	2016	3 001 - 5 000	25
province	WC	2016	5 001 - 10 000	60
province	WC	2016	10 001 - 20 000	78
province	WC	2016	20 001 - 30 000	46
province	WC	2016	30 001 - 40 000	22
province	WC	2016	40 001 - 50 000	28
province	WC	2016	50 001 - 100 000	82
province	WC	2016	100 001 - 150 000	44
province	WC	2016	150 001 - 200 000	24
province	WC	2016	200 001 - 300 000	24
province	WC	2016	300 001 - 500 000	23
province	WC	2016	500 001 - 800 000	17
province	WC	2016	800 001 - 1 000 000	1
province	WC	2016	greater than 1 000 000	5
\.


-- Completed on 2018-09-24 18:16:18 EAT

--
-- PostgreSQL database dump complete
--
