--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;


ALTER TABLE IF EXISTS ONLY public.landownershipinhectaresbygender DROP CONSTRAINT IF EXISTS pk_landownershipinhectaresbygender;
DROP TABLE IF EXISTS public.landownershipinhectaresbygender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landownershipinhectaresbygender; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landownershipinhectaresbygender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "land ownership in hectares by gender" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landownershipinhectaresbygender; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landownershipinhectaresbygender (geo_level, geo_code, geo_version, "land ownership in hectares by gender", total) FROM stdin;
province	EC	2016	Female	439032
province	FS	2016	Female	854107
province	GT	2016	Female	112110
province	KZN	2016	Female	134896
province	MP	2016	Female	218791
province	NW	2016	Female	487229
province	NC	2016	Female	1882645
province	WC	2016	Female	467145
country	ZA	2016	Female	4871013
province	EC	2016	Male	3704812
province	FS	2016	Male	3518907
province	GT	2016	Male	235362
province	KZN	2016	Male	934891
province	MP	2016	Male	955454
province	NW	2016	Male	2047590
province	NC	2016	Male	11000772
province	WC	2016	Male	2782161
country	ZA	2016	Male	26202689
province	EC	2016	Male-Female	229159
province	FS	2016	Male-Female	414059
province	GT	2016	Male-Female	98483
province	KZN	2016	Male-Female	130532
province	MP	2016	Male-Female	190483
province	NW	2016	Male-Female	523392
province	NC	2016	Male-Female	1693539
province	WC	2016	Male-Female	374965
country	ZA	2016	Male-Female	3970315
province	EC	2016	Co-owner	60218
province	FS	2016	Co-owner	44566
province	GT	2016	Co-owner	6060
province	KZN	2016	Co-owner	86998
province	MP	2016	Co-owner	27293
province	NW	2016	Co-owner	120084
province	NC	2016	Co-owner	166088
province	WC	2016	Co-owner	97772
country	ZA	2016	Co-owner	655242
province	EC	2016	Other	178308
province	FS	2016	Other	177626
province	GT	2016	Other	10654
province	KZN	2016	Other	33076
province	MP	2016	Other	49131
province	NW	2016	Other	132914
province	NC	2016	Other	267958
province	WC	2016	Other	141951
country	ZA	2016	Other	1379029
province	LIM	2016	Female	275057
province	LIM	2016	Male	1022742
province	LIM	2016	Male-Female	315703
province	LIM	2016	Co-owner	46164
province	LIM	2016	Other	90310
\.


--
-- Name: landownershipinhectaresbygender pk_landownershipinhectaresbygender; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE IF EXISTS ONLY public.landownershipinhectaresbygender
    ADD CONSTRAINT pk_landownershipinhectaresbygender PRIMARY KEY (geo_level, geo_code, geo_version, "land ownership in hectares by gender");


--
-- PostgreSQL database dump complete
--

