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

DROP TABLE public.landsalesdistributionpricetrends;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionpricetrends; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributionpricetrends (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total numeric
);


ALTER TABLE public.landsalesdistributionpricetrends OWNER TO our_land;

--
-- Data for Name: landsalesdistributionpricetrends; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributionpricetrends (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	 < 1 500	-22
country	ZA	2016	 1 501 - 3 000	-1
country	ZA	2016	 3 001 - 5 000	9
country	ZA	2016	 5 001 - 10 000	-28
country	ZA	2016	 10 001 - 20 000	-11
country	ZA	2016	 20 001 - 30 000	46
country	ZA	2016	 30 001 - 40 000	-3
country	ZA	2016	 40 001 - 50 000	16
country	ZA	2016	 50 001 - 100 000	29
country	ZA	2016	 100 001 - 150 000	-283
country	ZA	2016	 150 001 - 200 000	-513
country	ZA	2016	 200 001 - 300 000	-625
country	ZA	2016	 300 001 - 500 000	1523
country	ZA	2016	 500 001 - 800 000	3843
country	ZA	2016	 800 001 - 1 000 000	4491
country	ZA	2016	 > 1 000 000	-914413
province	EC	2016	 < 1 500	-13
province	EC	2016	 1 501 - 3 000	-19
province	EC	2016	 3 001 - 5 000	69
province	EC	2016	 5 001 - 10 000	-52
province	EC	2016	 10 001 - 20 000	-106
province	EC	2016	 20 001 - 30 000	-28
province	EC	2016	 30 001 - 40 000	466
province	EC	2016	 40 001 - 50 000	142
province	EC	2016	 50 001 - 100 000	926
province	EC	2016	 100 001 - 150 000	2002
province	EC	2016	 150 001 - 200 000	-3468
province	EC	2016	 200 001 - 300 000	1825
province	EC	2016	 300 001 - 500 000	5888
province	EC	2016	 500 001 - 800 000	-59346
province	EC	2016	 800 001 - 1 000 000	\N
province	EC	2016	 > 1 000 000	\N
province	FS	2016	 < 1 500	-52
province	FS	2016	 1 501 - 3 000	-24
province	FS	2016	 3 001 - 5 000	56
province	FS	2016	 5 001 - 10 000	-95
province	FS	2016	 10 001 - 20 000	-71
province	FS	2016	 20 001 - 30 000	-219
province	FS	2016	 30 001 - 40 000	-24
province	FS	2016	 40 001 - 50 000	-743
province	FS	2016	 50 001 - 100 000	-1127
province	FS	2016	 100 001 - 150 000	403
province	FS	2016	 150 001 - 200 000	-2666
province	FS	2016	 200 001 - 300 000	-4098
province	FS	2016	 300 001 - 500 000	-29325
province	FS	2016	 500 001 - 800 000	\N
province	FS	2016	 800 001 - 1 000 000	\N
province	FS	2016	 > 1 000 000	\N
province	GT	2016	 < 1 500	20
province	GT	2016	 1 501 - 3 000	\N
province	GT	2016	 3 001 - 5 000	8
province	GT	2016	 5 001 - 10 000	-165
province	GT	2016	 10 001 - 20 000	116
province	GT	2016	 20 001 - 30 000	89
province	GT	2016	 30 001 - 40 000	52
province	GT	2016	 40 001 - 50 000	-127
province	GT	2016	 50 001 - 100 000	1258
province	GT	2016	 100 001 - 150 000	1190
province	GT	2016	 150 001 - 200 000	-77
province	GT	2016	 200 001 - 300 000	1618
province	GT	2016	 300 001 - 500 000	-5696
province	GT	2016	 500 001 - 800 000	-5450
province	GT	2016	 800 001 - 1 000 000	\N
province	GT	2016	 > 1 000 000	-59816
province	KZN	2016	 < 1 500	-80
province	KZN	2016	 1 501 - 3 000	87
province	KZN	2016	 3 001 - 5 000	50
province	KZN	2016	 5 001 - 10 000	50
province	KZN	2016	 10 001 - 20 000	-23
province	KZN	2016	 20 001 - 30 000	-165
province	KZN	2016	 30 001 - 40 000	-180
province	KZN	2016	 40 001 - 50 000	91
province	KZN	2016	 50 001 - 100 000	14
province	KZN	2016	 100 001 - 150 000	-506
province	KZN	2016	 150 001 - 200 000	1487
province	KZN	2016	 200 001 - 300 000	-266
province	KZN	2016	 300 001 - 500 000	2646
province	KZN	2016	 500 001 - 800 000	12500
province	KZN	2016	 800 001 - 1 000 000	\N
province	KZN	2016	 > 1 000 000	-2992012
province	LIM	2016	 < 1 500	90
province	LIM	2016	 1 501 - 3 000	41
province	LIM	2016	 3 001 - 5 000	-35
province	LIM	2016	 5 001 - 10 000	-107
province	LIM	2016	 10 001 - 20 000	-17
province	LIM	2016	 20 001 - 30 000	-175
province	LIM	2016	 30 001 - 40 000	-175
province	LIM	2016	 40 001 - 50 000	-94
province	LIM	2016	 50 001 - 100 000	588
province	LIM	2016	 100 001 - 150 000	-2402
province	LIM	2016	 150 001 - 200 000	-51
province	LIM	2016	 200 001 - 300 000	-3580
province	LIM	2016	 300 001 - 500 000	-1392
province	LIM	2016	 500 001 - 800 000	24754
province	LIM	2016	 800 001 - 1 000 000	\N
province	LIM	2016	 > 1 000 000	\N
province	MP	2016	 < 1 500	300
province	MP	2016	 1 501 - 3 000	60
province	MP	2016	 3 001 - 5 000	49
province	MP	2016	 5 001 - 10 000	24
province	MP	2016	 10 001 - 20 000	123
province	MP	2016	 20 001 - 30 000	506
province	MP	2016	 30 001 - 40 000	458
province	MP	2016	 40 001 - 50 000	-39
province	MP	2016	 50 001 - 100 000	-665
province	MP	2016	 100 001 - 150 000	839
province	MP	2016	 150 001 - 200 000	3395
province	MP	2016	 200 001 - 300 000	1931
province	MP	2016	 300 001 - 500 000	1369
province	MP	2016	 500 001 - 800 000	8229
province	MP	2016	 800 001 - 1 000 000	\N
province	MP	2016	 > 1 000 000	\N
province	NC	2016	 < 1 500	-22
province	NC	2016	 1 501 - 3 000	-16
province	NC	2016	 3 001 - 5 000	-52
province	NC	2016	 5 001 - 10 000	73
province	NC	2016	 10 001 - 20 000	69
province	NC	2016	 20 001 - 30 000	-7158
province	NC	2016	 30 001 - 40 000	\N
province	NC	2016	 40 001 - 50 000	\N
province	NC	2016	 50 001 - 100 000	-1691
province	NC	2016	 100 001 - 150 000	-1047
province	NC	2016	 150 001 - 200 000	-1091
province	NC	2016	 200 001 - 300 000	715
province	NC	2016	 300 001 - 500 000	199
province	NC	2016	 500 001 - 800 000	-17097
province	NC	2016	 800 001 - 1 000 000	\N
province	NC	2016	 > 1 000 000	\N
province	NW	2016	 < 1 500	76
province	NW	2016	 1 501 - 3 000	28
province	NW	2016	 3 001 - 5 000	-8
province	NW	2016	 5 001 - 10 000	120
province	NW	2016	 10 001 - 20 000	-9
province	NW	2016	 20 001 - 30 000	-138
province	NW	2016	 30 001 - 40 000	4
province	NW	2016	 40 001 - 50 000	113
province	NW	2016	 50 001 - 100 000	-234
province	NW	2016	 100 001 - 150 000	896
province	NW	2016	 150 001 - 200 000	542
province	NW	2016	 200 001 - 300 000	4862
province	NW	2016	 300 001 - 500 000	1519
province	NW	2016	 500 001 - 800 000	-6678
province	NW	2016	 800 001 - 1 000 000	609
province	NW	2016	 > 1 000 000	\N
province	WC	2016	 < 1 500	1
province	WC	2016	 1 501 - 3 000	3
province	WC	2016	 3 001 - 5 000	27
province	WC	2016	 5 001 - 10 000	-60
province	WC	2016	 10 001 - 20 000	-5
province	WC	2016	 20 001 - 30 000	187
province	WC	2016	 30 001 - 40 000	187
province	WC	2016	 40 001 - 50 000	-39
province	WC	2016	 50 001 - 100 000	-562
province	WC	2016	 100 001 - 150 000	-1275
province	WC	2016	 150 001 - 200 000	826
province	WC	2016	 200 001 - 300 000	-1269
province	WC	2016	 300 001 - 500 000	2274
province	WC	2016	 500 001 - 800 000	-14479
province	WC	2016	 800 001 - 1 000 000	\N
province	WC	2016	 > 1 000 000	133675
\.


--
-- PostgreSQL database dump complete
--

