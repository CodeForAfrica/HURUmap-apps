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

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectarespergender DROP CONSTRAINT IF EXISTS pk_sectionaltitleownershipinhectarespergender;
DROP TABLE IF EXISTS public.sectionaltitleownershipinhectarespergender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sectionaltitleownershipinhectarespergender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sectionaltitleownershipinhectarespergender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares per gender" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: sectionaltitleownershipinhectarespergender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sectionaltitleownershipinhectarespergender (geo_level, geo_code, geo_version, "sectional title ownership in hectares per gender", total) FROM stdin;
level1	ZA_1_003	2016	Male	323
level1	ZA_1_002	2016	Male	170
level1	ZA_1_009	2016	Male	1253
level1	ZA_1_001	2016	Male	475
level1	ZA_1_005	2016	Male	203
level1	ZA_1_004	2016	Male	26
level1	ZA_1_007	2016	Male	33
level1	ZA_1_006	2016	Male	2
level1	ZA_1_008	2016	Male	151
country	ZA	2016	Male	2636
level1	ZA_1_003	2016	Female	57
level1	ZA_1_002	2016	Female	550
level1	ZA_1_009	2016	Female	1466
level1	ZA_1_001	2016	Female	219
level1	ZA_1_005	2016	Female	1057
level1	ZA_1_004	2016	Female	39
level1	ZA_1_007	2016	Female	28
level1	ZA_1_006	2016	Female	3
level1	ZA_1_008	2016	Female	249
country	ZA	2016	Female	3668
level1	ZA_1_003	2016	Male-Female	313
level1	ZA_1_002	2016	Male-Female	529
level1	ZA_1_009	2016	Male-Female	1832
level1	ZA_1_001	2016	Male-Female	340
level1	ZA_1_005	2016	Male-Female	284
level1	ZA_1_004	2016	Male-Female	43
level1	ZA_1_007	2016	Male-Female	1081
level1	ZA_1_006	2016	Male-Female	1
level1	ZA_1_008	2016	Male-Female	162
country	ZA	2016	Male-Female	4585
level1	ZA_1_003	2016	Co-ownership	5
level1	ZA_1_002	2016	Co-ownership	3
level1	ZA_1_009	2016	Co-ownership	197
level1	ZA_1_001	2016	Co-ownership	25
level1	ZA_1_005	2016	Co-ownership	1
level1	ZA_1_004	2016	Co-ownership	12
level1	ZA_1_007	2016	Co-ownership	2
level1	ZA_1_006	2016	Co-ownership	0
level1	ZA_1_008	2016	Co-ownership	31
country	ZA	2016	Co-ownership	277
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
-- Name: sectionaltitleownershipinhectarespergender pk_sectionaltitleownershipinhectarespergender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sectionaltitleownershipinhectarespergender
    ADD CONSTRAINT pk_sectionaltitleownershipinhectarespergender PRIMARY KEY (geo_level, geo_code, geo_version, "sectional title ownership in hectares per gender");


--
-- PostgreSQL database dump complete
--

