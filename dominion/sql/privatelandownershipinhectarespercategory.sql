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

ALTER TABLE IF EXISTS ONLY public.privatelandownershipinhectarespercategory DROP CONSTRAINT IF EXISTS pk_privatelandownershipinhectarespercategory;
DROP TABLE IF EXISTS public.privatelandownershipinhectarespercategory;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: privatelandownershipinhectarespercategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.privatelandownershipinhectarespercategory (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "private land ownership in hectares per category" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: privatelandownershipinhectarespercategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.privatelandownershipinhectarespercategory (geo_level, geo_code, geo_version, "private land ownership in hectares per category", total) FROM stdin;
level1	ZA_1_003	2009	Individual	4692320
level1	ZA_1_002	2009	Individual	5005878
level1	ZA_1_009	2009	Individual	546612
level1	ZA_1_001	2009	Individual	1579543
level1	ZA_1_005	2009	Individual	1718861
level1	ZA_1_004	2009	Individual	1432232
level1	ZA_1_007	2009	Individual	3215926
level1	ZA_1_006	2009	Individual	15083393
level1	ZA_1_008	2009	Individual	3756518
level1	ZA_1_003	2009	Company	1982479
level1	ZA_1_002	2009	Company	1978952
level1	ZA_1_009	2009	Company	618342
level1	ZA_1_001	2009	Company	1627042
level1	ZA_1_005	2009	Company	3918210
level1	ZA_1_004	2009	Company	2219322
level1	ZA_1_007	2009	Company	2025825
level1	ZA_1_006	2009	Company	5641747
level1	ZA_1_008	2009	Company	3187986
level1	ZA_1_003	2009	CBOs	190249
level1	ZA_1_002	2009	CBOs	126044
level1	ZA_1_009	2009	CBOs	60650
level1	ZA_1_001	2009	CBOs	300556
level1	ZA_1_005	2009	CBOs	705466
level1	ZA_1_004	2009	CBOs	240947
level1	ZA_1_007	2009	CBOs	341807
level1	ZA_1_006	2009	CBOs	1247673
level1	ZA_1_008	2009	CBOs	336097
level1	ZA_1_003	2009	Trusts	3964671
level1	ZA_1_002	2009	Trusts	4894214
level1	ZA_1_009	2009	Trusts	133797
level1	ZA_1_001	2009	Trusts	1562455
level1	ZA_1_005	2009	Trusts	1355839
level1	ZA_1_004	2009	Trusts	1219721
level1	ZA_1_007	2009	Trusts	1953015
level1	ZA_1_006	2009	Trusts	10057482
level1	ZA_1_008	2009	Trusts	4150662
level1	ZA_1_003	2009	Co-ownership	69870
level1	ZA_1_002	2009	Co-ownership	31470
level1	ZA_1_009	2009	Co-ownership	11556
level1	ZA_1_001	2009	Co-ownership	161950
level1	ZA_1_005	2009	Co-ownership	60564
level1	ZA_1_004	2009	Co-ownership	36185
level1	ZA_1_007	2009	Co-ownership	117724
level1	ZA_1_006	2009	Co-ownership	126464
level1	ZA_1_008	2009	Co-ownership	267807
country	ZA	2009	Individual	37031283
country	ZA	2009	Company	23199904
country	ZA	2009	CBOs	3549489
country	ZA	2009	Trusts	29291857
country	ZA	2009	Co-ownership	883589
\.


--
-- Name: privatelandownershipinhectarespercategory pk_privatelandownershipinhectarespercategory; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.privatelandownershipinhectarespercategory
    ADD CONSTRAINT pk_privatelandownershipinhectarespercategory PRIMARY KEY (geo_level, geo_code, geo_version, "private land ownership in hectares per category");


--
-- PostgreSQL database dump complete
--

