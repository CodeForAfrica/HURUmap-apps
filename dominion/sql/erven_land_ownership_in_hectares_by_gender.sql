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

ALTER TABLE IF EXISTS ONLY public.erven_land_ownership_in_hectares_by_gender DROP CONSTRAINT IF EXISTS pk_erven_land_ownership_in_hectares_by_gender;
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
    erven_land_ownership_in_hectares_by_gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: ervenlandownershipinhectaresbygender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.erven_land_ownership_in_hectares_by_gender (geo_level, geo_code, geo_version, erven_land_ownership_in_hectares_by_gender, total) FROM stdin;
level1	ZA_1_002	2009	Female	15553
level1	ZA_1_004	2009	Female	8452
level1	ZA_1_007	2009	Female	23801
level1	ZA_1_009	2009	Female	16166
level1	ZA_1_008	2009	Female	5565
level1	ZA_1_006	2009	Female	6111
level1	ZA_1_003	2009	Female	17474
level1	ZA_1_001	2009	Female	26115
country	ZA	2009	Female	125327
level1	ZA_1_002	2009	Male	29713
level1	ZA_1_004	2009	Male	7672
level1	ZA_1_007	2009	Male	26699
level1	ZA_1_009	2009	Male	28306
level1	ZA_1_008	2009	Male	7422
level1	ZA_1_006	2009	Male	5004
level1	ZA_1_003	2009	Male	137660
level1	ZA_1_001	2009	Male	86527
country	ZA	2009	Male	336448
level1	ZA_1_002	2009	Male-Female	11711
level1	ZA_1_004	2009	Male-Female	7400
level1	ZA_1_007	2009	Male-Female	36992
level1	ZA_1_009	2009	Male-Female	19937
level1	ZA_1_008	2009	Male-Female	6524
level1	ZA_1_006	2009	Male-Female	5370
level1	ZA_1_003	2009	Male-Female	20062
level1	ZA_1_001	2009	Male-Female	28026
country	ZA	2009	Male-Female	140497
level1	ZA_1_002	2009	Co-owner	1324
level1	ZA_1_004	2009	Co-owner	401
level1	ZA_1_007	2009	Co-owner	2144
level1	ZA_1_009	2009	Co-owner	2133
level1	ZA_1_008	2009	Co-owner	291
level1	ZA_1_006	2009	Co-owner	214
level1	ZA_1_003	2009	Co-owner	150
level1	ZA_1_001	2009	Co-owner	210
country	ZA	2009	Co-owner	7052
level1	ZA_1_002	2009	Other	81538
level1	ZA_1_004	2009	Other	2610
level1	ZA_1_007	2009	Other	4621
level1	ZA_1_009	2009	Other	11193
level1	ZA_1_008	2009	Other	914
level1	ZA_1_006	2009	Other	989
level1	ZA_1_003	2009	Other	9057
level1	ZA_1_001	2009	Other	364
country	ZA	2009	Other	113344
level1	ZA_1_005	2009	Female	6090
level1	ZA_1_005	2009	Male	7446
level1	ZA_1_005	2009	Male-Female	4474
level1	ZA_1_005	2009	Co-owner	185
level1	ZA_1_005	2009	Other	2058
\.


--
-- Name: ervenlandownershipinhectaresbygender pk_ervenlandownershipinhectaresbygender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.erven_land_ownership_in_hectares_by_gender
    ADD CONSTRAINT pk_erven_land_ownership_in_hectares_by_gender PRIMARY KEY (geo_level, geo_code, geo_version, erven_land_ownership_in_hectares_by_gender);


--
-- PostgreSQL database dump complete
--
