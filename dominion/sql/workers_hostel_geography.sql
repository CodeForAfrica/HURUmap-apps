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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_geography DROP CONSTRAINT IF EXISTS pk_workers_hostel_geography;
DROP TABLE IF EXISTS public.workers_hostel_geography;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_geography; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_geography (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_geography character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_geography; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_geography (geo_level, geo_code, geo_version, workers_hostel_geography, total) FROM stdin;
level1	ZA_1_001	2009	Urban formal	13039
level1	ZA_1_001	2009	Traditional	0
level1	ZA_1_001	2009	Farms	13400
country	ZA	2009	Urban formal	258389
country	ZA	2009	Traditional	19813
country	ZA	2009	Farms	150883
level1	ZA_1_003	2009	Urban formal	15522
level1	ZA_1_003	2009	Traditional	0
level1	ZA_1_003	2009	Farms	14588
level1	ZA_1_006	2009	Urban formal	13231
level1	ZA_1_006	2009	Traditional	749
level1	ZA_1_006	2009	Farms	4820
level1	ZA_1_008	2009	Urban formal	27149
level1	ZA_1_008	2009	Traditional	4439
level1	ZA_1_008	2009	Farms	23325
level1	ZA_1_005	2009	Urban formal	2484
level1	ZA_1_005	2009	Traditional	2530
level1	ZA_1_005	2009	Farms	35889
level1	ZA_1_009	2009	Urban formal	24755
level1	ZA_1_009	2009	Traditional	5322
level1	ZA_1_009	2009	Farms	48429
level1	ZA_1_007	2009	Urban formal	132407
level1	ZA_1_007	2009	Traditional	0
level1	ZA_1_007	2009	Farms	9439
level1	ZA_1_004	2009	Urban formal	4202
level1	ZA_1_004	2009	Traditional	0
level1	ZA_1_004	2009	Farms	994
level1	ZA_1_002	2009	Urban formal	25600
level1	ZA_1_002	2009	Traditional	6772
level1	ZA_1_002	2009	Farms	0
\.


--
-- Name: workers_hostel_geography pk_workers_hostel_geography; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_geography
    ADD CONSTRAINT pk_workers_hostel_geography PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_geography);


--
-- PostgreSQL database dump complete
--
