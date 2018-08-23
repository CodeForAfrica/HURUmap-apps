--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 11:56:05 EAT

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
-- TOC entry 187 (class 1259 OID 80369)
-- Name: ervenlandownershipinhectaresbyrace; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.ervenlandownershipinhectaresbyrace (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "erven land ownership in hectares by race" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.ervenlandownershipinhectaresbyrace OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80369)
-- Dependencies: 187
-- Data for Name: ervenlandownershipinhectaresbyrace; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.ervenlandownershipinhectaresbyrace (geo_level, geo_code, geo_version, "erven land ownership in hectares by race", total) FROM stdin;
province	EC	2011	White	26379
province	FS	2011	White	7543
province	GT	2011	White	32056
province	KZN	2011	White	19749
province	LM	2011	White	5680
province	MP	2011	White	6511
province	NW	2011	White	7140
province	NC	2011	White	152624
province	WC	2011	White	99825
province	EC	2011	African	93868
province	FS	2011	African	15388
province	GT	2011	African	40849
province	KZN	2011	African	30675
province	LM	2011	African	11688
province	MP	2011	African	11281
province	NW	2011	African	7922
province	NC	2011	African	2356
province	WC	2011	African	5008
province	EC	2011	Coloured	6764
province	FS	2011	Coloured	1760
province	GT	2011	Coloured	8325
province	KZN	2011	Coloured	6043
province	LM	2011	Coloured	1378
province	MP	2011	Coloured	1335
province	NW	2011	Coloured	1238
province	NC	2011	Coloured	12560
province	WC	2011	Coloured	15119
province	EC	2011	Indian	5427
province	FS	2011	Indian	892
province	GT	2011	Indian	7009
province	KZN	2011	Indian	15232
province	LM	2011	Indian	981
province	MP	2011	Indian	854
province	NW	2011	Indian	720
province	NC	2011	Indian	13515
province	WC	2011	Indian	11280
province	EC	2011	Other	3169
province	FS	2011	Other	586
province	GT	2011	Other	3461
province	KZN	2011	Other	2832
province	LM	2011	Other	319
province	MP	2011	Other	460
province	NW	2011	Other	429
province	NC	2011	Other	3002
province	WC	2011	Other	7107
country	ZA	2011	White	357507
country	ZA	2011	African	219033
country	ZA	2011	Coloured	54522
country	ZA	2011	Indian	55909
country	ZA	2011	Other	21365
country	ZA	2011	Co-ownership	14332
province	EC	2011	Co-ownership	4233
province	FS	2011	Co-ownership	366
province	GT	2011	Co-ownership	2557
province	KZN	2011	Co-ownership	3205
province	LM	2011	Co-ownership	207
province	MP	2011	Co-ownership	275
province	NW	2011	Co-ownership	239
province	NC	2011	Co-ownership	347
province	WC	2011	Co-ownership	2903
\.


-- Completed on 2018-08-23 11:56:05 EAT

--
-- PostgreSQL database dump complete
--
