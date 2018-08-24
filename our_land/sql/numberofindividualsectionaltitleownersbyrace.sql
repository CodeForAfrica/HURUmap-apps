--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 12:30:25 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 80405)
-- Name: numberofsectionaltitleownersbyrace; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberofsectionaltitleownersbyrace (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by race" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberofsectionaltitleownersbyrace OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80405)
-- Dependencies: 196
-- Data for Name: numberofsectionaltitleownersbyrace; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberofsectionaltitleownersbyrace (geo_level, geo_code, geo_version, "number of sectional title owners by race", total) FROM stdin;
province	EC	2011	White	16894
province	FS	2011	White	16276
province	GT	2011	White	161915
province	KZN	2011	White	64257
province	LM	2011	White	4058
province	MP	2011	White	5910
province	NW	2011	White	10857
province	NC	2011	White	526
province	WC	2011	White	66747
province	EC	2011	African	3884
province	FS	2011	African	3514
province	GT	2011	African	93897
province	KZN	2011	African	25579
province	LM	2011	African	2855
province	MP	2011	African	3135
province	NW	2011	African	3239
province	NC	2011	African	104
province	WC	2011	African	9388
province	EC	2011	Coloured	4662
province	FS	2011	Coloured	3314
province	GT	2011	Coloured	41833
province	KZN	2011	Coloured	18525
province	LM	2011	Coloured	858
province	MP	2011	Coloured	1266
province	NW	2011	Coloured	2348
province	NC	2011	Coloured	111
province	WC	2011	Coloured	18508
province	EC	2011	Indian	3083
province	FS	2011	Indian	1628
province	GT	2011	Indian	42907
province	KZN	2011	Indian	36349
province	LM	2011	Indian	545
province	MP	2011	Indian	917
province	NW	2011	Indian	1209
province	NC	2011	Indian	46
province	WC	2011	Indian	13369
province	EC	2011	Other	1639
province	FS	2011	Other	1112
province	GT	2011	Other	20250
province	KZN	2011	Other	9396
province	LM	2011	Other	291
province	MP	2011	Other	490
province	NW	2011	Other	741
province	NC	2011	Other	30
province	WC	2011	Other	8504
country	ZA	2011	White	347440
country	ZA	2011	African	145595
country	ZA	2011	Coloured	91425
country	ZA	2011	Indian	100053
country	ZA	2011	Other	42453
\.


-- Completed on 2018-08-23 12:30:25 EAT

--
-- PostgreSQL database dump complete
--
