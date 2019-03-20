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

ALTER TABLE IF EXISTS ONLY public.number_of_erven_land_owners_per_gender DROP CONSTRAINT IF EXISTS pk_number_of_erven_land_owners_per_gender;
DROP TABLE IF EXISTS public.number_of_erven_land_owners_per_gender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofervenlandownerspergender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.number_of_erven_land_owners_per_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    number_of_erven_land_owners_per_gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofervenlandownerspergender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.number_of_erven_land_owners_per_gender (geo_level, geo_code, geo_version, number_of_erven_land_owners_per_gender, total) FROM stdin;
level1	ZA_1_003	2016	Female	322019
level1	ZA_1_002	2016	Female	237052
level1	ZA_1_009	2016	Female	988938
level1	ZA_1_001	2016	Female	376103
level1	ZA_1_004	2016	Female	156603
level1	ZA_1_007	2016	Female	134455
level1	ZA_1_006	2016	Female	96757
level1	ZA_1_008	2016	Female	568349
country	ZA	2016	Female	2961794
level1	ZA_1_003	2016	Male	270152
level1	ZA_1_002	2016	Male	205216
level1	ZA_1_009	2016	Male	870928
level1	ZA_1_001	2016	Male	338674
level1	ZA_1_004	2016	Male	147428
level1	ZA_1_007	2016	Male	124246
level1	ZA_1_006	2016	Male	84995
level1	ZA_1_008	2016	Male	540662
country	ZA	2016	Male	2655724
level1	ZA_1_003	2016	Other	55635
level1	ZA_1_002	2016	Other	27497
level1	ZA_1_009	2016	Other	123914
level1	ZA_1_001	2016	Other	67258
level1	ZA_1_004	2016	Other	18435
level1	ZA_1_007	2016	Other	19900
level1	ZA_1_006	2016	Other	7143
level1	ZA_1_008	2016	Other	8421
country	ZA	2016	Other	351947
level1	ZA_1_005	2016	Female	81518
level1	ZA_1_005	2016	Male	73423
level1	ZA_1_005	2016	Other	23744
\.


--
-- Name: numberofervenlandownerspergender pk_numberofervenlandownerspergender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.number_of_erven_land_owners_per_gender
    ADD CONSTRAINT pk_number_of_erven_land_owners_per_gender PRIMARY KEY (geo_level, geo_code, geo_version, number_of_erven_land_owners_per_gender);


--
-- PostgreSQL database dump complete
--
