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

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectarespercategory DROP CONSTRAINT IF EXISTS pk_sectionaltitleownershipinhectarespercategory;
DROP TABLE IF EXISTS public.sectionaltitleownershipinhectarespercategory;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sectionaltitleownershipinhectarespercategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sectionaltitleownershipinhectarespercategory (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares per category" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: sectionaltitleownershipinhectarespercategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sectionaltitleownershipinhectarespercategory (geo_level, geo_code, geo_version, "sectional title ownership in hectares per category", total) FROM stdin;
level1	ZA_1_002	2009	Individual	680
level1	ZA_1_004	2009	Individual	1232
level1	ZA_1_007	2009	Individual	4770
level1	ZA_1_009	2009	Individual	979
level1	ZA_1_005	2009	Individual	1541
level1	ZA_1_008	2009	Individual	104
level1	ZA_1_006	2009	Individual	1134
level1	ZA_1_003	2009	Individual	6
level1	ZA_1_001	2009	Individual	533
level1	ZA_1_002	2009	Company	54
level1	ZA_1_004	2009	Company	48
level1	ZA_1_007	2009	Company	36187
level1	ZA_1_009	2009	Company	320
level1	ZA_1_005	2009	Company	53
level1	ZA_1_008	2009	Company	45
level1	ZA_1_006	2009	Company	429
level1	ZA_1_003	2009	Company	4
level1	ZA_1_001	2009	Company	382
level1	ZA_1_002	2009	CBOs	2
level1	ZA_1_004	2009	CBOs	6
level1	ZA_1_007	2009	CBOs	8
level1	ZA_1_009	2009	CBOs	2
level1	ZA_1_005	2009	CBOs	0
level1	ZA_1_008	2009	CBOs	0
level1	ZA_1_006	2009	CBOs	0
level1	ZA_1_003	2009	CBOs	0
level1	ZA_1_001	2009	CBOs	6
level1	ZA_1_002	2009	Trusts	33
level1	ZA_1_004	2009	Trusts	38
level1	ZA_1_007	2009	Trusts	570
level1	ZA_1_009	2009	Trusts	116
level1	ZA_1_005	2009	Trusts	14
level1	ZA_1_008	2009	Trusts	12
level1	ZA_1_006	2009	Trusts	16
level1	ZA_1_003	2009	Trusts	2
level1	ZA_1_001	2009	Trusts	258
level1	ZA_1_002	2009	Co-ownership	21
level1	ZA_1_004	2009	Co-ownership	22
level1	ZA_1_007	2009	Co-ownership	16
level1	ZA_1_009	2009	Co-ownership	99
level1	ZA_1_005	2009	Co-ownership	7
level1	ZA_1_008	2009	Co-ownership	18
level1	ZA_1_006	2009	Co-ownership	13
level1	ZA_1_003	2009	Co-ownership	0
level1	ZA_1_001	2009	Co-ownership	109
country	ZA	2009	Individual	10980
country	ZA	2009	Company	37523
country	ZA	2009	CBOs	24
country	ZA	2009	Trusts	1059
country	ZA	2009	Co-ownership	453
\.


--
-- Name: sectionaltitleownershipinhectarespercategory pk_sectionaltitleownershipinhectarespercategory; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sectionaltitleownershipinhectarespercategory
    ADD CONSTRAINT pk_sectionaltitleownershipinhectarespercategory PRIMARY KEY (geo_level, geo_code, geo_version, "sectional title ownership in hectares per category");


--
-- PostgreSQL database dump complete
--

