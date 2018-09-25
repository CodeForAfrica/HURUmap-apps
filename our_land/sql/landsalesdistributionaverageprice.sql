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

DROP TABLE public.landsalesdistributionaverageprice;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionaverageprice; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributionaverageprice (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total numeric
);


ALTER TABLE public.landsalesdistributionaverageprice OWNER TO our_land;

--
-- Data for Name: landsalesdistributionaverageprice; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributionaverageprice (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	 < 1 500	706
country	ZA	2016	 1 501 - 3 000	2238
country	ZA	2016	 3 001 - 5 000	3989
country	ZA	2016	 5 001 - 10 000	7149
country	ZA	2016	 10 001 - 20 000	13836
country	ZA	2016	 20 001 - 30 000	24891
country	ZA	2016	 30 001 - 40 000	34543
country	ZA	2016	 40 001 - 50 000	45446
country	ZA	2016	 50 001 - 100 000	68861
country	ZA	2016	 100 001 - 150 000	122248
country	ZA	2016	 150 001 - 200 000	172294
country	ZA	2016	 200 001 - 300 000	250528
country	ZA	2016	 300 001 - 500 000	360276
country	ZA	2016	 500 001 - 800 000	641887
country	ZA	2016	 800 001 - 1 000 000	912104
country	ZA	2016	 > 1 000 000	4736815
province	EC	2016	 < 1 500	776
province	EC	2016	 1 501 - 3 000	2441
province	EC	2016	 3 001 - 5 000	4146
province	EC	2016	 5 001 - 10 000	6958
province	EC	2016	 10 001 - 20 000	13534
province	EC	2016	 20 001 - 30 000	25269
province	EC	2016	 30 001 - 40 000	32829
province	EC	2016	 40 001 - 50 000	45329
province	EC	2016	 50 001 - 100 000	73010
province	EC	2016	 100 001 - 150 000	126542
province	EC	2016	 150 001 - 200 000	175695
province	EC	2016	 200 001 - 300 000	253117
province	EC	2016	 300 001 - 500 000	350782
province	EC	2016	 500 001 - 800 000	606499
province	EC	2016	 800 001 - 1 000 000	836000
province	EC	2016	 > 1 000 000	1083333
province	FS	2016	 < 1 500	719
province	FS	2016	 1 501 - 3 000	2395
province	FS	2016	 3 001 - 5 000	4017
province	FS	2016	 5 001 - 10 000	7258
province	FS	2016	 10 001 - 20 000	13743
province	FS	2016	 20 001 - 30 000	25276
province	FS	2016	 30 001 - 40 000	34490
province	FS	2016	 40 001 - 50 000	45119
province	FS	2016	 50 001 - 100 000	70831
province	FS	2016	 100 001 - 150 000	117665
province	FS	2016	 150 001 - 200 000	172359
province	FS	2016	 200 001 - 300 000	254513
province	FS	2016	 300 001 - 500 000	345675
province	FS	2016	 500 001 - 800 000	583333
province	FS	2016	 800 001 - 1 000 000	\N
province	FS	2016	 > 1 000 000	\N
province	GT	2016	 < 1 500	524
province	GT	2016	 1 501 - 3 000	1852
province	GT	2016	 3 001 - 5 000	3373
province	GT	2016	 5 001 - 10 000	7361
province	GT	2016	 10 001 - 20 000	14367
province	GT	2016	 20 001 - 30 000	24296
province	GT	2016	 30 001 - 40 000	35046
province	GT	2016	 40 001 - 50 000	45202
province	GT	2016	 50 001 - 100 000	71878
province	GT	2016	 100 001 - 150 000	122066
province	GT	2016	 150 001 - 200 000	175534
province	GT	2016	 200 001 - 300 000	240466
province	GT	2016	 300 001 - 500 000	364701
province	GT	2016	 500 001 - 800 000	643324
province	GT	2016	 800 001 - 1 000 000	940000
province	GT	2016	 > 1 000 000	2742667
province	KZN	2016	 < 1 500	693
province	KZN	2016	 1 501 - 3 000	2419
province	KZN	2016	 3 001 - 5 000	3844
province	KZN	2016	 5 001 - 10 000	7327
province	KZN	2016	 10 001 - 20 000	13310
province	KZN	2016	 20 001 - 30 000	25677
province	KZN	2016	 30 001 - 40 000	34404
province	KZN	2016	 40 001 - 50 000	46321
province	KZN	2016	 50 001 - 100 000	72240
province	KZN	2016	 100 001 - 150 000	119707
province	KZN	2016	 150 001 - 200 000	175242
province	KZN	2016	 200 001 - 300 000	245782
province	KZN	2016	 300 001 - 500 000	386730
province	KZN	2016	 500 001 - 800 000	643056
province	KZN	2016	 800 001 - 1 000 000	882000
province	KZN	2016	 > 1 000 000	13751598
province	LIM	2016	 < 1 500	654
province	LIM	2016	 1 501 - 3 000	2059
province	LIM	2016	 3 001 - 5 000	4137
province	LIM	2016	 5 001 - 10 000	7361
province	LIM	2016	 10 001 - 20 000	14178
province	LIM	2016	 20 001 - 30 000	23843
province	LIM	2016	 30 001 - 40 000	33881
province	LIM	2016	 40 001 - 50 000	44913
province	LIM	2016	 50 001 - 100 000	71730
province	LIM	2016	 100 001 - 150 000	124505
province	LIM	2016	 150 001 - 200 000	172242
province	LIM	2016	 200 001 - 300 000	249596
province	LIM	2016	 300 001 - 500 000	359928
province	LIM	2016	 500 001 - 800 000	641380
province	LIM	2016	 800 001 - 1 000 000	948276
province	LIM	2016	 > 1 000 000	2615732
province	MP	2016	 < 1 500	896
province	MP	2016	 1 501 - 3 000	2342
province	MP	2016	 3 001 - 5 000	4343
province	MP	2016	 5 001 - 10 000	8472
province	MP	2016	 10 001 - 20 000	14416
province	MP	2016	 20 001 - 30 000	24867
province	MP	2016	 30 001 - 40 000	35370
province	MP	2016	 40 001 - 50 000	44188
province	MP	2016	 50 001 - 100 000	68667
province	MP	2016	 100 001 - 150 000	126803
province	MP	2016	 150 001 - 200 000	170204
province	MP	2016	 200 001 - 300 000	250695
province	MP	2016	 300 001 - 500 000	359080
province	MP	2016	 500 001 - 800 000	524320
province	MP	2016	 800 001 - 1 000 000	\N
province	MP	2016	 > 1 000 000	\N
province	NC	2016	 < 1 500	754
province	NC	2016	 1 501 - 3 000	2228
province	NC	2016	 3 001 - 5 000	3875
province	NC	2016	 5 001 - 10 000	6329
province	NC	2016	 10 001 - 20 000	13128
province	NC	2016	 20 001 - 30 000	24992
province	NC	2016	 30 001 - 40 000	\N
province	NC	2016	 40 001 - 50 000	\N
province	NC	2016	 50 001 - 100 000	68693
province	NC	2016	 100 001 - 150 000	112148
province	NC	2016	 150 001 - 200 000	181187
province	NC	2016	 200 001 - 300 000	254643
province	NC	2016	 300 001 - 500 000	330132
province	NC	2016	 500 001 - 800 000	591567
province	NC	2016	 800 001 - 1 000 000	939394
province	NC	2016	 > 1 000 000	1086957
province	NW	2016	 < 1 500	568
province	NW	2016	 1 501 - 3 000	2296
province	NW	2016	 3 001 - 5 000	4134
province	NW	2016	 5 001 - 10 000	7063
province	NW	2016	 10 001 - 20 000	13650
province	NW	2016	 20 001 - 30 000	24824
province	NW	2016	 30 001 - 40 000	34123
province	NW	2016	 40 001 - 50 000	45267
province	NW	2016	 50 001 - 100 000	68600
province	NW	2016	 100 001 - 150 000	122228
province	NW	2016	 150 001 - 200 000	170204
province	NW	2016	 200 001 - 300 000	255788
province	NW	2016	 300 001 - 500 000	396203
province	NW	2016	 500 001 - 800 000	595573
province	NW	2016	 800 001 - 1 000 000	929803
province	NW	2016	 > 1 000 000	\N
province	WC	2016	 < 1 500	662
province	WC	2016	 1 501 - 3 000	2161
province	WC	2016	 3 001 - 5 000	3788
province	WC	2016	 5 001 - 10 000	7372
province	WC	2016	 10 001 - 20 000	13920
province	WC	2016	 20 001 - 30 000	24232
province	WC	2016	 30 001 - 40 000	36184
province	WC	2016	 40 001 - 50 000	45931
province	WC	2016	 50 001 - 100 000	71134
province	WC	2016	 100 001 - 150 000	122027
province	WC	2016	 150 001 - 200 000	172538
province	WC	2016	 200 001 - 300 000	253472
province	WC	2016	 300 001 - 500 000	371384
province	WC	2016	 500 001 - 800 000	617252
province	WC	2016	 800 001 - 1 000 000	871205
province	WC	2016	 > 1 000 000	2014205
\.


--
-- PostgreSQL database dump complete
--

