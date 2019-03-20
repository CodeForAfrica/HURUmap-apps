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

ALTER TABLE IF EXISTS ONLY public.number_of_erven_land_owners_per_nationality DROP CONSTRAINT IF EXISTS pk_number_of_erven_land_owners_per_nationality;
DROP TABLE IF EXISTS public.number_of_erven_land_owners_per_nationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofervenlandownerspernationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.number_of_erven_land_owners_per_nationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    number_of_erven_land_owners_per_nationality character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofervenlandownerspernationality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.number_of_erven_land_owners_per_nationality (geo_level, geo_code, geo_version, number_of_erven_land_owners_per_nationality, total) FROM stdin;
level1	ZA_1_003	2016	South African	580567
level1	ZA_1_002	2016	South African	435000
level1	ZA_1_009	2016	South African	1771387
level1	ZA_1_001	2016	South African	693422
level1	ZA_1_004	2016	South African	296358
level1	ZA_1_007	2016	South African	253024
level1	ZA_1_006	2016	South African	177128
level1	ZA_1_008	2016	South African	1058526
country	ZA	2016	South African	5416890
level1	ZA_1_003	2016	Foreign	11604
level1	ZA_1_002	2016	Foreign	7268
level1	ZA_1_009	2016	Foreign	88479
level1	ZA_1_001	2016	Foreign	21355
level1	ZA_1_004	2016	Foreign	7673
level1	ZA_1_007	2016	Foreign	5677
level1	ZA_1_006	2016	Foreign	4624
level1	ZA_1_008	2016	Foreign	50486
country	ZA	2016	Foreign	200629
level1	ZA_1_003	2016	Other	55635
level1	ZA_1_002	2016	Other	27497
level1	ZA_1_009	2016	Other	123914
level1	ZA_1_001	2016	Other	67258
level1	ZA_1_004	2016	Other	18435
level1	ZA_1_007	2016	Other	19900
level1	ZA_1_006	2016	Other	7143
level1	ZA_1_008	2016	Other	8420
country	ZA	2016	Other	351946
level1	ZA_1_005	2016	South African	151478
level1	ZA_1_005	2016	Foreign	3463
level1	ZA_1_005	2016	Other	23744
\.


--
-- Name: numberofervenlandownerspernationality pk_numberofervenlandownerspernationality; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.number_of_erven_land_owners_per_nationality
    ADD CONSTRAINT pk_number_of_erven_land_owners_per_nationality PRIMARY KEY (geo_level, geo_code, geo_version, number_of_erven_land_owners_per_nationality);


--
-- PostgreSQL database dump complete
--
