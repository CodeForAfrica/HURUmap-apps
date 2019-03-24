--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

DROP TABLE IF EXISTS public.land_traded_per_class_statistic_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_traded_per_class_statistic_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_traded_per_class_statistic_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    class_distribution character varying(128) NOT NULL,
    name character varying(128) NOT NULL,
    statistic character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: land_traded_per_class_statistic_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_per_class_statistic_2018 (geo_level, geo_code, geo_version, class_distribution, name, statistic, total) FROM stdin;
country	ZA	2009	Under 1.5K	South Africa	Number of transactions in 12 months	171
country	ZA	2009	1,501-3K	South Africa	Number of transactions in 12 months	220
country	ZA	2009	3,001-5K	South Africa	Number of transactions in 12 months	281
country	ZA	2009	5,001-10K	South Africa	Number of transactions in 12 months	684
country	ZA	2009	10,001-20K	South Africa	Number of transactions in 12 months	824
country	ZA	2009	20,001-30K	South Africa	Number of transactions in 12 months	404
country	ZA	2009	30,001-40K	South Africa	Number of transactions in 12 months	226
country	ZA	2009	40,001-50K	South Africa	Number of transactions in 12 months	205
country	ZA	2009	50,001-100K	South Africa	Number of transactions in 12 months	500
country	ZA	2009	100,001-150K	South Africa	Number of transactions in 12 months	225
country	ZA	2009	150,001-200K	South Africa	Number of transactions in 12 months	118
country	ZA	2009	200,001-300K	South Africa	Number of transactions in 12 months	119
country	ZA	2009	300,001-500K	South Africa	Number of transactions in 12 months	79
country	ZA	2009	500,001-800K	South Africa	Number of transactions in 12 months	42
country	ZA	2009	800,001-1M	South Africa	Number of transactions in 12 months	10
country	ZA	2009	Above 1M	South Africa	Number of transactions in 12 months	34
country	ZA	2009	Under 1.5K	South Africa	Total hectare traded in 12 months(ha)	425530
country	ZA	2009	1,501-3K	South Africa	Total hectare traded in 12 months(ha)	389990
country	ZA	2009	3,001-5K	South Africa	Total hectare traded in 12 months(ha)	282942
country	ZA	2009	5,001-10K	South Africa	Total hectare traded in 12 months(ha)	424410
country	ZA	2009	10,001-20K	South Africa	Total hectare traded in 12 months(ha)	271598
country	ZA	2009	20,001-30K	South Africa	Total hectare traded in 12 months(ha)	112244
country	ZA	2009	30,001-40K	South Africa	Total hectare traded in 12 months(ha)	34889
country	ZA	2009	40,001-50K	South Africa	Total hectare traded in 12 months(ha)	22989
country	ZA	2009	50,001-100K	South Africa	Total hectare traded in 12 months(ha)	53734
country	ZA	2009	100,001-150K	South Africa	Total hectare traded in 12 months(ha)	12440
country	ZA	2009	150,001-200K	South Africa	Total hectare traded in 12 months(ha)	10408
country	ZA	2009	200,001-300K	South Africa	Total hectare traded in 12 months(ha)	4680
country	ZA	2009	300,001-500K	South Africa	Total hectare traded in 12 months(ha)	3091
country	ZA	2009	500,001-800K	South Africa	Total hectare traded in 12 months(ha)	1907
country	ZA	2009	800,001-1M	South Africa	Total hectare traded in 12 months(ha)	363
country	ZA	2009	Above 1M	South Africa	Total hectare traded in 12 months(ha)	1300
country	ZA	2009	Under 1.5K	South Africa	Lowest price per hectare in 12 months(R/ha)	6
country	ZA	2009	1,501-3K	South Africa	Lowest price per hectare in 12 months(R/ha)	1508
country	ZA	2009	3,001-5K	South Africa	Lowest price per hectare in 12 months(R/ha)	3017
country	ZA	2009	5,001-10K	South Africa	Lowest price per hectare in 12 months(R/ha)	5002
country	ZA	2009	10,001-20K	South Africa	Lowest price per hectare in 12 months(R/ha)	10002
country	ZA	2009	20,001-30K	South Africa	Lowest price per hectare in 12 months(R/ha)	20008
country	ZA	2009	30,001-40K	South Africa	Lowest price per hectare in 12 months(R/ha)	30009
country	ZA	2009	40,001-50K	South Africa	Lowest price per hectare in 12 months(R/ha)	40198
country	ZA	2009	50,001-100K	South Africa	Lowest price per hectare in 12 months(R/ha)	50026
country	ZA	2009	100,001-150K	South Africa	Lowest price per hectare in 12 months(R/ha)	101111
country	ZA	2009	150,001-200K	South Africa	Lowest price per hectare in 12 months(R/ha)	150697
country	ZA	2009	200,001-300K	South Africa	Lowest price per hectare in 12 months(R/ha)	202381
country	ZA	2009	300,001-500K	South Africa	Lowest price per hectare in 12 months(R/ha)	302000
country	ZA	2009	500,001-800K	South Africa	Lowest price per hectare in 12 months(R/ha)	500952
country	ZA	2009	800,001-1M	South Africa	Lowest price per hectare in 12 months(R/ha)	821667
country	ZA	2009	Above 1M	South Africa	Lowest price per hectare in 12 months(R/ha)	1032000
country	ZA	2009	Under 1.5K	South Africa	Highest price per hectare in 12 months(R/ha)	1485
country	ZA	2009	1,501-3K	South Africa	Highest price per hectare in 12 months(R/ha)	3000
country	ZA	2009	3,001-5K	South Africa	Highest price per hectare in 12 months(R/ha)	5000
country	ZA	2009	5,001-10K	South Africa	Highest price per hectare in 12 months(R/ha)	10000
country	ZA	2009	10,001-20K	South Africa	Highest price per hectare in 12 months(R/ha)	20000
country	ZA	2009	20,001-30K	South Africa	Highest price per hectare in 12 months(R/ha)	30000
country	ZA	2009	30,001-40K	South Africa	Highest price per hectare in 12 months(R/ha)	40000
country	ZA	2009	40,001-50K	South Africa	Highest price per hectare in 12 months(R/ha)	50000
country	ZA	2009	50,001-100K	South Africa	Highest price per hectare in 12 months(R/ha)	100000
country	ZA	2009	100,001-150K	South Africa	Highest price per hectare in 12 months(R/ha)	150000
country	ZA	2009	150,001-200K	South Africa	Highest price per hectare in 12 months(R/ha)	200000
country	ZA	2009	200,001-300K	South Africa	Highest price per hectare in 12 months(R/ha)	300000
country	ZA	2009	300,001-500K	South Africa	Highest price per hectare in 12 months(R/ha)	500000
country	ZA	2009	500,001-800K	South Africa	Highest price per hectare in 12 months(R/ha)	791667
country	ZA	2009	800,001-1M	South Africa	Highest price per hectare in 12 months(R/ha)	1000000
country	ZA	2009	Above 1M	South Africa	Highest price per hectare in 12 months(R/ha)	11742988
country	ZA	2009	Under 1.5K	South Africa	Average price per hectare in 12 months(R/ha)	722
country	ZA	2009	1,501-3K	South Africa	Average price per hectare in 12 months(R/ha)	2217
country	ZA	2009	3,001-5K	South Africa	Average price per hectare in 12 months(R/ha)	3950
country	ZA	2009	5,001-10K	South Africa	Average price per hectare in 12 months(R/ha)	7119
country	ZA	2009	10,001-20K	South Africa	Average price per hectare in 12 months(R/ha)	13821
country	ZA	2009	20,001-30K	South Africa	Average price per hectare in 12 months(R/ha)	24891
country	ZA	2009	30,001-40K	South Africa	Average price per hectare in 12 months(R/ha)	34566
country	ZA	2009	40,001-50K	South Africa	Average price per hectare in 12 months(R/ha)	45378
country	ZA	2009	50,001-100K	South Africa	Average price per hectare in 12 months(R/ha)	69071
country	ZA	2009	100,001-150K	South Africa	Average price per hectare in 12 months(R/ha)	121214
country	ZA	2009	150,001-200K	South Africa	Average price per hectare in 12 months(R/ha)	174340
country	ZA	2009	200,001-300K	South Africa	Average price per hectare in 12 months(R/ha)	248391
country	ZA	2009	300,001-500K	South Africa	Average price per hectare in 12 months(R/ha)	374654
country	ZA	2009	500,001-800K	South Africa	Average price per hectare in 12 months(R/ha)	628564
country	ZA	2009	800,001-1M	South Africa	Average price per hectare in 12 months(R/ha)	878649
country	ZA	2009	Above 1M	South Africa	Average price per hectare in 12 months(R/ha)	3227517
country	ZA	2009	Under 1.5K	South Africa	Price trend per hectare in 12 months(R/ha)	-4
country	ZA	2009	1,501-3K	South Africa	Price trend per hectare in 12 months(R/ha)	-8
country	ZA	2009	3,001-5K	South Africa	Price trend per hectare in 12 months(R/ha)	-43
country	ZA	2009	5,001-10K	South Africa	Price trend per hectare in 12 months(R/ha)	-4
country	ZA	2009	10,001-20K	South Africa	Price trend per hectare in 12 months(R/ha)	58
country	ZA	2009	20,001-30K	South Africa	Price trend per hectare in 12 months(R/ha)	-31
country	ZA	2009	30,001-40K	South Africa	Price trend per hectare in 12 months(R/ha)	69
country	ZA	2009	40,001-50K	South Africa	Price trend per hectare in 12 months(R/ha)	-225
country	ZA	2009	50,001-100K	South Africa	Price trend per hectare in 12 months(R/ha)	191
country	ZA	2009	100,001-150K	South Africa	Price trend per hectare in 12 months(R/ha)	451
country	ZA	2009	150,001-200K	South Africa	Price trend per hectare in 12 months(R/ha)	-393
country	ZA	2009	200,001-300K	South Africa	Price trend per hectare in 12 months(R/ha)	-2014
country	ZA	2009	300,001-500K	South Africa	Price trend per hectare in 12 months(R/ha)	2465
country	ZA	2009	500,001-800K	South Africa	Price trend per hectare in 12 months(R/ha)	763
country	ZA	2009	800,001-1M	South Africa	Price trend per hectare in 12 months(R/ha)	-5563
country	ZA	2009	Above 1M	South Africa	Price trend per hectare in 12 months(R/ha)	254986
country	ZA	2009	Under 1.5K	South Africa	Average trend in 12 months(%)	-0.5
country	ZA	2009	1,501-3K	South Africa	Average trend in 12 months(%)	-0.4
country	ZA	2009	3,001-5K	South Africa	Average trend in 12 months(%)	-1.1
country	ZA	2009	5,001-10K	South Africa	Average trend in 12 months(%)	-0.1
country	ZA	2009	10,001-20K	South Africa	Average trend in 12 months(%)	0.4
country	ZA	2009	20,001-30K	South Africa	Average trend in 12 months(%)	-0.1
country	ZA	2009	30,001-40K	South Africa	Average trend in 12 months(%)	0.2
country	ZA	2009	40,001-50K	South Africa	Average trend in 12 months(%)	-0.5
country	ZA	2009	50,001-100K	South Africa	Average trend in 12 months(%)	0.3
country	ZA	2009	100,001-150K	South Africa	Average trend in 12 months(%)	0.4
country	ZA	2009	150,001-200K	South Africa	Average trend in 12 months(%)	-0.2
country	ZA	2009	200,001-300K	South Africa	Average trend in 12 months(%)	-0.8
country	ZA	2009	300,001-500K	South Africa	Average trend in 12 months(%)	0.7
country	ZA	2009	500,001-800K	South Africa	Average trend in 12 months(%)	0.1
country	ZA	2009	800,001-1M	South Africa	Average trend in 12 months(%)	-0.6
country	ZA	2009	Above 1M	South Africa	Average trend in 12 months(%)	7.9
country	ZA	2009	Under 1.5K	South Africa	Average price in November 2018(R/ha)	573
country	ZA	2009	1,501-3K	South Africa	Average price in November 2018(R/ha)	2112
country	ZA	2009	3,001-5K	South Africa	Average price in November 2018(R/ha)	3504
country	ZA	2009	5,001-10K	South Africa	Average price in November 2018(R/ha)	6989
country	ZA	2009	10,001-20K	South Africa	Average price in November 2018(R/ha)	13871
country	ZA	2009	20,001-30K	South Africa	Average price in November 2018(R/ha)	25566
country	ZA	2009	30,001-40K	South Africa	Average price in November 2018(R/ha)	36028
country	ZA	2009	40,001-50K	South Africa	Average price in November 2018(R/ha)	44083
country	ZA	2009	50,001-100K	South Africa	Average price in November 2018(R/ha)	74838
country	ZA	2009	100,001-150K	South Africa	Average price in November 2018(R/ha)	124474
country	ZA	2009	150,001-200K	South Africa	Average price in November 2018(R/ha)	178943
country	ZA	2009	200,001-300K	South Africa	Average price in November 2018(R/ha)	238112
country	ZA	2009	300,001-500K	South Africa	Average price in November 2018(R/ha)	402205
country	ZA	2009	500,001-800K	South Africa	Average price in November 2018(R/ha)	622222
country	ZA	2009	800,001-1M	South Africa	Average price in November 2018(R/ha)	\N
country	ZA	2009	Above 1M	South Africa	Average price in November 2018(R/ha)	10438627
level1	ZA_1_003	2009	Under 1.5K	Eastern Cape	Number of transactions in 12 months	15
level1	ZA_1_003	2009	1,501-3K	Eastern Cape	Number of transactions in 12 months	28
level1	ZA_1_003	2009	3,001-5K	Eastern Cape	Number of transactions in 12 months	49
level1	ZA_1_003	2009	5,001-10K	Eastern Cape	Number of transactions in 12 months	86
level1	ZA_1_003	2009	10,001-20K	Eastern Cape	Number of transactions in 12 months	53
level1	ZA_1_003	2009	20,001-30K	Eastern Cape	Number of transactions in 12 months	30
level1	ZA_1_003	2009	30,001-40K	Eastern Cape	Number of transactions in 12 months	10
level1	ZA_1_003	2009	40,001-50K	Eastern Cape	Number of transactions in 12 months	16
level1	ZA_1_003	2009	50,001-100K	Eastern Cape	Number of transactions in 12 months	32
level1	ZA_1_003	2009	100,001-150K	Eastern Cape	Number of transactions in 12 months	13
level1	ZA_1_003	2009	150,001-200K	Eastern Cape	Number of transactions in 12 months	10
level1	ZA_1_003	2009	200,001-300K	Eastern Cape	Number of transactions in 12 months	5
level1	ZA_1_003	2009	300,001-500K	Eastern Cape	Number of transactions in 12 months	6
level1	ZA_1_003	2009	500,001-800K	Eastern Cape	Number of transactions in 12 months	5
level1	ZA_1_003	2009	800,001-1M	Eastern Cape	Number of transactions in 12 months	\N
level1	ZA_1_003	2009	Above 1M	Eastern Cape	Number of transactions in 12 months	\N
level1	ZA_1_003	2009	Under 1.5K	Eastern Cape	Total hectare traded in 12 months(ha)	40495
level1	ZA_1_003	2009	1,501-3K	Eastern Cape	Total hectare traded in 12 months(ha)	43863
level1	ZA_1_003	2009	3,001-5K	Eastern Cape	Total hectare traded in 12 months(ha)	67776
level1	ZA_1_003	2009	5,001-10K	Eastern Cape	Total hectare traded in 12 months(ha)	69807
level1	ZA_1_003	2009	10,001-20K	Eastern Cape	Total hectare traded in 12 months(ha)	16952
level1	ZA_1_003	2009	20,001-30K	Eastern Cape	Total hectare traded in 12 months(ha)	8750
level1	ZA_1_003	2009	30,001-40K	Eastern Cape	Total hectare traded in 12 months(ha)	2232
level1	ZA_1_003	2009	40,001-50K	Eastern Cape	Total hectare traded in 12 months(ha)	1713
level1	ZA_1_003	2009	50,001-100K	Eastern Cape	Total hectare traded in 12 months(ha)	2202
level1	ZA_1_003	2009	100,001-150K	Eastern Cape	Total hectare traded in 12 months(ha)	370
level1	ZA_1_003	2009	150,001-200K	Eastern Cape	Total hectare traded in 12 months(ha)	550
level1	ZA_1_003	2009	200,001-300K	Eastern Cape	Total hectare traded in 12 months(ha)	148
level1	ZA_1_003	2009	300,001-500K	Eastern Cape	Total hectare traded in 12 months(ha)	527
level1	ZA_1_003	2009	500,001-800K	Eastern Cape	Total hectare traded in 12 months(ha)	404
level1	ZA_1_003	2009	800,001-1M	Eastern Cape	Total hectare traded in 12 months(ha)	\N
level1	ZA_1_003	2009	Above 1M	Eastern Cape	Total hectare traded in 12 months(ha)	\N
level1	ZA_1_003	2009	Under 1.5K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	79
level1	ZA_1_003	2009	1,501-3K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	1679
level1	ZA_1_003	2009	3,001-5K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	3059
level1	ZA_1_003	2009	5,001-10K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	5006
level1	ZA_1_003	2009	10,001-20K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	10073
level1	ZA_1_003	2009	20,001-30K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	20270
level1	ZA_1_003	2009	30,001-40K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	30556
level1	ZA_1_003	2009	40,001-50K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	41026
level1	ZA_1_003	2009	50,001-100K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	52273
level1	ZA_1_003	2009	100,001-150K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	102381
level1	ZA_1_003	2009	150,001-200K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	152778
level1	ZA_1_003	2009	200,001-300K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	250000
level1	ZA_1_003	2009	300,001-500K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	320551
level1	ZA_1_003	2009	500,001-800K	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	518516
level1	ZA_1_003	2009	800,001-1M	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_003	2009	Above 1M	Eastern Cape	Lowest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_003	2009	Under 1.5K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	1343
level1	ZA_1_003	2009	1,501-3K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	2999
level1	ZA_1_003	2009	3,001-5K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	5000
level1	ZA_1_003	2009	5,001-10K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	9986
level1	ZA_1_003	2009	10,001-20K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	19626
level1	ZA_1_003	2009	20,001-30K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	29739
level1	ZA_1_003	2009	30,001-40K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	38851
level1	ZA_1_003	2009	40,001-50K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	50000
level1	ZA_1_003	2009	50,001-100K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	100000
level1	ZA_1_003	2009	100,001-150K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	147619
level1	ZA_1_003	2009	150,001-200K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	190476
level1	ZA_1_003	2009	200,001-300K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	280929
level1	ZA_1_003	2009	300,001-500K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	461538
level1	ZA_1_003	2009	500,001-800K	Eastern Cape	Highest price per hectare in 12 months(R/ha)	791667
level1	ZA_1_003	2009	800,001-1M	Eastern Cape	Highest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_003	2009	Above 1M	Eastern Cape	Highest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_003	2009	Under 1.5K	Eastern Cape	Average price per hectare in 12 months(R/ha)	681
level1	ZA_1_003	2009	1,501-3K	Eastern Cape	Average price per hectare in 12 months(R/ha)	2423
level1	ZA_1_003	2009	3,001-5K	Eastern Cape	Average price per hectare in 12 months(R/ha)	4197
level1	ZA_1_003	2009	5,001-10K	Eastern Cape	Average price per hectare in 12 months(R/ha)	7095
level1	ZA_1_003	2009	10,001-20K	Eastern Cape	Average price per hectare in 12 months(R/ha)	13152
level1	ZA_1_003	2009	20,001-30K	Eastern Cape	Average price per hectare in 12 months(R/ha)	24769
level1	ZA_1_003	2009	30,001-40K	Eastern Cape	Average price per hectare in 12 months(R/ha)	34331
level1	ZA_1_003	2009	40,001-50K	Eastern Cape	Average price per hectare in 12 months(R/ha)	46424
level1	ZA_1_003	2009	50,001-100K	Eastern Cape	Average price per hectare in 12 months(R/ha)	72866
level1	ZA_1_003	2009	100,001-150K	Eastern Cape	Average price per hectare in 12 months(R/ha)	124232
level1	ZA_1_003	2009	150,001-200K	Eastern Cape	Average price per hectare in 12 months(R/ha)	175091
level1	ZA_1_003	2009	200,001-300K	Eastern Cape	Average price per hectare in 12 months(R/ha)	263636
level1	ZA_1_003	2009	300,001-500K	Eastern Cape	Average price per hectare in 12 months(R/ha)	366974
level1	ZA_1_003	2009	500,001-800K	Eastern Cape	Average price per hectare in 12 months(R/ha)	589490
level1	ZA_1_003	2009	800,001-1M	Eastern Cape	Average price per hectare in 12 months(R/ha)	\N
level1	ZA_1_003	2009	Above 1M	Eastern Cape	Average price per hectare in 12 months(R/ha)	\N
level1	ZA_1_003	2009	Under 1.5K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-10
level1	ZA_1_003	2009	1,501-3K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-28
level1	ZA_1_003	2009	3,001-5K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-52
level1	ZA_1_003	2009	5,001-10K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-32
level1	ZA_1_003	2009	10,001-20K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-91
level1	ZA_1_003	2009	20,001-30K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-214
level1	ZA_1_003	2009	30,001-40K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	605
level1	ZA_1_003	2009	40,001-50K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-118
level1	ZA_1_003	2009	50,001-100K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	301
level1	ZA_1_003	2009	100,001-150K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-844
level1	ZA_1_003	2009	150,001-200K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-105
level1	ZA_1_003	2009	200,001-300K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-1166
level1	ZA_1_003	2009	300,001-500K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	980
level1	ZA_1_003	2009	500,001-800K	Eastern Cape	Price trend per hectare in 12 months(R/ha)	-14470
level1	ZA_1_003	2009	800,001-1M	Eastern Cape	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_003	2009	Above 1M	Eastern Cape	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_003	2009	Under 1.5K	Eastern Cape	Average trend in 12 months(%)	-1.5
level1	ZA_1_003	2009	1,501-3K	Eastern Cape	Average trend in 12 months(%)	-1.2
level1	ZA_1_003	2009	3,001-5K	Eastern Cape	Average trend in 12 months(%)	-1.2
level1	ZA_1_003	2009	5,001-10K	Eastern Cape	Average trend in 12 months(%)	-0.5
level1	ZA_1_003	2009	10,001-20K	Eastern Cape	Average trend in 12 months(%)	-0.7
level1	ZA_1_003	2009	20,001-30K	Eastern Cape	Average trend in 12 months(%)	-0.9
level1	ZA_1_003	2009	30,001-40K	Eastern Cape	Average trend in 12 months(%)	1.8
level1	ZA_1_003	2009	40,001-50K	Eastern Cape	Average trend in 12 months(%)	-0.3
level1	ZA_1_003	2009	50,001-100K	Eastern Cape	Average trend in 12 months(%)	0.4
level1	ZA_1_003	2009	100,001-150K	Eastern Cape	Average trend in 12 months(%)	-0.7
level1	ZA_1_003	2009	150,001-200K	Eastern Cape	Average trend in 12 months(%)	-0.1
level1	ZA_1_003	2009	200,001-300K	Eastern Cape	Average trend in 12 months(%)	-0.4
level1	ZA_1_003	2009	300,001-500K	Eastern Cape	Average trend in 12 months(%)	0.3
level1	ZA_1_003	2009	500,001-800K	Eastern Cape	Average trend in 12 months(%)	-2.5
level1	ZA_1_003	2009	800,001-1M	Eastern Cape	Average trend in 12 months(%)	\N
level1	ZA_1_003	2009	Above 1M	Eastern Cape	Average trend in 12 months(%)	\N
level1	ZA_1_003	2009	Under 1.5K	Eastern Cape	Average price in November 2018(R/ha)	187
level1	ZA_1_003	2009	1,501-3K	Eastern Cape	Average price in November 2018(R/ha)	2421
level1	ZA_1_003	2009	3,001-5K	Eastern Cape	Average price in November 2018(R/ha)	3670
level1	ZA_1_003	2009	5,001-10K	Eastern Cape	Average price in November 2018(R/ha)	6866
level1	ZA_1_003	2009	10,001-20K	Eastern Cape	Average price in November 2018(R/ha)	12364
level1	ZA_1_003	2009	20,001-30K	Eastern Cape	Average price in November 2018(R/ha)	23529
level1	ZA_1_003	2009	30,001-40K	Eastern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_003	2009	40,001-50K	Eastern Cape	Average price in November 2018(R/ha)	41667
level1	ZA_1_003	2009	50,001-100K	Eastern Cape	Average price in November 2018(R/ha)	65263
level1	ZA_1_003	2009	100,001-150K	Eastern Cape	Average price in November 2018(R/ha)	122917
level1	ZA_1_003	2009	150,001-200K	Eastern Cape	Average price in November 2018(R/ha)	187500
level1	ZA_1_003	2009	200,001-300K	Eastern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_003	2009	300,001-500K	Eastern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_003	2009	500,001-800K	Eastern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_003	2009	800,001-1M	Eastern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_003	2009	Above 1M	Eastern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_002	2009	Under 1.5K	Free State	Number of transactions in 12 months	12
level1	ZA_1_002	2009	1,501-3K	Free State	Number of transactions in 12 months	27
level1	ZA_1_002	2009	3,001-5K	Free State	Number of transactions in 12 months	70
level1	ZA_1_002	2009	5,001-10K	Free State	Number of transactions in 12 months	175
level1	ZA_1_002	2009	10,001-20K	Free State	Number of transactions in 12 months	202
level1	ZA_1_002	2009	20,001-30K	Free State	Number of transactions in 12 months	65
level1	ZA_1_002	2009	30,001-40K	Free State	Number of transactions in 12 months	24
level1	ZA_1_002	2009	40,001-50K	Free State	Number of transactions in 12 months	19
level1	ZA_1_002	2009	50,001-100K	Free State	Number of transactions in 12 months	21
level1	ZA_1_002	2009	100,001-150K	Free State	Number of transactions in 12 months	4
level1	ZA_1_002	2009	150,001-200K	Free State	Number of transactions in 12 months	4
level1	ZA_1_002	2009	200,001-300K	Free State	Number of transactions in 12 months	1
level1	ZA_1_002	2009	300,001-500K	Free State	Number of transactions in 12 months	3
level1	ZA_1_002	2009	500,001-800K	Free State	Number of transactions in 12 months	2
level1	ZA_1_002	2009	800,001-1M	Free State	Number of transactions in 12 months	\N
level1	ZA_1_002	2009	Above 1M	Free State	Number of transactions in 12 months	1
level1	ZA_1_002	2009	Under 1.5K	Free State	Total hectare traded in 12 months(ha)	4669
level1	ZA_1_002	2009	1,501-3K	Free State	Total hectare traded in 12 months(ha)	14496
level1	ZA_1_002	2009	3,001-5K	Free State	Total hectare traded in 12 months(ha)	66162
level1	ZA_1_002	2009	5,001-10K	Free State	Total hectare traded in 12 months(ha)	81406
level1	ZA_1_002	2009	10,001-20K	Free State	Total hectare traded in 12 months(ha)	72487
level1	ZA_1_002	2009	20,001-30K	Free State	Total hectare traded in 12 months(ha)	19634
level1	ZA_1_002	2009	30,001-40K	Free State	Total hectare traded in 12 months(ha)	8606
level1	ZA_1_002	2009	40,001-50K	Free State	Total hectare traded in 12 months(ha)	3616
level1	ZA_1_002	2009	50,001-100K	Free State	Total hectare traded in 12 months(ha)	2662
level1	ZA_1_002	2009	100,001-150K	Free State	Total hectare traded in 12 months(ha)	120
level1	ZA_1_002	2009	150,001-200K	Free State	Total hectare traded in 12 months(ha)	3872
level1	ZA_1_002	2009	200,001-300K	Free State	Total hectare traded in 12 months(ha)	88
level1	ZA_1_002	2009	300,001-500K	Free State	Total hectare traded in 12 months(ha)	62
level1	ZA_1_002	2009	500,001-800K	Free State	Total hectare traded in 12 months(ha)	33
level1	ZA_1_002	2009	800,001-1M	Free State	Total hectare traded in 12 months(ha)	\N
level1	ZA_1_002	2009	Above 1M	Free State	Total hectare traded in 12 months(ha)	15
level1	ZA_1_002	2009	Under 1.5K	Free State	Lowest price per hectare in 12 months(R/ha)	9
level1	ZA_1_002	2009	1,501-3K	Free State	Lowest price per hectare in 12 months(R/ha)	1530
level1	ZA_1_002	2009	3,001-5K	Free State	Lowest price per hectare in 12 months(R/ha)	3061
level1	ZA_1_002	2009	5,001-10K	Free State	Lowest price per hectare in 12 months(R/ha)	5003
level1	ZA_1_002	2009	10,001-20K	Free State	Lowest price per hectare in 12 months(R/ha)	10013
level1	ZA_1_002	2009	20,001-30K	Free State	Lowest price per hectare in 12 months(R/ha)	20008
level1	ZA_1_002	2009	30,001-40K	Free State	Lowest price per hectare in 12 months(R/ha)	30052
level1	ZA_1_002	2009	40,001-50K	Free State	Lowest price per hectare in 12 months(R/ha)	40198
level1	ZA_1_002	2009	50,001-100K	Free State	Lowest price per hectare in 12 months(R/ha)	50026
level1	ZA_1_002	2009	100,001-150K	Free State	Lowest price per hectare in 12 months(R/ha)	108333
level1	ZA_1_002	2009	150,001-200K	Free State	Lowest price per hectare in 12 months(R/ha)	159744
level1	ZA_1_002	2009	200,001-300K	Free State	Lowest price per hectare in 12 months(R/ha)	215909
level1	ZA_1_002	2009	300,001-500K	Free State	Lowest price per hectare in 12 months(R/ha)	316350
level1	ZA_1_002	2009	500,001-800K	Free State	Lowest price per hectare in 12 months(R/ha)	583333
level1	ZA_1_002	2009	800,001-1M	Free State	Lowest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_002	2009	Above 1M	Free State	Lowest price per hectare in 12 months(R/ha)	10438627
level1	ZA_1_002	2009	Under 1.5K	Free State	Highest price per hectare in 12 months(R/ha)	1225
level1	ZA_1_002	2009	1,501-3K	Free State	Highest price per hectare in 12 months(R/ha)	3000
level1	ZA_1_002	2009	3,001-5K	Free State	Highest price per hectare in 12 months(R/ha)	5000
level1	ZA_1_002	2009	5,001-10K	Free State	Highest price per hectare in 12 months(R/ha)	10000
level1	ZA_1_002	2009	10,001-20K	Free State	Highest price per hectare in 12 months(R/ha)	20000
level1	ZA_1_002	2009	20,001-30K	Free State	Highest price per hectare in 12 months(R/ha)	30000
level1	ZA_1_002	2009	30,001-40K	Free State	Highest price per hectare in 12 months(R/ha)	39744
level1	ZA_1_002	2009	40,001-50K	Free State	Highest price per hectare in 12 months(R/ha)	49806
level1	ZA_1_002	2009	50,001-100K	Free State	Highest price per hectare in 12 months(R/ha)	100000
level1	ZA_1_002	2009	100,001-150K	Free State	Highest price per hectare in 12 months(R/ha)	150000
level1	ZA_1_002	2009	150,001-200K	Free State	Highest price per hectare in 12 months(R/ha)	171395
level1	ZA_1_002	2009	200,001-300K	Free State	Highest price per hectare in 12 months(R/ha)	215909
level1	ZA_1_002	2009	300,001-500K	Free State	Highest price per hectare in 12 months(R/ha)	375000
level1	ZA_1_002	2009	500,001-800K	Free State	Highest price per hectare in 12 months(R/ha)	619048
level1	ZA_1_002	2009	800,001-1M	Free State	Highest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_002	2009	Above 1M	Free State	Highest price per hectare in 12 months(R/ha)	10438627
level1	ZA_1_002	2009	Under 1.5K	Free State	Average price per hectare in 12 months(R/ha)	582
level1	ZA_1_002	2009	1,501-3K	Free State	Average price per hectare in 12 months(R/ha)	2419
level1	ZA_1_002	2009	3,001-5K	Free State	Average price per hectare in 12 months(R/ha)	4054
level1	ZA_1_002	2009	5,001-10K	Free State	Average price per hectare in 12 months(R/ha)	7120
level1	ZA_1_002	2009	10,001-20K	Free State	Average price per hectare in 12 months(R/ha)	13602
level1	ZA_1_002	2009	20,001-30K	Free State	Average price per hectare in 12 months(R/ha)	25037
level1	ZA_1_002	2009	30,001-40K	Free State	Average price per hectare in 12 months(R/ha)	33705
level1	ZA_1_002	2009	40,001-50K	Free State	Average price per hectare in 12 months(R/ha)	44408
level1	ZA_1_002	2009	50,001-100K	Free State	Average price per hectare in 12 months(R/ha)	64102
level1	ZA_1_002	2009	100,001-150K	Free State	Average price per hectare in 12 months(R/ha)	125162
level1	ZA_1_002	2009	150,001-200K	Free State	Average price per hectare in 12 months(R/ha)	167369
level1	ZA_1_002	2009	200,001-300K	Free State	Average price per hectare in 12 months(R/ha)	215909
level1	ZA_1_002	2009	300,001-500K	Free State	Average price per hectare in 12 months(R/ha)	351662
level1	ZA_1_002	2009	500,001-800K	Free State	Average price per hectare in 12 months(R/ha)	601190
level1	ZA_1_002	2009	800,001-1M	Free State	Average price per hectare in 12 months(R/ha)	\N
level1	ZA_1_002	2009	Above 1M	Free State	Average price per hectare in 12 months(R/ha)	10438627
level1	ZA_1_002	2009	Under 1.5K	Free State	Price trend per hectare in 12 months(R/ha)	76
level1	ZA_1_002	2009	1,501-3K	Free State	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_002	2009	3,001-5K	Free State	Price trend per hectare in 12 months(R/ha)	-54
level1	ZA_1_002	2009	5,001-10K	Free State	Price trend per hectare in 12 months(R/ha)	25
level1	ZA_1_002	2009	10,001-20K	Free State	Price trend per hectare in 12 months(R/ha)	28
level1	ZA_1_002	2009	20,001-30K	Free State	Price trend per hectare in 12 months(R/ha)	69
level1	ZA_1_002	2009	30,001-40K	Free State	Price trend per hectare in 12 months(R/ha)	-37
level1	ZA_1_002	2009	40,001-50K	Free State	Price trend per hectare in 12 months(R/ha)	-251
level1	ZA_1_002	2009	50,001-100K	Free State	Price trend per hectare in 12 months(R/ha)	488
level1	ZA_1_002	2009	100,001-150K	Free State	Price trend per hectare in 12 months(R/ha)	-146
level1	ZA_1_002	2009	150,001-200K	Free State	Price trend per hectare in 12 months(R/ha)	489
level1	ZA_1_002	2009	200,001-300K	Free State	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_002	2009	300,001-500K	Free State	Price trend per hectare in 12 months(R/ha)	726
level1	ZA_1_002	2009	500,001-800K	Free State	Price trend per hectare in 12 months(R/ha)	5952
level1	ZA_1_002	2009	800,001-1M	Free State	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_002	2009	Above 1M	Free State	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_002	2009	Under 1.5K	Free State	Average trend in 12 months(%)	13
level1	ZA_1_002	2009	1,501-3K	Free State	Average trend in 12 months(%)	0
level1	ZA_1_002	2009	3,001-5K	Free State	Average trend in 12 months(%)	-1.3
level1	ZA_1_002	2009	5,001-10K	Free State	Average trend in 12 months(%)	0.4
level1	ZA_1_002	2009	10,001-20K	Free State	Average trend in 12 months(%)	0.2
level1	ZA_1_002	2009	20,001-30K	Free State	Average trend in 12 months(%)	0.3
level1	ZA_1_002	2009	30,001-40K	Free State	Average trend in 12 months(%)	-0.1
level1	ZA_1_002	2009	40,001-50K	Free State	Average trend in 12 months(%)	-0.6
level1	ZA_1_002	2009	50,001-100K	Free State	Average trend in 12 months(%)	0.8
level1	ZA_1_002	2009	100,001-150K	Free State	Average trend in 12 months(%)	-0.1
level1	ZA_1_002	2009	150,001-200K	Free State	Average trend in 12 months(%)	0.3
level1	ZA_1_002	2009	200,001-300K	Free State	Average trend in 12 months(%)	\N
level1	ZA_1_002	2009	300,001-500K	Free State	Average trend in 12 months(%)	0.2
level1	ZA_1_002	2009	500,001-800K	Free State	Average trend in 12 months(%)	1
level1	ZA_1_002	2009	800,001-1M	Free State	Average trend in 12 months(%)	\N
level1	ZA_1_002	2009	Above 1M	Free State	Average trend in 12 months(%)	\N
level1	ZA_1_002	2009	Under 1.5K	Free State	Average price in November 2018(R/ha)	906
level1	ZA_1_002	2009	1,501-3K	Free State	Average price in November 2018(R/ha)	2525
level1	ZA_1_002	2009	3,001-5K	Free State	Average price in November 2018(R/ha)	3844
level1	ZA_1_002	2009	5,001-10K	Free State	Average price in November 2018(R/ha)	7245
level1	ZA_1_002	2009	10,001-20K	Free State	Average price in November 2018(R/ha)	13779
level1	ZA_1_002	2009	20,001-30K	Free State	Average price in November 2018(R/ha)	24650
level1	ZA_1_002	2009	30,001-40K	Free State	Average price in November 2018(R/ha)	35266
level1	ZA_1_002	2009	40,001-50K	Free State	Average price in November 2018(R/ha)	\N
level1	ZA_1_002	2009	50,001-100K	Free State	Average price in November 2018(R/ha)	74716
level1	ZA_1_002	2009	100,001-150K	Free State	Average price in November 2018(R/ha)	108333
level1	ZA_1_002	2009	150,001-200K	Free State	Average price in November 2018(R/ha)	\N
level1	ZA_1_002	2009	200,001-300K	Free State	Average price in November 2018(R/ha)	\N
level1	ZA_1_002	2009	300,001-500K	Free State	Average price in November 2018(R/ha)	\N
level1	ZA_1_002	2009	500,001-800K	Free State	Average price in November 2018(R/ha)	\N
level1	ZA_1_002	2009	800,001-1M	Free State	Average price in November 2018(R/ha)	\N
level1	ZA_1_002	2009	Above 1M	Free State	Average price in November 2018(R/ha)	10438627
level1	ZA_1_009	2009	Under 1.5K	Gauteng	Number of transactions in 12 months	5
level1	ZA_1_009	2009	1,501-3K	Gauteng	Number of transactions in 12 months	6
level1	ZA_1_009	2009	3,001-5K	Gauteng	Number of transactions in 12 months	2
level1	ZA_1_009	2009	5,001-10K	Gauteng	Number of transactions in 12 months	24
level1	ZA_1_009	2009	10,001-20K	Gauteng	Number of transactions in 12 months	86
level1	ZA_1_009	2009	20,001-30K	Gauteng	Number of transactions in 12 months	61
level1	ZA_1_009	2009	30,001-40K	Gauteng	Number of transactions in 12 months	40
level1	ZA_1_009	2009	40,001-50K	Gauteng	Number of transactions in 12 months	40
level1	ZA_1_009	2009	50,001-100K	Gauteng	Number of transactions in 12 months	94
level1	ZA_1_009	2009	100,001-150K	Gauteng	Number of transactions in 12 months	33
level1	ZA_1_009	2009	150,001-200K	Gauteng	Number of transactions in 12 months	19
level1	ZA_1_009	2009	200,001-300K	Gauteng	Number of transactions in 12 months	21
level1	ZA_1_009	2009	300,001-500K	Gauteng	Number of transactions in 12 months	11
level1	ZA_1_009	2009	500,001-800K	Gauteng	Number of transactions in 12 months	9
level1	ZA_1_009	2009	800,001-1M	Gauteng	Number of transactions in 12 months	3
level1	ZA_1_009	2009	Above 1M	Gauteng	Number of transactions in 12 months	18
level1	ZA_1_009	2009	Under 1.5K	Gauteng	Total hectare traded in 12 months(ha)	1246
level1	ZA_1_009	2009	1,501-3K	Gauteng	Total hectare traded in 12 months(ha)	1247
level1	ZA_1_009	2009	3,001-5K	Gauteng	Total hectare traded in 12 months(ha)	537
level1	ZA_1_009	2009	5,001-10K	Gauteng	Total hectare traded in 12 months(ha)	13566
level1	ZA_1_009	2009	10,001-20K	Gauteng	Total hectare traded in 12 months(ha)	19953
level1	ZA_1_009	2009	20,001-30K	Gauteng	Total hectare traded in 12 months(ha)	5453
level1	ZA_1_009	2009	30,001-40K	Gauteng	Total hectare traded in 12 months(ha)	2673
level1	ZA_1_009	2009	40,001-50K	Gauteng	Total hectare traded in 12 months(ha)	2981
level1	ZA_1_009	2009	50,001-100K	Gauteng	Total hectare traded in 12 months(ha)	2504
level1	ZA_1_009	2009	100,001-150K	Gauteng	Total hectare traded in 12 months(ha)	871
level1	ZA_1_009	2009	150,001-200K	Gauteng	Total hectare traded in 12 months(ha)	388
level1	ZA_1_009	2009	200,001-300K	Gauteng	Total hectare traded in 12 months(ha)	715
level1	ZA_1_009	2009	300,001-500K	Gauteng	Total hectare traded in 12 months(ha)	291
level1	ZA_1_009	2009	500,001-800K	Gauteng	Total hectare traded in 12 months(ha)	195
level1	ZA_1_009	2009	800,001-1M	Gauteng	Total hectare traded in 12 months(ha)	191
level1	ZA_1_009	2009	Above 1M	Gauteng	Total hectare traded in 12 months(ha)	737
level1	ZA_1_009	2009	Under 1.5K	Gauteng	Lowest price per hectare in 12 months(R/ha)	332
level1	ZA_1_009	2009	1,501-3K	Gauteng	Lowest price per hectare in 12 months(R/ha)	1823
level1	ZA_1_009	2009	3,001-5K	Gauteng	Lowest price per hectare in 12 months(R/ha)	3413
level1	ZA_1_009	2009	5,001-10K	Gauteng	Lowest price per hectare in 12 months(R/ha)	5014
level1	ZA_1_009	2009	10,001-20K	Gauteng	Lowest price per hectare in 12 months(R/ha)	10246
level1	ZA_1_009	2009	20,001-30K	Gauteng	Lowest price per hectare in 12 months(R/ha)	20513
level1	ZA_1_009	2009	30,001-40K	Gauteng	Lowest price per hectare in 12 months(R/ha)	30476
level1	ZA_1_009	2009	40,001-50K	Gauteng	Lowest price per hectare in 12 months(R/ha)	40541
level1	ZA_1_009	2009	50,001-100K	Gauteng	Lowest price per hectare in 12 months(R/ha)	50500
level1	ZA_1_009	2009	100,001-150K	Gauteng	Lowest price per hectare in 12 months(R/ha)	101667
level1	ZA_1_009	2009	150,001-200K	Gauteng	Lowest price per hectare in 12 months(R/ha)	153846
level1	ZA_1_009	2009	200,001-300K	Gauteng	Lowest price per hectare in 12 months(R/ha)	202381
level1	ZA_1_009	2009	300,001-500K	Gauteng	Lowest price per hectare in 12 months(R/ha)	302326
level1	ZA_1_009	2009	500,001-800K	Gauteng	Lowest price per hectare in 12 months(R/ha)	526316
level1	ZA_1_009	2009	800,001-1M	Gauteng	Lowest price per hectare in 12 months(R/ha)	841463
level1	ZA_1_009	2009	Above 1M	Gauteng	Lowest price per hectare in 12 months(R/ha)	1032000
level1	ZA_1_009	2009	Under 1.5K	Gauteng	Highest price per hectare in 12 months(R/ha)	1274
level1	ZA_1_009	2009	1,501-3K	Gauteng	Highest price per hectare in 12 months(R/ha)	2628
level1	ZA_1_009	2009	3,001-5K	Gauteng	Highest price per hectare in 12 months(R/ha)	3689
level1	ZA_1_009	2009	5,001-10K	Gauteng	Highest price per hectare in 12 months(R/ha)	10000
level1	ZA_1_009	2009	10,001-20K	Gauteng	Highest price per hectare in 12 months(R/ha)	20000
level1	ZA_1_009	2009	20,001-30K	Gauteng	Highest price per hectare in 12 months(R/ha)	30000
level1	ZA_1_009	2009	30,001-40K	Gauteng	Highest price per hectare in 12 months(R/ha)	40000
level1	ZA_1_009	2009	40,001-50K	Gauteng	Highest price per hectare in 12 months(R/ha)	50000
level1	ZA_1_009	2009	50,001-100K	Gauteng	Highest price per hectare in 12 months(R/ha)	100000
level1	ZA_1_009	2009	100,001-150K	Gauteng	Highest price per hectare in 12 months(R/ha)	150000
level1	ZA_1_009	2009	150,001-200K	Gauteng	Highest price per hectare in 12 months(R/ha)	200000
level1	ZA_1_009	2009	200,001-300K	Gauteng	Highest price per hectare in 12 months(R/ha)	288204
level1	ZA_1_009	2009	300,001-500K	Gauteng	Highest price per hectare in 12 months(R/ha)	500000
level1	ZA_1_009	2009	500,001-800K	Gauteng	Highest price per hectare in 12 months(R/ha)	750000
level1	ZA_1_009	2009	800,001-1M	Gauteng	Highest price per hectare in 12 months(R/ha)	890185
level1	ZA_1_009	2009	Above 1M	Gauteng	Highest price per hectare in 12 months(R/ha)	10504286
level1	ZA_1_009	2009	Under 1.5K	Gauteng	Average price per hectare in 12 months(R/ha)	797
level1	ZA_1_009	2009	1,501-3K	Gauteng	Average price per hectare in 12 months(R/ha)	2276
level1	ZA_1_009	2009	3,001-5K	Gauteng	Average price per hectare in 12 months(R/ha)	3551
level1	ZA_1_009	2009	5,001-10K	Gauteng	Average price per hectare in 12 months(R/ha)	6797
level1	ZA_1_009	2009	10,001-20K	Gauteng	Average price per hectare in 12 months(R/ha)	14439
level1	ZA_1_009	2009	20,001-30K	Gauteng	Average price per hectare in 12 months(R/ha)	24616
level1	ZA_1_009	2009	30,001-40K	Gauteng	Average price per hectare in 12 months(R/ha)	34857
level1	ZA_1_009	2009	40,001-50K	Gauteng	Average price per hectare in 12 months(R/ha)	45129
level1	ZA_1_009	2009	50,001-100K	Gauteng	Average price per hectare in 12 months(R/ha)	72259
level1	ZA_1_009	2009	100,001-150K	Gauteng	Average price per hectare in 12 months(R/ha)	121885
level1	ZA_1_009	2009	150,001-200K	Gauteng	Average price per hectare in 12 months(R/ha)	180282
level1	ZA_1_009	2009	200,001-300K	Gauteng	Average price per hectare in 12 months(R/ha)	238867
level1	ZA_1_009	2009	300,001-500K	Gauteng	Average price per hectare in 12 months(R/ha)	358913
level1	ZA_1_009	2009	500,001-800K	Gauteng	Average price per hectare in 12 months(R/ha)	623294
level1	ZA_1_009	2009	800,001-1M	Gauteng	Average price per hectare in 12 months(R/ha)	847498
level1	ZA_1_009	2009	Above 1M	Gauteng	Average price per hectare in 12 months(R/ha)	2478394
level1	ZA_1_009	2009	Under 1.5K	Gauteng	Price trend per hectare in 12 months(R/ha)	105
level1	ZA_1_009	2009	1,501-3K	Gauteng	Price trend per hectare in 12 months(R/ha)	-102
level1	ZA_1_009	2009	3,001-5K	Gauteng	Price trend per hectare in 12 months(R/ha)	69
level1	ZA_1_009	2009	5,001-10K	Gauteng	Price trend per hectare in 12 months(R/ha)	-133
level1	ZA_1_009	2009	10,001-20K	Gauteng	Price trend per hectare in 12 months(R/ha)	178
level1	ZA_1_009	2009	20,001-30K	Gauteng	Price trend per hectare in 12 months(R/ha)	-111
level1	ZA_1_009	2009	30,001-40K	Gauteng	Price trend per hectare in 12 months(R/ha)	76
level1	ZA_1_009	2009	40,001-50K	Gauteng	Price trend per hectare in 12 months(R/ha)	118
level1	ZA_1_009	2009	50,001-100K	Gauteng	Price trend per hectare in 12 months(R/ha)	-553
level1	ZA_1_009	2009	100,001-150K	Gauteng	Price trend per hectare in 12 months(R/ha)	-83
level1	ZA_1_009	2009	150,001-200K	Gauteng	Price trend per hectare in 12 months(R/ha)	486
level1	ZA_1_009	2009	200,001-300K	Gauteng	Price trend per hectare in 12 months(R/ha)	458
level1	ZA_1_009	2009	300,001-500K	Gauteng	Price trend per hectare in 12 months(R/ha)	-167
level1	ZA_1_009	2009	500,001-800K	Gauteng	Price trend per hectare in 12 months(R/ha)	8705
level1	ZA_1_009	2009	800,001-1M	Gauteng	Price trend per hectare in 12 months(R/ha)	-12069
level1	ZA_1_009	2009	Above 1M	Gauteng	Price trend per hectare in 12 months(R/ha)	-152094
level1	ZA_1_009	2009	Under 1.5K	Gauteng	Average trend in 12 months(%)	13.2
level1	ZA_1_009	2009	1,501-3K	Gauteng	Average trend in 12 months(%)	-4.5
level1	ZA_1_009	2009	3,001-5K	Gauteng	Average trend in 12 months(%)	1.9
level1	ZA_1_009	2009	5,001-10K	Gauteng	Average trend in 12 months(%)	-2
level1	ZA_1_009	2009	10,001-20K	Gauteng	Average trend in 12 months(%)	1.2
level1	ZA_1_009	2009	20,001-30K	Gauteng	Average trend in 12 months(%)	-0.5
level1	ZA_1_009	2009	30,001-40K	Gauteng	Average trend in 12 months(%)	0.2
level1	ZA_1_009	2009	50,001-100K	Gauteng	Average trend in 12 months(%)	-0.8
level1	ZA_1_009	2009	100,001-150K	Gauteng	Average trend in 12 months(%)	-0.1
level1	ZA_1_009	2009	150,001-200K	Gauteng	Average trend in 12 months(%)	0.3
level1	ZA_1_009	2009	200,001-300K	Gauteng	Average trend in 12 months(%)	0.2
level1	ZA_1_009	2009	300,001-500K	Gauteng	Average trend in 12 months(%)	0
level1	ZA_1_009	2009	500,001-800K	Gauteng	Average trend in 12 months(%)	1.4
level1	ZA_1_009	2009	800,001-1M	Gauteng	Average trend in 12 months(%)	-1.4
level1	ZA_1_009	2009	Above 1M	Gauteng	Average trend in 12 months(%)	-6.1
level1	ZA_1_009	2009	Under 1.5K	Gauteng	Average price in November 2018(R/ha)	1274
level1	ZA_1_009	2009	1,501-3K	Gauteng	Average price in November 2018(R/ha)	1823
level1	ZA_1_009	2009	3,001-5K	Gauteng	Average price in November 2018(R/ha)	\N
level1	ZA_1_009	2009	5,001-10K	Gauteng	Average price in November 2018(R/ha)	5789
level1	ZA_1_009	2009	10,001-20K	Gauteng	Average price in November 2018(R/ha)	14593
level1	ZA_1_009	2009	20,001-30K	Gauteng	Average price in November 2018(R/ha)	23985
level1	ZA_1_009	2009	30,001-40K	Gauteng	Average price in November 2018(R/ha)	39109
level1	ZA_1_009	2009	40,001-50K	Gauteng	Average price in November 2018(R/ha)	43317
level1	ZA_1_009	2009	50,001-100K	Gauteng	Average price in November 2018(R/ha)	67972
level1	ZA_1_009	2009	100,001-150K	Gauteng	Average price in November 2018(R/ha)	129538
level1	ZA_1_009	2009	150,001-200K	Gauteng	Average price in November 2018(R/ha)	180484
level1	ZA_1_009	2009	200,001-300K	Gauteng	Average price in November 2018(R/ha)	231011
level1	ZA_1_009	2009	300,001-500K	Gauteng	Average price in November 2018(R/ha)	\N
level1	ZA_1_009	2009	500,001-800K	Gauteng	Average price in November 2018(R/ha)	\N
level1	ZA_1_009	2009	800,001-1M	Gauteng	Average price in November 2018(R/ha)	\N
level1	ZA_1_009	2009	Above 1M	Gauteng	Average price in November 2018(R/ha)	\N
level1	ZA_1_001	2009	Under 1.5K	Kwa-Zulu Natal	Number of transactions in 12 months	6
level1	ZA_1_001	2009	1,501-3K	Kwa-Zulu Natal	Number of transactions in 12 months	3
level1	ZA_1_001	2009	3,001-5K	Kwa-Zulu Natal	Number of transactions in 12 months	18
level1	ZA_1_001	2009	5,001-10K	Kwa-Zulu Natal	Number of transactions in 12 months	51
level1	ZA_1_001	2009	10,001-20K	Kwa-Zulu Natal	Number of transactions in 12 months	61
level1	ZA_1_001	2009	20,001-30K	Kwa-Zulu Natal	Number of transactions in 12 months	33
level1	ZA_1_001	2009	30,001-40K	Kwa-Zulu Natal	Number of transactions in 12 months	20
level1	ZA_1_001	2009	40,001-50K	Kwa-Zulu Natal	Number of transactions in 12 months	21
level1	ZA_1_001	2009	50,001-100K	Kwa-Zulu Natal	Number of transactions in 12 months	63
level1	ZA_1_001	2009	100,001-150K	Kwa-Zulu Natal	Number of transactions in 12 months	30
level1	ZA_1_001	2009	150,001-200K	Kwa-Zulu Natal	Number of transactions in 12 months	11
level1	ZA_1_001	2009	200,001-300K	Kwa-Zulu Natal	Number of transactions in 12 months	20
level1	ZA_1_001	2009	300,001-500K	Kwa-Zulu Natal	Number of transactions in 12 months	11
level1	ZA_1_001	2009	500,001-800K	Kwa-Zulu Natal	Number of transactions in 12 months	4
level1	ZA_1_001	2009	800,001-1M	Kwa-Zulu Natal	Number of transactions in 12 months	1
level1	ZA_1_001	2009	Above 1M	Kwa-Zulu Natal	Number of transactions in 12 months	3
level1	ZA_1_001	2009	Under 1.5K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	11584
level1	ZA_1_001	2009	1,501-3K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	315
level1	ZA_1_001	2009	3,001-5K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	7621
level1	ZA_1_001	2009	5,001-10K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	30324
level1	ZA_1_001	2009	10,001-20K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	24751
level1	ZA_1_001	2009	20,001-30K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	14908
level1	ZA_1_001	2009	30,001-40K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	1999
level1	ZA_1_001	2009	40,001-50K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	2350
level1	ZA_1_001	2009	50,001-100K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	17320
level1	ZA_1_001	2009	100,001-150K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	2414
level1	ZA_1_001	2009	150,001-200K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	399
level1	ZA_1_001	2009	200,001-300K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	450
level1	ZA_1_001	2009	300,001-500K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	282
level1	ZA_1_001	2009	500,001-800K	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	340
level1	ZA_1_001	2009	800,001-1M	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	19
level1	ZA_1_001	2009	Above 1M	Kwa-Zulu Natal	Total hectare traded in 12 months(ha)	34
level1	ZA_1_001	2009	Under 1.5K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	73
level1	ZA_1_001	2009	1,501-3K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	1523
level1	ZA_1_001	2009	3,001-5K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	3017
level1	ZA_1_001	2009	5,001-10K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	5005
level1	ZA_1_001	2009	10,001-20K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	10074
level1	ZA_1_001	2009	20,001-30K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	20173
level1	ZA_1_001	2009	30,001-40K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	30281
level1	ZA_1_001	2009	40,001-50K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	40962
level1	ZA_1_001	2009	50,001-100K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	50325
level1	ZA_1_001	2009	100,001-150K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	101449
level1	ZA_1_001	2009	150,001-200K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	150697
level1	ZA_1_001	2009	200,001-300K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	205357
level1	ZA_1_001	2009	300,001-500K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	341667
level1	ZA_1_001	2009	500,001-800K	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	541176
level1	ZA_1_001	2009	800,001-1M	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	882000
level1	ZA_1_001	2009	Above 1M	Kwa-Zulu Natal	Lowest price per hectare in 12 months(R/ha)	2166000
level1	ZA_1_001	2009	Under 1.5K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	1350
level1	ZA_1_001	2009	1,501-3K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	2909
level1	ZA_1_001	2009	3,001-5K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	4916
level1	ZA_1_001	2009	5,001-10K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	9749
level1	ZA_1_001	2009	10,001-20K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	19841
level1	ZA_1_001	2009	20,001-30K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	30000
level1	ZA_1_001	2009	30,001-40K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	39640
level1	ZA_1_001	2009	40,001-50K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	50000
level1	ZA_1_001	2009	50,001-100K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	100000
level1	ZA_1_001	2009	100,001-150K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	146774
level1	ZA_1_001	2009	150,001-200K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	200000
level1	ZA_1_001	2009	200,001-300K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	300000
level1	ZA_1_001	2009	300,001-500K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	500000
level1	ZA_1_001	2009	500,001-800K	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	708333
level1	ZA_1_001	2009	800,001-1M	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	882000
level1	ZA_1_001	2009	Above 1M	Kwa-Zulu Natal	Highest price per hectare in 12 months(R/ha)	11742988
level1	ZA_1_001	2009	Under 1.5K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	517
level1	ZA_1_001	2009	1,501-3K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	2753
level1	ZA_1_001	2009	3,001-5K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	3990
level1	ZA_1_001	2009	5,001-10K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	7785
level1	ZA_1_001	2009	10,001-20K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	12909
level1	ZA_1_001	2009	20,001-30K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	24728
level1	ZA_1_001	2009	30,001-40K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	34718
level1	ZA_1_001	2009	40,001-50K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	47014
level1	ZA_1_001	2009	50,001-100K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	72231
level1	ZA_1_001	2009	100,001-150K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	118311
level1	ZA_1_001	2009	150,001-200K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	174033
level1	ZA_1_001	2009	200,001-300K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	243969
level1	ZA_1_001	2009	300,001-500K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	416679
level1	ZA_1_001	2009	500,001-800K	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	617586
level1	ZA_1_001	2009	800,001-1M	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	882000
level1	ZA_1_001	2009	Above 1M	Kwa-Zulu Natal	Average price per hectare in 12 months(R/ha)	7966937
level1	ZA_1_001	2009	Under 1.5K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	-33
level1	ZA_1_001	2009	1,501-3K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	-156
level1	ZA_1_001	2009	3,001-5K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	8
level1	ZA_1_001	2009	5,001-10K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	111
level1	ZA_1_001	2009	10,001-20K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	-169
level1	ZA_1_001	2009	20,001-30K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	-287
level1	ZA_1_001	2009	30,001-40K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	355
level1	ZA_1_001	2009	40,001-50K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	227
level1	ZA_1_001	2009	50,001-100K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	-515
level1	ZA_1_001	2009	100,001-150K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	993
level1	ZA_1_001	2009	150,001-200K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	-3422
level1	ZA_1_001	2009	200,001-300K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	1630
level1	ZA_1_001	2009	300,001-500K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	13821
level1	ZA_1_001	2009	500,001-800K	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	-2688
level1	ZA_1_001	2009	800,001-1M	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_001	2009	Above 1M	Kwa-Zulu Natal	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_001	2009	Under 1.5K	Kwa-Zulu Natal	Average trend in 12 months(%)	-6.4
level1	ZA_1_001	2009	1,501-3K	Kwa-Zulu Natal	Average trend in 12 months(%)	-5.7
level1	ZA_1_001	2009	3,001-5K	Kwa-Zulu Natal	Average trend in 12 months(%)	0.2
level1	ZA_1_001	2009	5,001-10K	Kwa-Zulu Natal	Average trend in 12 months(%)	1.4
level1	ZA_1_001	2009	10,001-20K	Kwa-Zulu Natal	Average trend in 12 months(%)	-1.3
level1	ZA_1_001	2009	20,001-30K	Kwa-Zulu Natal	Average trend in 12 months(%)	-1.2
level1	ZA_1_001	2009	30,001-40K	Kwa-Zulu Natal	Average trend in 12 months(%)	1
level1	ZA_1_001	2009	40,001-50K	Kwa-Zulu Natal	Average trend in 12 months(%)	0.5
level1	ZA_1_001	2009	50,001-100K	Kwa-Zulu Natal	Average trend in 12 months(%)	-0.7
level1	ZA_1_001	2009	100,001-150K	Kwa-Zulu Natal	Average trend in 12 months(%)	0.8
level1	ZA_1_001	2009	150,001-200K	Kwa-Zulu Natal	Average trend in 12 months(%)	-2
level1	ZA_1_001	2009	200,001-300K	Kwa-Zulu Natal	Average trend in 12 months(%)	0.7
level1	ZA_1_001	2009	300,001-500K	Kwa-Zulu Natal	Average trend in 12 months(%)	3.3
level1	ZA_1_001	2009	500,001-800K	Kwa-Zulu Natal	Average trend in 12 months(%)	-0.4
level1	ZA_1_001	2009	800,001-1M	Kwa-Zulu Natal	Average trend in 12 months(%)	\N
level1	ZA_1_001	2009	Above 1M	Kwa-Zulu Natal	Average trend in 12 months(%)	\N
level1	ZA_1_001	2009	Under 1.5K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	\N
level1	ZA_1_001	2009	1,501-3K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	\N
level1	ZA_1_001	2009	3,001-5K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	4167
level1	ZA_1_001	2009	5,001-10K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	7766
level1	ZA_1_001	2009	10,001-20K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	13617
level1	ZA_1_001	2009	20,001-30K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	21948
level1	ZA_1_001	2009	30,001-40K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	\N
level1	ZA_1_001	2009	40,001-50K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	50000
level1	ZA_1_001	2009	50,001-100K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	70000
level1	ZA_1_001	2009	100,001-150K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	105983
level1	ZA_1_001	2009	150,001-200K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	\N
level1	ZA_1_001	2009	200,001-300K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	272727
level1	ZA_1_001	2009	300,001-500K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	\N
level1	ZA_1_001	2009	500,001-800K	Kwa-Zulu Natal	Average price in November 2018(R/ha)	\N
level1	ZA_1_001	2009	800,001-1M	Kwa-Zulu Natal	Average price in November 2018(R/ha)	\N
level1	ZA_1_001	2009	Above 1M	Kwa-Zulu Natal	Average price in November 2018(R/ha)	\N
level1	ZA_1_005	2009	Under 1.5K	Limpopo	Number of transactions in 12 months	9
level1	ZA_1_005	2009	1,501-3K	Limpopo	Number of transactions in 12 months	6
level1	ZA_1_005	2009	3,001-5K	Limpopo	Number of transactions in 12 months	26
level1	ZA_1_005	2009	5,001-10K	Limpopo	Number of transactions in 12 months	91
level1	ZA_1_005	2009	10,001-20K	Limpopo	Number of transactions in 12 months	96
level1	ZA_1_005	2009	20,001-30K	Limpopo	Number of transactions in 12 months	62
level1	ZA_1_005	2009	30,001-40K	Limpopo	Number of transactions in 12 months	30
level1	ZA_1_005	2009	40,001-50K	Limpopo	Number of transactions in 12 months	25
level1	ZA_1_005	2009	50,001-100K	Limpopo	Number of transactions in 12 months	88
level1	ZA_1_005	2009	100,001-150K	Limpopo	Number of transactions in 12 months	23
level1	ZA_1_005	2009	150,001-200K	Limpopo	Number of transactions in 12 months	13
level1	ZA_1_005	2009	200,001-300K	Limpopo	Number of transactions in 12 months	12
level1	ZA_1_005	2009	300,001-500K	Limpopo	Number of transactions in 12 months	5
level1	ZA_1_005	2009	500,001-800K	Limpopo	Number of transactions in 12 months	3
level1	ZA_1_005	2009	800,001-1M	Limpopo	Number of transactions in 12 months	1
level1	ZA_1_005	2009	Above 1M	Limpopo	Number of transactions in 12 months	2
level1	ZA_1_005	2009	Under 1.5K	Limpopo	Total hectare traded in 12 months(ha)	8112
level1	ZA_1_005	2009	1,501-3K	Limpopo	Total hectare traded in 12 months(ha)	3664
level1	ZA_1_005	2009	3,001-5K	Limpopo	Total hectare traded in 12 months(ha)	17813
level1	ZA_1_005	2009	5,001-10K	Limpopo	Total hectare traded in 12 months(ha)	72917
level1	ZA_1_005	2009	10,001-20K	Limpopo	Total hectare traded in 12 months(ha)	39103
level1	ZA_1_005	2009	20,001-30K	Limpopo	Total hectare traded in 12 months(ha)	17273
level1	ZA_1_005	2009	30,001-40K	Limpopo	Total hectare traded in 12 months(ha)	4615
level1	ZA_1_005	2009	40,001-50K	Limpopo	Total hectare traded in 12 months(ha)	1892
level1	ZA_1_005	2009	50,001-100K	Limpopo	Total hectare traded in 12 months(ha)	3485
level1	ZA_1_005	2009	100,001-150K	Limpopo	Total hectare traded in 12 months(ha)	1070
level1	ZA_1_005	2009	150,001-200K	Limpopo	Total hectare traded in 12 months(ha)	438
level1	ZA_1_005	2009	200,001-300K	Limpopo	Total hectare traded in 12 months(ha)	340
level1	ZA_1_005	2009	300,001-500K	Limpopo	Total hectare traded in 12 months(ha)	127
level1	ZA_1_005	2009	500,001-800K	Limpopo	Total hectare traded in 12 months(ha)	397
level1	ZA_1_005	2009	800,001-1M	Limpopo	Total hectare traded in 12 months(ha)	58
level1	ZA_1_005	2009	Above 1M	Limpopo	Total hectare traded in 12 months(ha)	173
level1	ZA_1_005	2009	Under 1.5K	Limpopo	Lowest price per hectare in 12 months(R/ha)	18
level1	ZA_1_005	2009	1,501-3K	Limpopo	Lowest price per hectare in 12 months(R/ha)	1557
level1	ZA_1_005	2009	3,001-5K	Limpopo	Lowest price per hectare in 12 months(R/ha)	3046
level1	ZA_1_005	2009	5,001-10K	Limpopo	Lowest price per hectare in 12 months(R/ha)	5002
level1	ZA_1_005	2009	10,001-20K	Limpopo	Lowest price per hectare in 12 months(R/ha)	10031
level1	ZA_1_005	2009	20,001-30K	Limpopo	Lowest price per hectare in 12 months(R/ha)	20048
level1	ZA_1_005	2009	30,001-40K	Limpopo	Lowest price per hectare in 12 months(R/ha)	30143
level1	ZA_1_005	2009	40,001-50K	Limpopo	Lowest price per hectare in 12 months(R/ha)	40367
level1	ZA_1_005	2009	50,001-100K	Limpopo	Lowest price per hectare in 12 months(R/ha)	50476
level1	ZA_1_005	2009	100,001-150K	Limpopo	Lowest price per hectare in 12 months(R/ha)	102778
level1	ZA_1_005	2009	150,001-200K	Limpopo	Lowest price per hectare in 12 months(R/ha)	151079
level1	ZA_1_005	2009	200,001-300K	Limpopo	Lowest price per hectare in 12 months(R/ha)	218750
level1	ZA_1_005	2009	300,001-500K	Limpopo	Lowest price per hectare in 12 months(R/ha)	335294
level1	ZA_1_005	2009	500,001-800K	Limpopo	Lowest price per hectare in 12 months(R/ha)	538462
level1	ZA_1_005	2009	800,001-1M	Limpopo	Lowest price per hectare in 12 months(R/ha)	948276
level1	ZA_1_005	2009	Above 1M	Limpopo	Lowest price per hectare in 12 months(R/ha)	1480847
level1	ZA_1_005	2009	Under 1.5K	Limpopo	Highest price per hectare in 12 months(R/ha)	1398
level1	ZA_1_005	2009	1,501-3K	Limpopo	Highest price per hectare in 12 months(R/ha)	2993
level1	ZA_1_005	2009	3,001-5K	Limpopo	Highest price per hectare in 12 months(R/ha)	4931
level1	ZA_1_005	2009	5,001-10K	Limpopo	Highest price per hectare in 12 months(R/ha)	10000
level1	ZA_1_005	2009	10,001-20K	Limpopo	Highest price per hectare in 12 months(R/ha)	20000
level1	ZA_1_005	2009	20,001-30K	Limpopo	Highest price per hectare in 12 months(R/ha)	30000
level1	ZA_1_005	2009	30,001-40K	Limpopo	Highest price per hectare in 12 months(R/ha)	40000
level1	ZA_1_005	2009	40,001-50K	Limpopo	Highest price per hectare in 12 months(R/ha)	50000
level1	ZA_1_005	2009	50,001-100K	Limpopo	Highest price per hectare in 12 months(R/ha)	100000
level1	ZA_1_005	2009	100,001-150K	Limpopo	Highest price per hectare in 12 months(R/ha)	145161
level1	ZA_1_005	2009	150,001-200K	Limpopo	Highest price per hectare in 12 months(R/ha)	200000
level1	ZA_1_005	2009	200,001-300K	Limpopo	Highest price per hectare in 12 months(R/ha)	285000
level1	ZA_1_005	2009	300,001-500K	Limpopo	Highest price per hectare in 12 months(R/ha)	399000
level1	ZA_1_005	2009	500,001-800K	Limpopo	Highest price per hectare in 12 months(R/ha)	766650
level1	ZA_1_005	2009	800,001-1M	Limpopo	Highest price per hectare in 12 months(R/ha)	948276
level1	ZA_1_005	2009	Above 1M	Limpopo	Highest price per hectare in 12 months(R/ha)	2615732
level1	ZA_1_005	2009	Under 1.5K	Limpopo	Average price per hectare in 12 months(R/ha)	824
level1	ZA_1_005	2009	1,501-3K	Limpopo	Average price per hectare in 12 months(R/ha)	2138
level1	ZA_1_005	2009	3,001-5K	Limpopo	Average price per hectare in 12 months(R/ha)	3882
level1	ZA_1_005	2009	5,001-10K	Limpopo	Average price per hectare in 12 months(R/ha)	7155
level1	ZA_1_005	2009	10,001-20K	Limpopo	Average price per hectare in 12 months(R/ha)	14438
level1	ZA_1_005	2009	20,001-30K	Limpopo	Average price per hectare in 12 months(R/ha)	23383
level1	ZA_1_005	2009	30,001-40K	Limpopo	Average price per hectare in 12 months(R/ha)	34533
level1	ZA_1_005	2009	40,001-50K	Limpopo	Average price per hectare in 12 months(R/ha)	44704
level1	ZA_1_005	2009	50,001-100K	Limpopo	Average price per hectare in 12 months(R/ha)	71165
level1	ZA_1_005	2009	100,001-150K	Limpopo	Average price per hectare in 12 months(R/ha)	118916
level1	ZA_1_005	2009	150,001-200K	Limpopo	Average price per hectare in 12 months(R/ha)	177470
level1	ZA_1_005	2009	200,001-300K	Limpopo	Average price per hectare in 12 months(R/ha)	246742
level1	ZA_1_005	2009	300,001-500K	Limpopo	Average price per hectare in 12 months(R/ha)	357376
level1	ZA_1_005	2009	500,001-800K	Limpopo	Average price per hectare in 12 months(R/ha)	665174
level1	ZA_1_005	2009	800,001-1M	Limpopo	Average price per hectare in 12 months(R/ha)	948276
level1	ZA_1_005	2009	Above 1M	Limpopo	Average price per hectare in 12 months(R/ha)	2048290
level1	ZA_1_005	2009	Under 1.5K	Limpopo	Price trend per hectare in 12 months(R/ha)	89
level1	ZA_1_005	2009	1,501-3K	Limpopo	Price trend per hectare in 12 months(R/ha)	-64
level1	ZA_1_005	2009	3,001-5K	Limpopo	Price trend per hectare in 12 months(R/ha)	-48
level1	ZA_1_005	2009	5,001-10K	Limpopo	Price trend per hectare in 12 months(R/ha)	-20
level1	ZA_1_005	2009	10,001-20K	Limpopo	Price trend per hectare in 12 months(R/ha)	87
level1	ZA_1_005	2009	20,001-30K	Limpopo	Price trend per hectare in 12 months(R/ha)	-38
level1	ZA_1_005	2009	30,001-40K	Limpopo	Price trend per hectare in 12 months(R/ha)	450
level1	ZA_1_005	2009	40,001-50K	Limpopo	Price trend per hectare in 12 months(R/ha)	-315
level1	ZA_1_005	2009	50,001-100K	Limpopo	Price trend per hectare in 12 months(R/ha)	-342
level1	ZA_1_005	2009	100,001-150K	Limpopo	Price trend per hectare in 12 months(R/ha)	-327
level1	ZA_1_005	2009	150,001-200K	Limpopo	Price trend per hectare in 12 months(R/ha)	1046
level1	ZA_1_005	2009	200,001-300K	Limpopo	Price trend per hectare in 12 months(R/ha)	1511
level1	ZA_1_005	2009	300,001-500K	Limpopo	Price trend per hectare in 12 months(R/ha)	-4720
level1	ZA_1_005	2009	500,001-800K	Limpopo	Price trend per hectare in 12 months(R/ha)	23356
level1	ZA_1_005	2009	800,001-1M	Limpopo	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_005	2009	Above 1M	Limpopo	Price trend per hectare in 12 months(R/ha)	-283721
level1	ZA_1_005	2009	Under 1.5K	Limpopo	Average trend in 12 months(%)	10.7
level1	ZA_1_005	2009	1,501-3K	Limpopo	Average trend in 12 months(%)	-3
level1	ZA_1_005	2009	3,001-5K	Limpopo	Average trend in 12 months(%)	-1.2
level1	ZA_1_005	2009	5,001-10K	Limpopo	Average trend in 12 months(%)	-0.3
level1	ZA_1_005	2009	10,001-20K	Limpopo	Average trend in 12 months(%)	0.6
level1	ZA_1_005	2009	20,001-30K	Limpopo	Average trend in 12 months(%)	-0.2
level1	ZA_1_005	2009	30,001-40K	Limpopo	Average trend in 12 months(%)	1.3
level1	ZA_1_005	2009	40,001-50K	Limpopo	Average trend in 12 months(%)	-0.7
level1	ZA_1_005	2009	50,001-100K	Limpopo	Average trend in 12 months(%)	-0.5
level1	ZA_1_005	2009	100,001-150K	Limpopo	Average trend in 12 months(%)	-0.3
level1	ZA_1_005	2009	150,001-200K	Limpopo	Average trend in 12 months(%)	0.6
level1	ZA_1_005	2009	200,001-300K	Limpopo	Average trend in 12 months(%)	0.6
level1	ZA_1_005	2009	300,001-500K	Limpopo	Average trend in 12 months(%)	-1.3
level1	ZA_1_005	2009	500,001-800K	Limpopo	Average trend in 12 months(%)	3.5
level1	ZA_1_005	2009	800,001-1M	Limpopo	Average trend in 12 months(%)	\N
level1	ZA_1_005	2009	Above 1M	Limpopo	Average trend in 12 months(%)	-13.9
level1	ZA_1_005	2009	Under 1.5K	Limpopo	Average price in November 2018(R/ha)	\N
level1	ZA_1_005	2009	1,501-3K	Limpopo	Average price in November 2018(R/ha)	2124
level1	ZA_1_005	2009	3,001-5K	Limpopo	Average price in November 2018(R/ha)	3077
level1	ZA_1_005	2009	5,001-10K	Limpopo	Average price in November 2018(R/ha)	6458
level1	ZA_1_005	2009	10,001-20K	Limpopo	Average price in November 2018(R/ha)	16820
level1	ZA_1_005	2009	20,001-30K	Limpopo	Average price in November 2018(R/ha)	25986
level1	ZA_1_005	2009	30,001-40K	Limpopo	Average price in November 2018(R/ha)	34524
level1	ZA_1_005	2009	40,001-50K	Limpopo	Average price in November 2018(R/ha)	\N
level1	ZA_1_005	2009	50,001-100K	Limpopo	Average price in November 2018(R/ha)	83433
level1	ZA_1_005	2009	100,001-150K	Limpopo	Average price in November 2018(R/ha)	120690
level1	ZA_1_005	2009	150,001-200K	Limpopo	Average price in November 2018(R/ha)	\N
level1	ZA_1_005	2009	200,001-300K	Limpopo	Average price in November 2018(R/ha)	252234
level1	ZA_1_005	2009	300,001-500K	Limpopo	Average price in November 2018(R/ha)	\N
level1	ZA_1_005	2009	500,001-800K	Limpopo	Average price in November 2018(R/ha)	\N
level1	ZA_1_005	2009	800,001-1M	Limpopo	Average price in November 2018(R/ha)	\N
level1	ZA_1_005	2009	Above 1M	Limpopo	Average price in November 2018(R/ha)	\N
level1	ZA_1_004	2009	Under 1.5K	Mpumalanga	Number of transactions in 12 months	3
level1	ZA_1_004	2009	1,501-3K	Mpumalanga	Number of transactions in 12 months	9
level1	ZA_1_004	2009	3,001-5K	Mpumalanga	Number of transactions in 12 months	11
level1	ZA_1_004	2009	5,001-10K	Mpumalanga	Number of transactions in 12 months	50
level1	ZA_1_004	2009	10,001-20K	Mpumalanga	Number of transactions in 12 months	99
level1	ZA_1_004	2009	20,001-30K	Mpumalanga	Number of transactions in 12 months	52
level1	ZA_1_004	2009	30,001-40K	Mpumalanga	Number of transactions in 12 months	36
level1	ZA_1_004	2009	40,001-50K	Mpumalanga	Number of transactions in 12 months	26
level1	ZA_1_004	2009	50,001-100K	Mpumalanga	Number of transactions in 12 months	51
level1	ZA_1_004	2009	100,001-150K	Mpumalanga	Number of transactions in 12 months	41
level1	ZA_1_004	2009	150,001-200K	Mpumalanga	Number of transactions in 12 months	20
level1	ZA_1_004	2009	200,001-300K	Mpumalanga	Number of transactions in 12 months	13
level1	ZA_1_004	2009	300,001-500K	Mpumalanga	Number of transactions in 12 months	10
level1	ZA_1_004	2009	500,001-800K	Mpumalanga	Number of transactions in 12 months	3
level1	ZA_1_004	2009	800,001-1M	Mpumalanga	Number of transactions in 12 months	\N
level1	ZA_1_004	2009	Above 1M	Mpumalanga	Number of transactions in 12 months	1
level1	ZA_1_004	2009	Under 1.5K	Mpumalanga	Total hectare traded in 12 months(ha)	1784
level1	ZA_1_004	2009	1,501-3K	Mpumalanga	Total hectare traded in 12 months(ha)	1806
level1	ZA_1_004	2009	3,001-5K	Mpumalanga	Total hectare traded in 12 months(ha)	2760
level1	ZA_1_004	2009	5,001-10K	Mpumalanga	Total hectare traded in 12 months(ha)	18872
level1	ZA_1_004	2009	10,001-20K	Mpumalanga	Total hectare traded in 12 months(ha)	29115
level1	ZA_1_004	2009	20,001-30K	Mpumalanga	Total hectare traded in 12 months(ha)	20291
level1	ZA_1_004	2009	30,001-40K	Mpumalanga	Total hectare traded in 12 months(ha)	8758
level1	ZA_1_004	2009	40,001-50K	Mpumalanga	Total hectare traded in 12 months(ha)	3677
level1	ZA_1_004	2009	50,001-100K	Mpumalanga	Total hectare traded in 12 months(ha)	10896
level1	ZA_1_004	2009	100,001-150K	Mpumalanga	Total hectare traded in 12 months(ha)	3695
level1	ZA_1_004	2009	150,001-200K	Mpumalanga	Total hectare traded in 12 months(ha)	827
level1	ZA_1_004	2009	200,001-300K	Mpumalanga	Total hectare traded in 12 months(ha)	628
level1	ZA_1_004	2009	300,001-500K	Mpumalanga	Total hectare traded in 12 months(ha)	622
level1	ZA_1_004	2009	500,001-800K	Mpumalanga	Total hectare traded in 12 months(ha)	45
level1	ZA_1_004	2009	800,001-1M	Mpumalanga	Total hectare traded in 12 months(ha)	\N
level1	ZA_1_004	2009	Above 1M	Mpumalanga	Total hectare traded in 12 months(ha)	23
level1	ZA_1_004	2009	Under 1.5K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	1117
level1	ZA_1_004	2009	1,501-3K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	2071
level1	ZA_1_004	2009	3,001-5K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	3506
level1	ZA_1_004	2009	5,001-10K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	5126
level1	ZA_1_004	2009	10,001-20K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	10009
level1	ZA_1_004	2009	20,001-30K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	20127
level1	ZA_1_004	2009	30,001-40K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	30009
level1	ZA_1_004	2009	40,001-50K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	40580
level1	ZA_1_004	2009	50,001-100K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	50068
level1	ZA_1_004	2009	100,001-150K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	101322
level1	ZA_1_004	2009	150,001-200K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	151852
level1	ZA_1_004	2009	200,001-300K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	203704
level1	ZA_1_004	2009	300,001-500K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	307692
level1	ZA_1_004	2009	500,001-800K	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	500952
level1	ZA_1_004	2009	800,001-1M	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_004	2009	Above 1M	Mpumalanga	Lowest price per hectare in 12 months(R/ha)	1130435
level1	ZA_1_004	2009	Under 1.5K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	1485
level1	ZA_1_004	2009	1,501-3K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	2903
level1	ZA_1_004	2009	3,001-5K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	4938
level1	ZA_1_004	2009	5,001-10K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	10000
level1	ZA_1_004	2009	10,001-20K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	20000
level1	ZA_1_004	2009	20,001-30K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	30000
level1	ZA_1_004	2009	30,001-40K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	39962
level1	ZA_1_004	2009	40,001-50K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	50000
level1	ZA_1_004	2009	50,001-100K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	100000
level1	ZA_1_004	2009	100,001-150K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	149306
level1	ZA_1_004	2009	150,001-200K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	200000
level1	ZA_1_004	2009	200,001-300K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	300000
level1	ZA_1_004	2009	300,001-500K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	492000
level1	ZA_1_004	2009	500,001-800K	Mpumalanga	Highest price per hectare in 12 months(R/ha)	552462
level1	ZA_1_004	2009	800,001-1M	Mpumalanga	Highest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_004	2009	Above 1M	Mpumalanga	Highest price per hectare in 12 months(R/ha)	1130435
level1	ZA_1_004	2009	Under 1.5K	Mpumalanga	Average price per hectare in 12 months(R/ha)	1267
level1	ZA_1_004	2009	1,501-3K	Mpumalanga	Average price per hectare in 12 months(R/ha)	2424
level1	ZA_1_004	2009	3,001-5K	Mpumalanga	Average price per hectare in 12 months(R/ha)	4269
level1	ZA_1_004	2009	5,001-10K	Mpumalanga	Average price per hectare in 12 months(R/ha)	8203
level1	ZA_1_004	2009	10,001-20K	Mpumalanga	Average price per hectare in 12 months(R/ha)	14466
level1	ZA_1_004	2009	20,001-30K	Mpumalanga	Average price per hectare in 12 months(R/ha)	25486
level1	ZA_1_004	2009	30,001-40K	Mpumalanga	Average price per hectare in 12 months(R/ha)	35967
level1	ZA_1_004	2009	40,001-50K	Mpumalanga	Average price per hectare in 12 months(R/ha)	44112
level1	ZA_1_004	2009	50,001-100K	Mpumalanga	Average price per hectare in 12 months(R/ha)	65330
level1	ZA_1_004	2009	100,001-150K	Mpumalanga	Average price per hectare in 12 months(R/ha)	124150
level1	ZA_1_004	2009	150,001-200K	Mpumalanga	Average price per hectare in 12 months(R/ha)	176256
level1	ZA_1_004	2009	200,001-300K	Mpumalanga	Average price per hectare in 12 months(R/ha)	242272
level1	ZA_1_004	2009	300,001-500K	Mpumalanga	Average price per hectare in 12 months(R/ha)	356238
level1	ZA_1_004	2009	500,001-800K	Mpumalanga	Average price per hectare in 12 months(R/ha)	524320
level1	ZA_1_004	2009	800,001-1M	Mpumalanga	Average price per hectare in 12 months(R/ha)	\N
level1	ZA_1_004	2009	Above 1M	Mpumalanga	Average price per hectare in 12 months(R/ha)	1130435
level1	ZA_1_004	2009	Under 1.5K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-29
level1	ZA_1_004	2009	1,501-3K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	8
level1	ZA_1_004	2009	3,001-5K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-50
level1	ZA_1_004	2009	5,001-10K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-66
level1	ZA_1_004	2009	10,001-20K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	156
level1	ZA_1_004	2009	20,001-30K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-87
level1	ZA_1_004	2009	30,001-40K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-28
level1	ZA_1_004	2009	40,001-50K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	112
level1	ZA_1_004	2009	50,001-100K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-291
level1	ZA_1_004	2009	100,001-150K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-156
level1	ZA_1_004	2009	150,001-200K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	2025
level1	ZA_1_004	2009	200,001-300K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-2795
level1	ZA_1_004	2009	300,001-500K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	-7870
level1	ZA_1_004	2009	500,001-800K	Mpumalanga	Price trend per hectare in 12 months(R/ha)	8229
level1	ZA_1_004	2009	800,001-1M	Mpumalanga	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_004	2009	Above 1M	Mpumalanga	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_004	2009	Under 1.5K	Mpumalanga	Average trend in 12 months(%)	-2.3
level1	ZA_1_004	2009	1,501-3K	Mpumalanga	Average trend in 12 months(%)	0.3
level1	ZA_1_004	2009	3,001-5K	Mpumalanga	Average trend in 12 months(%)	-1.2
level1	ZA_1_004	2009	5,001-10K	Mpumalanga	Average trend in 12 months(%)	-0.8
level1	ZA_1_004	2009	10,001-20K	Mpumalanga	Average trend in 12 months(%)	1.1
level1	ZA_1_004	2009	20,001-30K	Mpumalanga	Average trend in 12 months(%)	-0.3
level1	ZA_1_004	2009	30,001-40K	Mpumalanga	Average trend in 12 months(%)	-0.1
level1	ZA_1_004	2009	40,001-50K	Mpumalanga	Average trend in 12 months(%)	0.3
level1	ZA_1_004	2009	50,001-100K	Mpumalanga	Average trend in 12 months(%)	-0.4
level1	ZA_1_004	2009	100,001-150K	Mpumalanga	Average trend in 12 months(%)	-0.1
level1	ZA_1_004	2009	150,001-200K	Mpumalanga	Average trend in 12 months(%)	1.1
level1	ZA_1_004	2009	200,001-300K	Mpumalanga	Average trend in 12 months(%)	-1.2
level1	ZA_1_004	2009	300,001-500K	Mpumalanga	Average trend in 12 months(%)	-2.2
level1	ZA_1_004	2009	500,001-800K	Mpumalanga	Average trend in 12 months(%)	1.6
level1	ZA_1_004	2009	800,001-1M	Mpumalanga	Average trend in 12 months(%)	\N
level1	ZA_1_004	2009	Above 1M	Mpumalanga	Average trend in 12 months(%)	\N
level1	ZA_1_004	2009	Under 1.5K	Mpumalanga	Average price in November 2018(R/ha)	\N
level1	ZA_1_004	2009	1,501-3K	Mpumalanga	Average price in November 2018(R/ha)	2364
level1	ZA_1_004	2009	3,001-5K	Mpumalanga	Average price in November 2018(R/ha)	4005
level1	ZA_1_004	2009	5,001-10K	Mpumalanga	Average price in November 2018(R/ha)	8509
level1	ZA_1_004	2009	10,001-20K	Mpumalanga	Average price in November 2018(R/ha)	13521
level1	ZA_1_004	2009	20,001-30K	Mpumalanga	Average price in November 2018(R/ha)	26532
level1	ZA_1_004	2009	30,001-40K	Mpumalanga	Average price in November 2018(R/ha)	37112
level1	ZA_1_004	2009	40,001-50K	Mpumalanga	Average price in November 2018(R/ha)	43411
level1	ZA_1_004	2009	50,001-100K	Mpumalanga	Average price in November 2018(R/ha)	58411
level1	ZA_1_004	2009	100,001-150K	Mpumalanga	Average price in November 2018(R/ha)	128062
level1	ZA_1_004	2009	150,001-200K	Mpumalanga	Average price in November 2018(R/ha)	177727
level1	ZA_1_004	2009	200,001-300K	Mpumalanga	Average price in November 2018(R/ha)	210606
level1	ZA_1_004	2009	300,001-500K	Mpumalanga	Average price in November 2018(R/ha)	\N
level1	ZA_1_004	2009	500,001-800K	Mpumalanga	Average price in November 2018(R/ha)	\N
level1	ZA_1_004	2009	800,001-1M	Mpumalanga	Average price in November 2018(R/ha)	\N
level1	ZA_1_004	2009	Above 1M	Mpumalanga	Average price in November 2018(R/ha)	\N
level1	ZA_1_006	2009	Under 1.5K	Northern Cape	Number of transactions in 12 months	72
level1	ZA_1_006	2009	1,501-3K	Northern Cape	Number of transactions in 12 months	73
level1	ZA_1_006	2009	3,001-5K	Northern Cape	Number of transactions in 12 months	33
level1	ZA_1_006	2009	5,001-10K	Northern Cape	Number of transactions in 12 months	29
level1	ZA_1_006	2009	10,001-20K	Northern Cape	Number of transactions in 12 months	10
level1	ZA_1_006	2009	20,001-30K	Northern Cape	Number of transactions in 12 months	1
level1	ZA_1_006	2009	30,001-40K	Northern Cape	Number of transactions in 12 months	1
level1	ZA_1_006	2009	40,001-50K	Northern Cape	Number of transactions in 12 months	1
level1	ZA_1_006	2009	50,001-100K	Northern Cape	Number of transactions in 12 months	12
level1	ZA_1_006	2009	100,001-150K	Northern Cape	Number of transactions in 12 months	8
level1	ZA_1_006	2009	150,001-200K	Northern Cape	Number of transactions in 12 months	10
level1	ZA_1_006	2009	200,001-300K	Northern Cape	Number of transactions in 12 months	17
level1	ZA_1_006	2009	300,001-500K	Northern Cape	Number of transactions in 12 months	8
level1	ZA_1_006	2009	500,001-800K	Northern Cape	Number of transactions in 12 months	1
level1	ZA_1_006	2009	800,001-1M	Northern Cape	Number of transactions in 12 months	\N
level1	ZA_1_006	2009	Above 1M	Northern Cape	Number of transactions in 12 months	2
level1	ZA_1_006	2009	Under 1.5K	Northern Cape	Total hectare traded in 12 months(ha)	267227
level1	ZA_1_006	2009	1,501-3K	Northern Cape	Total hectare traded in 12 months(ha)	234177
level1	ZA_1_006	2009	3,001-5K	Northern Cape	Total hectare traded in 12 months(ha)	68256
level1	ZA_1_006	2009	5,001-10K	Northern Cape	Total hectare traded in 12 months(ha)	29357
level1	ZA_1_006	2009	10,001-20K	Northern Cape	Total hectare traded in 12 months(ha)	6796
level1	ZA_1_006	2009	20,001-30K	Northern Cape	Total hectare traded in 12 months(ha)	407
level1	ZA_1_006	2009	30,001-40K	Northern Cape	Total hectare traded in 12 months(ha)	80
level1	ZA_1_006	2009	40,001-50K	Northern Cape	Total hectare traded in 12 months(ha)	21
level1	ZA_1_006	2009	50,001-100K	Northern Cape	Total hectare traded in 12 months(ha)	1002
level1	ZA_1_006	2009	100,001-150K	Northern Cape	Total hectare traded in 12 months(ha)	802
level1	ZA_1_006	2009	150,001-200K	Northern Cape	Total hectare traded in 12 months(ha)	1114
level1	ZA_1_006	2009	200,001-300K	Northern Cape	Total hectare traded in 12 months(ha)	1033
level1	ZA_1_006	2009	300,001-500K	Northern Cape	Total hectare traded in 12 months(ha)	277
level1	ZA_1_006	2009	500,001-800K	Northern Cape	Total hectare traded in 12 months(ha)	18
level1	ZA_1_006	2009	800,001-1M	Northern Cape	Total hectare traded in 12 months(ha)	\N
level1	ZA_1_006	2009	Above 1M	Northern Cape	Total hectare traded in 12 months(ha)	56
level1	ZA_1_006	2009	Under 1.5K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	6
level1	ZA_1_006	2009	1,501-3K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	1508
level1	ZA_1_006	2009	3,001-5K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	3133
level1	ZA_1_006	2009	5,001-10K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	5014
level1	ZA_1_006	2009	10,001-20K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	10409
level1	ZA_1_006	2009	20,001-30K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	22113
level1	ZA_1_006	2009	30,001-40K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	31125
level1	ZA_1_006	2009	40,001-50K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	45714
level1	ZA_1_006	2009	50,001-100K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	51282
level1	ZA_1_006	2009	100,001-150K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	101471
level1	ZA_1_006	2009	150,001-200K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	152174
level1	ZA_1_006	2009	200,001-300K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	211077
level1	ZA_1_006	2009	300,001-500K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	302000
level1	ZA_1_006	2009	500,001-800K	Northern Cape	Lowest price per hectare in 12 months(R/ha)	540278
level1	ZA_1_006	2009	800,001-1M	Northern Cape	Lowest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_006	2009	Above 1M	Northern Cape	Lowest price per hectare in 12 months(R/ha)	1086957
level1	ZA_1_006	2009	Under 1.5K	Northern Cape	Highest price per hectare in 12 months(R/ha)	1450
level1	ZA_1_006	2009	1,501-3K	Northern Cape	Highest price per hectare in 12 months(R/ha)	2983
level1	ZA_1_006	2009	3,001-5K	Northern Cape	Highest price per hectare in 12 months(R/ha)	5000
level1	ZA_1_006	2009	5,001-10K	Northern Cape	Highest price per hectare in 12 months(R/ha)	9975
level1	ZA_1_006	2009	10,001-20K	Northern Cape	Highest price per hectare in 12 months(R/ha)	19205
level1	ZA_1_006	2009	20,001-30K	Northern Cape	Highest price per hectare in 12 months(R/ha)	22113
level1	ZA_1_006	2009	30,001-40K	Northern Cape	Highest price per hectare in 12 months(R/ha)	31125
level1	ZA_1_006	2009	40,001-50K	Northern Cape	Highest price per hectare in 12 months(R/ha)	45714
level1	ZA_1_006	2009	50,001-100K	Northern Cape	Highest price per hectare in 12 months(R/ha)	97826
level1	ZA_1_006	2009	100,001-150K	Northern Cape	Highest price per hectare in 12 months(R/ha)	145827
level1	ZA_1_006	2009	150,001-200K	Northern Cape	Highest price per hectare in 12 months(R/ha)	199410
level1	ZA_1_006	2009	200,001-300K	Northern Cape	Highest price per hectare in 12 months(R/ha)	300000
level1	ZA_1_006	2009	300,001-500K	Northern Cape	Highest price per hectare in 12 months(R/ha)	448276
level1	ZA_1_006	2009	500,001-800K	Northern Cape	Highest price per hectare in 12 months(R/ha)	540278
level1	ZA_1_006	2009	800,001-1M	Northern Cape	Highest price per hectare in 12 months(R/ha)	\N
level1	ZA_1_006	2009	Above 1M	Northern Cape	Highest price per hectare in 12 months(R/ha)	1451000
level1	ZA_1_006	2009	Under 1.5K	Northern Cape	Average price per hectare in 12 months(R/ha)	793
level1	ZA_1_006	2009	1,501-3K	Northern Cape	Average price per hectare in 12 months(R/ha)	2179
level1	ZA_1_006	2009	3,001-5K	Northern Cape	Average price per hectare in 12 months(R/ha)	3915
level1	ZA_1_006	2009	5,001-10K	Northern Cape	Average price per hectare in 12 months(R/ha)	7171
level1	ZA_1_006	2009	10,001-20K	Northern Cape	Average price per hectare in 12 months(R/ha)	14035
level1	ZA_1_006	2009	20,001-30K	Northern Cape	Average price per hectare in 12 months(R/ha)	22113
level1	ZA_1_006	2009	30,001-40K	Northern Cape	Average price per hectare in 12 months(R/ha)	31125
level1	ZA_1_006	2009	40,001-50K	Northern Cape	Average price per hectare in 12 months(R/ha)	45714
level1	ZA_1_006	2009	50,001-100K	Northern Cape	Average price per hectare in 12 months(R/ha)	67936
level1	ZA_1_006	2009	100,001-150K	Northern Cape	Average price per hectare in 12 months(R/ha)	112113
level1	ZA_1_006	2009	150,001-200K	Northern Cape	Average price per hectare in 12 months(R/ha)	172961
level1	ZA_1_006	2009	200,001-300K	Northern Cape	Average price per hectare in 12 months(R/ha)	261362
level1	ZA_1_006	2009	300,001-500K	Northern Cape	Average price per hectare in 12 months(R/ha)	362562
level1	ZA_1_006	2009	500,001-800K	Northern Cape	Average price per hectare in 12 months(R/ha)	540278
level1	ZA_1_006	2009	800,001-1M	Northern Cape	Average price per hectare in 12 months(R/ha)	\N
level1	ZA_1_006	2009	Above 1M	Northern Cape	Average price per hectare in 12 months(R/ha)	1268978
level1	ZA_1_006	2009	Under 1.5K	Northern Cape	Price trend per hectare in 12 months(R/ha)	2
level1	ZA_1_006	2009	1,501-3K	Northern Cape	Price trend per hectare in 12 months(R/ha)	3
level1	ZA_1_006	2009	3,001-5K	Northern Cape	Price trend per hectare in 12 months(R/ha)	3
level1	ZA_1_006	2009	5,001-10K	Northern Cape	Price trend per hectare in 12 months(R/ha)	160
level1	ZA_1_006	2009	10,001-20K	Northern Cape	Price trend per hectare in 12 months(R/ha)	-73
level1	ZA_1_006	2009	20,001-30K	Northern Cape	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_006	2009	30,001-40K	Northern Cape	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_006	2009	40,001-50K	Northern Cape	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_006	2009	50,001-100K	Northern Cape	Price trend per hectare in 12 months(R/ha)	-644
level1	ZA_1_006	2009	100,001-150K	Northern Cape	Price trend per hectare in 12 months(R/ha)	754
level1	ZA_1_006	2009	150,001-200K	Northern Cape	Price trend per hectare in 12 months(R/ha)	-469
level1	ZA_1_006	2009	200,001-300K	Northern Cape	Price trend per hectare in 12 months(R/ha)	1221
level1	ZA_1_006	2009	300,001-500K	Northern Cape	Price trend per hectare in 12 months(R/ha)	12116
level1	ZA_1_006	2009	500,001-800K	Northern Cape	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_006	2009	800,001-1M	Northern Cape	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_006	2009	Above 1M	Northern Cape	Price trend per hectare in 12 months(R/ha)	72809
level1	ZA_1_006	2009	Under 1.5K	Northern Cape	Average trend in 12 months(%)	0.3
level1	ZA_1_006	2009	1,501-3K	Northern Cape	Average trend in 12 months(%)	0.1
level1	ZA_1_006	2009	3,001-5K	Northern Cape	Average trend in 12 months(%)	0.1
level1	ZA_1_006	2009	5,001-10K	Northern Cape	Average trend in 12 months(%)	2.2
level1	ZA_1_006	2009	10,001-20K	Northern Cape	Average trend in 12 months(%)	-0.5
level1	ZA_1_006	2009	20,001-30K	Northern Cape	Average trend in 12 months(%)	\N
level1	ZA_1_006	2009	30,001-40K	Northern Cape	Average trend in 12 months(%)	\N
level1	ZA_1_006	2009	40,001-50K	Northern Cape	Average trend in 12 months(%)	\N
level1	ZA_1_006	2009	50,001-100K	Northern Cape	Average trend in 12 months(%)	-0.9
level1	ZA_1_006	2009	100,001-150K	Northern Cape	Average trend in 12 months(%)	0.7
level1	ZA_1_006	2009	150,001-200K	Northern Cape	Average trend in 12 months(%)	-0.3
level1	ZA_1_006	2009	200,001-300K	Northern Cape	Average trend in 12 months(%)	0.5
level1	ZA_1_006	2009	300,001-500K	Northern Cape	Average trend in 12 months(%)	3.3
level1	ZA_1_006	2009	500,001-800K	Northern Cape	Average trend in 12 months(%)	\N
level1	ZA_1_006	2009	800,001-1M	Northern Cape	Average trend in 12 months(%)	\N
level1	ZA_1_006	2009	Above 1M	Northern Cape	Average trend in 12 months(%)	5.7
level1	ZA_1_006	2009	Under 1.5K	Northern Cape	Average price in November 2018(R/ha)	961
level1	ZA_1_006	2009	1,501-3K	Northern Cape	Average price in November 2018(R/ha)	2164
level1	ZA_1_006	2009	3,001-5K	Northern Cape	Average price in November 2018(R/ha)	3645
level1	ZA_1_006	2009	5,001-10K	Northern Cape	Average price in November 2018(R/ha)	9574
level1	ZA_1_006	2009	10,001-20K	Northern Cape	Average price in November 2018(R/ha)	15929
level1	ZA_1_006	2009	20,001-30K	Northern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_006	2009	30,001-40K	Northern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_006	2009	40,001-50K	Northern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_006	2009	50,001-100K	Northern Cape	Average price in November 2018(R/ha)	65789
level1	ZA_1_006	2009	100,001-150K	Northern Cape	Average price in November 2018(R/ha)	130435
level1	ZA_1_006	2009	150,001-200K	Northern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_006	2009	200,001-300K	Northern Cape	Average price in November 2018(R/ha)	254430
level1	ZA_1_006	2009	300,001-500K	Northern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_006	2009	500,001-800K	Northern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_006	2009	800,001-1M	Northern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_006	2009	Above 1M	Northern Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_007	2009	Under 1.5K	North West	Number of transactions in 12 months	8
level1	ZA_1_007	2009	1,501-3K	North West	Number of transactions in 12 months	18
level1	ZA_1_007	2009	3,001-5K	North West	Number of transactions in 12 months	44
level1	ZA_1_007	2009	5,001-10K	North West	Number of transactions in 12 months	130
level1	ZA_1_007	2009	10,001-20K	North West	Number of transactions in 12 months	142
level1	ZA_1_007	2009	20,001-30K	North West	Number of transactions in 12 months	55
level1	ZA_1_007	2009	30,001-40K	North West	Number of transactions in 12 months	40
level1	ZA_1_007	2009	40,001-50K	North West	Number of transactions in 12 months	24
level1	ZA_1_007	2009	50,001-100K	North West	Number of transactions in 12 months	64
level1	ZA_1_007	2009	100,001-150K	North West	Number of transactions in 12 months	32
level1	ZA_1_007	2009	150,001-200K	North West	Number of transactions in 12 months	9
level1	ZA_1_007	2009	200,001-300K	North West	Number of transactions in 12 months	6
level1	ZA_1_007	2009	300,001-500K	North West	Number of transactions in 12 months	5
level1	ZA_1_007	2009	500,001-800K	North West	Number of transactions in 12 months	5
level1	ZA_1_007	2009	800,001-1M	North West	Number of transactions in 12 months	3
level1	ZA_1_007	2009	Above 1M	North West	Number of transactions in 12 months	1
level1	ZA_1_007	2009	Under 1.5K	North West	Total hectare traded in 12 months(ha)	2929
level1	ZA_1_007	2009	1,501-3K	North West	Total hectare traded in 12 months(ha)	9560
level1	ZA_1_007	2009	3,001-5K	North West	Total hectare traded in 12 months(ha)	29239
level1	ZA_1_007	2009	5,001-10K	North West	Total hectare traded in 12 months(ha)	78100
level1	ZA_1_007	2009	10,001-20K	North West	Total hectare traded in 12 months(ha)	38715
level1	ZA_1_007	2009	20,001-30K	North West	Total hectare traded in 12 months(ha)	7802
level1	ZA_1_007	2009	30,001-40K	North West	Total hectare traded in 12 months(ha)	2351
level1	ZA_1_007	2009	40,001-50K	North West	Total hectare traded in 12 months(ha)	1268
level1	ZA_1_007	2009	50,001-100K	North West	Total hectare traded in 12 months(ha)	3933
level1	ZA_1_007	2009	100,001-150K	North West	Total hectare traded in 12 months(ha)	1130
level1	ZA_1_007	2009	150,001-200K	North West	Total hectare traded in 12 months(ha)	409
level1	ZA_1_007	2009	200,001-300K	North West	Total hectare traded in 12 months(ha)	178
level1	ZA_1_007	2009	300,001-500K	North West	Total hectare traded in 12 months(ha)	327
level1	ZA_1_007	2009	500,001-800K	North West	Total hectare traded in 12 months(ha)	119
level1	ZA_1_007	2009	800,001-1M	North West	Total hectare traded in 12 months(ha)	60
level1	ZA_1_007	2009	Above 1M	North West	Total hectare traded in 12 months(ha)	108
level1	ZA_1_007	2009	Under 1.5K	North West	Lowest price per hectare in 12 months(R/ha)	20
level1	ZA_1_007	2009	1,501-3K	North West	Lowest price per hectare in 12 months(R/ha)	1509
level1	ZA_1_007	2009	3,001-5K	North West	Lowest price per hectare in 12 months(R/ha)	3049
level1	ZA_1_007	2009	5,001-10K	North West	Lowest price per hectare in 12 months(R/ha)	5060
level1	ZA_1_007	2009	10,001-20K	North West	Lowest price per hectare in 12 months(R/ha)	10002
level1	ZA_1_007	2009	20,001-30K	North West	Lowest price per hectare in 12 months(R/ha)	20138
level1	ZA_1_007	2009	30,001-40K	North West	Lowest price per hectare in 12 months(R/ha)	30270
level1	ZA_1_007	2009	40,001-50K	North West	Lowest price per hectare in 12 months(R/ha)	40909
level1	ZA_1_007	2009	50,001-100K	North West	Lowest price per hectare in 12 months(R/ha)	51207
level1	ZA_1_007	2009	100,001-150K	North West	Lowest price per hectare in 12 months(R/ha)	101111
level1	ZA_1_007	2009	150,001-200K	North West	Lowest price per hectare in 12 months(R/ha)	153846
level1	ZA_1_007	2009	200,001-300K	North West	Lowest price per hectare in 12 months(R/ha)	204545
level1	ZA_1_007	2009	300,001-500K	North West	Lowest price per hectare in 12 months(R/ha)	309524
level1	ZA_1_007	2009	500,001-800K	North West	Lowest price per hectare in 12 months(R/ha)	556777
level1	ZA_1_007	2009	800,001-1M	North West	Lowest price per hectare in 12 months(R/ha)	821667
level1	ZA_1_007	2009	Above 1M	North West	Lowest price per hectare in 12 months(R/ha)	5865752
level1	ZA_1_007	2009	Under 1.5K	North West	Highest price per hectare in 12 months(R/ha)	1304
level1	ZA_1_007	2009	1,501-3K	North West	Highest price per hectare in 12 months(R/ha)	2996
level1	ZA_1_007	2009	3,001-5K	North West	Highest price per hectare in 12 months(R/ha)	5000
level1	ZA_1_007	2009	5,001-10K	North West	Highest price per hectare in 12 months(R/ha)	10000
level1	ZA_1_007	2009	10,001-20K	North West	Highest price per hectare in 12 months(R/ha)	20000
level1	ZA_1_007	2009	20,001-30K	North West	Highest price per hectare in 12 months(R/ha)	29750
level1	ZA_1_007	2009	30,001-40K	North West	Highest price per hectare in 12 months(R/ha)	40000
level1	ZA_1_007	2009	40,001-50K	North West	Highest price per hectare in 12 months(R/ha)	50000
level1	ZA_1_007	2009	50,001-100K	North West	Highest price per hectare in 12 months(R/ha)	100000
level1	ZA_1_007	2009	100,001-150K	North West	Highest price per hectare in 12 months(R/ha)	150000
level1	ZA_1_007	2009	150,001-200K	North West	Highest price per hectare in 12 months(R/ha)	193333
level1	ZA_1_007	2009	200,001-300K	North West	Highest price per hectare in 12 months(R/ha)	280952
level1	ZA_1_007	2009	300,001-500K	North West	Highest price per hectare in 12 months(R/ha)	450450
level1	ZA_1_007	2009	500,001-800K	North West	Highest price per hectare in 12 months(R/ha)	678788
level1	ZA_1_007	2009	800,001-1M	North West	Highest price per hectare in 12 months(R/ha)	1000000
level1	ZA_1_007	2009	Above 1M	North West	Highest price per hectare in 12 months(R/ha)	5865752
level1	ZA_1_007	2009	Under 1.5K	North West	Average price per hectare in 12 months(R/ha)	520
level1	ZA_1_007	2009	1,501-3K	North West	Average price per hectare in 12 months(R/ha)	2293
level1	ZA_1_007	2009	3,001-5K	North West	Average price per hectare in 12 months(R/ha)	4156
level1	ZA_1_007	2009	5,001-10K	North West	Average price per hectare in 12 months(R/ha)	7046
level1	ZA_1_007	2009	10,001-20K	North West	Average price per hectare in 12 months(R/ha)	13702
level1	ZA_1_007	2009	20,001-30K	North West	Average price per hectare in 12 months(R/ha)	24406
level1	ZA_1_007	2009	30,001-40K	North West	Average price per hectare in 12 months(R/ha)	33614
level1	ZA_1_007	2009	40,001-50K	North West	Average price per hectare in 12 months(R/ha)	45205
level1	ZA_1_007	2009	50,001-100K	North West	Average price per hectare in 12 months(R/ha)	71175
level1	ZA_1_007	2009	100,001-150K	North West	Average price per hectare in 12 months(R/ha)	121666
level1	ZA_1_007	2009	150,001-200K	North West	Average price per hectare in 12 months(R/ha)	172425
level1	ZA_1_007	2009	200,001-300K	North West	Average price per hectare in 12 months(R/ha)	258288
level1	ZA_1_007	2009	300,001-500K	North West	Average price per hectare in 12 months(R/ha)	388095
level1	ZA_1_007	2009	500,001-800K	North West	Average price per hectare in 12 months(R/ha)	595573
level1	ZA_1_007	2009	800,001-1M	North West	Average price per hectare in 12 months(R/ha)	929803
level1	ZA_1_007	2009	Above 1M	North West	Average price per hectare in 12 months(R/ha)	5865752
level1	ZA_1_007	2009	Under 1.5K	North West	Price trend per hectare in 12 months(R/ha)	2
level1	ZA_1_007	2009	1,501-3K	North West	Price trend per hectare in 12 months(R/ha)	4
level1	ZA_1_007	2009	3,001-5K	North West	Price trend per hectare in 12 months(R/ha)	-9
level1	ZA_1_007	2009	5,001-10K	North West	Price trend per hectare in 12 months(R/ha)	1
level1	ZA_1_007	2009	10,001-20K	North West	Price trend per hectare in 12 months(R/ha)	46
level1	ZA_1_007	2009	20,001-30K	North West	Price trend per hectare in 12 months(R/ha)	-30
level1	ZA_1_007	2009	30,001-40K	North West	Price trend per hectare in 12 months(R/ha)	-133
level1	ZA_1_007	2009	40,001-50K	North West	Price trend per hectare in 12 months(R/ha)	-250
level1	ZA_1_007	2009	50,001-100K	North West	Price trend per hectare in 12 months(R/ha)	780
level1	ZA_1_007	2009	100,001-150K	North West	Price trend per hectare in 12 months(R/ha)	-404
level1	ZA_1_007	2009	150,001-200K	North West	Price trend per hectare in 12 months(R/ha)	-348
level1	ZA_1_007	2009	200,001-300K	North West	Price trend per hectare in 12 months(R/ha)	-774
level1	ZA_1_007	2009	300,001-500K	North West	Price trend per hectare in 12 months(R/ha)	1771
level1	ZA_1_007	2009	500,001-800K	North West	Price trend per hectare in 12 months(R/ha)	-6678
level1	ZA_1_007	2009	800,001-1M	North West	Price trend per hectare in 12 months(R/ha)	609
level1	ZA_1_007	2009	Above 1M	North West	Price trend per hectare in 12 months(R/ha)	\N
level1	ZA_1_007	2009	Under 1.5K	North West	Average trend in 12 months(%)	0.4
level1	ZA_1_007	2009	1,501-3K	North West	Average trend in 12 months(%)	0.2
level1	ZA_1_007	2009	3,001-5K	North West	Average trend in 12 months(%)	-0.2
level1	ZA_1_007	2009	5,001-10K	North West	Average trend in 12 months(%)	0
level1	ZA_1_007	2009	10,001-20K	North West	Average trend in 12 months(%)	0.3
level1	ZA_1_007	2009	20,001-30K	North West	Average trend in 12 months(%)	-0.1
level1	ZA_1_007	2009	30,001-40K	North West	Average trend in 12 months(%)	-0.4
level1	ZA_1_007	2009	40,001-50K	North West	Average trend in 12 months(%)	-0.6
level1	ZA_1_007	2009	50,001-100K	North West	Average trend in 12 months(%)	1.1
level1	ZA_1_007	2009	100,001-150K	North West	Average trend in 12 months(%)	-0.3
level1	ZA_1_007	2009	150,001-200K	North West	Average trend in 12 months(%)	-0.2
level1	ZA_1_007	2009	200,001-300K	North West	Average trend in 12 months(%)	-0.3
level1	ZA_1_007	2009	300,001-500K	North West	Average trend in 12 months(%)	0.5
level1	ZA_1_007	2009	500,001-800K	North West	Average trend in 12 months(%)	-1.1
level1	ZA_1_007	2009	800,001-1M	North West	Average trend in 12 months(%)	0.1
level1	ZA_1_007	2009	Above 1M	North West	Average trend in 12 months(%)	\N
level1	ZA_1_007	2009	Under 1.5K	North West	Average price in November 2018(R/ha)	\N
level1	ZA_1_007	2009	1,501-3K	North West	Average price in November 2018(R/ha)	2462
level1	ZA_1_007	2009	3,001-5K	North West	Average price in November 2018(R/ha)	\N
level1	ZA_1_007	2009	5,001-10K	North West	Average price in November 2018(R/ha)	7137
level1	ZA_1_007	2009	10,001-20K	North West	Average price in November 2018(R/ha)	12665
level1	ZA_1_007	2009	20,001-30K	North West	Average price in November 2018(R/ha)	23077
level1	ZA_1_007	2009	30,001-40K	North West	Average price in November 2018(R/ha)	\N
level1	ZA_1_007	2009	40,001-50K	North West	Average price in November 2018(R/ha)	\N
level1	ZA_1_007	2009	50,001-100K	North West	Average price in November 2018(R/ha)	76025
level1	ZA_1_007	2009	100,001-150K	North West	Average price in November 2018(R/ha)	124443
level1	ZA_1_007	2009	150,001-200K	North West	Average price in November 2018(R/ha)	158182
level1	ZA_1_007	2009	200,001-300K	North West	Average price in November 2018(R/ha)	\N
level1	ZA_1_007	2009	300,001-500K	North West	Average price in November 2018(R/ha)	450450
level1	ZA_1_007	2009	500,001-800K	North West	Average price in November 2018(R/ha)	\N
level1	ZA_1_007	2009	800,001-1M	North West	Average price in November 2018(R/ha)	\N
level1	ZA_1_007	2009	Above 1M	North West	Average price in November 2018(R/ha)	\N
level1	ZA_1_008	2009	Under 1.5K	Western Cape	Number of transactions in 12 months	41
level1	ZA_1_008	2009	1,501-3K	Western Cape	Number of transactions in 12 months	50
level1	ZA_1_008	2009	3,001-5K	Western Cape	Number of transactions in 12 months	28
level1	ZA_1_008	2009	5,001-10K	Western Cape	Number of transactions in 12 months	48
level1	ZA_1_008	2009	10,001-20K	Western Cape	Number of transactions in 12 months	75
level1	ZA_1_008	2009	20,001-30K	Western Cape	Number of transactions in 12 months	45
level1	ZA_1_008	2009	30,001-40K	Western Cape	Number of transactions in 12 months	25
level1	ZA_1_008	2009	40,001-50K	Western Cape	Number of transactions in 12 months	33
level1	ZA_1_008	2009	50,001-100K	Western Cape	Number of transactions in 12 months	75
level1	ZA_1_008	2009	100,001-150K	Western Cape	Number of transactions in 12 months	41
level1	ZA_1_008	2009	150,001-200K	Western Cape	Number of transactions in 12 months	22
level1	ZA_1_008	2009	200,001-300K	Western Cape	Number of transactions in 12 months	24
level1	ZA_1_008	2009	300,001-500K	Western Cape	Number of transactions in 12 months	20
level1	ZA_1_008	2009	500,001-800K	Western Cape	Number of transactions in 12 months	10
level1	ZA_1_008	2009	800,001-1M	Western Cape	Number of transactions in 12 months	2
level1	ZA_1_008	2009	Above 1M	Western Cape	Number of transactions in 12 months	6
level1	ZA_1_008	2009	Under 1.5K	Western Cape	Total hectare traded in 12 months(ha)	87484
level1	ZA_1_008	2009	1,501-3K	Western Cape	Total hectare traded in 12 months(ha)	80862
level1	ZA_1_008	2009	3,001-5K	Western Cape	Total hectare traded in 12 months(ha)	22778
level1	ZA_1_008	2009	5,001-10K	Western Cape	Total hectare traded in 12 months(ha)	30061
level1	ZA_1_008	2009	10,001-20K	Western Cape	Total hectare traded in 12 months(ha)	23726
level1	ZA_1_008	2009	20,001-30K	Western Cape	Total hectare traded in 12 months(ha)	17726
level1	ZA_1_008	2009	30,001-40K	Western Cape	Total hectare traded in 12 months(ha)	3575
level1	ZA_1_008	2009	40,001-50K	Western Cape	Total hectare traded in 12 months(ha)	5471
level1	ZA_1_008	2009	50,001-100K	Western Cape	Total hectare traded in 12 months(ha)	9730
level1	ZA_1_008	2009	100,001-150K	Western Cape	Total hectare traded in 12 months(ha)	1968
level1	ZA_1_008	2009	150,001-200K	Western Cape	Total hectare traded in 12 months(ha)	2411
level1	ZA_1_008	2009	200,001-300K	Western Cape	Total hectare traded in 12 months(ha)	1100
level1	ZA_1_008	2009	300,001-500K	Western Cape	Total hectare traded in 12 months(ha)	576
level1	ZA_1_008	2009	500,001-800K	Western Cape	Total hectare traded in 12 months(ha)	356
level1	ZA_1_008	2009	800,001-1M	Western Cape	Total hectare traded in 12 months(ha)	35
level1	ZA_1_008	2009	Above 1M	Western Cape	Total hectare traded in 12 months(ha)	154
level1	ZA_1_008	2009	Under 1.5K	Western Cape	Lowest price per hectare in 12 months(R/ha)	30
level1	ZA_1_008	2009	1,501-3K	Western Cape	Lowest price per hectare in 12 months(R/ha)	1571
level1	ZA_1_008	2009	3,001-5K	Western Cape	Lowest price per hectare in 12 months(R/ha)	3023
level1	ZA_1_008	2009	5,001-10K	Western Cape	Lowest price per hectare in 12 months(R/ha)	5019
level1	ZA_1_008	2009	10,001-20K	Western Cape	Lowest price per hectare in 12 months(R/ha)	10020
level1	ZA_1_008	2009	20,001-30K	Western Cape	Lowest price per hectare in 12 months(R/ha)	20202
level1	ZA_1_008	2009	30,001-40K	Western Cape	Lowest price per hectare in 12 months(R/ha)	30464
level1	ZA_1_008	2009	40,001-50K	Western Cape	Lowest price per hectare in 12 months(R/ha)	40909
level1	ZA_1_008	2009	50,001-100K	Western Cape	Lowest price per hectare in 12 months(R/ha)	50070
level1	ZA_1_008	2009	100,001-150K	Western Cape	Lowest price per hectare in 12 months(R/ha)	102381
level1	ZA_1_008	2009	150,001-200K	Western Cape	Lowest price per hectare in 12 months(R/ha)	152381
level1	ZA_1_008	2009	200,001-300K	Western Cape	Lowest price per hectare in 12 months(R/ha)	203125
level1	ZA_1_008	2009	300,001-500K	Western Cape	Lowest price per hectare in 12 months(R/ha)	305085
level1	ZA_1_008	2009	500,001-800K	Western Cape	Lowest price per hectare in 12 months(R/ha)	515098
level1	ZA_1_008	2009	800,001-1M	Western Cape	Lowest price per hectare in 12 months(R/ha)	830556
level1	ZA_1_008	2009	Above 1M	Western Cape	Lowest price per hectare in 12 months(R/ha)	1250000
level1	ZA_1_008	2009	Under 1.5K	Western Cape	Highest price per hectare in 12 months(R/ha)	1430
level1	ZA_1_008	2009	1,501-3K	Western Cape	Highest price per hectare in 12 months(R/ha)	2973
level1	ZA_1_008	2009	3,001-5K	Western Cape	Highest price per hectare in 12 months(R/ha)	4808
level1	ZA_1_008	2009	5,001-10K	Western Cape	Highest price per hectare in 12 months(R/ha)	9975
level1	ZA_1_008	2009	10,001-20K	Western Cape	Highest price per hectare in 12 months(R/ha)	20000
level1	ZA_1_008	2009	20,001-30K	Western Cape	Highest price per hectare in 12 months(R/ha)	29865
level1	ZA_1_008	2009	30,001-40K	Western Cape	Highest price per hectare in 12 months(R/ha)	39739
level1	ZA_1_008	2009	40,001-50K	Western Cape	Highest price per hectare in 12 months(R/ha)	50000
level1	ZA_1_008	2009	50,001-100K	Western Cape	Highest price per hectare in 12 months(R/ha)	100000
level1	ZA_1_008	2009	100,001-150K	Western Cape	Highest price per hectare in 12 months(R/ha)	144970
level1	ZA_1_008	2009	150,001-200K	Western Cape	Highest price per hectare in 12 months(R/ha)	200000
level1	ZA_1_008	2009	200,001-300K	Western Cape	Highest price per hectare in 12 months(R/ha)	300000
level1	ZA_1_008	2009	300,001-500K	Western Cape	Highest price per hectare in 12 months(R/ha)	483922
level1	ZA_1_008	2009	500,001-800K	Western Cape	Highest price per hectare in 12 months(R/ha)	701786
level1	ZA_1_008	2009	800,001-1M	Western Cape	Highest price per hectare in 12 months(R/ha)	847059
level1	ZA_1_008	2009	Above 1M	Western Cape	Highest price per hectare in 12 months(R/ha)	3159091
level1	ZA_1_008	2009	Under 1.5K	Western Cape	Average price per hectare in 12 months(R/ha)	775
level1	ZA_1_008	2009	1,501-3K	Western Cape	Average price per hectare in 12 months(R/ha)	2186
level1	ZA_1_008	2009	3,001-5K	Western Cape	Average price per hectare in 12 months(R/ha)	3825
level1	ZA_1_008	2009	5,001-10K	Western Cape	Average price per hectare in 12 months(R/ha)	7165
level1	ZA_1_008	2009	10,001-20K	Western Cape	Average price per hectare in 12 months(R/ha)	14285
level1	ZA_1_008	2009	20,001-30K	Western Cape	Average price per hectare in 12 months(R/ha)	24878
level1	ZA_1_008	2009	30,001-40K	Western Cape	Average price per hectare in 12 months(R/ha)	35638
level1	ZA_1_008	2009	40,001-50K	Western Cape	Average price per hectare in 12 months(R/ha)	45866
level1	ZA_1_008	2009	50,001-100K	Western Cape	Average price per hectare in 12 months(R/ha)	72550
level1	ZA_1_008	2009	100,001-150K	Western Cape	Average price per hectare in 12 months(R/ha)	117306
level1	ZA_1_008	2009	150,001-200K	Western Cape	Average price per hectare in 12 months(R/ha)	173280
level1	ZA_1_008	2009	200,001-300K	Western Cape	Average price per hectare in 12 months(R/ha)	245061
level1	ZA_1_008	2009	300,001-500K	Western Cape	Average price per hectare in 12 months(R/ha)	375916
level1	ZA_1_008	2009	500,001-800K	Western Cape	Average price per hectare in 12 months(R/ha)	600819
level1	ZA_1_008	2009	800,001-1M	Western Cape	Average price per hectare in 12 months(R/ha)	838807
level1	ZA_1_008	2009	Above 1M	Western Cape	Average price per hectare in 12 months(R/ha)	2135170
level1	ZA_1_008	2009	Under 1.5K	Western Cape	Price trend per hectare in 12 months(R/ha)	6
level1	ZA_1_008	2009	1,501-3K	Western Cape	Price trend per hectare in 12 months(R/ha)	-67
level1	ZA_1_008	2009	3,001-5K	Western Cape	Price trend per hectare in 12 months(R/ha)	-4
level1	ZA_1_008	2009	5,001-10K	Western Cape	Price trend per hectare in 12 months(R/ha)	-9
level1	ZA_1_008	2009	10,001-20K	Western Cape	Price trend per hectare in 12 months(R/ha)	168
level1	ZA_1_008	2009	20,001-30K	Western Cape	Price trend per hectare in 12 months(R/ha)	104
level1	ZA_1_008	2009	30,001-40K	Western Cape	Price trend per hectare in 12 months(R/ha)	-175
level1	ZA_1_008	2009	40,001-50K	Western Cape	Price trend per hectare in 12 months(R/ha)	-176
level1	ZA_1_008	2009	50,001-100K	Western Cape	Price trend per hectare in 12 months(R/ha)	1358
level1	ZA_1_008	2009	100,001-150K	Western Cape	Price trend per hectare in 12 months(R/ha)	-491
level1	ZA_1_008	2009	150,001-200K	Western Cape	Price trend per hectare in 12 months(R/ha)	597
level1	ZA_1_008	2009	200,001-300K	Western Cape	Price trend per hectare in 12 months(R/ha)	-3934
level1	ZA_1_008	2009	300,001-500K	Western Cape	Price trend per hectare in 12 months(R/ha)	-4100
level1	ZA_1_008	2009	500,001-800K	Western Cape	Price trend per hectare in 12 months(R/ha)	-385
level1	ZA_1_008	2009	800,001-1M	Western Cape	Price trend per hectare in 12 months(R/ha)	-8252
level1	ZA_1_008	2009	Above 1M	Western Cape	Price trend per hectare in 12 months(R/ha)	126243
level1	ZA_1_008	2009	Under 1.5K	Western Cape	Average trend in 12 months(%)	0.8
level1	ZA_1_008	2009	1,501-3K	Western Cape	Average trend in 12 months(%)	-3.1
level1	ZA_1_008	2009	3,001-5K	Western Cape	Average trend in 12 months(%)	-0.1
level1	ZA_1_008	2009	5,001-10K	Western Cape	Average trend in 12 months(%)	-0.1
level1	ZA_1_008	2009	10,001-20K	Western Cape	Average trend in 12 months(%)	1.2
level1	ZA_1_008	2009	20,001-30K	Western Cape	Average trend in 12 months(%)	0.4
level1	ZA_1_008	2009	30,001-40K	Western Cape	Average trend in 12 months(%)	-0.5
level1	ZA_1_008	2009	40,001-50K	Western Cape	Average trend in 12 months(%)	-0.4
level1	ZA_1_008	2009	50,001-100K	Western Cape	Average trend in 12 months(%)	1.9
level1	ZA_1_008	2009	100,001-150K	Western Cape	Average trend in 12 months(%)	-0.4
level1	ZA_1_008	2009	150,001-200K	Western Cape	Average trend in 12 months(%)	0.3
level1	ZA_1_008	2009	200,001-300K	Western Cape	Average trend in 12 months(%)	-1.6
level1	ZA_1_008	2009	300,001-500K	Western Cape	Average trend in 12 months(%)	-1.1
level1	ZA_1_008	2009	500,001-800K	Western Cape	Average trend in 12 months(%)	-0.1
level1	ZA_1_008	2009	800,001-1M	Western Cape	Average trend in 12 months(%)	-1
level1	ZA_1_008	2009	Above 1M	Western Cape	Average trend in 12 months(%)	5.9
level1	ZA_1_008	2009	Under 1.5K	Western Cape	Average price in November 2018(R/ha)	956
level1	ZA_1_008	2009	1,501-3K	Western Cape	Average price in November 2018(R/ha)	1723
level1	ZA_1_008	2009	3,001-5K	Western Cape	Average price in November 2018(R/ha)	3116
level1	ZA_1_008	2009	5,001-10K	Western Cape	Average price in November 2018(R/ha)	7624
level1	ZA_1_008	2009	10,001-20K	Western Cape	Average price in November 2018(R/ha)	14373
level1	ZA_1_008	2009	20,001-30K	Western Cape	Average price in November 2018(R/ha)	24384
level1	ZA_1_008	2009	30,001-40K	Western Cape	Average price in November 2018(R/ha)	34700
level1	ZA_1_008	2009	40,001-50K	Western Cape	Average price in November 2018(R/ha)	45598
level1	ZA_1_008	2009	50,001-100K	Western Cape	Average price in November 2018(R/ha)	95393
level1	ZA_1_008	2009	100,001-150K	Western Cape	Average price in November 2018(R/ha)	117751
level1	ZA_1_008	2009	150,001-200K	Western Cape	Average price in November 2018(R/ha)	176385
level1	ZA_1_008	2009	200,001-300K	Western Cape	Average price in November 2018(R/ha)	236130
level1	ZA_1_008	2009	300,001-500K	Western Cape	Average price in November 2018(R/ha)	338452
level1	ZA_1_008	2009	500,001-800K	Western Cape	Average price in November 2018(R/ha)	622222
level1	ZA_1_008	2009	800,001-1M	Western Cape	Average price in November 2018(R/ha)	\N
level1	ZA_1_008	2009	Above 1M	Western Cape	Average price in November 2018(R/ha)	\N
\.


--
-- PostgreSQL database dump complete
--
