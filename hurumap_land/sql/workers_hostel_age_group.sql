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
province	WC	2018	00 - 04 years	3326
province	WC	2018	05 - 09 years	0
province	WC	2018	10 - 14 years	0
province	WC	2018	15 - 19 years	0
province	WC	2018	20 - 24 years	2448
province	WC	2018	25 - 29 years	6663
province	WC	2018	30 - 34 years	5224
province	WC	2018	35 - 39 years	0
province	WC	2018	40 - 44 years	3889
province	WC	2018	45 - 49 years	2232
province	WC	2018	50 - 54 years	2656
province	WC	2018	55 - 59 years	0
province	WC	2018	60 - 64 years	0
province	WC	2018	65 - 69 years	0
province	WC	2018	70- 74 years	0
province	WC	2018	75+	0
country	ZA	2018	00 - 04 years	28260
country	ZA	2018	05 - 09 years	23076
country	ZA	2018	10 - 14 years	13440
country	ZA	2018	15 - 19 years	20009
country	ZA	2018	20 - 24 years	38065
country	ZA	2018	25 - 29 years	70108
country	ZA	2018	30 - 34 years	63962
country	ZA	2018	35 - 39 years	46308
country	ZA	2018	40 - 44 years	46070
country	ZA	2018	45 - 49 years	23506
country	ZA	2018	50 - 54 years	29907
country	ZA	2018	55 - 59 years	13210
country	ZA	2018	60 - 64 years	8347
country	ZA	2018	65 - 69 years	2777
country	ZA	2018	70- 74 years	619
country	ZA	2018	75+	1421
province	NC	2018	00 - 04 years	1009
province	NC	2018	05 - 09 years	1200
province	NC	2018	10 - 14 years	616
province	NC	2018	15 - 19 years	958
province	NC	2018	20 - 24 years	1205
province	NC	2018	25 - 29 years	9984
province	NC	2018	30 - 34 years	3331
province	NC	2018	35 - 39 years	3313
province	NC	2018	40 - 44 years	4019
province	NC	2018	45 - 49 years	191
province	NC	2018	50 - 54 years	2051
province	NC	2018	55 - 59 years	1170
province	NC	2018	60 - 64 years	1063
province	NC	2018	65 - 69 years	0
province	NC	2018	70- 74 years	0
province	NC	2018	75+	0
province	NW	2018	00 - 04 years	1314
province	NW	2018	05 - 09 years	935
province	NW	2018	10 - 14 years	0
province	NW	2018	15 - 19 years	886
province	NW	2018	20 - 24 years	2163
province	NW	2018	25 - 29 years	2558
province	NW	2018	30 - 34 years	2095
province	NW	2018	35 - 39 years	2905
province	NW	2018	40 - 44 years	1821
province	NW	2018	45 - 49 years	1683
province	NW	2018	50 - 54 years	1796
province	NW	2018	55 - 59 years	644
province	NW	2018	60 - 64 years	0
province	NW	2018	65 - 69 years	0
province	NW	2018	70- 74 years	0
province	NW	2018	75+	0
province	MP	2018	00 - 04 years	2328
province	MP	2018	05 - 09 years	657
province	MP	2018	10 - 14 years	0
province	MP	2018	15 - 19 years	757
province	MP	2018	20 - 24 years	6994
province	MP	2018	25 - 29 years	10923
province	MP	2018	30 - 34 years	10423
province	MP	2018	35 - 39 years	4681
province	MP	2018	40 - 44 years	6880
province	MP	2018	45 - 49 years	1611
province	MP	2018	50 - 54 years	4879
province	MP	2018	55 - 59 years	1926
province	MP	2018	60 - 64 years	2520
province	MP	2018	65 - 69 years	0
province	MP	2018	70- 74 years	0
province	MP	2018	75+	333
province	LIM	2018	00 - 04 years	1694
province	LIM	2018	05 - 09 years	0
province	LIM	2018	10 - 14 years	1386
province	LIM	2018	15 - 19 years	1077
province	LIM	2018	20 - 24 years	2659
province	LIM	2018	25 - 29 years	5220
province	LIM	2018	30 - 34 years	8661
province	LIM	2018	35 - 39 years	6375
province	LIM	2018	40 - 44 years	7777
province	LIM	2018	45 - 49 years	3052
province	LIM	2018	50 - 54 years	1847
province	LIM	2018	55 - 59 years	571
province	LIM	2018	60 - 64 years	585
province	LIM	2018	65 - 69 years	0
province	LIM	2018	70- 74 years	0
province	LIM	2018	75+	0
province	KZN	2018	00 - 04 years	8623
province	KZN	2018	05 - 09 years	7563
province	KZN	2018	10 - 14 years	2990
province	KZN	2018	15 - 19 years	6895
province	KZN	2018	20 - 24 years	7021
province	KZN	2018	25 - 29 years	12102
province	KZN	2018	30 - 34 years	13199
province	KZN	2018	35 - 39 years	8387
province	KZN	2018	40 - 44 years	3965
province	KZN	2018	45 - 49 years	2556
province	KZN	2018	50 - 54 years	4660
province	KZN	2018	55 - 59 years	544
province	KZN	2018	60 - 64 years	0
province	KZN	2018	65 - 69 years	0
province	KZN	2018	70- 74 years	0
province	KZN	2018	75+	0
province	GT	2018	00 - 04 years	8415
province	GT	2018	05 - 09 years	6521
province	GT	2018	10 - 14 years	5407
province	GT	2018	15 - 19 years	8782
province	GT	2018	20 - 24 years	13550
province	GT	2018	25 - 29 years	20168
province	GT	2018	30 - 34 years	16709
province	GT	2018	35 - 39 years	16206
province	GT	2018	40 - 44 years	14961
province	GT	2018	45 - 49 years	9904
province	GT	2018	50 - 54 years	9291
province	GT	2018	55 - 59 years	5728
province	GT	2018	60 - 64 years	4179
province	GT	2018	65 - 69 years	2025
province	GT	2018	70- 74 years	0
province	GT	2018	75+	0
province	FS	2018	00 - 04 years	0
province	FS	2018	05 - 09 years	1147
province	FS	2018	10 - 14 years	620
province	FS	2018	15 - 19 years	0
province	FS	2018	20 - 24 years	620
province	FS	2018	25 - 29 years	0
province	FS	2018	30 - 34 years	994
province	FS	2018	35 - 39 years	574
province	FS	2018	40 - 44 years	0
province	FS	2018	45 - 49 years	620
province	FS	2018	50 - 54 years	620
province	FS	2018	55 - 59 years	0
province	FS	2018	60 - 64 years	0
province	FS	2018	65 - 69 years	0
province	FS	2018	70- 74 years	0
province	FS	2018	75+	0
province	EC	2018	00 - 04 years	1550
province	EC	2018	05 - 09 years	5053
province	EC	2018	10 - 14 years	2420
province	EC	2018	15 - 19 years	654
province	EC	2018	20 - 24 years	1406
province	EC	2018	25 - 29 years	2490
province	EC	2018	30 - 34 years	3326
province	EC	2018	35 - 39 years	3867
province	EC	2018	40 - 44 years	2758
province	EC	2018	45 - 49 years	1657
province	EC	2018	50 - 54 years	2107
province	EC	2018	55 - 59 years	2627
province	EC	2018	60 - 64 years	0
province	EC	2018	65 - 69 years	752
province	EC	2018	70- 74 years	619
province	EC	2018	75+	1088
\.


--
-- Name: workers_hostel_age_group pk_workers_hostel_age_group; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_age_group
    ADD CONSTRAINT pk_workers_hostel_age_group PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_age_group);


--
-- PostgreSQL database dump complete
--
