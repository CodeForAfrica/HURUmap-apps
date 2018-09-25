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

DROP TABLE public.landsalesdistributionlowestprice;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionlowestprice; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributionlowestprice (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.landsalesdistributionlowestprice OWNER TO our_land;

--
-- Data for Name: landsalesdistributionlowestprice; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributionlowestprice (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	 < 1 500	\N
country	ZA	2016	 1 501 - 3 000	1505
country	ZA	2016	 3 001 - 5 000	3003
country	ZA	2016	 5 001 - 10 000	5003
country	ZA	2016	 10 001 - 20 000	10002
country	ZA	2016	 20 001 - 30 000	20022
country	ZA	2016	 30 001 - 40 000	30027
country	ZA	2016	 40 001 - 50 000	40115
country	ZA	2016	 50 001 - 100 000	50026
country	ZA	2016	 100 001 - 150 000	100719
country	ZA	2016	 150 001 - 200 000	150299
country	ZA	2016	 200 001 - 300 000	202381
country	ZA	2016	 300 001 - 500 000	302000
country	ZA	2016	 500 001 - 800 000	500952
country	ZA	2016	 800 001 - 1 000 000	821667
country	ZA	2016	 > 1 000 000	1032000
province	EC	2016	 < 1 500	114
province	EC	2016	 1 501 - 3 000	1540
province	EC	2016	 3 001 - 5 000	3003
province	EC	2016	 5 001 - 10 000	5006
province	EC	2016	 10 001 - 20 000	10073
province	EC	2016	 20 001 - 30 000	20270
province	EC	2016	 30 001 - 40 000	30556
province	EC	2016	 40 001 - 50 000	40250
province	EC	2016	 50 001 - 100 000	55882
province	EC	2016	 100 001 - 150 000	101818
province	EC	2016	 150 001 - 200 000	152778
province	EC	2016	 200 001 - 300 000	230651
province	EC	2016	 300 001 - 500 000	320551
province	EC	2016	 500 001 - 800 000	518516
province	EC	2016	 800 001 - 1 000 000	836000
province	EC	2016	 > 1 000 000	1083333
province	FS	2016	 < 1 500	9
province	FS	2016	 1 501 - 3 000	1637
province	FS	2016	 3 001 - 5 000	3005
province	FS	2016	 5 001 - 10 000	5003
province	FS	2016	 10 001 - 20 000	10007
province	FS	2016	 20 001 - 30 000	20022
province	FS	2016	 30 001 - 40 000	30052
province	FS	2016	 40 001 - 50 000	40476
province	FS	2016	 50 001 - 100 000	50026
province	FS	2016	 100 001 - 150 000	107294
province	FS	2016	 150 001 - 200 000	159744
province	FS	2016	 200 001 - 300 000	215909
province	FS	2016	 300 001 - 500 000	316350
province	FS	2016	 500 001 - 800 000	583333
province	FS	2016	 800 001 - 1 000 000	\N
province	FS	2016	 > 1 000 000	\N
province	GT	2016	 < 1 500	332
province	GT	2016	 1 501 - 3 000	1852
province	GT	2016	 3 001 - 5 000	3333
province	GT	2016	 5 001 - 10 000	5218
province	GT	2016	 10 001 - 20 000	10277
province	GT	2016	 20 001 - 30 000	20115
province	GT	2016	 30 001 - 40 000	30498
province	GT	2016	 40 001 - 50 000	40541
province	GT	2016	 50 001 - 100 000	50909
province	GT	2016	 100 001 - 150 000	103571
province	GT	2016	 150 001 - 200 000	153846
province	GT	2016	 200 001 - 300 000	202381
province	GT	2016	 300 001 - 500 000	302326
province	GT	2016	 500 001 - 800 000	526316
province	GT	2016	 800 001 - 1 000 000	940000
province	GT	2016	 > 1 000 000	1032000
province	KZN	2016	 < 1 500	73
province	KZN	2016	 1 501 - 3 000	1523
province	KZN	2016	 3 001 - 5 000	3017
province	KZN	2016	 5 001 - 10 000	5240
province	KZN	2016	 10 001 - 20 000	10069
province	KZN	2016	 20 001 - 30 000	20152
province	KZN	2016	 30 001 - 40 000	30281
province	KZN	2016	 40 001 - 50 000	40962
province	KZN	2016	 50 001 - 100 000	50325
province	KZN	2016	 100 001 - 150 000	101449
province	KZN	2016	 150 001 - 200 000	157143
province	KZN	2016	 200 001 - 300 000	210000
province	KZN	2016	 300 001 - 500 000	333333
province	KZN	2016	 500 001 - 800 000	587500
province	KZN	2016	 800 001 - 1 000 000	882000
province	KZN	2016	 > 1 000 000	2166000
province	LIM	2016	 < 1 500	18
province	LIM	2016	 1 501 - 3 000	1505
province	LIM	2016	 3 001 - 5 000	3046
province	LIM	2016	 5 001 - 10 000	5126
province	LIM	2016	 10 001 - 20 000	10031
province	LIM	2016	 20 001 - 30 000	20048
province	LIM	2016	 30 001 - 40 000	30550
province	LIM	2016	 40 001 - 50 000	40952
province	LIM	2016	 50 001 - 100 000	50213
province	LIM	2016	 100 001 - 150 000	100719
province	LIM	2016	 150 001 - 200 000	150299
province	LIM	2016	 200 001 - 300 000	218750
province	LIM	2016	 300 001 - 500 000	335294
province	LIM	2016	 500 001 - 800 000	538462
province	LIM	2016	 800 001 - 1 000 000	948276
province	LIM	2016	 > 1 000 000	2615732
province	MP	2016	 < 1 500	\N
province	MP	2016	 1 501 - 3 000	1871
province	MP	2016	 3 001 - 5 000	3299
province	MP	2016	 5 001 - 10 000	5102
province	MP	2016	 10 001 - 20 000	10009
province	MP	2016	 20 001 - 30 000	20127
province	MP	2016	 30 001 - 40 000	30027
province	MP	2016	 40 001 - 50 000	40434
province	MP	2016	 50 001 - 100 000	50209
province	MP	2016	 100 001 - 150 000	104167
province	MP	2016	 150 001 - 200 000	150754
province	MP	2016	 200 001 - 300 000	203704
province	MP	2016	 300 001 - 500 000	303339
province	MP	2016	 500 001 - 800 000	500952
province	MP	2016	 800 001 - 1 000 000	\N
province	MP	2016	 > 1 000 000	\N
province	NC	2016	 < 1 500	2
province	NC	2016	 1 501 - 3 000	1508
province	NC	2016	 3 001 - 5 000	3135
province	NC	2016	 5 001 - 10 000	5014
province	NC	2016	 10 001 - 20 000	10004
province	NC	2016	 20 001 - 30 000	21413
province	NC	2016	 30 001 - 40 000	\N
province	NC	2016	 40 001 - 50 000	\N
province	NC	2016	 50 001 - 100 000	51282
province	NC	2016	 100 001 - 150 000	102963
province	NC	2016	 150 001 - 200 000	152174
province	NC	2016	 200 001 - 300 000	211077
province	NC	2016	 300 001 - 500 000	302000
province	NC	2016	 500 001 - 800 000	540278
province	NC	2016	 800 001 - 1 000 000	937500
province	NC	2016	 > 1 000 000	1086957
province	NW	2016	 < 1 500	20
province	NW	2016	 1 501 - 3 000	1509
province	NW	2016	 3 001 - 5 000	3049
province	NW	2016	 5 001 - 10 000	5008
province	NW	2016	 10 001 - 20 000	10002
province	NW	2016	 20 001 - 30 000	20123
province	NW	2016	 30 001 - 40 000	30270
province	NW	2016	 40 001 - 50 000	40909
province	NW	2016	 50 001 - 100 000	51207
province	NW	2016	 100 001 - 150 000	101111
province	NW	2016	 150 001 - 200 000	153846
province	NW	2016	 200 001 - 300 000	213333
province	NW	2016	 300 001 - 500 000	320215
province	NW	2016	 500 001 - 800 000	556777
province	NW	2016	 800 001 - 1 000 000	821667
province	NW	2016	 > 1 000 000	\N
province	WC	2016	 < 1 500	30
province	WC	2016	 1 501 - 3 000	1547
province	WC	2016	 3 001 - 5 000	3023
province	WC	2016	 5 001 - 10 000	5019
province	WC	2016	 10 001 - 20 000	10020
province	WC	2016	 20 001 - 30 000	20431
province	WC	2016	 30 001 - 40 000	30888
province	WC	2016	 40 001 - 50 000	40115
province	WC	2016	 50 001 - 100 000	50070
province	WC	2016	 100 001 - 150 000	103774
province	WC	2016	 150 001 - 200 000	152381
province	WC	2016	 200 001 - 300 000	203125
province	WC	2016	 300 001 - 500 000	320225
province	WC	2016	 500 001 - 800 000	515098
province	WC	2016	 800 001 - 1 000 000	871205
province	WC	2016	 > 1 000 000	1250000
\.


--
-- PostgreSQL database dump complete
--

