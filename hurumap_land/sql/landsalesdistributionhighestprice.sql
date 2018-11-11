--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS public.landsalesdistributionhighestprice;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionhighestprice; Type: TABLE; Schema: public
--

CREATE TABLE public.landsalesdistributionhighestprice (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total integer
);




--
-- Data for Name: landsalesdistributionhighestprice; Type: TABLE DATA; Schema: public
--

COPY public.landsalesdistributionhighestprice (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	Under 1.5K	1499
country	ZA	2016	1,501-3K	3001
country	ZA	2016	3,001-5K	5000
country	ZA	2016	5,001-10K	10001
country	ZA	2016	10,001-20K	20000
country	ZA	2016	20,001-30K	30000
country	ZA	2016	30,001-40K	40000
country	ZA	2016	40,001-50K	50000
country	ZA	2016	50,001-100K	100000
country	ZA	2016	100,001-150K	150000
country	ZA	2016	150,001-200K	200000
country	ZA	2016	200,001-300K	300000
country	ZA	2016	300,001-500K	500000
country	ZA	2016	500,001-800K	791667
country	ZA	2016	800,001-1M	1000000
country	ZA	2016	Above 1M	17142857
province	EC	2016	Under 1.5K	1483
province	EC	2016	1,501-3K	3000
province	EC	2016	3,001-5K	5000
province	EC	2016	5,001-10K	9924
province	EC	2016	10,001-20K	18609
province	EC	2016	20,001-30K	29806
province	EC	2016	30,001-40K	38851
province	EC	2016	40,001-50K	50000
province	EC	2016	50,001-100K	100000
province	EC	2016	100,001-150K	147619
province	EC	2016	150,001-200K	200000
province	EC	2016	200,001-300K	280929
province	EC	2016	300,001-500K	461538
province	EC	2016	500,001-800K	791667
province	EC	2016	800,001-1M	836000
province	EC	2016	Above 1M	1083333
province	FS	2016	Under 1.5K	1482
province	FS	2016	1,501-3K	3000
province	FS	2016	3,001-5K	5000
province	FS	2016	5,001-10K	10001
province	FS	2016	10,001-20K	20000
province	FS	2016	20,001-30K	29545
province	FS	2016	30,001-40K	40000
province	FS	2016	40,001-50K	49806
province	FS	2016	50,001-100K	100000
province	FS	2016	100,001-150K	132432
province	FS	2016	150,001-200K	186364
province	FS	2016	200,001-300K	291407
province	FS	2016	300,001-500K	375000
province	FS	2016	500,001-800K	583333
province	FS	2016	800,001-1M	\N
province	FS	2016	Above 1M	\N
province	GT	2016	Under 1.5K	909
province	GT	2016	1,501-3K	1852
province	GT	2016	3,001-5K	3413
province	GT	2016	5,001-10K	10000
province	GT	2016	10,001-20K	20000
province	GT	2016	20,001-30K	30000
province	GT	2016	30,001-40K	40000
province	GT	2016	40,001-50K	50000
province	GT	2016	50,001-100K	100000
province	GT	2016	100,001-150K	150000
province	GT	2016	150,001-200K	200000
province	GT	2016	200,001-300K	284615
province	GT	2016	300,001-500K	500000
province	GT	2016	500,001-800K	791667
province	GT	2016	800,001-1M	940000
province	GT	2016	Above 1M	10504286
province	KZN	2016	Under 1.5K	1400
province	KZN	2016	1,501-3K	2909
province	KZN	2016	3,001-5K	4916
province	KZN	2016	5,001-10K	10000
province	KZN	2016	10,001-20K	19841
province	KZN	2016	20,001-30K	30000
province	KZN	2016	30,001-40K	39640
province	KZN	2016	40,001-50K	50000
province	KZN	2016	50,001-100K	100000
province	KZN	2016	100,001-150K	150000
province	KZN	2016	150,001-200K	200000
province	KZN	2016	200,001-300K	300000
province	KZN	2016	300,001-500K	461538
province	KZN	2016	500,001-800K	708333
province	KZN	2016	800,001-1M	882000
province	KZN	2016	Above 1M	17142857
province	LIM	2016	Under 1.5K	1398
province	LIM	2016	1,501-3K	2993
province	LIM	2016	3,001-5K	5000
province	LIM	2016	5,001-10K	10000
province	LIM	2016	10,001-20K	20000
province	LIM	2016	20,001-30K	29688
province	LIM	2016	30,001-40K	40000
province	LIM	2016	40,001-50K	50000
province	LIM	2016	50,001-100K	100000
province	LIM	2016	100,001-150K	150000
province	LIM	2016	150,001-200K	191463
province	LIM	2016	200,001-300K	285714
province	LIM	2016	300,001-500K	399000
province	LIM	2016	500,001-800K	766650
province	LIM	2016	800,001-1M	948276
province	LIM	2016	Above 1M	2615732
province	MP	2016	Under 1.5K	1485
province	MP	2016	1,501-3K	2903
province	MP	2016	3,001-5K	5000
province	MP	2016	5,001-10K	10000
province	MP	2016	10,001-20K	20000
province	MP	2016	20,001-30K	30000
province	MP	2016	30,001-40K	39962
province	MP	2016	40,001-50K	50000
province	MP	2016	50,001-100K	100000
province	MP	2016	100,001-150K	149194
province	MP	2016	150,001-200K	200000
province	MP	2016	200,001-300K	300000
province	MP	2016	300,001-500K	492000
province	MP	2016	500,001-800K	552462
province	MP	2016	800,001-1M	\N
province	MP	2016	Above 1M	\N
province	NC	2016	Under 1.5K	1450
province	NC	2016	1,501-3K	3000
province	NC	2016	3,001-5K	4831
province	NC	2016	5,001-10K	10000
province	NC	2016	10,001-20K	19205
province	NC	2016	20,001-30K	30000
province	NC	2016	30,001-40K	\N
province	NC	2016	40,001-50K	\N
province	NC	2016	50,001-100K	95833
province	NC	2016	100,001-150K	145827
province	NC	2016	150,001-200K	192308
province	NC	2016	200,001-300K	290698
province	NC	2016	300,001-500K	367647
province	NC	2016	500,001-800K	642857
province	NC	2016	800,001-1M	941176
province	NC	2016	Above 1M	1086957
province	NW	2016	Under 1.5K	1304
province	NW	2016	1,501-3K	2921
province	NW	2016	3,001-5K	5000
province	NW	2016	5,001-10K	10000
province	NW	2016	10,001-20K	20000
province	NW	2016	20,001-30K	30000
province	NW	2016	30,001-40K	40000
province	NW	2016	40,001-50K	50000
province	NW	2016	50,001-100K	100000
province	NW	2016	100,001-150K	150000
province	NW	2016	150,001-200K	194444
province	NW	2016	200,001-300K	280952
province	NW	2016	300,001-500K	435185
province	NW	2016	500,001-800K	678788
province	NW	2016	800,001-1M	1000000
province	NW	2016	Above 1M	\N
province	WC	2016	Under 1.5K	1499
province	WC	2016	1,501-3K	3001
province	WC	2016	3,001-5K	4808
province	WC	2016	5,001-10K	10001
province	WC	2016	10,001-20K	20000
province	WC	2016	20,001-30K	29775
province	WC	2016	30,001-40K	39739
province	WC	2016	40,001-50K	50000
province	WC	2016	50,001-100K	100000
province	WC	2016	100,001-150K	150000
province	WC	2016	150,001-200K	200000
province	WC	2016	200,001-300K	300000
province	WC	2016	300,001-500K	483922
province	WC	2016	500,001-800K	733945
province	WC	2016	800,001-1M	871205
province	WC	2016	Above 1M	3159091
\.


--
-- PostgreSQL database dump complete
--
