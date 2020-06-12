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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_rent DROP CONSTRAINT IF EXISTS pk_workers_hostel_rent;
DROP TABLE IF EXISTS public.workers_hostel_rent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_rent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_rent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_rent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_rent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_rent (geo_level, geo_code, geo_version, workers_hostel_rent, total) FROM stdin;
level1	ZA_1_001	2009	Unspecified	0
level1	ZA_1_001	2009	R501-R1 000	4371
level1	ZA_1_001	2009	R5 001-R7 000	0
level1	ZA_1_001	2009	R3 001-R5 000	0
level1	ZA_1_001	2009	R1 001-R3 000	0
level1	ZA_1_001	2009	Not applicable	16278
level1	ZA_1_001	2009	More than R7 000	0
level1	ZA_1_001	2009	Less than R500	5790
level1	ZA_1_001	2009	Do not know	0
country	ZA	2009	Unspecified	8063
country	ZA	2009	R501-R1 000	34771
country	ZA	2009	R5 001-R7 000	0
country	ZA	2009	R3 001-R5 000	10518
country	ZA	2009	R1 001-R3 000	12131
country	ZA	2009	Not applicable	277179
country	ZA	2009	More than R7 000	0
country	ZA	2009	Less than R500	85808
country	ZA	2009	Do not know	615
level1	ZA_1_003	2009	Unspecified	1910
level1	ZA_1_003	2009	R501-R1 000	0
level1	ZA_1_003	2009	R5 001-R7 000	0
level1	ZA_1_003	2009	R3 001-R5 000	9564
level1	ZA_1_003	2009	R1 001-R3 000	0
level1	ZA_1_003	2009	Not applicable	12265
level1	ZA_1_003	2009	More than R7 000	0
level1	ZA_1_003	2009	Less than R500	6371
level1	ZA_1_003	2009	Do not know	0
level1	ZA_1_006	2009	Unspecified	0
level1	ZA_1_006	2009	R501-R1 000	0
level1	ZA_1_006	2009	R5 001-R7 000	0
level1	ZA_1_006	2009	R3 001-R5 000	0
level1	ZA_1_006	2009	R1 001-R3 000	2659
level1	ZA_1_006	2009	Not applicable	8513
level1	ZA_1_006	2009	More than R7 000	0
level1	ZA_1_006	2009	Less than R500	7628
level1	ZA_1_006	2009	Do not know	0
level1	ZA_1_008	2009	Unspecified	0
level1	ZA_1_008	2009	R501-R1 000	3087
level1	ZA_1_008	2009	R5 001-R7 000	0
level1	ZA_1_008	2009	R3 001-R5 000	0
level1	ZA_1_008	2009	R1 001-R3 000	3216
level1	ZA_1_008	2009	Not applicable	37339
level1	ZA_1_008	2009	More than R7 000	0
level1	ZA_1_008	2009	Less than R500	11273
level1	ZA_1_008	2009	Do not know	0
level1	ZA_1_005	2009	Unspecified	0
level1	ZA_1_005	2009	R501-R1 000	0
level1	ZA_1_005	2009	R5 001-R7 000	0
level1	ZA_1_005	2009	R3 001-R5 000	0
level1	ZA_1_005	2009	R1 001-R3 000	1846
level1	ZA_1_005	2009	Not applicable	19483
level1	ZA_1_005	2009	More than R7 000	0
level1	ZA_1_005	2009	Less than R500	19574
level1	ZA_1_005	2009	Do not know	0
level1	ZA_1_009	2009	Unspecified	0
level1	ZA_1_009	2009	R501-R1 000	8493
level1	ZA_1_009	2009	R5 001-R7 000	0
level1	ZA_1_009	2009	R3 001-R5 000	954
level1	ZA_1_009	2009	R1 001-R3 000	0
level1	ZA_1_009	2009	Not applicable	55558
level1	ZA_1_009	2009	More than R7 000	0
level1	ZA_1_009	2009	Less than R500	13500
level1	ZA_1_009	2009	Do not know	0
level1	ZA_1_007	2009	Unspecified	0
level1	ZA_1_007	2009	R501-R1 000	18821
level1	ZA_1_007	2009	R5 001-R7 000	0
level1	ZA_1_007	2009	R3 001-R5 000	0
level1	ZA_1_007	2009	R1 001-R3 000	2999
level1	ZA_1_007	2009	Not applicable	98733
level1	ZA_1_007	2009	More than R7 000	0
level1	ZA_1_007	2009	Less than R500	20680
level1	ZA_1_007	2009	Do not know	615
level1	ZA_1_004	2009	Unspecified	0
level1	ZA_1_004	2009	R501-R1 000	0
level1	ZA_1_004	2009	R5 001-R7 000	0
level1	ZA_1_004	2009	R3 001-R5 000	0
level1	ZA_1_004	2009	R1 001-R3 000	0
level1	ZA_1_004	2009	Not applicable	4202
level1	ZA_1_004	2009	More than R7 000	0
level1	ZA_1_004	2009	Less than R500	994
level1	ZA_1_004	2009	Do not know	0
level1	ZA_1_002	2009	Unspecified	6153
level1	ZA_1_002	2009	R501-R1 000	0
level1	ZA_1_002	2009	R5 001-R7 000	0
level1	ZA_1_002	2009	R3 001-R5 000	0
level1	ZA_1_002	2009	R1 001-R3 000	1412
level1	ZA_1_002	2009	Not applicable	24807
level1	ZA_1_002	2009	More than R7 000	0
level1	ZA_1_002	2009	Less than R500	0
level1	ZA_1_002	2009	Do not know	0
\.


--
-- Name: workers_hostel_rent pk_workers_hostel_rent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_rent
    ADD CONSTRAINT pk_workers_hostel_rent PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_rent);


--
-- PostgreSQL database dump complete
--
