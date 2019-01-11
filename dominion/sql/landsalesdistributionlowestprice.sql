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

DROP TABLE IF EXISTS public.landsalesdistributionlowestprice;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionlowestprice; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landsalesdistributionlowestprice (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landsalesdistributionlowestprice; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landsalesdistributionlowestprice (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	Under 1.5K	\N
country	ZA	2016	1,501-3K	1505
country	ZA	2016	3,001-5K	3003
country	ZA	2016	5,001-10K	5003
country	ZA	2016	10,001-20K	10002
country	ZA	2016	20,001-30K	20022
country	ZA	2016	30,001-40K	30027
country	ZA	2016	40,001-50K	40115
country	ZA	2016	50,001-100K	50026
country	ZA	2016	100,001-150K	100719
country	ZA	2016	150,001-200K	150299
country	ZA	2016	200,001-300K	202381
country	ZA	2016	300,001-500K	302000
country	ZA	2016	500,001-800K	500952
country	ZA	2016	800,001-1M	821667
country	ZA	2016	Above 1M	1032000
province	EC	2016	Under 1.5K	114
province	EC	2016	1,501-3K	1540
province	EC	2016	3,001-5K	3003
province	EC	2016	5,001-10K	5006
province	EC	2016	10,001-20K	10073
province	EC	2016	20,001-30K	20270
province	EC	2016	30,001-40K	30556
province	EC	2016	40,001-50K	40250
province	EC	2016	50,001-100K	55882
province	EC	2016	100,001-150K	101818
province	EC	2016	150,001-200K	152778
province	EC	2016	200,001-300K	230651
province	EC	2016	300,001-500K	320551
province	EC	2016	500,001-800K	518516
province	EC	2016	800,001-1M	836000
province	EC	2016	Above 1M	1083333
province	FS	2016	Under 1.5K	9
province	FS	2016	1,501-3K	1637
province	FS	2016	3,001-5K	3005
province	FS	2016	5,001-10K	5003
province	FS	2016	10,001-20K	10007
province	FS	2016	20,001-30K	20022
province	FS	2016	30,001-40K	30052
province	FS	2016	40,001-50K	40476
province	FS	2016	50,001-100K	50026
province	FS	2016	100,001-150K	107294
province	FS	2016	150,001-200K	159744
province	FS	2016	200,001-300K	215909
province	FS	2016	300,001-500K	316350
province	FS	2016	500,001-800K	583333
province	FS	2016	800,001-1M	\N
province	FS	2016	Above 1M	\N
province	GT	2016	Under 1.5K	332
province	GT	2016	1,501-3K	1852
province	GT	2016	3,001-5K	3333
province	GT	2016	5,001-10K	5218
province	GT	2016	10,001-20K	10277
province	GT	2016	20,001-30K	20115
province	GT	2016	30,001-40K	30498
province	GT	2016	40,001-50K	40541
province	GT	2016	50,001-100K	50909
province	GT	2016	100,001-150K	103571
province	GT	2016	150,001-200K	153846
province	GT	2016	200,001-300K	202381
province	GT	2016	300,001-500K	302326
province	GT	2016	500,001-800K	526316
province	GT	2016	800,001-1M	940000
province	GT	2016	Above 1M	1032000
province	KZN	2016	Under 1.5K	73
province	KZN	2016	1,501-3K	1523
province	KZN	2016	3,001-5K	3017
province	KZN	2016	5,001-10K	5240
province	KZN	2016	10,001-20K	10069
province	KZN	2016	20,001-30K	20152
province	KZN	2016	30,001-40K	30281
province	KZN	2016	40,001-50K	40962
province	KZN	2016	50,001-100K	50325
province	KZN	2016	100,001-150K	101449
province	KZN	2016	150,001-200K	157143
province	KZN	2016	200,001-300K	210000
province	KZN	2016	300,001-500K	333333
province	KZN	2016	500,001-800K	587500
province	KZN	2016	800,001-1M	882000
province	KZN	2016	Above 1M	2166000
province	LIM	2016	Under 1.5K	18
province	LIM	2016	1,501-3K	1505
province	LIM	2016	3,001-5K	3046
province	LIM	2016	5,001-10K	5126
province	LIM	2016	10,001-20K	10031
province	LIM	2016	20,001-30K	20048
province	LIM	2016	30,001-40K	30550
province	LIM	2016	40,001-50K	40952
province	LIM	2016	50,001-100K	50213
province	LIM	2016	100,001-150K	100719
province	LIM	2016	150,001-200K	150299
province	LIM	2016	200,001-300K	218750
province	LIM	2016	300,001-500K	335294
province	LIM	2016	500,001-800K	538462
province	LIM	2016	800,001-1M	948276
province	LIM	2016	Above 1M	2615732
province	MP	2016	Under 1.5K	\N
province	MP	2016	1,501-3K	1871
province	MP	2016	3,001-5K	3299
province	MP	2016	5,001-10K	5102
province	MP	2016	10,001-20K	10009
province	MP	2016	20,001-30K	20127
province	MP	2016	30,001-40K	30027
province	MP	2016	40,001-50K	40434
province	MP	2016	50,001-100K	50209
province	MP	2016	100,001-150K	104167
province	MP	2016	150,001-200K	150754
province	MP	2016	200,001-300K	203704
province	MP	2016	300,001-500K	303339
province	MP	2016	500,001-800K	500952
province	MP	2016	800,001-1M	\N
province	MP	2016	Above 1M	\N
province	NC	2016	Under 1.5K	2
province	NC	2016	1,501-3K	1508
province	NC	2016	3,001-5K	3135
province	NC	2016	5,001-10K	5014
province	NC	2016	10,001-20K	10004
province	NC	2016	20,001-30K	21413
province	NC	2016	30,001-40K	\N
province	NC	2016	40,001-50K	\N
province	NC	2016	50,001-100K	51282
province	NC	2016	100,001-150K	102963
province	NC	2016	150,001-200K	152174
province	NC	2016	200,001-300K	211077
province	NC	2016	300,001-500K	302000
province	NC	2016	500,001-800K	540278
province	NC	2016	800,001-1M	937500
province	NC	2016	Above 1M	1086957
province	NW	2016	Under 1.5K	20
province	NW	2016	1,501-3K	1509
province	NW	2016	3,001-5K	3049
province	NW	2016	5,001-10K	5008
province	NW	2016	10,001-20K	10002
province	NW	2016	20,001-30K	20123
province	NW	2016	30,001-40K	30270
province	NW	2016	40,001-50K	40909
province	NW	2016	50,001-100K	51207
province	NW	2016	100,001-150K	101111
province	NW	2016	150,001-200K	153846
province	NW	2016	200,001-300K	213333
province	NW	2016	300,001-500K	320215
province	NW	2016	500,001-800K	556777
province	NW	2016	800,001-1M	821667
province	NW	2016	Above 1M	\N
province	WC	2016	Under 1.5K	30
province	WC	2016	1,501-3K	1547
province	WC	2016	3,001-5K	3023
province	WC	2016	5,001-10K	5019
province	WC	2016	10,001-20K	10020
province	WC	2016	20,001-30K	20431
province	WC	2016	30,001-40K	30888
province	WC	2016	40,001-50K	40115
province	WC	2016	50,001-100K	50070
province	WC	2016	100,001-150K	103774
province	WC	2016	150,001-200K	152381
province	WC	2016	200,001-300K	203125
province	WC	2016	300,001-500K	320225
province	WC	2016	500,001-800K	515098
province	WC	2016	800,001-1M	871205
province	WC	2016	Above 1M	1250000
\.


--
-- PostgreSQL database dump complete
--

