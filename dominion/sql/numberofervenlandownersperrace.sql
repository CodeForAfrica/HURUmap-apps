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

ALTER TABLE IF EXISTS ONLY public.numberofervenlandownersperrace DROP CONSTRAINT IF EXISTS pk_numberofervenlandownersperrace;
DROP TABLE IF EXISTS public.numberofervenlandownersperrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofervenlandownersperrace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberofervenlandownersperrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of erven land owners per race" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofervenlandownersperrace; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberofervenlandownersperrace (geo_level, geo_code, geo_version, "number of erven land owners per race", total) FROM stdin;
province	EC	2016	White	169622
province	FS	2016	White	74287
province	GT	2016	White	414120
province	KZN	2016	White	139287
province	MP	2016	White	54466
province	NW	2016	White	52034
province	NC	2016	White	84041
province	WC	2016	White	543008
province	EC	2016	African	361469
province	FS	2016	African	354461
province	GT	2016	African	1296797
province	KZN	2016	African	438085
province	MP	2016	African	242427
province	NW	2016	African	198429
province	NC	2016	African	56926
province	WC	2016	African	227227
province	EC	2016	Coloured	62054
province	FS	2016	Coloured	22608
province	GT	2016	Coloured	118635
province	KZN	2016	Coloured	44207
province	MP	2016	Coloured	12443
province	NW	2016	Coloured	14613
province	NC	2016	Coloured	29962
province	WC	2016	Coloured	197703
province	EC	2016	Indian	35939
province	FS	2016	Indian	11030
province	GT	2016	Indian	105010
province	KZN	2016	Indian	136451
province	MP	2016	Indian	8555
province	NW	2016	Indian	8568
province	NC	2016	Indian	12049
province	WC	2016	Indian	92633
province	EC	2016	Other	18705
province	FS	2016	Other	7379
province	GT	2016	Other	49217
province	KZN	2016	Other	24005
province	MP	2016	Other	4575
province	NW	2016	Other	4957
province	NC	2016	Other	5915
province	WC	2016	Other	56861
country	ZA	2016	White	1552653
country	ZA	2016	African	3321476
country	ZA	2016	Coloured	507829
country	ZA	2016	Indian	414069
country	ZA	2016	Other	173418
province	LIM	2016	White	21788
province	LIM	2016	African	145655
province	LIM	2016	Coloured	5604
province	LIM	2016	Indian	3834
province	LIM	2016	Other	1804
\.


--
-- Name: numberofervenlandownersperrace pk_numberofervenlandownersperrace; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberofervenlandownersperrace
    ADD CONSTRAINT pk_numberofervenlandownersperrace PRIMARY KEY (geo_level, geo_code, geo_version, "number of erven land owners per race");


--
-- PostgreSQL database dump complete
--

