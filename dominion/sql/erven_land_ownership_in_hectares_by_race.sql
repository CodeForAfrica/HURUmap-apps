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

ALTER TABLE IF EXISTS ONLY public.erven_land_ownership_in_hectares_by_race DROP CONSTRAINT IF EXISTS pk_erven_land_ownership_in_hectares_by_race;
DROP TABLE IF EXISTS public.erven_land_ownership_in_hectares_by_race;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ervenlandownershipinhectaresbyrace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.erven_land_ownership_in_hectares_by_race (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    erven_land_ownership_in_hectares_by_race character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: ervenlandownershipinhectaresbyrace; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.erven_land_ownership_in_hectares_by_race (geo_level, geo_code, geo_version, erven_land_ownership_in_hectares_by_race, total) FROM stdin;
level1	ZA_1_003	2016	White	26379
level1	ZA_1_002	2016	White	7543
level1	ZA_1_009	2016	White	32056
level1	ZA_1_001	2016	White	19749
level1	ZA_1_004	2016	White	6511
level1	ZA_1_007	2016	White	7140
level1	ZA_1_006	2016	White	152624
level1	ZA_1_008	2016	White	99825
level1	ZA_1_003	2016	African	93868
level1	ZA_1_002	2016	African	15388
level1	ZA_1_009	2016	African	40849
level1	ZA_1_001	2016	African	30675
level1	ZA_1_004	2016	African	11281
level1	ZA_1_007	2016	African	7922
level1	ZA_1_006	2016	African	2356
level1	ZA_1_008	2016	African	5008
level1	ZA_1_003	2016	Coloured	6764
level1	ZA_1_002	2016	Coloured	1760
level1	ZA_1_009	2016	Coloured	8325
level1	ZA_1_001	2016	Coloured	6043
level1	ZA_1_004	2016	Coloured	1335
level1	ZA_1_007	2016	Coloured	1238
level1	ZA_1_006	2016	Coloured	12560
level1	ZA_1_008	2016	Coloured	15119
level1	ZA_1_003	2016	Indian	5427
level1	ZA_1_002	2016	Indian	892
level1	ZA_1_009	2016	Indian	7009
level1	ZA_1_001	2016	Indian	15232
level1	ZA_1_004	2016	Indian	854
level1	ZA_1_007	2016	Indian	720
level1	ZA_1_006	2016	Indian	13515
level1	ZA_1_008	2016	Indian	11280
level1	ZA_1_003	2016	Other	3169
level1	ZA_1_002	2016	Other	586
level1	ZA_1_009	2016	Other	3461
level1	ZA_1_001	2016	Other	2832
level1	ZA_1_004	2016	Other	460
level1	ZA_1_007	2016	Other	429
level1	ZA_1_006	2016	Other	3002
level1	ZA_1_008	2016	Other	7107
country	ZA	2016	White	357507
country	ZA	2016	African	219033
country	ZA	2016	Coloured	54522
country	ZA	2016	Indian	55909
country	ZA	2016	Other	21365
country	ZA	2016	Co-ownership	14332
level1	ZA_1_003	2016	Co-ownership	4233
level1	ZA_1_002	2016	Co-ownership	366
level1	ZA_1_009	2016	Co-ownership	2557
level1	ZA_1_001	2016	Co-ownership	3205
level1	ZA_1_004	2016	Co-ownership	275
level1	ZA_1_007	2016	Co-ownership	239
level1	ZA_1_006	2016	Co-ownership	347
level1	ZA_1_008	2016	Co-ownership	2903
level1	ZA_1_005	2016	White	5680
level1	ZA_1_005	2016	African	11688
level1	ZA_1_005	2016	Coloured	1378
level1	ZA_1_005	2016	Indian	981
level1	ZA_1_005	2016	Other	319
level1	ZA_1_005	2016	Co-ownership	207
\.


--
-- Name: ervenlandownershipinhectaresbyrace pk_ervenlandownershipinhectaresbyrace; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.erven_land_ownership_in_hectares_by_race
    ADD CONSTRAINT pk_erven_land_ownership_in_hectares_by_race PRIMARY KEY (geo_level, geo_code, geo_version, erven_land_ownership_in_hectares_by_race);


--
-- PostgreSQL database dump complete
--
