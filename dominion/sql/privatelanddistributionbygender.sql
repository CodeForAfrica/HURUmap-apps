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

ALTER TABLE IF EXISTS ONLY public.privatelanddistributionbygender DROP CONSTRAINT IF EXISTS pk_privatelanddistributionbygender;
DROP TABLE IF EXISTS public.privatelanddistributionbygender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: privatelanddistributionbygender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.privatelanddistributionbygender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_ownership_by_gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: privatelanddistributionbygender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.privatelanddistributionbygender (geo_level, geo_code, geo_version, land_ownership_by_gender, total) FROM stdin;
level1	ZA_1_003	2009	Not Identified	146520
level1	ZA_1_003	2009	Female	2083258
level1	ZA_1_003	2009	Male	9080590
level1	ZA_1_004	2009	Not Identified	139369
level1	ZA_1_004	2009	Female	777577
level1	ZA_1_004	2009	Male	3054269
level1	ZA_1_008	2009	Not Identified	28970
level1	ZA_1_008	2009	Female	255216
level1	ZA_1_008	2009	Male	878623
level1	ZA_1_006	2009	Not Identified	96562
level1	ZA_1_006	2009	Female	557662
level1	ZA_1_006	2009	Male	1821884
level1	ZA_1_009	2009	Not Identified	111663
level1	ZA_1_009	2009	Female	177720
level1	ZA_1_009	2009	Male	896201
level1	ZA_1_001	2009	Not Identified	92210
level1	ZA_1_001	2009	Female	479140
level1	ZA_1_001	2009	Male	2465129
level1	ZA_1_002	2009	Not Identified	144898
level1	ZA_1_002	2009	Female	448733
level1	ZA_1_002	2009	Male	3364966
level1	ZA_1_005	2009	Not Identified	49711
level1	ZA_1_005	2009	Female	304717
level1	ZA_1_005	2009	Male	942831
level1	ZA_1_007	2009	Not Identified	11193
level1	ZA_1_007	2009	Female	107135
level1	ZA_1_007	2009	Male	221760
country	ZA	2009	Not Identified	157713
country	ZA	2009	Female	2190393
country	ZA	2009	Male	9302350
\.


--
-- Name: privatelanddistributionbygender pk_privatelanddistributionbygender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.privatelanddistributionbygender
    ADD CONSTRAINT pk_privatelanddistributionbygender PRIMARY KEY (geo_level, geo_code, geo_version, land_ownership_by_gender);


--
-- PostgreSQL database dump complete
--

