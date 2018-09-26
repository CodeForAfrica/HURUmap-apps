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
country	ZA	2016	less than 1 500	458
country	ZA	2016	1 501 - 3 000	2465
country	ZA	2016	3 001 - 5 000	4018
country	ZA	2016	5 001 - 10 000	7066
country	ZA	2016	10 001 - 20 000	14110
country	ZA	2016	20 001 - 30 000	24600
country	ZA	2016	30 001 - 40 000	34841
country	ZA	2016	40 001 - 50 000	44315
country	ZA	2016	50 001 - 100 000	70400
country	ZA	2016	100 001 - 150 000	119780
country	ZA	2016	150 001 - 200 000	164876
country	ZA	2016	200 001 - 300 000	227003
country	ZA	2016	300 001 - 500 000	368981
country	ZA	2016	500 001 - 800 000	708333
country	ZA	2016	800 001 - 1 000 000	\N
country	ZA	2016	greater than 1 000 000	2152778
province	EC	2016	less than 1 500	634
province	EC	2016	1 501 - 3 000	2726
province	EC	2016	3 001 - 5 000	4050
province	EC	2016	5 001 - 10 000	6471
province	EC	2016	10 001 - 20 000	12955
province	EC	2016	20 001 - 30 000	26807
province	EC	2016	30 001 - 40 000	37528
province	EC	2016	40 001 - 50 000	50000
province	EC	2016	50 001 - 100 000	74706
province	EC	2016	100 001 - 150 000	136290
province	EC	2016	150 001 - 200 000	153901
province	EC	2016	200 001 - 300 000	\N
province	EC	2016	300 001 - 500 000	\N
province	EC	2016	500 001 - 800 000	\N
province	EC	2016	800 001 - 1 000 000	\N
province	EC	2016	greater than 1 000 000	\N
province	FS	2016	less than 1 500	1179
province	FS	2016	1 501 - 3 000	\N
province	FS	2016	3 001 - 5 000	3833
province	FS	2016	5 001 - 10 000	6459
province	FS	2016	10 001 - 20 000	14082
province	FS	2016	20 001 - 30 000	24512
province	FS	2016	30 001 - 40 000	36552
province	FS	2016	40 001 - 50 000	42279
province	FS	2016	50 001 - 100 000	84416
province	FS	2016	100 001 - 150 000	114286
province	FS	2016	150 001 - 200 000	\N
province	FS	2016	200 001 - 300 000	215909
province	FS	2016	300 001 - 500 000	\N
province	FS	2016	500 001 - 800 000	\N
province	FS	2016	800 001 - 1 000 000	\N
province	FS	2016	greater than 1 000 000	\N
province	GT	2016	less than 1 500	\N
province	GT	2016	1 501 - 3 000	\N
province	GT	2016	3 001 - 5 000	\N
province	GT	2016	5 001 - 10 000	6000
province	GT	2016	10 001 - 20 000	17217
province	GT	2016	20 001 - 30 000	22222
province	GT	2016	30 001 - 40 000	33075
province	GT	2016	40 001 - 50 000	44474
province	GT	2016	50 001 - 100 000	72400
province	GT	2016	100 001 - 150 000	135351
province	GT	2016	150 001 - 200 000	\N
province	GT	2016	200 001 - 300 000	226891
province	GT	2016	300 001 - 500 000	359091
province	GT	2016	500 001 - 800 000	\N
province	GT	2016	800 001 - 1 000 000	\N
province	GT	2016	greater than 1 000 000	2300000
province	KZN	2016	less than 1 500	100
province	KZN	2016	1 501 - 3 000	\N
province	KZN	2016	3 001 - 5 000	\N
province	KZN	2016	5 001 - 10 000	8464
province	KZN	2016	10 001 - 20 000	13341
province	KZN	2016	20 001 - 30 000	20173
province	KZN	2016	30 001 - 40 000	\N
province	KZN	2016	40 001 - 50 000	46889
province	KZN	2016	50 001 - 100 000	75381
province	KZN	2016	100 001 - 150 000	114680
province	KZN	2016	150 001 - 200 000	\N
province	KZN	2016	200 001 - 300 000	244318
province	KZN	2016	300 001 - 500 000	\N
province	KZN	2016	500 001 - 800 000	708333
province	KZN	2016	800 001 - 1 000 000	\N
province	KZN	2016	greater than 1 000 000	\N
province	LIM	2016	less than 1 500	\N
province	LIM	2016	1 501 - 3 000	2395
province	LIM	2016	3 001 - 5 000	4324
province	LIM	2016	5 001 - 10 000	6464
province	LIM	2016	10 001 - 20 000	14544
province	LIM	2016	20 001 - 30 000	23806
province	LIM	2016	30 001 - 40 000	\N
province	LIM	2016	40 001 - 50 000	43478
province	LIM	2016	50 001 - 100 000	67490
province	LIM	2016	100 001 - 150 000	\N
province	LIM	2016	150 001 - 200 000	182609
province	LIM	2016	200 001 - 300 000	\N
province	LIM	2016	300 001 - 500 000	\N
province	LIM	2016	500 001 - 800 000	\N
province	LIM	2016	800 001 - 1 000 000	\N
province	LIM	2016	greater than 1 000 000	\N
province	MP	2016	less than 1 500	\N
province	MP	2016	1 501 - 3 000	2564
province	MP	2016	3 001 - 5 000	\N
province	MP	2016	5 001 - 10 000	9099
province	MP	2016	10 001 - 20 000	16606
province	MP	2016	20 001 - 30 000	28367
province	MP	2016	30 001 - 40 000	33636
province	MP	2016	40 001 - 50 000	43000
province	MP	2016	50 001 - 100 000	67091
province	MP	2016	100 001 - 150 000	128614
province	MP	2016	150 001 - 200 000	195238
province	MP	2016	200 001 - 300 000	\N
province	MP	2016	300 001 - 500 000	380952
province	MP	2016	500 001 - 800 000	\N
province	MP	2016	800 001 - 1 000 000	\N
province	MP	2016	greater than 1 000 000	\N
province	NC	2016	less than 1 500	454
province	NC	2016	1 501 - 3 000	2268
province	NC	2016	3 001 - 5 000	\N
province	NC	2016	5 001 - 10 000	6770
province	NC	2016	10 001 - 20 000	14322
province	NC	2016	20 001 - 30 000	\N
province	NC	2016	30 001 - 40 000	\N
province	NC	2016	40 001 - 50 000	\N
province	NC	2016	50 001 - 100 000	52464
province	NC	2016	100 001 - 150 000	102963
province	NC	2016	150 001 - 200 000	\N
province	NC	2016	200 001 - 300 000	241176
province	NC	2016	300 001 - 500 000	\N
province	NC	2016	500 001 - 800 000	\N
province	NC	2016	800 001 - 1 000 000	\N
province	NC	2016	greater than 1 000 000	\N
province	NW	2016	less than 1 500	1304
province	NW	2016	1 501 - 3 000	2921
province	NW	2016	3 001 - 5 000	4032
province	NW	2016	5 001 - 10 000	9080
province	NW	2016	10 001 - 20 000	13836
province	NW	2016	20 001 - 30 000	24770
province	NW	2016	30 001 - 40 000	34231
province	NW	2016	40 001 - 50 000	\N
province	NW	2016	50 001 - 100 000	\N
province	NW	2016	100 001 - 150 000	118367
province	NW	2016	150 001 - 200 000	173684
province	NW	2016	200 001 - 300 000	\N
province	NW	2016	300 001 - 500 000	\N
province	NW	2016	500 001 - 800 000	\N
province	NW	2016	800 001 - 1 000 000	\N
province	NW	2016	greater than 1 000 000	\N
province	WC	2016	less than 1 500	360
province	WC	2016	1 501 - 3 000	2297
province	WC	2016	3 001 - 5 000	4137
province	WC	2016	5 001 - 10 000	6962
province	WC	2016	10 001 - 20 000	12773
province	WC	2016	20 001 - 30 000	28458
province	WC	2016	30 001 - 40 000	37681
province	WC	2016	40 001 - 50 000	\N
province	WC	2016	50 001 - 100 000	68305
province	WC	2016	100 001 - 150 000	116970
province	WC	2016	150 001 - 200 000	\N
province	WC	2016	200 001 - 300 000	\N
province	WC	2016	300 001 - 500 000	365909
province	WC	2016	500 001 - 800 000	\N
province	WC	2016	800 001 - 1 000 000	\N
province	WC	2016	greater than 1 000 000	1818182
\.


--
-- PostgreSQL database dump complete
--
