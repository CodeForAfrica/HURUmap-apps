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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_toilet_facility DROP CONSTRAINT IF EXISTS pk_workers_hostel_toilet_facility;
DROP TABLE IF EXISTS public.workers_hostel_toilet_facility;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_toilet_facility; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_toilet_facility (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_toilet_facility character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_toilet_facility; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_toilet_facility (geo_level, geo_code, geo_version, workers_hostel_toilet_facility, total) FROM stdin;
province	ZA_1_008	2009	Flush toilet connected to a public sewerage system	8589
province	ZA_1_008	2009	Flush toilet connected to a septic tank or conservancy tank	13400
province	ZA_1_008	2009	Pour flush toilet connected to a septic tank (or septage pit)	0
province	ZA_1_008	2009	Chemical toilet	0
province	ZA_1_008	2009	Pit latrine/toilet with ventilation pipe	2135
province	ZA_1_008	2009	Pit latrine/toilet without ventilation pipe	0
province	ZA_1_008	2009	Bucket toilet (collected by municipality)	2315
province	ZA_1_008	2009	Bucket toilet (emptied by household)	0
province	ZA_1_008	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_008	2009	Open defecation (e.g. no facilities; field; bush)	0
province	ZA_1_008	2009	Other	0
province	ZA_1_008	2009	Unspecified	0
province	ZA_1_003	2009	Flush toilet connected to a public sewerage system	19158
province	ZA_1_003	2009	Flush toilet connected to a septic tank or conservancy tank	0
province	ZA_1_003	2009	Pour flush toilet connected to a septic tank (or septage pit)	0
province	ZA_1_003	2009	Chemical toilet	0
province	ZA_1_003	2009	Pit latrine/toilet with ventilation pipe	13214
province	ZA_1_003	2009	Pit latrine/toilet without ventilation pipe	0
province	ZA_1_003	2009	Bucket toilet (collected by municipality)	0
province	ZA_1_003	2009	Bucket toilet (emptied by household)	0
province	ZA_1_003	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_003	2009	Open defecation (e.g. no facilities; field; bush)	0
province	ZA_1_003	2009	Other	0
province	ZA_1_003	2009	Unspecified	0
province	ZA_1_006	2009	Flush toilet connected to a public sewerage system	23286
province	ZA_1_006	2009	Flush toilet connected to a septic tank or conservancy tank	2583
province	ZA_1_006	2009	Pour flush toilet connected to a septic tank (or septage pit)	465
province	ZA_1_006	2009	Chemical toilet	0
province	ZA_1_006	2009	Pit latrine/toilet with ventilation pipe	2013
province	ZA_1_006	2009	Pit latrine/toilet without ventilation pipe	1445
province	ZA_1_006	2009	Bucket toilet (collected by municipality)	0
province	ZA_1_006	2009	Bucket toilet (emptied by household)	0
province	ZA_1_006	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_006	2009	Open defecation (e.g. no facilities; field; bush)	317
province	ZA_1_006	2009	Other	0
province	ZA_1_006	2009	Unspecified	0
province	ZA_1_002	2009	Flush toilet connected to a public sewerage system	5195
province	ZA_1_002	2009	Flush toilet connected to a septic tank or conservancy tank	0
province	ZA_1_002	2009	Pour flush toilet connected to a septic tank (or septage pit)	0
province	ZA_1_002	2009	Chemical toilet	0
province	ZA_1_002	2009	Pit latrine/toilet with ventilation pipe	0
province	ZA_1_002	2009	Pit latrine/toilet without ventilation pipe	0
province	ZA_1_002	2009	Bucket toilet (collected by municipality)	0
province	ZA_1_002	2009	Bucket toilet (emptied by household)	0
province	ZA_1_002	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_002	2009	Open defecation (e.g. no facilities; field; bush)	0
province	ZA_1_002	2009	Other	0
province	ZA_1_002	2009	Unspecified	0
province	ZA_1_001	2009	Flush toilet connected to a public sewerage system	6510
province	ZA_1_001	2009	Flush toilet connected to a septic tank or conservancy tank	14130
province	ZA_1_001	2009	Pour flush toilet connected to a septic tank (or septage pit)	1380
province	ZA_1_001	2009	Chemical toilet	2522
province	ZA_1_001	2009	Pit latrine/toilet with ventilation pipe	17783
province	ZA_1_001	2009	Pit latrine/toilet without ventilation pipe	34855
province	ZA_1_001	2009	Bucket toilet (collected by municipality)	1326
province	ZA_1_001	2009	Bucket toilet (emptied by household)	0
province	ZA_1_001	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_001	2009	Open defecation (e.g. no facilities; field; bush)	0
province	ZA_1_001	2009	Other	0
province	ZA_1_001	2009	Unspecified	0
province	ZA_1_007	2009	Flush toilet connected to a public sewerage system	13231
province	ZA_1_007	2009	Flush toilet connected to a septic tank or conservancy tank	0
province	ZA_1_007	2009	Pour flush toilet connected to a septic tank (or septage pit)	0
province	ZA_1_007	2009	Chemical toilet	0
province	ZA_1_007	2009	Pit latrine/toilet with ventilation pipe	4692
province	ZA_1_007	2009	Pit latrine/toilet without ventilation pipe	877
province	ZA_1_007	2009	Bucket toilet (collected by municipality)	0
province	ZA_1_007	2009	Bucket toilet (emptied by household)	0
province	ZA_1_007	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_007	2009	Open defecation (e.g. no facilities; field; bush)	0
province	ZA_1_007	2009	Other	0
province	ZA_1_007	2009	Unspecified	0
province	ZA_1_009	2009	Flush toilet connected to a public sewerage system	130025
province	ZA_1_009	2009	Flush toilet connected to a septic tank or conservancy tank	0
province	ZA_1_009	2009	Pour flush toilet connected to a septic tank (or septage pit)	704
province	ZA_1_009	2009	Chemical toilet	0
province	ZA_1_009	2009	Pit latrine/toilet with ventilation pipe	4726
province	ZA_1_009	2009	Pit latrine/toilet without ventilation pipe	3103
province	ZA_1_009	2009	Bucket toilet (collected by municipality)	3289
province	ZA_1_009	2009	Bucket toilet (emptied by household)	0
province	ZA_1_009	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_009	2009	Open defecation (e.g. no facilities; field; bush)	0
province	ZA_1_009	2009	Other	0
province	ZA_1_009	2009	Unspecified	0
province	ZA_1_004	2009	Flush toilet connected to a public sewerage system	27133
province	ZA_1_004	2009	Flush toilet connected to a septic tank or conservancy tank	21654
province	ZA_1_004	2009	Pour flush toilet connected to a septic tank (or septage pit)	0
province	ZA_1_004	2009	Chemical toilet	0
province	ZA_1_004	2009	Pit latrine/toilet with ventilation pipe	1442
province	ZA_1_004	2009	Pit latrine/toilet without ventilation pipe	2272
province	ZA_1_004	2009	Bucket toilet (collected by municipality)	0
province	ZA_1_004	2009	Bucket toilet (emptied by household)	0
province	ZA_1_004	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_004	2009	Open defecation (e.g. no facilities; field; bush)	1653
province	ZA_1_004	2009	Other	0
province	ZA_1_004	2009	Unspecified	759
province	ZA_1_005	2009	Flush toilet connected to a public sewerage system	2484
province	ZA_1_005	2009	Flush toilet connected to a septic tank or conservancy tank	11471
province	ZA_1_005	2009	Pour flush toilet connected to a septic tank (or septage pit)	1388
province	ZA_1_005	2009	Chemical toilet	0
province	ZA_1_005	2009	Pit latrine/toilet with ventilation pipe	4239
province	ZA_1_005	2009	Pit latrine/toilet without ventilation pipe	16975
province	ZA_1_005	2009	Bucket toilet (collected by municipality)	0
province	ZA_1_005	2009	Bucket toilet (emptied by household)	0
province	ZA_1_005	2009	Ecological Sanitation System (e.g. urine diversion)	0
province	ZA_1_005	2009	Open defecation (e.g. no facilities; field; bush)	4346
province	ZA_1_005	2009	Other	0
province	ZA_1_005	2009	Unspecified	0
country	ZA	2009	Flush toilet connected to a public sewerage system	235611
country	ZA	2009	Flush toilet connected to a septic tank or conservancy tank	63238
country	ZA	2009	Pour flush toilet connected to a septic tank (or septage pit)	3937
country	ZA	2009	Chemical toilet	2522
country	ZA	2009	Pit latrine/toilet with ventilation pipe	50246
country	ZA	2009	Pit latrine/toilet without ventilation pipe	59526
country	ZA	2009	Bucket toilet (collected by municipality)	6929
country	ZA	2009	Bucket toilet (emptied by household)	0
country	ZA	2009	Ecological Sanitation System (e.g. urine diversion)	0
country	ZA	2009	Open defecation (e.g. no facilities; field; bush)	6316
country	ZA	2009	Other	0
country	ZA	2009	Unspecified	759
\.


--
-- Name: workers_hostel_toilet_facility pk_workers_hostel_toilet_facility; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_toilet_facility
    ADD CONSTRAINT pk_workers_hostel_toilet_facility PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_toilet_facility);


--
-- PostgreSQL database dump complete
--
