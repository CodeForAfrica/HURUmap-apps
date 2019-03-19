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

DROP TABLE IF EXISTS public.landsalesdistributionpricetrends;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionpricetrends; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landsalesdistributionpricetrends (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class_price_trends character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: landsalesdistributionpricetrends; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landsalesdistributionpricetrends (geo_level, geo_code, geo_version, class_price_trends, total) FROM stdin;
country	ZA	2016	Under 1.5K	-22
country	ZA	2016	1,501-3K	-1
country	ZA	2016	3,001-5K	9
country	ZA	2016	5,001-10K	-28
country	ZA	2016	10,001-20K	-11
country	ZA	2016	20,001-30K	46
country	ZA	2016	30,001-40K	-3
country	ZA	2016	40,001-50K	16
country	ZA	2016	50,001-100K	29
country	ZA	2016	100,001-150K	-283
country	ZA	2016	150,001-200K	-513
country	ZA	2016	200,001-300K	-625
country	ZA	2016	300,001-500K	1523
country	ZA	2016	500,001-800K	3843
country	ZA	2016	800,001-1M	4491
country	ZA	2016	Above 1M	-914413
province	EC	2016	Under 1.5K	-13
province	EC	2016	1,501-3K	-19
province	EC	2016	3,001-5K	69
province	EC	2016	5,001-10K	-52
province	EC	2016	10,001-20K	-106
province	EC	2016	20,001-30K	-28
province	EC	2016	30,001-40K	466
province	EC	2016	40,001-50K	142
province	EC	2016	50,001-100K	926
province	EC	2016	100,001-150K	2002
province	EC	2016	150,001-200K	-3468
province	EC	2016	200,001-300K	1825
province	EC	2016	300,001-500K	5888
province	EC	2016	500,001-800K	-59346
province	EC	2016	800,001-1M	\N
province	EC	2016	Above 1M	\N
province	FS	2016	Under 1.5K	-52
province	FS	2016	1,501-3K	-24
province	FS	2016	3,001-5K	56
province	FS	2016	5,001-10K	-95
province	FS	2016	10,001-20K	-71
province	FS	2016	20,001-30K	-219
province	FS	2016	30,001-40K	-24
province	FS	2016	40,001-50K	-743
province	FS	2016	50,001-100K	-1127
province	FS	2016	100,001-150K	403
province	FS	2016	150,001-200K	-2666
province	FS	2016	200,001-300K	-4098
province	FS	2016	300,001-500K	-29325
province	FS	2016	500,001-800K	\N
province	FS	2016	800,001-1M	\N
province	FS	2016	Above 1M	\N
province	GT	2016	Under 1.5K	20
province	GT	2016	1,501-3K	\N
province	GT	2016	3,001-5K	8
province	GT	2016	5,001-10K	-165
province	GT	2016	10,001-20K	116
province	GT	2016	20,001-30K	89
province	GT	2016	30,001-40K	52
province	GT	2016	40,001-50K	-127
province	GT	2016	50,001-100K	1258
province	GT	2016	100,001-150K	1190
province	GT	2016	150,001-200K	-77
province	GT	2016	200,001-300K	1618
province	GT	2016	300,001-500K	-5696
province	GT	2016	500,001-800K	-5450
province	GT	2016	800,001-1M	\N
province	GT	2016	Above 1M	-59816
province	KZN	2016	Under 1.5K	-80
province	KZN	2016	1,501-3K	87
province	KZN	2016	3,001-5K	50
province	KZN	2016	5,001-10K	50
province	KZN	2016	10,001-20K	-23
province	KZN	2016	20,001-30K	-165
province	KZN	2016	30,001-40K	-180
province	KZN	2016	40,001-50K	91
province	KZN	2016	50,001-100K	14
province	KZN	2016	100,001-150K	-506
province	KZN	2016	150,001-200K	1487
province	KZN	2016	200,001-300K	-266
province	KZN	2016	300,001-500K	2646
province	KZN	2016	500,001-800K	12500
province	KZN	2016	800,001-1M	\N
province	KZN	2016	Above 1M	-2992012
province	LIM	2016	Under 1.5K	90
province	LIM	2016	1,501-3K	41
province	LIM	2016	3,001-5K	-35
province	LIM	2016	5,001-10K	-107
province	LIM	2016	10,001-20K	-17
province	LIM	2016	20,001-30K	-175
province	LIM	2016	30,001-40K	-175
province	LIM	2016	40,001-50K	-94
province	LIM	2016	50,001-100K	588
province	LIM	2016	100,001-150K	-2402
province	LIM	2016	150,001-200K	-51
province	LIM	2016	200,001-300K	-3580
province	LIM	2016	300,001-500K	-1392
province	LIM	2016	500,001-800K	24754
province	LIM	2016	800,001-1M	\N
province	LIM	2016	Above 1M	\N
province	MP	2016	Under 1.5K	300
province	MP	2016	1,501-3K	60
province	MP	2016	3,001-5K	49
province	MP	2016	5,001-10K	24
province	MP	2016	10,001-20K	123
province	MP	2016	20,001-30K	506
province	MP	2016	30,001-40K	458
province	MP	2016	40,001-50K	-39
province	MP	2016	50,001-100K	-665
province	MP	2016	100,001-150K	839
province	MP	2016	150,001-200K	3395
province	MP	2016	200,001-300K	1931
province	MP	2016	300,001-500K	1369
province	MP	2016	500,001-800K	8229
province	MP	2016	800,001-1M	\N
province	MP	2016	Above 1M	\N
province	NC	2016	Under 1.5K	-22
province	NC	2016	1,501-3K	-16
province	NC	2016	3,001-5K	-52
province	NC	2016	5,001-10K	73
province	NC	2016	10,001-20K	69
province	NC	2016	20,001-30K	-7158
province	NC	2016	30,001-40K	\N
province	NC	2016	40,001-50K	\N
province	NC	2016	50,001-100K	-1691
province	NC	2016	100,001-150K	-1047
province	NC	2016	150,001-200K	-1091
province	NC	2016	200,001-300K	715
province	NC	2016	300,001-500K	199
province	NC	2016	500,001-800K	-17097
province	NC	2016	800,001-1M	\N
province	NC	2016	Above 1M	\N
province	NW	2016	Under 1.5K	76
province	NW	2016	1,501-3K	28
province	NW	2016	3,001-5K	-8
province	NW	2016	5,001-10K	120
province	NW	2016	10,001-20K	-9
province	NW	2016	20,001-30K	-138
province	NW	2016	30,001-40K	4
province	NW	2016	40,001-50K	113
province	NW	2016	50,001-100K	-234
province	NW	2016	100,001-150K	896
province	NW	2016	150,001-200K	542
province	NW	2016	200,001-300K	4862
province	NW	2016	300,001-500K	1519
province	NW	2016	500,001-800K	-6678
province	NW	2016	800,001-1M	609
province	NW	2016	Above 1M	\N
province	WC	2016	Under 1.5K	1
province	WC	2016	1,501-3K	3
province	WC	2016	3,001-5K	27
province	WC	2016	5,001-10K	-60
province	WC	2016	10,001-20K	-5
province	WC	2016	20,001-30K	187
province	WC	2016	30,001-40K	187
province	WC	2016	40,001-50K	-39
province	WC	2016	50,001-100K	-562
province	WC	2016	100,001-150K	-1275
province	WC	2016	150,001-200K	826
province	WC	2016	200,001-300K	-1269
province	WC	2016	300,001-500K	2274
province	WC	2016	500,001-800K	-14479
province	WC	2016	800,001-1M	\N
province	WC	2016	Above 1M	133675
\.


--
-- PostgreSQL database dump complete
--

