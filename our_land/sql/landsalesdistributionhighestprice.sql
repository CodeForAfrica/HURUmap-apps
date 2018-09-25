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

DROP TABLE public.landsalesdistributionhighestprice;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionhighestprice; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributionhighestprice (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.landsalesdistributionhighestprice OWNER TO our_land;

--
-- Data for Name: landsalesdistributionhighestprice; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributionhighestprice (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	 < 1 500	1499
country	ZA	2016	 1 501 - 3 000	3001
country	ZA	2016	 3 001 - 5 000	5000
country	ZA	2016	 5 001 - 10 000	10001
country	ZA	2016	 10 001 - 20 000	20000
country	ZA	2016	 20 001 - 30 000	30000
country	ZA	2016	 30 001 - 40 000	40000
country	ZA	2016	 40 001 - 50 000	50000
country	ZA	2016	 50 001 - 100 000	100000
country	ZA	2016	 100 001 - 150 000	150000
country	ZA	2016	 150 001 - 200 000	200000
country	ZA	2016	 200 001 - 300 000	300000
country	ZA	2016	 300 001 - 500 000	500000
country	ZA	2016	 500 001 - 800 000	791667
country	ZA	2016	 800 001 - 1 000 000	1000000
country	ZA	2016	 > 1 000 000	17142857
province	EC	2016	 < 1 500	1483
province	EC	2016	 1 501 - 3 000	3000
province	EC	2016	 3 001 - 5 000	5000
province	EC	2016	 5 001 - 10 000	9924
province	EC	2016	 10 001 - 20 000	18609
province	EC	2016	 20 001 - 30 000	29806
province	EC	2016	 30 001 - 40 000	38851
province	EC	2016	 40 001 - 50 000	50000
province	EC	2016	 50 001 - 100 000	100000
province	EC	2016	 100 001 - 150 000	147619
province	EC	2016	 150 001 - 200 000	200000
province	EC	2016	 200 001 - 300 000	280929
province	EC	2016	 300 001 - 500 000	461538
province	EC	2016	 500 001 - 800 000	791667
province	EC	2016	 800 001 - 1 000 000	836000
province	EC	2016	 > 1 000 000	1083333
province	FS	2016	 < 1 500	1482
province	FS	2016	 1 501 - 3 000	3000
province	FS	2016	 3 001 - 5 000	5000
province	FS	2016	 5 001 - 10 000	10001
province	FS	2016	 10 001 - 20 000	20000
province	FS	2016	 20 001 - 30 000	29545
province	FS	2016	 30 001 - 40 000	40000
province	FS	2016	 40 001 - 50 000	49806
province	FS	2016	 50 001 - 100 000	100000
province	FS	2016	 100 001 - 150 000	132432
province	FS	2016	 150 001 - 200 000	186364
province	FS	2016	 200 001 - 300 000	291407
province	FS	2016	 300 001 - 500 000	375000
province	FS	2016	 500 001 - 800 000	583333
province	FS	2016	 800 001 - 1 000 000	\N
province	FS	2016	 > 1 000 000	\N
province	GT	2016	 < 1 500	909
province	GT	2016	 1 501 - 3 000	1852
province	GT	2016	 3 001 - 5 000	3413
province	GT	2016	 5 001 - 10 000	10000
province	GT	2016	 10 001 - 20 000	20000
province	GT	2016	 20 001 - 30 000	30000
province	GT	2016	 30 001 - 40 000	40000
province	GT	2016	 40 001 - 50 000	50000
province	GT	2016	 50 001 - 100 000	100000
province	GT	2016	 100 001 - 150 000	150000
province	GT	2016	 150 001 - 200 000	200000
province	GT	2016	 200 001 - 300 000	284615
province	GT	2016	 300 001 - 500 000	500000
province	GT	2016	 500 001 - 800 000	791667
province	GT	2016	 800 001 - 1 000 000	940000
province	GT	2016	 > 1 000 000	10504286
province	KZN	2016	 < 1 500	1400
province	KZN	2016	 1 501 - 3 000	2909
province	KZN	2016	 3 001 - 5 000	4916
province	KZN	2016	 5 001 - 10 000	10000
province	KZN	2016	 10 001 - 20 000	19841
province	KZN	2016	 20 001 - 30 000	30000
province	KZN	2016	 30 001 - 40 000	39640
province	KZN	2016	 40 001 - 50 000	50000
province	KZN	2016	 50 001 - 100 000	100000
province	KZN	2016	 100 001 - 150 000	150000
province	KZN	2016	 150 001 - 200 000	200000
province	KZN	2016	 200 001 - 300 000	300000
province	KZN	2016	 300 001 - 500 000	461538
province	KZN	2016	 500 001 - 800 000	708333
province	KZN	2016	 800 001 - 1 000 000	882000
province	KZN	2016	 > 1 000 000	17142857
province	LIM	2016	 < 1 500	1398
province	LIM	2016	 1 501 - 3 000	2993
province	LIM	2016	 3 001 - 5 000	5000
province	LIM	2016	 5 001 - 10 000	10000
province	LIM	2016	 10 001 - 20 000	20000
province	LIM	2016	 20 001 - 30 000	29688
province	LIM	2016	 30 001 - 40 000	40000
province	LIM	2016	 40 001 - 50 000	50000
province	LIM	2016	 50 001 - 100 000	100000
province	LIM	2016	 100 001 - 150 000	150000
province	LIM	2016	 150 001 - 200 000	191463
province	LIM	2016	 200 001 - 300 000	285714
province	LIM	2016	 300 001 - 500 000	399000
province	LIM	2016	 500 001 - 800 000	766650
province	LIM	2016	 800 001 - 1 000 000	948276
province	LIM	2016	 > 1 000 000	2615732
province	MP	2016	 < 1 500	1485
province	MP	2016	 1 501 - 3 000	2903
province	MP	2016	 3 001 - 5 000	5000
province	MP	2016	 5 001 - 10 000	10000
province	MP	2016	 10 001 - 20 000	20000
province	MP	2016	 20 001 - 30 000	30000
province	MP	2016	 30 001 - 40 000	39962
province	MP	2016	 40 001 - 50 000	50000
province	MP	2016	 50 001 - 100 000	100000
province	MP	2016	 100 001 - 150 000	149194
province	MP	2016	 150 001 - 200 000	200000
province	MP	2016	 200 001 - 300 000	300000
province	MP	2016	 300 001 - 500 000	492000
province	MP	2016	 500 001 - 800 000	552462
province	MP	2016	 800 001 - 1 000 000	\N
province	MP	2016	 > 1 000 000	\N
province	NC	2016	 < 1 500	1450
province	NC	2016	 1 501 - 3 000	3000
province	NC	2016	 3 001 - 5 000	4831
province	NC	2016	 5 001 - 10 000	10000
province	NC	2016	 10 001 - 20 000	19205
province	NC	2016	 20 001 - 30 000	30000
province	NC	2016	 30 001 - 40 000	\N
province	NC	2016	 40 001 - 50 000	\N
province	NC	2016	 50 001 - 100 000	95833
province	NC	2016	 100 001 - 150 000	145827
province	NC	2016	 150 001 - 200 000	192308
province	NC	2016	 200 001 - 300 000	290698
province	NC	2016	 300 001 - 500 000	367647
province	NC	2016	 500 001 - 800 000	642857
province	NC	2016	 800 001 - 1 000 000	941176
province	NC	2016	 > 1 000 000	1086957
province	NW	2016	 < 1 500	1304
province	NW	2016	 1 501 - 3 000	2921
province	NW	2016	 3 001 - 5 000	5000
province	NW	2016	 5 001 - 10 000	10000
province	NW	2016	 10 001 - 20 000	20000
province	NW	2016	 20 001 - 30 000	30000
province	NW	2016	 30 001 - 40 000	40000
province	NW	2016	 40 001 - 50 000	50000
province	NW	2016	 50 001 - 100 000	100000
province	NW	2016	 100 001 - 150 000	150000
province	NW	2016	 150 001 - 200 000	194444
province	NW	2016	 200 001 - 300 000	280952
province	NW	2016	 300 001 - 500 000	435185
province	NW	2016	 500 001 - 800 000	678788
province	NW	2016	 800 001 - 1 000 000	1000000
province	NW	2016	 > 1 000 000	\N
province	WC	2016	 < 1 500	1499
province	WC	2016	 1 501 - 3 000	3001
province	WC	2016	 3 001 - 5 000	4808
province	WC	2016	 5 001 - 10 000	10001
province	WC	2016	 10 001 - 20 000	20000
province	WC	2016	 20 001 - 30 000	29775
province	WC	2016	 30 001 - 40 000	39739
province	WC	2016	 40 001 - 50 000	50000
province	WC	2016	 50 001 - 100 000	100000
province	WC	2016	 100 001 - 150 000	150000
province	WC	2016	 150 001 - 200 000	200000
province	WC	2016	 200 001 - 300 000	300000
province	WC	2016	 300 001 - 500 000	483922
province	WC	2016	 500 001 - 800 000	733945
province	WC	2016	 800 001 - 1 000 000	871205
province	WC	2016	 > 1 000 000	3159091
\.


--
-- PostgreSQL database dump complete
--

