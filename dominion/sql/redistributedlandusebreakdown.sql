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

ALTER TABLE IF EXISTS ONLY public.redistributedlandusebreakdown DROP CONSTRAINT IF EXISTS pk_redistributedlandusebreakdown;
DROP TABLE IF EXISTS public.redistributedlandusebreakdown;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: redistributedlandusebreakdown; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redistributedlandusebreakdown (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "redistributed land use breakdown" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: redistributedlandusebreakdown; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redistributedlandusebreakdown (geo_level, geo_code, geo_version, "redistributed land use breakdown", total) FROM stdin;
level1	ZA_1_003	2009	projects	4
level1	ZA_1_002	2009	projects	10
level1	ZA_1_009	2009	projects	6
level1	ZA_1_001	2009	projects	20
level1	ZA_1_005	2009	projects	8
level1	ZA_1_004	2009	projects	9
level1	ZA_1_006	2009	projects	7
level1	ZA_1_007	2009	projects	10
level1	ZA_1_008	2009	projects	1
country	ZA	2009	projects	75
level1	ZA_1_003	2009	households	25
level1	ZA_1_002	2009	households	23
level1	ZA_1_009	2009	households	2
level1	ZA_1_001	2009	households	358
level1	ZA_1_005	2009	households	12
level1	ZA_1_004	2009	households	16
level1	ZA_1_006	2009	households	10
level1	ZA_1_007	2009	households	32
level1	ZA_1_008	2009	households	0
country	ZA	2009	households	478
level1	ZA_1_003	2009	beneficiaries	31
level1	ZA_1_002	2009	beneficiaries	306
level1	ZA_1_009	2009	beneficiaries	114
level1	ZA_1_001	2009	beneficiaries	736
level1	ZA_1_005	2009	beneficiaries	16
level1	ZA_1_004	2009	beneficiaries	85
level1	ZA_1_006	2009	beneficiaries	12
level1	ZA_1_007	2009	beneficiaries	39
level1	ZA_1_008	2009	beneficiaries	9
country	ZA	2009	beneficiaries	1348
\.


--
-- Name: redistributedlandusebreakdown pk_redistributedlandusebreakdown; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redistributedlandusebreakdown
    ADD CONSTRAINT pk_redistributedlandusebreakdown PRIMARY KEY (geo_level, geo_code, geo_version, "redistributed land use breakdown");


--
-- PostgreSQL database dump complete
--

