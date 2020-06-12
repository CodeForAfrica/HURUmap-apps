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

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectaresperrace DROP CONSTRAINT IF EXISTS pk_sectionaltitleownershipinhectaresperrace;
DROP TABLE IF EXISTS public.sectionaltitleownershipinhectaresperrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sectionaltitleownershipinhectaresperrace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sectionaltitleownershipinhectaresperrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares per race" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: sectionaltitleownershipinhectaresperrace; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sectionaltitleownershipinhectaresperrace (geo_level, geo_code, geo_version, "sectional title ownership in hectares per race", total) FROM stdin;
level1	ZA_1_002	2009	White	388
level1	ZA_1_004	2009	White	631
level1	ZA_1_007	2009	White	1964
level1	ZA_1_009	2009	White	578
level1	ZA_1_008	2009	White	70
level1	ZA_1_006	2009	White	59
level1	ZA_1_003	2009	White	4
level1	ZA_1_001	2009	White	354
level1	ZA_1_002	2009	African	128
level1	ZA_1_004	2009	African	14
level1	ZA_1_007	2009	African	1523
level1	ZA_1_009	2009	African	86
level1	ZA_1_008	2009	African	15
level1	ZA_1_006	2009	African	16
level1	ZA_1_003	2009	African	1
level1	ZA_1_001	2009	African	30
level1	ZA_1_002	2009	Coloured	22
level1	ZA_1_004	2009	Coloured	230
level1	ZA_1_007	2009	Coloured	734
level1	ZA_1_009	2009	Coloured	84
level1	ZA_1_008	2009	Coloured	7
level1	ZA_1_006	2009	Coloured	1046
level1	ZA_1_003	2009	Coloured	1
level1	ZA_1_001	2009	Coloured	63
level1	ZA_1_002	2009	Indian	123
level1	ZA_1_004	2009	Indian	10
level1	ZA_1_007	2009	Indian	227
level1	ZA_1_009	2009	Indian	136
level1	ZA_1_008	2009	Indian	5
level1	ZA_1_006	2009	Indian	6
level1	ZA_1_003	2009	Indian	0
level1	ZA_1_001	2009	Indian	45
level1	ZA_1_002	2009	Other	8
level1	ZA_1_004	2009	Other	341
level1	ZA_1_007	2009	Other	173
level1	ZA_1_009	2009	Other	41
level1	ZA_1_008	2009	Other	3
level1	ZA_1_006	2009	Other	4
level1	ZA_1_003	2009	Other	0
level1	ZA_1_001	2009	Other	31
level1	ZA_1_002	2009	Co-own	32
level1	ZA_1_004	2009	Co-own	27
level1	ZA_1_007	2009	Co-own	304
level1	ZA_1_009	2009	Co-own	149
level1	ZA_1_008	2009	Co-own	22
level1	ZA_1_006	2009	Co-own	15
level1	ZA_1_003	2009	Co-own	1
level1	ZA_1_001	2009	Co-own	101
country	ZA	2009	White	5118
country	ZA	2009	African	1989
country	ZA	2009	Coloured	2375
country	ZA	2009	Indian	556
country	ZA	2009	Other	703
country	ZA	2009	Co-own	655
level1	ZA_1_005	2009	White	1069
level1	ZA_1_005	2009	African	176
level1	ZA_1_005	2009	Coloured	188
level1	ZA_1_005	2009	Indian	4
level1	ZA_1_005	2009	Other	103
level1	ZA_1_005	2009	Co-own	6
\.


--
-- Name: sectionaltitleownershipinhectaresperrace pk_sectionaltitleownershipinhectaresperrace; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sectionaltitleownershipinhectaresperrace
    ADD CONSTRAINT pk_sectionaltitleownershipinhectaresperrace PRIMARY KEY (geo_level, geo_code, geo_version, "sectional title ownership in hectares per race");


--
-- PostgreSQL database dump complete
--

