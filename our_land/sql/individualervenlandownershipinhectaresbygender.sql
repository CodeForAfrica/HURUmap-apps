--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 11:54:41 EAT

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
-- TOC entry 189 (class 1259 OID 80377)
-- Name: ervenlandownershipinhectaresbygender; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.ervenlandownershipinhectaresbygender (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "erven land ownership in hectares by gender" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.ervenlandownershipinhectaresbygender OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80377)
-- Dependencies: 189
-- Data for Name: ervenlandownershipinhectaresbygender; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.ervenlandownershipinhectaresbygender (geo_level, geo_code, geo_version, "erven land ownership in hectares by gender", total) FROM stdin;
province	EC	2011	Female	15553
province	FS	2011	Female	8452
province	GT	2011	Female	23801
province	KZN	2011	Female	16166
province	LM	2011	Female	6090
province	MP	2011	Female	5565
province	NW	2011	Female	6111
province	NC	2011	Female	17474
province	WC	2011	Female	26115
country	ZA	2011	Female	125327
province	EC	2011	Male	29713
province	FS	2011	Male	7672
province	GT	2011	Male	26699
province	KZN	2011	Male	28306
province	LM	2011	Male	7446
province	MP	2011	Male	7422
province	NW	2011	Male	5004
province	NC	2011	Male	137660
province	WC	2011	Male	86527
country	ZA	2011	Male	336448
province	EC	2011	Male-Female	11711
province	FS	2011	Male-Female	7400
province	GT	2011	Male-Female	36992
province	KZN	2011	Male-Female	19937
province	LM	2011	Male-Female	4474
province	MP	2011	Male-Female	6524
province	NW	2011	Male-Female	5370
province	NC	2011	Male-Female	20062
province	WC	2011	Male-Female	28026
country	ZA	2011	Male-Female	140497
province	EC	2011	Co-owner	1324
province	FS	2011	Co-owner	401
province	GT	2011	Co-owner	2144
province	KZN	2011	Co-owner	2133
province	LM	2011	Co-owner	185
province	MP	2011	Co-owner	291
province	NW	2011	Co-owner	214
province	NC	2011	Co-owner	150
province	WC	2011	Co-owner	210
country	ZA	2011	Co-owner	7052
province	EC	2011	Other	81538
province	FS	2011	Other	2610
province	GT	2011	Other	4621
province	KZN	2011	Other	11193
province	LM	2011	Other	2058
province	MP	2011	Other	914
province	NW	2011	Other	989
province	NC	2011	Other	9057
province	WC	2011	Other	364
country	ZA	2011	Other	113344
\.


-- Completed on 2018-08-23 11:54:41 EAT

--
-- PostgreSQL database dump complete
--
