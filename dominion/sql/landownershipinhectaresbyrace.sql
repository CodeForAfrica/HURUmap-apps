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

ALTER TABLE IF EXISTS ONLY public.landownershipinhectaresbyrace DROP CONSTRAINT IF EXISTS pk_landownershipinhectaresbyrace;
DROP TABLE IF EXISTS public.landownershipinhectaresbyrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landownershipinhectaresbyrace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landownershipinhectaresbyrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "land ownership in hectares by race" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landownershipinhectaresbyrace; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landownershipinhectaresbyrace (geo_level, geo_code, geo_version, "land ownership in hectares by race", total) FROM stdin;
level1	ZA_1_003	2009	White	3007709
level1	ZA_1_002	2009	White	3748192
level1	ZA_1_009	2009	White	275021
level1	ZA_1_001	2009	White	853152
level1	ZA_1_004	2009	White	967634
level1	ZA_1_007	2009	White	2408880
level1	ZA_1_006	2009	White	11498449
level1	ZA_1_008	2009	White	2764652
level1	ZA_1_003	2009	African	250536
level1	ZA_1_002	2009	African	153080
level1	ZA_1_009	2009	African	30266
level1	ZA_1_001	2009	African	270423
level1	ZA_1_004	2009	African	108792
level1	ZA_1_007	2009	African	198279
level1	ZA_1_006	2009	African	69350
level1	ZA_1_008	2009	African	53287
level1	ZA_1_003	2009	Coloured	773026
level1	ZA_1_002	2009	Coloured	646872
level1	ZA_1_009	2009	Coloured	81597
level1	ZA_1_001	2009	Coloured	248286
level1	ZA_1_004	2009	Coloured	219792
level1	ZA_1_007	2009	Coloured	397552
level1	ZA_1_006	2009	Coloured	2222206
level1	ZA_1_008	2009	Coloured	561315
level1	ZA_1_003	2009	Indian	385685
level1	ZA_1_002	2009	Indian	246453
level1	ZA_1_009	2009	Indian	51332
level1	ZA_1_001	2009	Indian	107723
level1	ZA_1_004	2009	Indian	83580
level1	ZA_1_007	2009	Indian	119744
level1	ZA_1_006	2009	Indian	746820
level1	ZA_1_008	2009	Indian	174865
level1	ZA_1_003	2009	Other	151849
level1	ZA_1_002	2009	Other	193548
level1	ZA_1_009	2009	Other	15925
level1	ZA_1_001	2009	Other	72033
level1	ZA_1_004	2009	Other	41702
level1	ZA_1_007	2009	Other	114219
level1	ZA_1_006	2009	Other	414065
level1	ZA_1_008	2009	Other	195047
level1	ZA_1_003	2009	Co-own	42723
level1	ZA_1_002	2009	Co-own	21119
level1	ZA_1_009	2009	Co-own	8528
level1	ZA_1_001	2009	Co-own	65875
level1	ZA_1_004	2009	Co-own	19652
level1	ZA_1_007	2009	Co-own	72536
level1	ZA_1_006	2009	Co-own	60112
level1	ZA_1_008	2009	Co-own	114827
country	ZA	2009	White	26663144
country	ZA	2009	African	1314873
country	ZA	2009	Coloured	5371383
country	ZA	2009	Indian	2031790
country	ZA	2009	Other	1271562
country	ZA	2009	Co-own	425537
level1	ZA_1_005	2009	White	1139454
level1	ZA_1_005	2009	African	180858
level1	ZA_1_005	2009	Coloured	220738
level1	ZA_1_005	2009	Indian	115588
level1	ZA_1_005	2009	Other	73174
level1	ZA_1_005	2009	Co-own	20165
\.


--
-- Name: landownershipinhectaresbyrace pk_landownershipinhectaresbyrace; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landownershipinhectaresbyrace
    ADD CONSTRAINT pk_landownershipinhectaresbyrace PRIMARY KEY (geo_level, geo_code, geo_version, "land ownership in hectares by race");


--
-- PostgreSQL database dump complete
--

