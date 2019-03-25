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

ALTER TABLE IF EXISTS ONLY public.numberofprivatelandownersbycategory DROP CONSTRAINT IF EXISTS pk_numberofprivatelandownersbycategory;
DROP TABLE IF EXISTS public.numberofprivatelandownersbycategory;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofprivatelandownersbycategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberofprivatelandownersbycategory (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of private land owners by category" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofprivatelandownersbycategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberofprivatelandownersbycategory (geo_level, geo_code, geo_version, "number of private land owners by category", total) FROM stdin;
level1	ZA_1_003	2009	Individual	659469
level1	ZA_1_002	2009	Individual	484942
level1	ZA_1_009	2009	Individual	2031370
level1	ZA_1_001	2009	Individual	812027
level1	ZA_1_004	2009	Individual	336211
level1	ZA_1_007	2009	Individual	300486
level1	ZA_1_006	2009	Individual	195052
level1	ZA_1_008	2009	Individual	1134283
level1	ZA_1_003	2009	Company	10554
level1	ZA_1_002	2009	Company	8527
level1	ZA_1_009	2009	Company	61350
level1	ZA_1_001	2009	Company	22079
level1	ZA_1_004	2009	Company	11569
level1	ZA_1_007	2009	Company	10873
level1	ZA_1_006	2009	Company	4308
level1	ZA_1_008	2009	Company	35281
level1	ZA_1_003	2009	Trusts	11628
level1	ZA_1_002	2009	Trusts	11061
level1	ZA_1_009	2009	Trusts	23643
level1	ZA_1_001	2009	Trusts	16361
level1	ZA_1_004	2009	Trusts	6067
level1	ZA_1_007	2009	Trusts	6839
level1	ZA_1_006	2009	Trusts	4247
level1	ZA_1_008	2009	Trusts	32996
level1	ZA_1_003	2009	CBOs	2785
level1	ZA_1_002	2009	CBOs	1520
level1	ZA_1_009	2009	CBOs	7761
level1	ZA_1_001	2009	CBOs	3065
level1	ZA_1_004	2009	CBOs	1645
level1	ZA_1_007	2009	CBOs	1586
level1	ZA_1_006	2009	CBOs	1224
level1	ZA_1_008	2009	CBOs	5188
country	ZA	2009	Individual	6150096
country	ZA	2009	Company	176062
country	ZA	2009	Trusts	118214
country	ZA	2009	CBOs	25927
level1	ZA_1_005	2009	Individual	196256
level1	ZA_1_005	2009	Company	11521
level1	ZA_1_005	2009	Trusts	5372
level1	ZA_1_005	2009	CBOs	1153
\.


--
-- Name: numberofprivatelandownersbycategory pk_numberofprivatelandownersbycategory; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberofprivatelandownersbycategory
    ADD CONSTRAINT pk_numberofprivatelandownersbycategory PRIMARY KEY (geo_level, geo_code, geo_version, "number of private land owners by category");


--
-- PostgreSQL database dump complete
--

