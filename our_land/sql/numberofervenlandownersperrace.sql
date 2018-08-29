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

ALTER TABLE ONLY public.numberofervenlandownersperrace DROP CONSTRAINT pk_numberofervenlandownersperrace;
DROP TABLE public.numberofervenlandownersperrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofervenlandownersperrace; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberofervenlandownersperrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of erven land owners per race" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberofervenlandownersperrace OWNER TO our_land;

--
-- Data for Name: numberofervenlandownersperrace; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberofervenlandownersperrace (geo_level, geo_code, geo_version, "number of erven land owners per race", total) FROM stdin;
province	EC	2011	White	169622
province	FS	2011	White	74287
province	GT	2011	White	414120
province	KZN	2011	White	139287
province	MP	2011	White	54466
province	NW	2011	White	52034
province	NC	2011	White	84041
province	WC	2011	White	543008
province	EC	2011	African	169622
province	FS	2011	African	74287
province	GT	2011	African	414120
province	KZN	2011	African	139287
province	MP	2011	African	54466
province	NW	2011	African	52034
province	NC	2011	African	84041
province	WC	2011	African	543008
province	EC	2011	Coloured	62054
province	FS	2011	Coloured	22608
province	GT	2011	Coloured	118635
province	KZN	2011	Coloured	44207
province	MP	2011	Coloured	12443
province	NW	2011	Coloured	14613
province	NC	2011	Coloured	29962
province	WC	2011	Coloured	197703
province	EC	2011	Indian	35939
province	FS	2011	Indian	11030
province	GT	2011	Indian	105010
province	KZN	2011	Indian	136451
province	MP	2011	Indian	8555
province	NW	2011	Indian	8568
province	NC	2011	Indian	12049
province	WC	2011	Indian	92633
province	EC	2011	Other	18705
province	FS	2011	Other	7379
province	GT	2011	Other	49217
province	KZN	2011	Other	24005
province	MP	2011	Other	4575
province	NW	2011	Other	4957
province	NC	2011	Other	5915
province	WC	2011	Other	56861
country	ZA	2011	White	1552653
country	ZA	2011	African	3321476
country	ZA	2011	Coloured	507829
country	ZA	2011	Indian	414069
country	ZA	2011	Other	173418
province	LIM	2011	White	21788
province	LIM	2011	African	21788
province	LIM	2011	Coloured	5604
province	LIM	2011	Indian	3834
province	LIM	2011	Other	1804
\.


--
-- Name: numberofervenlandownersperrace pk_numberofervenlandownersperrace; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE ONLY public.numberofervenlandownersperrace
    ADD CONSTRAINT pk_numberofervenlandownersperrace PRIMARY KEY (geo_level, geo_code, geo_version, "number of erven land owners per race");


--
-- PostgreSQL database dump complete
--

