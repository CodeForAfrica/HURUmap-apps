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

ALTER TABLE IF EXISTS ONLY public.landownershipinhectaresbynationality DROP CONSTRAINT IF EXISTS pk_landownershipinhectaresbynationality;
DROP TABLE IF EXISTS public.landownershipinhectaresbynationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landownershipinhectaresbynationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landownershipinhectaresbynationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "land ownership in hectares by nationality" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landownershipinhectaresbynationality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landownershipinhectaresbynationality (geo_level, geo_code, geo_version, "land ownership in hectares by nationality", total) FROM stdin;
level1	ZA_1_002	2009	South African	4308421
level1	ZA_1_004	2009	South African	4700599
level1	ZA_1_007	2009	South African	392636
level1	ZA_1_009	2009	South African	1140986
level1	ZA_1_008	2009	South African	1328961
level1	ZA_1_006	2009	South African	2978894
level1	ZA_1_003	2009	South African	14126948
level1	ZA_1_001	2009	South African	3496840
country	ZA	2009	South African	33996255
level1	ZA_1_002	2009	Foreign	47444
level1	ZA_1_004	2009	Foreign	72538
level1	ZA_1_007	2009	Foreign	45117
level1	ZA_1_009	2009	Foreign	43666
level1	ZA_1_008	2009	Foreign	27291
level1	ZA_1_006	2009	Foreign	56055
level1	ZA_1_003	2009	Foreign	294779
level1	ZA_1_001	2009	Foreign	112238
country	ZA	2009	Foreign	769284
level1	ZA_1_002	2009	Co-ownership	77355
level1	ZA_1_004	2009	Co-ownership	58502
level1	ZA_1_007	2009	Co-ownership	14268
level1	ZA_1_009	2009	Co-ownership	102666
level1	ZA_1_008	2009	Co-ownership	35769
level1	ZA_1_006	2009	Co-ownership	143346
level1	ZA_1_003	2009	Co-ownership	321317
level1	ZA_1_001	2009	Co-ownership	112964
country	ZA	2009	Co-ownership	933728
level1	ZA_1_002	2009	Other	178308
level1	ZA_1_004	2009	Other	177626
level1	ZA_1_007	2009	Other	10648
level1	ZA_1_009	2009	Other	330176
level1	ZA_1_008	2009	Other	49131
level1	ZA_1_006	2009	Other	132914
level1	ZA_1_003	2009	Other	267958
level1	ZA_1_001	2009	Other	141951
country	ZA	2009	Other	1379023
level1	ZA_1_005	2009	South African	1521969
level1	ZA_1_005	2009	Foreign	70157
level1	ZA_1_005	2009	Co-ownership	67541
level1	ZA_1_005	2009	Other	90310
\.


--
-- Name: landownershipinhectaresbynationality pk_landownershipinhectaresbynationality; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landownershipinhectaresbynationality
    ADD CONSTRAINT pk_landownershipinhectaresbynationality PRIMARY KEY (geo_level, geo_code, geo_version, "land ownership in hectares by nationality");


--
-- PostgreSQL database dump complete
--

