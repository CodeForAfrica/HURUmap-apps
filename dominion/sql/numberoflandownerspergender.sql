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

ALTER TABLE IF EXISTS ONLY public.numberoflandownerspergender DROP CONSTRAINT IF EXISTS pk_numberoflandownerspergender;
DROP TABLE IF EXISTS public.numberoflandownerspergender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberoflandownerspergender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberoflandownerspergender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of land owners per gender" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberoflandownerspergender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberoflandownerspergender (geo_level, geo_code, geo_version, "number of land owners per gender", total) FROM stdin;
level1	ZA_1_003	2009	Male	6145
level1	ZA_1_002	2009	Male	9182
level1	ZA_1_009	2009	Male	26690
level1	ZA_1_001	2009	Male	12674
level1	ZA_1_004	2009	Male	7139
level1	ZA_1_007	2009	Male	11154
level1	ZA_1_006	2009	Male	4536
level1	ZA_1_008	2009	Male	9395
country	ZA	2009	Male	95050
level1	ZA_1_003	2009	Female	3016
level1	ZA_1_002	2009	Female	5119
level1	ZA_1_009	2009	Female	19139
level1	ZA_1_001	2009	Female	8780
level1	ZA_1_004	2009	Female	4480
level1	ZA_1_007	2009	Female	6739
level1	ZA_1_006	2009	Female	2318
level1	ZA_1_008	2009	Female	5775
country	ZA	2009	Female	60649
level1	ZA_1_003	2009	Other	2519
level1	ZA_1_002	2009	Other	876
level1	ZA_1_009	2009	Other	1762
level1	ZA_1_001	2009	Other	8538
level1	ZA_1_004	2009	Other	1401
level1	ZA_1_007	2009	Other	6228
level1	ZA_1_006	2009	Other	333
level1	ZA_1_008	2009	Other	1681
country	ZA	2009	Other	25833
level1	ZA_1_005	2009	Male	8135
level1	ZA_1_005	2009	Female	5283
level1	ZA_1_005	2009	Other	2495
\.


--
-- Name: numberoflandownerspergender pk_numberoflandownerspergender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberoflandownerspergender
    ADD CONSTRAINT pk_numberoflandownerspergender PRIMARY KEY (geo_level, geo_code, geo_version, "number of land owners per gender");


--
-- PostgreSQL database dump complete
--

