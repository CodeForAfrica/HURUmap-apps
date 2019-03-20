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

ALTER TABLE IF EXISTS ONLY public.numberoflandownersperrace DROP CONSTRAINT IF EXISTS pk_numberoflandownersperrace;
DROP TABLE IF EXISTS public.numberoflandownersperrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberoflandownersperrace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberoflandownersperrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of land owners per race" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberoflandownersperrace; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberoflandownersperrace (geo_level, geo_code, geo_version, "number of land owners per race", total) FROM stdin;
level1	ZA_1_003	2016	White	6047
level1	ZA_1_002	2016	White	10034
level1	ZA_1_009	2016	White	26622
level1	ZA_1_001	2016	White	8748
level1	ZA_1_004	2016	White	7375
level1	ZA_1_007	2016	White	12265
level1	ZA_1_006	2016	White	5247
level1	ZA_1_008	2016	White	11110
level1	ZA_1_003	2016	African	2747
level1	ZA_1_002	2016	African	1684
level1	ZA_1_009	2016	African	8887
level1	ZA_1_001	2016	African	11215
level1	ZA_1_004	2016	African	2891
level1	ZA_1_007	2016	African	7652
level1	ZA_1_006	2016	African	170
level1	ZA_1_008	2016	African	558
level1	ZA_1_003	2016	Coloured	1492
level1	ZA_1_002	2016	Coloured	1977
level1	ZA_1_009	2016	Coloured	6220
level1	ZA_1_001	2016	Coloured	2711
level1	ZA_1_004	2016	Coloured	1575
level1	ZA_1_007	2016	Coloured	2400
level1	ZA_1_006	2016	Coloured	1175
level1	ZA_1_008	2016	Coloured	2898
level1	ZA_1_003	2016	Indian	895
level1	ZA_1_002	2016	Indian	833
level1	ZA_1_009	2016	Indian	3640
level1	ZA_1_001	2016	Indian	5960
level1	ZA_1_004	2016	Indian	722
level1	ZA_1_007	2016	Indian	1040
level1	ZA_1_006	2016	Indian	404
level1	ZA_1_008	2016	Indian	1330
level1	ZA_1_003	2016	Other	499
level1	ZA_1_002	2016	Other	649
level1	ZA_1_009	2016	Other	2222
level1	ZA_1_001	2016	Other	1358
level1	ZA_1_004	2016	Other	457
level1	ZA_1_007	2016	Other	764
level1	ZA_1_006	2016	Other	191
level1	ZA_1_008	2016	Other	955
country	ZA	2016	White	95673
country	ZA	2016	African	40494
country	ZA	2016	Coloured	22127
country	ZA	2016	Indian	15601
country	ZA	2016	Other	7637
level1	ZA_1_005	2016	White	8225
level1	ZA_1_005	2016	African	4690
level1	ZA_1_005	2016	Coloured	1679
level1	ZA_1_005	2016	Indian	777
level1	ZA_1_005	2016	Other	542
\.


--
-- Name: numberoflandownersperrace pk_numberoflandownersperrace; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberoflandownersperrace
    ADD CONSTRAINT pk_numberoflandownersperrace PRIMARY KEY (geo_level, geo_code, geo_version, "number of land owners per race");


--
-- PostgreSQL database dump complete
--

