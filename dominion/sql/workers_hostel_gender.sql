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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_gender DROP CONSTRAINT IF EXISTS pk_workers_hostel_gender;
DROP TABLE IF EXISTS public.workers_hostel_gender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_gender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_gender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_gender (geo_level, geo_code, geo_version, workers_hostel_gender, total) FROM stdin;
country	ZA	2009	Male	315484
level1	ZA_1_007	2009	Male	112026
level1	ZA_1_009	2009	Male	57772
level1	ZA_1_008	2009	Male	36287
level1	ZA_1_005	2009	Male	31241
level1	ZA_1_003	2009	Male	21529
level1	ZA_1_006	2009	Male	18218
level1	ZA_1_001	2009	Male	17491
level1	ZA_1_002	2009	Male	17447
level1	ZA_1_004	2009	Male	3474
country	ZA	2009	Female	113601
level1	ZA_1_007	2009	Female	29821
level1	ZA_1_009	2009	Female	20734
level1	ZA_1_008	2009	Female	18627
level1	ZA_1_002	2009	Female	14925
level1	ZA_1_005	2009	Female	9662
level1	ZA_1_001	2009	Female	8948
level1	ZA_1_003	2009	Female	8580
level1	ZA_1_004	2009	Female	1721
level1	ZA_1_006	2009	Female	583
\.


--
-- Name: workers_hostel_gender pk_workers_hostel_gender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_gender
    ADD CONSTRAINT pk_workers_hostel_gender PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_gender);


--
-- PostgreSQL database dump complete
--
