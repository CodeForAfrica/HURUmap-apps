--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS public.landsalesdistributionaveragepricejuly;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionaveragepricejuly; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributionaveragepricejuly (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total numeric
);


ALTER TABLE public.landsalesdistributionaveragepricejuly OWNER TO our_land;

--
-- Data for Name: landsalesdistributionaveragepricejuly; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributionaveragepricejuly (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	Under 1.5K	458
country	ZA	2016	1,501-3K	2465
country	ZA	2016	3,001-5K	4018
country	ZA	2016	5,001-10K	7066
country	ZA	2016	10,001-20K	14110
country	ZA	2016	20,001-30K	24600
country	ZA	2016	30,001-40K	34841
country	ZA	2016	40,001-50K	44315
country	ZA	2016	50,001-100K	70400
country	ZA	2016	100,001-150K	119780
country	ZA	2016	150,001-200K	164876
country	ZA	2016	200,001-300K	227003
country	ZA	2016	300,001-500K	368981
country	ZA	2016	500,001-800K	708333
country	ZA	2016	800,001-1M	\N
country	ZA	2016	Above 1M	2152778
province	EC	2016	Under 1.5K	634
province	EC	2016	1,501-3K	2726
province	EC	2016	3,001-5K	4050
province	EC	2016	5,001-10K	6471
province	EC	2016	10,001-20K	12955
province	EC	2016	20,001-30K	26807
province	EC	2016	30,001-40K	37528
province	EC	2016	40,001-50K	50000
province	EC	2016	50,001-100K	74706
province	EC	2016	100,001-150K	136290
province	EC	2016	150,001-200K	153901
province	EC	2016	200,001-300K	\N
province	EC	2016	300,001-500K	\N
province	EC	2016	500,001-800K	\N
province	EC	2016	800,001-1M	\N
province	EC	2016	Above 1M	\N
province	FS	2016	Under 1.5K	1179
province	FS	2016	1,501-3K	\N
province	FS	2016	3,001-5K	3833
province	FS	2016	5,001-10K	6459
province	FS	2016	10,001-20K	14082
province	FS	2016	20,001-30K	24512
province	FS	2016	30,001-40K	36552
province	FS	2016	40,001-50K	42279
province	FS	2016	50,001-100K	84416
province	FS	2016	100,001-150K	114286
province	FS	2016	150,001-200K	\N
province	FS	2016	200,001-300K	215909
province	FS	2016	300,001-500K	\N
province	FS	2016	500,001-800K	\N
province	FS	2016	800,001-1M	\N
province	FS	2016	Above 1M	\N
province	GT	2016	Under 1.5K	\N
province	GT	2016	1,501-3K	\N
province	GT	2016	3,001-5K	\N
province	GT	2016	5,001-10K	6000
province	GT	2016	10,001-20K	17217
province	GT	2016	20,001-30K	22222
province	GT	2016	30,001-40K	33075
province	GT	2016	40,001-50K	44474
province	GT	2016	50,001-100K	72400
province	GT	2016	100,001-150K	135351
province	GT	2016	150,001-200K	\N
province	GT	2016	200,001-300K	226891
province	GT	2016	300,001-500K	359091
province	GT	2016	500,001-800K	\N
province	GT	2016	800,001-1M	\N
province	GT	2016	Above 1M	2300000
province	KZN	2016	Under 1.5K	100
province	KZN	2016	1,501-3K	\N
province	KZN	2016	3,001-5K	\N
province	KZN	2016	5,001-10K	8464
province	KZN	2016	10,001-20K	13341
province	KZN	2016	20,001-30K	20173
province	KZN	2016	30,001-40K	\N
province	KZN	2016	40,001-50K	46889
province	KZN	2016	50,001-100K	75381
province	KZN	2016	100,001-150K	114680
province	KZN	2016	150,001-200K	\N
province	KZN	2016	200,001-300K	244318
province	KZN	2016	300,001-500K	\N
province	KZN	2016	500,001-800K	708333
province	KZN	2016	800,001-1M	\N
province	KZN	2016	Above 1M	\N
province	LIM	2016	Under 1.5K	\N
province	LIM	2016	1,501-3K	2395
province	LIM	2016	3,001-5K	4324
province	LIM	2016	5,001-10K	6464
province	LIM	2016	10,001-20K	14544
province	LIM	2016	20,001-30K	23806
province	LIM	2016	30,001-40K	\N
province	LIM	2016	40,001-50K	43478
province	LIM	2016	50,001-100K	67490
province	LIM	2016	100,001-150K	\N
province	LIM	2016	150,001-200K	182609
province	LIM	2016	200,001-300K	\N
province	LIM	2016	300,001-500K	\N
province	LIM	2016	500,001-800K	\N
province	LIM	2016	800,001-1M	\N
province	LIM	2016	Above 1M	\N
province	MP	2016	Under 1.5K	\N
province	MP	2016	1,501-3K	2564
province	MP	2016	3,001-5K	\N
province	MP	2016	5,001-10K	9099
province	MP	2016	10,001-20K	16606
province	MP	2016	20,001-30K	28367
province	MP	2016	30,001-40K	33636
province	MP	2016	40,001-50K	43000
province	MP	2016	50,001-100K	67091
province	MP	2016	100,001-150K	128614
province	MP	2016	150,001-200K	195238
province	MP	2016	200,001-300K	\N
province	MP	2016	300,001-500K	380952
province	MP	2016	500,001-800K	\N
province	MP	2016	800,001-1M	\N
province	MP	2016	Above 1M	\N
province	NC	2016	Under 1.5K	454
province	NC	2016	1,501-3K	2268
province	NC	2016	3,001-5K	\N
province	NC	2016	5,001-10K	6770
province	NC	2016	10,001-20K	14322
province	NC	2016	20,001-30K	\N
province	NC	2016	30,001-40K	\N
province	NC	2016	40,001-50K	\N
province	NC	2016	50,001-100K	52464
province	NC	2016	100,001-150K	102963
province	NC	2016	150,001-200K	\N
province	NC	2016	200,001-300K	241176
province	NC	2016	300,001-500K	\N
province	NC	2016	500,001-800K	\N
province	NC	2016	800,001-1M	\N
province	NC	2016	Above 1M	\N
province	NW	2016	Under 1.5K	1304
province	NW	2016	1,501-3K	2921
province	NW	2016	3,001-5K	4032
province	NW	2016	5,001-10K	9080
province	NW	2016	10,001-20K	13836
province	NW	2016	20,001-30K	24770
province	NW	2016	30,001-40K	34231
province	NW	2016	40,001-50K	\N
province	NW	2016	50,001-100K	\N
province	NW	2016	100,001-150K	118367
province	NW	2016	150,001-200K	173684
province	NW	2016	200,001-300K	\N
province	NW	2016	300,001-500K	\N
province	NW	2016	500,001-800K	\N
province	NW	2016	800,001-1M	\N
province	NW	2016	Above 1M	\N
province	WC	2016	Under 1.5K	360
province	WC	2016	1,501-3K	2297
province	WC	2016	3,001-5K	4137
province	WC	2016	5,001-10K	6962
province	WC	2016	10,001-20K	12773
province	WC	2016	20,001-30K	28458
province	WC	2016	30,001-40K	37681
province	WC	2016	40,001-50K	\N
province	WC	2016	50,001-100K	68305
province	WC	2016	100,001-150K	116970
province	WC	2016	150,001-200K	\N
province	WC	2016	200,001-300K	\N
province	WC	2016	300,001-500K	365909
province	WC	2016	500,001-800K	\N
province	WC	2016	800,001-1M	\N
province	WC	2016	Above 1M	1818182
\.


--
-- PostgreSQL database dump complete
--
