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

DROP TABLE IF EXISTS public.landsalesdistributionhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionhectares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landsalesdistributionhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class_distribution_hectares character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landsalesdistributionhectares; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landsalesdistributionhectares (geo_level, geo_code, geo_version, class_distribution_hectares, total) FROM stdin;
country	ZA	2016	Under 1.5K	438972
country	ZA	2016	1,501-3K	454975
country	ZA	2016	3,001-5K	255796
country	ZA	2016	5,001-10K	440024
country	ZA	2016	10,001-20K	276738
country	ZA	2016	20,001-30K	113412
country	ZA	2016	30,001-40K	31177
country	ZA	2016	40,001-50K	23491
country	ZA	2016	50,001-100K	50698
country	ZA	2016	100,001-150K	11089
country	ZA	2016	150,001-200K	9932
country	ZA	2016	200,001-300K	4962
country	ZA	2016	300,001-500K	3680
country	ZA	2016	500,001-800K	1749
country	ZA	2016	800,001-1M	244
country	ZA	2016	Above 1M	686
province	EC	2016	Under 1.5K	27982
province	EC	2016	1,501-3K	54318
province	EC	2016	3,001-5K	65186
province	EC	2016	5,001-10K	75185
province	EC	2016	10,001-20K	15261
province	EC	2016	20,001-30K	7888
province	EC	2016	30,001-40K	1307
province	EC	2016	40,001-50K	1952
province	EC	2016	50,001-100K	2110
province	EC	2016	100,001-150K	344
province	EC	2016	150,001-200K	473
province	EC	2016	200,001-300K	180
province	EC	2016	300,001-500K	546
province	EC	2016	500,001-800K	144
province	EC	2016	800,001-1M	15
province	EC	2016	Above 1M	12
province	FS	2016	Under 1.5K	4266
province	FS	2016	1,501-3K	13492
province	FS	2016	3,001-5K	44390
province	FS	2016	5,001-10K	87983
province	FS	2016	10,001-20K	72915
province	FS	2016	20,001-30K	23370
province	FS	2016	30,001-40K	4905
province	FS	2016	40,001-50K	2540
province	FS	2016	50,001-100K	2753
province	FS	2016	100,001-150K	259
province	FS	2016	150,001-200K	3840
province	FS	2016	200,001-300K	240
province	FS	2016	300,001-500K	40
province	FS	2016	500,001-800K	12
province	FS	2016	800,001-1M	\N
province	FS	2016	Above 1M	\N
province	GT	2016	Under 1.5K	511
province	GT	2016	1,501-3K	27
province	GT	2016	3,001-5K	308
province	GT	2016	5,001-10K	10544
province	GT	2016	10,001-20K	16200
province	GT	2016	20,001-30K	4904
province	GT	2016	30,001-40K	3662
province	GT	2016	40,001-50K	3293
province	GT	2016	50,001-100K	3012
province	GT	2016	100,001-150K	647
province	GT	2016	150,001-200K	287
province	GT	2016	200,001-300K	618
province	GT	2016	300,001-500K	370
province	GT	2016	500,001-800K	119
province	GT	2016	800,001-1M	20
province	GT	2016	Above 1M	298
province	KZN	2016	Under 1.5K	13619
province	KZN	2016	1,501-3K	2716
province	KZN	2016	3,001-5K	6675
province	KZN	2016	5,001-10K	28571
province	KZN	2016	10,001-20K	32801
province	KZN	2016	20,001-30K	14506
province	KZN	2016	30,001-40K	3506
province	KZN	2016	40,001-50K	3229
province	KZN	2016	50,001-100K	15559
province	KZN	2016	100,001-150K	2110
province	KZN	2016	150,001-200K	344
province	KZN	2016	200,001-300K	356
province	KZN	2016	300,001-500K	261
province	KZN	2016	500,001-800K	306
province	KZN	2016	800,001-1M	19
province	KZN	2016	Above 1M	58
province	LIM	2016	Under 1.5K	6997
province	LIM	2016	1,501-3K	6090
province	LIM	2016	3,001-5K	19097
province	LIM	2016	5,001-10K	56297
province	LIM	2016	10,001-20K	42962
province	LIM	2016	20,001-30K	15979
province	LIM	2016	30,001-40K	3547
province	LIM	2016	40,001-50K	1036
province	LIM	2016	50,001-100K	4906
province	LIM	2016	100,001-150K	1056
province	LIM	2016	150,001-200K	635
province	LIM	2016	200,001-300K	258
province	LIM	2016	300,001-500K	141
province	LIM	2016	500,001-800K	409
province	LIM	2016	800,001-1M	58
province	LIM	2016	Above 1M	157
province	MP	2016	Under 1.5K	1805
province	MP	2016	1,501-3K	1803
province	MP	2016	3,001-5K	2648
province	MP	2016	5,001-10K	25464
province	MP	2016	10,001-20K	26892
province	MP	2016	20,001-30K	17166
province	MP	2016	30,001-40K	7573
province	MP	2016	40,001-50K	4172
province	MP	2016	50,001-100K	7628
province	MP	2016	100,001-150K	2798
province	MP	2016	150,001-200K	756
province	MP	2016	200,001-300K	627
province	MP	2016	300,001-500K	644
province	MP	2016	500,001-800K	45
province	MP	2016	800,001-1M	\N
province	MP	2016	Above 1M	\N
province	NC	2016	Under 1.5K	299033
province	NC	2016	1,501-3K	306256
province	NC	2016	3,001-5K	63196
province	NC	2016	5,001-10K	28272
province	NC	2016	10,001-20K	2985
province	NC	2016	20,001-30K	540
province	NC	2016	30,001-40K	\N
province	NC	2016	40,001-50K	\N
province	NC	2016	50,001-100K	853
province	NC	2016	100,001-150K	664
province	NC	2016	150,001-200K	1154
province	NC	2016	200,001-300K	1085
province	NC	2016	300,001-500K	417
province	NC	2016	500,001-800K	39
province	NC	2016	800,001-1M	33
province	NC	2016	Above 1M	46
province	NW	2016	Under 1.5K	3726
province	NW	2016	1,501-3K	5790
province	NW	2016	3,001-5K	33294
province	NW	2016	5,001-10K	86920
province	NW	2016	10,001-20K	42414
province	NW	2016	20,001-30K	11234
province	NW	2016	30,001-40K	3038
province	NW	2016	40,001-50K	1910
province	NW	2016	50,001-100K	3885
province	NW	2016	100,001-150K	880
province	NW	2016	150,001-200K	214
province	NW	2016	200,001-300K	108
province	NW	2016	300,001-500K	195
province	NW	2016	500,001-800K	119
province	NW	2016	800,001-1M	60
province	NW	2016	Above 1M	\N
province	WC	2016	Under 1.5K	81033
province	WC	2016	1,501-3K	64483
province	WC	2016	3,001-5K	21002
province	WC	2016	5,001-10K	40788
province	WC	2016	10,001-20K	24308
province	WC	2016	20,001-30K	17825
province	WC	2016	30,001-40K	3639
province	WC	2016	40,001-50K	5359
province	WC	2016	50,001-100K	9992
province	WC	2016	100,001-150K	2331
province	WC	2016	150,001-200K	2229
province	WC	2016	200,001-300K	1490
province	WC	2016	300,001-500K	1066
province	WC	2016	500,001-800K	556
province	WC	2016	800,001-1M	39
province	WC	2016	Above 1M	115
\.


--
-- PostgreSQL database dump complete
--

