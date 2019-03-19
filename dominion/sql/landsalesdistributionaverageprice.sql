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

ALTER TABLE IF EXISTS ONLY public.landsalesdistributionaverageprice DROP CONSTRAINT IF EXISTS pk_landsalesdistributionaverageprice;
DROP TABLE IF EXISTS public.landsalesdistributionaverageprice;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionaverageprice; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landsalesdistributionaverageprice (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class_distribution_average_price character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: landsalesdistributionaverageprice; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landsalesdistributionaverageprice (geo_level, geo_code, geo_version, class_distribution_average_price, total) FROM stdin;
country	ZA	2016	Under 1.5K	706
country	ZA	2016	1,501-3K	2238
country	ZA	2016	3,001-5K	3989
country	ZA	2016	5,001-10K	7149
country	ZA	2016	10,001-20K	13836
country	ZA	2016	20,001-30K	24891
country	ZA	2016	30,001-40K	34543
country	ZA	2016	40,001-50K	45446
country	ZA	2016	50,001-100K	68861
country	ZA	2016	100,001-150K	122248
country	ZA	2016	150,001-200K	172294
country	ZA	2016	200,001-300K	250528
country	ZA	2016	300,001-500K	360276
country	ZA	2016	500,001-800K	641887
country	ZA	2016	800,001-1M	912104
country	ZA	2016	Above 1M	4736815
province	EC	2016	Under 1.5K	776
province	EC	2016	1,501-3K	2441
province	EC	2016	3,001-5K	4146
province	EC	2016	5,001-10K	6958
province	EC	2016	10,001-20K	13534
province	EC	2016	20,001-30K	25269
province	EC	2016	30,001-40K	32829
province	EC	2016	40,001-50K	45329
province	EC	2016	50,001-100K	73010
province	EC	2016	100,001-150K	126542
province	EC	2016	150,001-200K	175695
province	EC	2016	200,001-300K	253117
province	EC	2016	300,001-500K	350782
province	EC	2016	500,001-800K	606499
province	EC	2016	800,001-1M	836000
province	EC	2016	Above 1M	1083333
province	FS	2016	Under 1.5K	719
province	FS	2016	1,501-3K	2395
province	FS	2016	3,001-5K	4017
province	FS	2016	5,001-10K	7258
province	FS	2016	10,001-20K	13743
province	FS	2016	20,001-30K	25276
province	FS	2016	30,001-40K	34490
province	FS	2016	40,001-50K	45119
province	FS	2016	50,001-100K	70831
province	FS	2016	100,001-150K	117665
province	FS	2016	150,001-200K	172359
province	FS	2016	200,001-300K	254513
province	FS	2016	300,001-500K	345675
province	FS	2016	500,001-800K	583333
province	FS	2016	800,001-1M	\N
province	FS	2016	Above 1M	\N
province	GT	2016	Under 1.5K	524
province	GT	2016	1,501-3K	1852
province	GT	2016	3,001-5K	3373
province	GT	2016	5,001-10K	7361
province	GT	2016	10,001-20K	14367
province	GT	2016	20,001-30K	24296
province	GT	2016	30,001-40K	35046
province	GT	2016	40,001-50K	45202
province	GT	2016	50,001-100K	71878
province	GT	2016	100,001-150K	122066
province	GT	2016	150,001-200K	175534
province	GT	2016	200,001-300K	240466
province	GT	2016	300,001-500K	364701
province	GT	2016	500,001-800K	643324
province	GT	2016	800,001-1M	940000
province	GT	2016	Above 1M	2742667
province	KZN	2016	Under 1.5K	693
province	KZN	2016	1,501-3K	2419
province	KZN	2016	3,001-5K	3844
province	KZN	2016	5,001-10K	7327
province	KZN	2016	10,001-20K	13310
province	KZN	2016	20,001-30K	25677
province	KZN	2016	30,001-40K	34404
province	KZN	2016	40,001-50K	46321
province	KZN	2016	50,001-100K	72240
province	KZN	2016	100,001-150K	119707
province	KZN	2016	150,001-200K	175242
province	KZN	2016	200,001-300K	245782
province	KZN	2016	300,001-500K	386730
province	KZN	2016	500,001-800K	643056
province	KZN	2016	800,001-1M	882000
province	KZN	2016	Above 1M	13751598
province	LIM	2016	Under 1.5K	654
province	LIM	2016	1,501-3K	2059
province	LIM	2016	3,001-5K	4137
province	LIM	2016	5,001-10K	7361
province	LIM	2016	10,001-20K	14178
province	LIM	2016	20,001-30K	23843
province	LIM	2016	30,001-40K	33881
province	LIM	2016	40,001-50K	44913
province	LIM	2016	50,001-100K	71730
province	LIM	2016	100,001-150K	124505
province	LIM	2016	150,001-200K	172242
province	LIM	2016	200,001-300K	249596
province	LIM	2016	300,001-500K	359928
province	LIM	2016	500,001-800K	641380
province	LIM	2016	800,001-1M	948276
province	LIM	2016	Above 1M	2615732
province	MP	2016	Under 1.5K	896
province	MP	2016	1,501-3K	2342
province	MP	2016	3,001-5K	4343
province	MP	2016	5,001-10K	8472
province	MP	2016	10,001-20K	14416
province	MP	2016	20,001-30K	24867
province	MP	2016	30,001-40K	35370
province	MP	2016	40,001-50K	44188
province	MP	2016	50,001-100K	68667
province	MP	2016	100,001-150K	126803
province	MP	2016	150,001-200K	170204
province	MP	2016	200,001-300K	250695
province	MP	2016	300,001-500K	359080
province	MP	2016	500,001-800K	524320
province	MP	2016	800,001-1M	\N
province	MP	2016	Above 1M	\N
province	NC	2016	Under 1.5K	754
province	NC	2016	1,501-3K	2228
province	NC	2016	3,001-5K	3875
province	NC	2016	5,001-10K	6329
province	NC	2016	10,001-20K	13128
province	NC	2016	20,001-30K	24992
province	NC	2016	30,001-40K	\N
province	NC	2016	40,001-50K	\N
province	NC	2016	50,001-100K	68693
province	NC	2016	100,001-150K	112148
province	NC	2016	150,001-200K	181187
province	NC	2016	200,001-300K	254643
province	NC	2016	300,001-500K	330132
province	NC	2016	500,001-800K	591567
province	NC	2016	800,001-1M	939394
province	NC	2016	Above 1M	1086957
province	NW	2016	Under 1.5K	568
province	NW	2016	1,501-3K	2296
province	NW	2016	3,001-5K	4134
province	NW	2016	5,001-10K	7063
province	NW	2016	10,001-20K	13650
province	NW	2016	20,001-30K	24824
province	NW	2016	30,001-40K	34123
province	NW	2016	40,001-50K	45267
province	NW	2016	50,001-100K	68600
province	NW	2016	100,001-150K	122228
province	NW	2016	150,001-200K	170204
province	NW	2016	200,001-300K	255788
province	NW	2016	300,001-500K	396203
province	NW	2016	500,001-800K	595573
province	NW	2016	800,001-1M	929803
province	NW	2016	Above 1M	\N
province	WC	2016	Under 1.5K	662
province	WC	2016	1,501-3K	2161
province	WC	2016	3,001-5K	3788
province	WC	2016	5,001-10K	7372
province	WC	2016	10,001-20K	13920
province	WC	2016	20,001-30K	24232
province	WC	2016	30,001-40K	36184
province	WC	2016	40,001-50K	45931
province	WC	2016	50,001-100K	71134
province	WC	2016	100,001-150K	122027
province	WC	2016	150,001-200K	172538
province	WC	2016	200,001-300K	253472
province	WC	2016	300,001-500K	371384
province	WC	2016	500,001-800K	617252
province	WC	2016	800,001-1M	871205
province	WC	2016	Above 1M	2014205
\.

--
-- Name: landownership pk_landsalesdistributionaverageprice; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landsalesdistributionaverageprice
    ADD CONSTRAINT pk_landsalesdistributionaverageprice PRIMARY KEY (geo_level, geo_code, geo_version, class_distribution_average_price);

--
-- PostgreSQL database dump complete
--

