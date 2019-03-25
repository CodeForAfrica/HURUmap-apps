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

ALTER TABLE IF EXISTS ONLY public.numberoflandownerspernationality DROP CONSTRAINT IF EXISTS pk_numberoflandownerspernationality;
DROP TABLE IF EXISTS public.numberoflandownerspernationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberoflandownerspernationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberoflandownerspernationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of land owners per nationality" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberoflandownerspernationality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberoflandownerspernationality (geo_level, geo_code, geo_version, "number of land owners per nationality", total) FROM stdin;
level1	ZA_1_003	2009	South African	8616
level1	ZA_1_002	2009	South African	13765
level1	ZA_1_009	2009	South African	40734
level1	ZA_1_001	2009	South African	19807
level1	ZA_1_004	2009	South African	10774
level1	ZA_1_007	2009	South African	17067
level1	ZA_1_006	2009	South African	6601
level1	ZA_1_008	2009	South African	13705
country	ZA	2009	South African	143493
level1	ZA_1_003	2009	Foreign	545
level1	ZA_1_002	2009	Foreign	536
level1	ZA_1_009	2009	Foreign	5099
level1	ZA_1_001	2009	Foreign	1647
level1	ZA_1_004	2009	Foreign	845
level1	ZA_1_007	2009	Foreign	828
level1	ZA_1_006	2009	Foreign	253
level1	ZA_1_008	2009	Foreign	1465
country	ZA	2009	Foreign	12213
level1	ZA_1_003	2009	Other	2519
level1	ZA_1_002	2009	Other	876
level1	ZA_1_009	2009	Other	1758
level1	ZA_1_001	2009	Other	8538
level1	ZA_1_004	2009	Other	1401
level1	ZA_1_007	2009	Other	6226
level1	ZA_1_006	2009	Other	333
level1	ZA_1_008	2009	Other	1681
country	ZA	2009	Other	25826
level1	ZA_1_005	2009	South African	12424
level1	ZA_1_005	2009	Foreign	995
level1	ZA_1_005	2009	Other	2494
\.


--
-- Name: numberoflandownerspernationality pk_numberoflandownerspernationality; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberoflandownerspernationality
    ADD CONSTRAINT pk_numberoflandownerspernationality PRIMARY KEY (geo_level, geo_code, geo_version, "number of land owners per nationality");


--
-- PostgreSQL database dump complete
--

