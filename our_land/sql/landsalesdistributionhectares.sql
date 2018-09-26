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

DROP TABLE IF EXISTS public.landsalesdistributionhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionhectares; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributionhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.landsalesdistributionhectares OWNER TO our_land;

--
-- Data for Name: landsalesdistributionhectares; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributionhectares (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	less than 1 500	438972
country	ZA	2016	1 501 - 3 000	454975
country	ZA	2016	3 001 - 5 000	255796
country	ZA	2016	5 001 - 10 000	440024
country	ZA	2016	10 001 - 20 000	276738
country	ZA	2016	20 001 - 30 000	113412
country	ZA	2016	30 001 - 40 000	31177
country	ZA	2016	40 001 - 50 000	23491
country	ZA	2016	50 001 - 100 000	50698
country	ZA	2016	100 001 - 150 000	11089
country	ZA	2016	150 001 - 200 000	9932
country	ZA	2016	200 001 - 300 000	4962
country	ZA	2016	300 001 - 500 000	3680
country	ZA	2016	500 001 - 800 000	1749
country	ZA	2016	800 001 - 1 000 000	244
country	ZA	2016	greater than 1 000 000	686
province	EC	2016	less than 1 500	27982
province	EC	2016	1 501 - 3 000	54318
province	EC	2016	3 001 - 5 000	65186
province	EC	2016	5 001 - 10 000	75185
province	EC	2016	10 001 - 20 000	15261
province	EC	2016	20 001 - 30 000	7888
province	EC	2016	30 001 - 40 000	1307
province	EC	2016	40 001 - 50 000	1952
province	EC	2016	50 001 - 100 000	2110
province	EC	2016	100 001 - 150 000	344
province	EC	2016	150 001 - 200 000	473
province	EC	2016	200 001 - 300 000	180
province	EC	2016	300 001 - 500 000	546
province	EC	2016	500 001 - 800 000	144
province	EC	2016	800 001 - 1 000 000	15
province	EC	2016	greater than 1 000 000	12
province	FS	2016	less than 1 500	4266
province	FS	2016	1 501 - 3 000	13492
province	FS	2016	3 001 - 5 000	44390
province	FS	2016	5 001 - 10 000	87983
province	FS	2016	10 001 - 20 000	72915
province	FS	2016	20 001 - 30 000	23370
province	FS	2016	30 001 - 40 000	4905
province	FS	2016	40 001 - 50 000	2540
province	FS	2016	50 001 - 100 000	2753
province	FS	2016	100 001 - 150 000	259
province	FS	2016	150 001 - 200 000	3840
province	FS	2016	200 001 - 300 000	240
province	FS	2016	300 001 - 500 000	40
province	FS	2016	500 001 - 800 000	12
province	FS	2016	800 001 - 1 000 000	\N
province	FS	2016	greater than 1 000 000	\N
province	GT	2016	less than 1 500	511
province	GT	2016	1 501 - 3 000	27
province	GT	2016	3 001 - 5 000	308
province	GT	2016	5 001 - 10 000	10544
province	GT	2016	10 001 - 20 000	16200
province	GT	2016	20 001 - 30 000	4904
province	GT	2016	30 001 - 40 000	3662
province	GT	2016	40 001 - 50 000	3293
province	GT	2016	50 001 - 100 000	3012
province	GT	2016	100 001 - 150 000	647
province	GT	2016	150 001 - 200 000	287
province	GT	2016	200 001 - 300 000	618
province	GT	2016	300 001 - 500 000	370
province	GT	2016	500 001 - 800 000	119
province	GT	2016	800 001 - 1 000 000	20
province	GT	2016	greater than 1 000 000	298
province	KZN	2016	less than 1 500	13619
province	KZN	2016	1 501 - 3 000	2716
province	KZN	2016	3 001 - 5 000	6675
province	KZN	2016	5 001 - 10 000	28571
province	KZN	2016	10 001 - 20 000	32801
province	KZN	2016	20 001 - 30 000	14506
province	KZN	2016	30 001 - 40 000	3506
province	KZN	2016	40 001 - 50 000	3229
province	KZN	2016	50 001 - 100 000	15559
province	KZN	2016	100 001 - 150 000	2110
province	KZN	2016	150 001 - 200 000	344
province	KZN	2016	200 001 - 300 000	356
province	KZN	2016	300 001 - 500 000	261
province	KZN	2016	500 001 - 800 000	306
province	KZN	2016	800 001 - 1 000 000	19
province	KZN	2016	greater than 1 000 000	58
province	LIM	2016	less than 1 500	6997
province	LIM	2016	1 501 - 3 000	6090
province	LIM	2016	3 001 - 5 000	19097
province	LIM	2016	5 001 - 10 000	56297
province	LIM	2016	10 001 - 20 000	42962
province	LIM	2016	20 001 - 30 000	15979
province	LIM	2016	30 001 - 40 000	3547
province	LIM	2016	40 001 - 50 000	1036
province	LIM	2016	50 001 - 100 000	4906
province	LIM	2016	100 001 - 150 000	1056
province	LIM	2016	150 001 - 200 000	635
province	LIM	2016	200 001 - 300 000	258
province	LIM	2016	300 001 - 500 000	141
province	LIM	2016	500 001 - 800 000	409
province	LIM	2016	800 001 - 1 000 000	58
province	LIM	2016	greater than 1 000 000	157
province	MP	2016	less than 1 500	1805
province	MP	2016	1 501 - 3 000	1803
province	MP	2016	3 001 - 5 000	2648
province	MP	2016	5 001 - 10 000	25464
province	MP	2016	10 001 - 20 000	26892
province	MP	2016	20 001 - 30 000	17166
province	MP	2016	30 001 - 40 000	7573
province	MP	2016	40 001 - 50 000	4172
province	MP	2016	50 001 - 100 000	7628
province	MP	2016	100 001 - 150 000	2798
province	MP	2016	150 001 - 200 000	756
province	MP	2016	200 001 - 300 000	627
province	MP	2016	300 001 - 500 000	644
province	MP	2016	500 001 - 800 000	45
province	MP	2016	800 001 - 1 000 000	\N
province	MP	2016	greater than 1 000 000	\N
province	NC	2016	less than 1 500	299033
province	NC	2016	1 501 - 3 000	306256
province	NC	2016	3 001 - 5 000	63196
province	NC	2016	5 001 - 10 000	28272
province	NC	2016	10 001 - 20 000	2985
province	NC	2016	20 001 - 30 000	540
province	NC	2016	30 001 - 40 000	\N
province	NC	2016	40 001 - 50 000	\N
province	NC	2016	50 001 - 100 000	853
province	NC	2016	100 001 - 150 000	664
province	NC	2016	150 001 - 200 000	1154
province	NC	2016	200 001 - 300 000	1085
province	NC	2016	300 001 - 500 000	417
province	NC	2016	500 001 - 800 000	39
province	NC	2016	800 001 - 1 000 000	33
province	NC	2016	greater than 1 000 000	46
province	NW	2016	less than 1 500	3726
province	NW	2016	1 501 - 3 000	5790
province	NW	2016	3 001 - 5 000	33294
province	NW	2016	5 001 - 10 000	86920
province	NW	2016	10 001 - 20 000	42414
province	NW	2016	20 001 - 30 000	11234
province	NW	2016	30 001 - 40 000	3038
province	NW	2016	40 001 - 50 000	1910
province	NW	2016	50 001 - 100 000	3885
province	NW	2016	100 001 - 150 000	880
province	NW	2016	150 001 - 200 000	214
province	NW	2016	200 001 - 300 000	108
province	NW	2016	300 001 - 500 000	195
province	NW	2016	500 001 - 800 000	119
province	NW	2016	800 001 - 1 000 000	60
province	NW	2016	greater than 1 000 000	\N
province	WC	2016	less than 1 500	81033
province	WC	2016	1 501 - 3 000	64483
province	WC	2016	3 001 - 5 000	21002
province	WC	2016	5 001 - 10 000	40788
province	WC	2016	10 001 - 20 000	24308
province	WC	2016	20 001 - 30 000	17825
province	WC	2016	30 001 - 40 000	3639
province	WC	2016	40 001 - 50 000	5359
province	WC	2016	50 001 - 100 000	9992
province	WC	2016	100 001 - 150 000	2331
province	WC	2016	150 001 - 200 000	2229
province	WC	2016	200 001 - 300 000	1490
province	WC	2016	300 001 - 500 000	1066
province	WC	2016	500 001 - 800 000	556
province	WC	2016	800 001 - 1 000 000	39
province	WC	2016	greater than 1 000 000	115
\.


--
-- PostgreSQL database dump complete
--
