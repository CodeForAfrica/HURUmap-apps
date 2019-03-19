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

ALTER TABLE IF EXISTS ONLY public.ervenlandownershipinhectaresbygender DROP CONSTRAINT IF EXISTS pk_erven_land_ownership_in_hectares_by_gender;
DROP TABLE IF EXISTS public.erven_land_ownership_in_hectares_by_gender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ervenlandownershipinhectaresbygender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.erven_land_ownership_in_hectares_by_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "erven_land_ownership_in_hectares_by_gender" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: ervenlandownershipinhectaresbygender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.erven_land_ownership_in_hectares_by_gender (geo_level, geo_code, geo_version, "erven_land_ownership_in_hectares_by_gender", total) FROM stdin;
province	EC	2016	Female	15553
province	FS	2016	Female	8452
province	GT	2016	Female	23801
province	KZN	2016	Female	16166
province	MP	2016	Female	5565
province	NW	2016	Female	6111
province	NC	2016	Female	17474
province	WC	2016	Female	26115
country	ZA	2016	Female	125327
province	EC	2016	Male	29713
province	FS	2016	Male	7672
province	GT	2016	Male	26699
province	KZN	2016	Male	28306
province	MP	2016	Male	7422
province	NW	2016	Male	5004
province	NC	2016	Male	137660
province	WC	2016	Male	86527
country	ZA	2016	Male	336448
province	EC	2016	Male-Female	11711
province	FS	2016	Male-Female	7400
province	GT	2016	Male-Female	36992
province	KZN	2016	Male-Female	19937
province	MP	2016	Male-Female	6524
province	NW	2016	Male-Female	5370
province	NC	2016	Male-Female	20062
province	WC	2016	Male-Female	28026
country	ZA	2016	Male-Female	140497
province	EC	2016	Co-owner	1324
province	FS	2016	Co-owner	401
province	GT	2016	Co-owner	2144
province	KZN	2016	Co-owner	2133
province	MP	2016	Co-owner	291
province	NW	2016	Co-owner	214
province	NC	2016	Co-owner	150
province	WC	2016	Co-owner	210
country	ZA	2016	Co-owner	7052
province	EC	2016	Other	81538
province	FS	2016	Other	2610
province	GT	2016	Other	4621
province	KZN	2016	Other	11193
province	MP	2016	Other	914
province	NW	2016	Other	989
province	NC	2016	Other	9057
province	WC	2016	Other	364
country	ZA	2016	Other	113344
province	LIM	2016	Female	6090
province	LIM	2016	Male	7446
province	LIM	2016	Male-Female	4474
province	LIM	2016	Co-owner	185
province	LIM	2016	Other	2058
\.


--
-- Name: ervenlandownershipinhectaresbygender pk_ervenlandownershipinhectaresbygender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.erven_land_ownership_in_hectares_by_gender
    ADD CONSTRAINT pk_erven_land_ownership_in_hectares_by_gender PRIMARY KEY (geo_level, geo_code, geo_version, "erven_land_ownership_in_hectares_by_gender");


--
-- PostgreSQL database dump complete
--
