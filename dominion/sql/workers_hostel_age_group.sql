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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_age_group DROP CONSTRAINT IF EXISTS pk_workers_hostel_age_group;
DROP TABLE IF EXISTS public.workers_hostel_age_group;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_age_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_age_group (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_age_group character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_age_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_age_group (geo_level, geo_code, geo_version, workers_hostel_age_group, total) FROM stdin;
province	ZA_1_008	2009	00 - 04 years	3326
province	ZA_1_008	2009	05 - 09 years	0
province	ZA_1_008	2009	10 - 14 years	0
province	ZA_1_008	2009	15 - 19 years	0
province	ZA_1_008	2009	20 - 24 years	2448
province	ZA_1_008	2009	25 - 29 years	6663
province	ZA_1_008	2009	30 - 34 years	5224
province	ZA_1_008	2009	35 - 39 years	0
province	ZA_1_008	2009	40 - 44 years	3889
province	ZA_1_008	2009	45 - 49 years	2232
province	ZA_1_008	2009	50 - 54 years	2656
province	ZA_1_008	2009	55 - 59 years	0
province	ZA_1_008	2009	60 - 64 years	0
province	ZA_1_008	2009	65 - 69 years	0
province	ZA_1_008	2009	70- 74 years	0
province	ZA_1_008	2009	75+	0
country	ZA	2009	00 - 04 years	28260
country	ZA	2009	05 - 09 years	23076
country	ZA	2009	10 - 14 years	13440
country	ZA	2009	15 - 19 years	20009
country	ZA	2009	20 - 24 years	38065
country	ZA	2009	25 - 29 years	70108
country	ZA	2009	30 - 34 years	63962
country	ZA	2009	35 - 39 years	46308
country	ZA	2009	40 - 44 years	46070
country	ZA	2009	45 - 49 years	23506
country	ZA	2009	50 - 54 years	29907
country	ZA	2009	55 - 59 years	13210
country	ZA	2009	60 - 64 years	8347
country	ZA	2009	65 - 69 years	2777
country	ZA	2009	70- 74 years	619
country	ZA	2009	75+	1421
province	ZA_1_006	2009	00 - 04 years	1009
province	ZA_1_006	2009	05 - 09 years	1200
province	ZA_1_006	2009	10 - 14 years	616
province	ZA_1_006	2009	15 - 19 years	958
province	ZA_1_006	2009	20 - 24 years	1205
province	ZA_1_006	2009	25 - 29 years	9984
province	ZA_1_006	2009	30 - 34 years	3331
province	ZA_1_006	2009	35 - 39 years	3313
province	ZA_1_006	2009	40 - 44 years	4019
province	ZA_1_006	2009	45 - 49 years	191
province	ZA_1_006	2009	50 - 54 years	2051
province	ZA_1_006	2009	55 - 59 years	1170
province	ZA_1_006	2009	60 - 64 years	1063
province	ZA_1_006	2009	65 - 69 years	0
province	ZA_1_006	2009	70- 74 years	0
province	ZA_1_006	2009	75+	0
province	ZA_1_007	2009	00 - 04 years	1314
province	ZA_1_007	2009	05 - 09 years	935
province	ZA_1_007	2009	10 - 14 years	0
province	ZA_1_007	2009	15 - 19 years	886
province	ZA_1_007	2009	20 - 24 years	2163
province	ZA_1_007	2009	25 - 29 years	2558
province	ZA_1_007	2009	30 - 34 years	2095
province	ZA_1_007	2009	35 - 39 years	2905
province	ZA_1_007	2009	40 - 44 years	1821
province	ZA_1_007	2009	45 - 49 years	1683
province	ZA_1_007	2009	50 - 54 years	1796
province	ZA_1_007	2009	55 - 59 years	644
province	ZA_1_007	2009	60 - 64 years	0
province	ZA_1_007	2009	65 - 69 years	0
province	ZA_1_007	2009	70- 74 years	0
province	ZA_1_007	2009	75+	0
province	ZA_1_004	2009	00 - 04 years	2328
province	ZA_1_004	2009	05 - 09 years	657
province	ZA_1_004	2009	10 - 14 years	0
province	ZA_1_004	2009	15 - 19 years	757
province	ZA_1_004	2009	20 - 24 years	6994
province	ZA_1_004	2009	25 - 29 years	10923
province	ZA_1_004	2009	30 - 34 years	10423
province	ZA_1_004	2009	35 - 39 years	4681
province	ZA_1_004	2009	40 - 44 years	6880
province	ZA_1_004	2009	45 - 49 years	1611
province	ZA_1_004	2009	50 - 54 years	4879
province	ZA_1_004	2009	55 - 59 years	1926
province	ZA_1_004	2009	60 - 64 years	2520
province	ZA_1_004	2009	65 - 69 years	0
province	ZA_1_004	2009	70- 74 years	0
province	ZA_1_004	2009	75+	333
province	ZA_1_005	2009	00 - 04 years	1694
province	ZA_1_005	2009	05 - 09 years	0
province	ZA_1_005	2009	10 - 14 years	1386
province	ZA_1_005	2009	15 - 19 years	1077
province	ZA_1_005	2009	20 - 24 years	2659
province	ZA_1_005	2009	25 - 29 years	5220
province	ZA_1_005	2009	30 - 34 years	8661
province	ZA_1_005	2009	35 - 39 years	6375
province	ZA_1_005	2009	40 - 44 years	7777
province	ZA_1_005	2009	45 - 49 years	3052
province	ZA_1_005	2009	50 - 54 years	1847
province	ZA_1_005	2009	55 - 59 years	571
province	ZA_1_005	2009	60 - 64 years	585
province	ZA_1_005	2009	65 - 69 years	0
province	ZA_1_005	2009	70- 74 years	0
province	ZA_1_005	2009	75+	0
province	ZA_1_001	2009	00 - 04 years	8623
province	ZA_1_001	2009	05 - 09 years	7563
province	ZA_1_001	2009	10 - 14 years	2990
province	ZA_1_001	2009	15 - 19 years	6895
province	ZA_1_001	2009	20 - 24 years	7021
province	ZA_1_001	2009	25 - 29 years	12102
province	ZA_1_001	2009	30 - 34 years	13199
province	ZA_1_001	2009	35 - 39 years	8387
province	ZA_1_001	2009	40 - 44 years	3965
province	ZA_1_001	2009	45 - 49 years	2556
province	ZA_1_001	2009	50 - 54 years	4660
province	ZA_1_001	2009	55 - 59 years	544
province	ZA_1_001	2009	60 - 64 years	0
province	ZA_1_001	2009	65 - 69 years	0
province	ZA_1_001	2009	70- 74 years	0
province	ZA_1_001	2009	75+	0
province	ZA_1_009	2009	00 - 04 years	8415
province	ZA_1_009	2009	05 - 09 years	6521
province	ZA_1_009	2009	10 - 14 years	5407
province	ZA_1_009	2009	15 - 19 years	8782
province	ZA_1_009	2009	20 - 24 years	13550
province	ZA_1_009	2009	25 - 29 years	20168
province	ZA_1_009	2009	30 - 34 years	16709
province	ZA_1_009	2009	35 - 39 years	16206
province	ZA_1_009	2009	40 - 44 years	14961
province	ZA_1_009	2009	45 - 49 years	9904
province	ZA_1_009	2009	50 - 54 years	9291
province	ZA_1_009	2009	55 - 59 years	5728
province	ZA_1_009	2009	60 - 64 years	4179
province	ZA_1_009	2009	65 - 69 years	2025
province	ZA_1_009	2009	70- 74 years	0
province	ZA_1_009	2009	75+	0
province	ZA_1_002	2009	00 - 04 years	0
province	ZA_1_002	2009	05 - 09 years	1147
province	ZA_1_002	2009	10 - 14 years	620
province	ZA_1_002	2009	15 - 19 years	0
province	ZA_1_002	2009	20 - 24 years	620
province	ZA_1_002	2009	25 - 29 years	0
province	ZA_1_002	2009	30 - 34 years	994
province	ZA_1_002	2009	35 - 39 years	574
province	ZA_1_002	2009	40 - 44 years	0
province	ZA_1_002	2009	45 - 49 years	620
province	ZA_1_002	2009	50 - 54 years	620
province	ZA_1_002	2009	55 - 59 years	0
province	ZA_1_002	2009	60 - 64 years	0
province	ZA_1_002	2009	65 - 69 years	0
province	ZA_1_002	2009	70- 74 years	0
province	ZA_1_002	2009	75+	0
province	ZA_1_003	2009	00 - 04 years	1550
province	ZA_1_003	2009	05 - 09 years	5053
province	ZA_1_003	2009	10 - 14 years	2420
province	ZA_1_003	2009	15 - 19 years	654
province	ZA_1_003	2009	20 - 24 years	1406
province	ZA_1_003	2009	25 - 29 years	2490
province	ZA_1_003	2009	30 - 34 years	3326
province	ZA_1_003	2009	35 - 39 years	3867
province	ZA_1_003	2009	40 - 44 years	2758
province	ZA_1_003	2009	45 - 49 years	1657
province	ZA_1_003	2009	50 - 54 years	2107
province	ZA_1_003	2009	55 - 59 years	2627
province	ZA_1_003	2009	60 - 64 years	0
province	ZA_1_003	2009	65 - 69 years	752
province	ZA_1_003	2009	70- 74 years	619
province	ZA_1_003	2009	75+	1088
\.


--
-- Name: workers_hostel_age_group pk_workers_hostel_age_group; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_age_group
    ADD CONSTRAINT pk_workers_hostel_age_group PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_age_group);


--
-- PostgreSQL database dump complete
--
