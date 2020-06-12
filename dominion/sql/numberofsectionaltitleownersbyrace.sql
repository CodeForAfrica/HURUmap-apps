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

ALTER TABLE IF EXISTS ONLY public.numberofsectionaltitleownersbyrace DROP CONSTRAINT IF EXISTS pk_numberofsectionaltitleownersbyrace;
DROP TABLE IF EXISTS public.numberofsectionaltitleownersbyrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofsectionaltitleownersbyrace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberofsectionaltitleownersbyrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by race" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofsectionaltitleownersbyrace; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberofsectionaltitleownersbyrace (geo_level, geo_code, geo_version, "number of sectional title owners by race", total) FROM stdin;
level1	ZA_1_002	2009	White	16894
level1	ZA_1_004	2009	White	16276
level1	ZA_1_007	2009	White	161915
level1	ZA_1_009	2009	White	64257
level1	ZA_1_008	2009	White	5910
level1	ZA_1_006	2009	White	10857
level1	ZA_1_003	2009	White	526
level1	ZA_1_001	2009	White	66747
level1	ZA_1_002	2009	African	3884
level1	ZA_1_004	2009	African	3514
level1	ZA_1_007	2009	African	93897
level1	ZA_1_009	2009	African	25579
level1	ZA_1_008	2009	African	3135
level1	ZA_1_006	2009	African	3239
level1	ZA_1_003	2009	African	104
level1	ZA_1_001	2009	African	9388
level1	ZA_1_002	2009	Coloured	4662
level1	ZA_1_004	2009	Coloured	3314
level1	ZA_1_007	2009	Coloured	41833
level1	ZA_1_009	2009	Coloured	18525
level1	ZA_1_008	2009	Coloured	1266
level1	ZA_1_006	2009	Coloured	2348
level1	ZA_1_003	2009	Coloured	111
level1	ZA_1_001	2009	Coloured	18508
level1	ZA_1_002	2009	Indian	3083
level1	ZA_1_004	2009	Indian	1628
level1	ZA_1_007	2009	Indian	42907
level1	ZA_1_009	2009	Indian	36349
level1	ZA_1_008	2009	Indian	917
level1	ZA_1_006	2009	Indian	1209
level1	ZA_1_003	2009	Indian	46
level1	ZA_1_001	2009	Indian	13369
level1	ZA_1_002	2009	Other	1639
level1	ZA_1_004	2009	Other	1112
level1	ZA_1_007	2009	Other	20250
level1	ZA_1_009	2009	Other	9396
level1	ZA_1_008	2009	Other	490
level1	ZA_1_006	2009	Other	741
level1	ZA_1_003	2009	Other	30
level1	ZA_1_001	2009	Other	8504
country	ZA	2009	White	347440
country	ZA	2009	African	145595
country	ZA	2009	Coloured	91425
country	ZA	2009	Indian	100053
country	ZA	2009	Other	42453
level1	ZA_1_005	2009	White	4058
level1	ZA_1_005	2009	African	2855
level1	ZA_1_005	2009	Coloured	858
level1	ZA_1_005	2009	Indian	545
level1	ZA_1_005	2009	Other	291
\.


--
-- Name: numberofsectionaltitleownersbyrace pk_numberofsectionaltitleownersbyrace; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberofsectionaltitleownersbyrace
    ADD CONSTRAINT pk_numberofsectionaltitleownersbyrace PRIMARY KEY (geo_level, geo_code, geo_version, "number of sectional title owners by race");


--
-- PostgreSQL database dump complete
--

