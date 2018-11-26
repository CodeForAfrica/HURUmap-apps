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

ALTER TABLE IF EXISTS ONLY public.numberofsectionaltitleownersbyrace DROP CONSTRAINT IF EXISTS pk_numberofsectionaltitleownersbyrace;
DROP TABLE IF EXISTS public.numberofsectionaltitleownersbyrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofsectionaltitleownersbyrace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberofsectionaltitleownersbyrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by race" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofsectionaltitleownersbyrace; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberofsectionaltitleownersbyrace (geo_level, geo_code, geo_version, "number of sectional title owners by race", total) FROM stdin;
province	EC	2016	White	16894
province	FS	2016	White	16276
province	GT	2016	White	161915
province	KZN	2016	White	64257
province	MP	2016	White	5910
province	NW	2016	White	10857
province	NC	2016	White	526
province	WC	2016	White	66747
province	EC	2016	African	3884
province	FS	2016	African	3514
province	GT	2016	African	93897
province	KZN	2016	African	25579
province	MP	2016	African	3135
province	NW	2016	African	3239
province	NC	2016	African	104
province	WC	2016	African	9388
province	EC	2016	Coloured	4662
province	FS	2016	Coloured	3314
province	GT	2016	Coloured	41833
province	KZN	2016	Coloured	18525
province	MP	2016	Coloured	1266
province	NW	2016	Coloured	2348
province	NC	2016	Coloured	111
province	WC	2016	Coloured	18508
province	EC	2016	Indian	3083
province	FS	2016	Indian	1628
province	GT	2016	Indian	42907
province	KZN	2016	Indian	36349
province	MP	2016	Indian	917
province	NW	2016	Indian	1209
province	NC	2016	Indian	46
province	WC	2016	Indian	13369
province	EC	2016	Other	1639
province	FS	2016	Other	1112
province	GT	2016	Other	20250
province	KZN	2016	Other	9396
province	MP	2016	Other	490
province	NW	2016	Other	741
province	NC	2016	Other	30
province	WC	2016	Other	8504
country	ZA	2016	White	347440
country	ZA	2016	African	145595
country	ZA	2016	Coloured	91425
country	ZA	2016	Indian	100053
country	ZA	2016	Other	42453
province	LIM	2016	White	4058
province	LIM	2016	African	2855
province	LIM	2016	Coloured	858
province	LIM	2016	Indian	545
province	LIM	2016	Other	291
\.


--
-- Name: numberofsectionaltitleownersbyrace pk_numberofsectionaltitleownersbyrace; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberofsectionaltitleownersbyrace
    ADD CONSTRAINT pk_numberofsectionaltitleownersbyrace PRIMARY KEY (geo_level, geo_code, geo_version, "number of sectional title owners by race");


--
-- PostgreSQL database dump complete
--

