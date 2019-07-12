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
level1	ZA_1_008	2009	00 - 04 years	3326
level1	ZA_1_008	2009	05 - 09 years	0
level1	ZA_1_008	2009	10 - 14 years	0
level1	ZA_1_008	2009	15 - 19 years	0
level1	ZA_1_008	2009	20 - 24 years	2448
level1	ZA_1_008	2009	25 - 29 years	6663
level1	ZA_1_008	2009	30 - 34 years	5224
level1	ZA_1_008	2009	35 - 39 years	0
level1	ZA_1_008	2009	40 - 44 years	3889
level1	ZA_1_008	2009	45 - 49 years	2232
level1	ZA_1_008	2009	50 - 54 years	2656
level1	ZA_1_008	2009	55 - 59 years	0
level1	ZA_1_008	2009	60 - 64 years	0
level1	ZA_1_008	2009	65 - 69 years	0
level1	ZA_1_008	2009	70- 74 years	0
level1	ZA_1_008	2009	75+	0
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
level1	ZA_1_006	2009	00 - 04 years	1009
level1	ZA_1_006	2009	05 - 09 years	1200
level1	ZA_1_006	2009	10 - 14 years	616
level1	ZA_1_006	2009	15 - 19 years	958
level1	ZA_1_006	2009	20 - 24 years	1205
level1	ZA_1_006	2009	25 - 29 years	9984
level1	ZA_1_006	2009	30 - 34 years	3331
level1	ZA_1_006	2009	35 - 39 years	3313
level1	ZA_1_006	2009	40 - 44 years	4019
level1	ZA_1_006	2009	45 - 49 years	191
level1	ZA_1_006	2009	50 - 54 years	2051
level1	ZA_1_006	2009	55 - 59 years	1170
level1	ZA_1_006	2009	60 - 64 years	1063
level1	ZA_1_006	2009	65 - 69 years	0
level1	ZA_1_006	2009	70- 74 years	0
level1	ZA_1_006	2009	75+	0
level1	ZA_1_007	2009	00 - 04 years	1314
level1	ZA_1_007	2009	05 - 09 years	935
level1	ZA_1_007	2009	10 - 14 years	0
level1	ZA_1_007	2009	15 - 19 years	886
level1	ZA_1_007	2009	20 - 24 years	2163
level1	ZA_1_007	2009	25 - 29 years	2558
level1	ZA_1_007	2009	30 - 34 years	2095
level1	ZA_1_007	2009	35 - 39 years	2905
level1	ZA_1_007	2009	40 - 44 years	1821
level1	ZA_1_007	2009	45 - 49 years	1683
level1	ZA_1_007	2009	50 - 54 years	1796
level1	ZA_1_007	2009	55 - 59 years	644
level1	ZA_1_007	2009	60 - 64 years	0
level1	ZA_1_007	2009	65 - 69 years	0
level1	ZA_1_007	2009	70- 74 years	0
level1	ZA_1_007	2009	75+	0
level1	ZA_1_004	2009	00 - 04 years	2328
level1	ZA_1_004	2009	05 - 09 years	657
level1	ZA_1_004	2009	10 - 14 years	0
level1	ZA_1_004	2009	15 - 19 years	757
level1	ZA_1_004	2009	20 - 24 years	6994
level1	ZA_1_004	2009	25 - 29 years	10923
level1	ZA_1_004	2009	30 - 34 years	10423
level1	ZA_1_004	2009	35 - 39 years	4681
level1	ZA_1_004	2009	40 - 44 years	6880
level1	ZA_1_004	2009	45 - 49 years	1611
level1	ZA_1_004	2009	50 - 54 years	4879
level1	ZA_1_004	2009	55 - 59 years	1926
level1	ZA_1_004	2009	60 - 64 years	2520
level1	ZA_1_004	2009	65 - 69 years	0
level1	ZA_1_004	2009	70- 74 years	0
level1	ZA_1_004	2009	75+	333
level1	ZA_1_005	2009	00 - 04 years	1694
level1	ZA_1_005	2009	05 - 09 years	0
level1	ZA_1_005	2009	10 - 14 years	1386
level1	ZA_1_005	2009	15 - 19 years	1077
level1	ZA_1_005	2009	20 - 24 years	2659
level1	ZA_1_005	2009	25 - 29 years	5220
level1	ZA_1_005	2009	30 - 34 years	8661
level1	ZA_1_005	2009	35 - 39 years	6375
level1	ZA_1_005	2009	40 - 44 years	7777
level1	ZA_1_005	2009	45 - 49 years	3052
level1	ZA_1_005	2009	50 - 54 years	1847
level1	ZA_1_005	2009	55 - 59 years	571
level1	ZA_1_005	2009	60 - 64 years	585
level1	ZA_1_005	2009	65 - 69 years	0
level1	ZA_1_005	2009	70- 74 years	0
level1	ZA_1_005	2009	75+	0
level1	ZA_1_001	2009	00 - 04 years	8623
level1	ZA_1_001	2009	05 - 09 years	7563
level1	ZA_1_001	2009	10 - 14 years	2990
level1	ZA_1_001	2009	15 - 19 years	6895
level1	ZA_1_001	2009	20 - 24 years	7021
level1	ZA_1_001	2009	25 - 29 years	12102
level1	ZA_1_001	2009	30 - 34 years	13199
level1	ZA_1_001	2009	35 - 39 years	8387
level1	ZA_1_001	2009	40 - 44 years	3965
level1	ZA_1_001	2009	45 - 49 years	2556
level1	ZA_1_001	2009	50 - 54 years	4660
level1	ZA_1_001	2009	55 - 59 years	544
level1	ZA_1_001	2009	60 - 64 years	0
level1	ZA_1_001	2009	65 - 69 years	0
level1	ZA_1_001	2009	70- 74 years	0
level1	ZA_1_001	2009	75+	0
level1	ZA_1_009	2009	00 - 04 years	8415
level1	ZA_1_009	2009	05 - 09 years	6521
level1	ZA_1_009	2009	10 - 14 years	5407
level1	ZA_1_009	2009	15 - 19 years	8782
level1	ZA_1_009	2009	20 - 24 years	13550
level1	ZA_1_009	2009	25 - 29 years	20168
level1	ZA_1_009	2009	30 - 34 years	16709
level1	ZA_1_009	2009	35 - 39 years	16206
level1	ZA_1_009	2009	40 - 44 years	14961
level1	ZA_1_009	2009	45 - 49 years	9904
level1	ZA_1_009	2009	50 - 54 years	9291
level1	ZA_1_009	2009	55 - 59 years	5728
level1	ZA_1_009	2009	60 - 64 years	4179
level1	ZA_1_009	2009	65 - 69 years	2025
level1	ZA_1_009	2009	70- 74 years	0
level1	ZA_1_009	2009	75+	0
level1	ZA_1_002	2009	00 - 04 years	0
level1	ZA_1_002	2009	05 - 09 years	1147
level1	ZA_1_002	2009	10 - 14 years	620
level1	ZA_1_002	2009	15 - 19 years	0
level1	ZA_1_002	2009	20 - 24 years	620
level1	ZA_1_002	2009	25 - 29 years	0
level1	ZA_1_002	2009	30 - 34 years	994
level1	ZA_1_002	2009	35 - 39 years	574
level1	ZA_1_002	2009	40 - 44 years	0
level1	ZA_1_002	2009	45 - 49 years	620
level1	ZA_1_002	2009	50 - 54 years	620
level1	ZA_1_002	2009	55 - 59 years	0
level1	ZA_1_002	2009	60 - 64 years	0
level1	ZA_1_002	2009	65 - 69 years	0
level1	ZA_1_002	2009	70- 74 years	0
level1	ZA_1_002	2009	75+	0
level1	ZA_1_003	2009	00 - 04 years	1550
level1	ZA_1_003	2009	05 - 09 years	5053
level1	ZA_1_003	2009	10 - 14 years	2420
level1	ZA_1_003	2009	15 - 19 years	654
level1	ZA_1_003	2009	20 - 24 years	1406
level1	ZA_1_003	2009	25 - 29 years	2490
level1	ZA_1_003	2009	30 - 34 years	3326
level1	ZA_1_003	2009	35 - 39 years	3867
level1	ZA_1_003	2009	40 - 44 years	2758
level1	ZA_1_003	2009	45 - 49 years	1657
level1	ZA_1_003	2009	50 - 54 years	2107
level1	ZA_1_003	2009	55 - 59 years	2627
level1	ZA_1_003	2009	60 - 64 years	0
level1	ZA_1_003	2009	65 - 69 years	752
level1	ZA_1_003	2009	70- 74 years	619
level1	ZA_1_003	2009	75+	1088
\.


--
-- Name: workers_hostel_age_group pk_workers_hostel_age_group; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_age_group
    ADD CONSTRAINT pk_workers_hostel_age_group PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_age_group);


--
-- PostgreSQL database dump complete
--
