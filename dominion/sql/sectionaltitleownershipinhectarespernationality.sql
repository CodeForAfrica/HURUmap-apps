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

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectaresnationality DROP CONSTRAINT IF EXISTS pk_sectionaltitleownershipinhectaresnationality;
DROP TABLE IF EXISTS public.sectionaltitleownershipinhectaresnationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sectionaltitleownershipinhectaresnationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sectionaltitleownershipinhectaresnationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares nationality" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: sectionaltitleownershipinhectaresnationality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sectionaltitleownershipinhectaresnationality (geo_level, geo_code, geo_version, "sectional title ownership in hectares nationality", total) FROM stdin;
level1	ZA_1_003	2016	South African	534
level1	ZA_1_002	2016	South African	1216
level1	ZA_1_009	2016	South African	3878
level1	ZA_1_001	2016	South African	513
level1	ZA_1_005	2016	South African	1538
level1	ZA_1_004	2016	South African	85
level1	ZA_1_007	2016	South African	1132
level1	ZA_1_006	2016	South African	5
level1	ZA_1_008	2016	South African	403
country	ZA	2016	South African	9305
level1	ZA_1_003	2016	Foreign	135
level1	ZA_1_002	2016	Foreign	17
level1	ZA_1_009	2016	Foreign	498
level1	ZA_1_001	2016	Foreign	386
level1	ZA_1_005	2016	Foreign	4
level1	ZA_1_004	2016	Foreign	6
level1	ZA_1_007	2016	Foreign	4
level1	ZA_1_006	2016	Foreign	1
level1	ZA_1_008	2016	Foreign	87
country	ZA	2016	Foreign	1138
level1	ZA_1_003	2016	Co-ownership	29
level1	ZA_1_002	2016	Co-ownership	18
level1	ZA_1_009	2016	Co-ownership	372
level1	ZA_1_001	2016	Co-ownership	160
level1	ZA_1_005	2016	Co-ownership	4
level1	ZA_1_004	2016	Co-ownership	28
level1	ZA_1_007	2016	Co-ownership	8
level1	ZA_1_006	2016	Co-ownership	1
level1	ZA_1_008	2016	Co-ownership	104
country	ZA	2016	Co-ownership	724
level1	ZA_1_003	2016	Other	3
level1	ZA_1_002	2016	Other	1
level1	ZA_1_009	2016	Other	175
level1	ZA_1_001	2016	Other	15
level1	ZA_1_005	2016	Other	1
level1	ZA_1_004	2016	Other	1
level1	ZA_1_007	2016	Other	2
level1	ZA_1_006	2016	Other	0
level1	ZA_1_008	2016	Other	31
country	ZA	2016	Other	229
\.


--
-- Name: sectionaltitleownershipinhectaresnationality pk_sectionaltitleownershipinhectaresnationality; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sectionaltitleownershipinhectaresnationality
    ADD CONSTRAINT pk_sectionaltitleownershipinhectaresnationality PRIMARY KEY (geo_level, geo_code, geo_version, "sectional title ownership in hectares nationality");


--
-- PostgreSQL database dump complete
--

