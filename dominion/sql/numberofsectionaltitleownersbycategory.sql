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

ALTER TABLE IF EXISTS ONLY public.numberofsectionaltitleownersbycategory DROP CONSTRAINT IF EXISTS pk_numberofsectionaltitleownersbycategory;
DROP TABLE IF EXISTS public.numberofsectionaltitleownersbycategory;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofsectionaltitleownersbycategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberofsectionaltitleownersbycategory (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by category" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofsectionaltitleownersbycategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberofsectionaltitleownersbycategory (geo_level, geo_code, geo_version, "number of sectional title owners by category", total) FROM stdin;
level1	ZA_1_003	2009	Individual	30162
level1	ZA_1_002	2009	Individual	25844
level1	ZA_1_009	2009	Individual	360802
level1	ZA_1_001	2009	Individual	154106
level1	ZA_1_005	2009	Individual	8607
level1	ZA_1_004	2009	Individual	11718
level1	ZA_1_007	2009	Individual	18394
level1	ZA_1_006	2009	Individual	817
level1	ZA_1_008	2009	Individual	116516
level1	ZA_1_003	2009	Company	1153
level1	ZA_1_002	2009	Company	1004
level1	ZA_1_009	2009	Company	19022
level1	ZA_1_001	2009	Company	10274
level1	ZA_1_005	2009	Company	1085
level1	ZA_1_004	2009	Company	1084
level1	ZA_1_007	2009	Company	1308
level1	ZA_1_006	2009	Company	66
level1	ZA_1_008	2009	Company	11931
level1	ZA_1_003	2009	CBOs	80
level1	ZA_1_002	2009	CBOs	51
level1	ZA_1_009	2009	CBOs	442
level1	ZA_1_001	2009	CBOs	243
level1	ZA_1_005	2009	CBOs	10
level1	ZA_1_004	2009	CBOs	10
level1	ZA_1_007	2009	CBOs	13
level1	ZA_1_006	2009	CBOs	2
level1	ZA_1_008	2009	CBOs	377
level1	ZA_1_003	2009	Trusts	2146
level1	ZA_1_002	2009	Trusts	2504
level1	ZA_1_009	2009	Trusts	15254
level1	ZA_1_001	2009	Trusts	7999
level1	ZA_1_005	2009	Trusts	900
level1	ZA_1_004	2009	Trusts	939
level1	ZA_1_007	2009	Trusts	1410
level1	ZA_1_006	2009	Trusts	81
level1	ZA_1_008	2009	Trusts	11645
country	ZA	2009	Individual	726966
country	ZA	2009	Company	46927
country	ZA	2009	CBOs	1228
country	ZA	2009	Trusts	42878
\.


--
-- Name: numberofsectionaltitleownersbycategory pk_numberofsectionaltitleownersbycategory; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberofsectionaltitleownersbycategory
    ADD CONSTRAINT pk_numberofsectionaltitleownersbycategory PRIMARY KEY (geo_level, geo_code, geo_version, "number of sectional title owners by category");


--
-- PostgreSQL database dump complete
--

