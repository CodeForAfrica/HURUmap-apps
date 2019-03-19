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

DROP TABLE IF EXISTS public.landsalessummaryhectarestcolour;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalessummaryhectarestcolour; Type: TABLE; Schema: public
--

CREATE TABLE public.landsalessummaryhectarestcolour (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_breakdown_hc character varying(128) NOT NULL,
    month_hc character varying(100) NOT NULL,
    total integer
);




--
-- Data for Name: landsalessummaryhectarestcolour; Type: TABLE DATA; Schema: public
--

COPY public.landsalessummaryhectarestcolour (geo_level, geo_code, geo_version, land_breakdown_hc, month_hc, total) FROM stdin;
country	ZA	2016	Government Agriculture	Aug	14344
country	ZA	2016	Government Agriculture	Sep	8954
country	ZA	2016	Government Agriculture	Oct	3496
country	ZA	2016	Government Agriculture	Nov	2388
country	ZA	2016	Government Agriculture	Dec	2075
country	ZA	2016	Government Agriculture	Jan	3484
country	ZA	2016	Government Agriculture	Feb	2462
country	ZA	2016	Government Agriculture	Mar	13823
country	ZA	2016	Government Agriculture	Apr	1054
country	ZA	2016	Government Agriculture	May	3308
country	ZA	2016	Government Agriculture	Jun	602
country	ZA	2016	Government Agriculture	Jul	2318
country	ZA	2016	Government Urban	Aug	17
country	ZA	2016	Government Urban	Sep	\N
country	ZA	2016	Government Urban	Oct	632
country	ZA	2016	Government Urban	Nov	25
country	ZA	2016	Government Urban	Dec	19
country	ZA	2016	Government Urban	Jan	64
country	ZA	2016	Government Urban	Feb	239
country	ZA	2016	Government Urban	Mar	66
country	ZA	2016	Government Urban	Apr	\N
country	ZA	2016	Government Urban	May	10
country	ZA	2016	Government Urban	Jun	\N
country	ZA	2016	Government Urban	Jul	639
country	ZA	2016	Private	Aug	16125
country	ZA	2016	Private	Sep	14918
country	ZA	2016	Private	Oct	9402
country	ZA	2016	Private	Nov	11562
country	ZA	2016	Private	Dec	15654
country	ZA	2016	Private	Jan	7163
country	ZA	2016	Private	Feb	19652
country	ZA	2016	Private	Mar	20262
country	ZA	2016	Private	Apr	18458
country	ZA	2016	Private	May	14383
country	ZA	2016	Private	Jun	18753
country	ZA	2016	Private	Jul	14505
country	ZA	2016	Other	Aug	5664
country	ZA	2016	Other	Sep	2452
country	ZA	2016	Other	Oct	9055
country	ZA	2016	Other	Nov	12792
country	ZA	2016	Other	Dec	7513
country	ZA	2016	Other	Jan	345
country	ZA	2016	Other	Feb	5426
country	ZA	2016	Other	Mar	18932
country	ZA	2016	Other	Apr	13480
country	ZA	2016	Other	May	3934
country	ZA	2016	Other	Jun	4571
country	ZA	2016	Other	Jul	581
province	EC	2016	Government Agriculture	Aug	\N
province	EC	2016	Government Agriculture	Sep	650
province	EC	2016	Government Agriculture	Oct	\N
province	EC	2016	Government Agriculture	Nov	\N
province	EC	2016	Government Agriculture	Dec	535
province	EC	2016	Government Agriculture	Jan	\N
province	EC	2016	Government Agriculture	Feb	\N
province	EC	2016	Government Agriculture	Mar	\N
province	EC	2016	Government Agriculture	Apr	\N
province	EC	2016	Government Agriculture	May	\N
province	EC	2016	Government Agriculture	Jun	\N
province	EC	2016	Government Agriculture	Jul	\N
province	EC	2016	Government Urban	Aug	\N
province	EC	2016	Government Urban	Sep	\N
province	EC	2016	Government Urban	Oct	\N
province	EC	2016	Government Urban	Nov	\N
province	EC	2016	Government Urban	Dec	\N
province	EC	2016	Government Urban	Jan	\N
province	EC	2016	Government Urban	Feb	183
province	EC	2016	Government Urban	Mar	\N
province	EC	2016	Government Urban	Apr	\N
province	EC	2016	Government Urban	May	\N
province	EC	2016	Government Urban	Jun	\N
province	EC	2016	Government Urban	Jul	\N
province	EC	2016	Private	Aug	4193
province	EC	2016	Private	Sep	1693
province	EC	2016	Private	Oct	963
province	EC	2016	Private	Nov	2098
province	EC	2016	Private	Dec	2341
province	EC	2016	Private	Jan	13
province	EC	2016	Private	Feb	41
province	EC	2016	Private	Mar	3218
province	EC	2016	Private	Apr	2264
province	EC	2016	Private	May	1244
province	EC	2016	Private	Jun	246
province	EC	2016	Private	Jul	9040
province	EC	2016	Other	Aug	391
province	EC	2016	Other	Sep	\N
province	EC	2016	Other	Oct	784
province	EC	2016	Other	Nov	12
province	EC	2016	Other	Dec	\N
province	EC	2016	Other	Jan	\N
province	EC	2016	Other	Feb	22
province	EC	2016	Other	Mar	1304
province	EC	2016	Other	Apr	\N
province	EC	2016	Other	May	\N
province	EC	2016	Other	Jun	\N
province	EC	2016	Other	Jul	\N
province	FS	2016	Government Agriculture	Aug	698
province	FS	2016	Government Agriculture	Sep	\N
province	FS	2016	Government Agriculture	Oct	\N
province	FS	2016	Government Agriculture	Nov	\N
province	FS	2016	Government Agriculture	Dec	\N
province	FS	2016	Government Agriculture	Jan	3484
province	FS	2016	Government Agriculture	Feb	\N
province	FS	2016	Government Agriculture	Mar	886
province	FS	2016	Government Agriculture	Apr	\N
province	FS	2016	Government Agriculture	May	\N
province	FS	2016	Government Agriculture	Jun	\N
province	FS	2016	Government Agriculture	Jul	1276
province	MP	2016	Private	Jul	748
province	FS	2016	Government Urban	Aug	\N
province	FS	2016	Government Urban	Sep	\N
province	FS	2016	Government Urban	Oct	\N
province	FS	2016	Government Urban	Nov	\N
province	FS	2016	Government Urban	Dec	\N
province	FS	2016	Government Urban	Jan	\N
province	FS	2016	Government Urban	Feb	\N
province	FS	2016	Government Urban	Mar	\N
province	FS	2016	Government Urban	Apr	\N
province	FS	2016	Government Urban	May	\N
province	FS	2016	Government Urban	Jun	\N
province	FS	2016	Government Urban	Jul	\N
province	FS	2016	Private	Aug	1263
province	FS	2016	Private	Sep	2013
province	FS	2016	Private	Oct	829
province	FS	2016	Private	Nov	1610
province	FS	2016	Private	Dec	1287
province	FS	2016	Private	Jan	12
province	FS	2016	Private	Feb	3815
province	FS	2016	Private	Mar	2506
province	FS	2016	Private	Apr	1471
province	FS	2016	Private	May	2341
province	FS	2016	Private	Jun	2094
province	FS	2016	Private	Jul	479
province	FS	2016	Other	Aug	59
province	FS	2016	Other	Sep	\N
province	FS	2016	Other	Oct	71
province	FS	2016	Other	Nov	428
province	FS	2016	Other	Dec	264
province	FS	2016	Other	Jan	\N
province	FS	2016	Other	Feb	\N
province	FS	2016	Other	Mar	199
province	FS	2016	Other	Apr	268
province	FS	2016	Other	May	602
province	FS	2016	Other	Jun	939
province	FS	2016	Other	Jul	\N
province	GT	2016	Government Agriculture	Aug	674
province	GT	2016	Government Agriculture	Sep	\N
province	GT	2016	Government Agriculture	Oct	\N
province	GT	2016	Government Agriculture	Nov	\N
province	GT	2016	Government Agriculture	Dec	312
province	GT	2016	Government Agriculture	Jan	\N
province	GT	2016	Government Agriculture	Feb	152
province	GT	2016	Government Agriculture	Mar	\N
province	GT	2016	Government Agriculture	Apr	\N
province	GT	2016	Government Agriculture	May	\N
province	GT	2016	Government Agriculture	Jun	\N
province	GT	2016	Government Agriculture	Jul	\N
province	GT	2016	Government Urban	Aug	\N
province	GT	2016	Government Urban	Sep	\N
province	GT	2016	Government Urban	Oct	\N
province	GT	2016	Government Urban	Nov	\N
province	GT	2016	Government Urban	Dec	\N
province	GT	2016	Government Urban	Jan	64
province	GT	2016	Government Urban	Feb	\N
province	GT	2016	Government Urban	Mar	\N
province	GT	2016	Government Urban	Apr	\N
province	GT	2016	Government Urban	May	\N
province	GT	2016	Government Urban	Jun	\N
province	GT	2016	Government Urban	Jul	168
province	GT	2016	Private	Aug	294
province	GT	2016	Private	Sep	505
province	GT	2016	Private	Oct	2155
province	GT	2016	Private	Nov	234
province	GT	2016	Private	Dec	265
province	GT	2016	Private	Jan	65
province	GT	2016	Private	Feb	442
province	GT	2016	Private	Mar	215
province	GT	2016	Private	Apr	439
province	GT	2016	Private	May	261
province	GT	2016	Private	Jun	670
province	GT	2016	Private	Jul	177
province	GT	2016	Other	Aug	\N
province	GT	2016	Other	Sep	172
province	GT	2016	Other	Oct	\N
province	GT	2016	Other	Nov	94
province	GT	2016	Other	Dec	\N
province	GT	2016	Other	Jan	31
province	GT	2016	Other	Feb	\N
province	GT	2016	Other	Mar	51
province	GT	2016	Other	Apr	\N
province	GT	2016	Other	May	2815
province	GT	2016	Other	Jun	72
province	GT	2016	Other	Jul	\N
province	KZN	2016	Government Agriculture	Aug	\N
province	KZN	2016	Government Agriculture	Sep	\N
province	KZN	2016	Government Agriculture	Oct	2049
province	KZN	2016	Government Agriculture	Nov	\N
province	KZN	2016	Government Agriculture	Dec	263
province	KZN	2016	Government Agriculture	Jan	\N
province	KZN	2016	Government Agriculture	Feb	1368
province	KZN	2016	Government Agriculture	Mar	3265
province	KZN	2016	Government Agriculture	Apr	\N
province	KZN	2016	Government Agriculture	May	\N
province	KZN	2016	Government Agriculture	Jun	\N
province	KZN	2016	Government Agriculture	Jul	\N
province	KZN	2016	Government Urban	Aug	\N
province	KZN	2016	Government Urban	Sep	\N
province	KZN	2016	Government Urban	Oct	\N
province	KZN	2016	Government Urban	Nov	\N
province	KZN	2016	Government Urban	Dec	19
province	KZN	2016	Government Urban	Jan	\N
province	KZN	2016	Government Urban	Feb	\N
province	KZN	2016	Government Urban	Mar	\N
province	KZN	2016	Government Urban	Apr	\N
province	KZN	2016	Government Urban	May	\N
province	KZN	2016	Government Urban	Jun	\N
province	KZN	2016	Government Urban	Jul	\N
province	KZN	2016	Private	Aug	1932
province	KZN	2016	Private	Sep	4392
province	KZN	2016	Private	Oct	1878
province	KZN	2016	Private	Nov	3155
province	KZN	2016	Private	Dec	1230
province	KZN	2016	Private	Jan	544
province	KZN	2016	Private	Feb	128
province	KZN	2016	Private	Mar	7994
province	KZN	2016	Private	Apr	1488
province	KZN	2016	Private	May	2276
province	KZN	2016	Private	Jun	808
province	KZN	2016	Private	Jul	1045
province	KZN	2016	Other	Aug	\N
province	KZN	2016	Other	Sep	1051
province	KZN	2016	Other	Oct	\N
province	KZN	2016	Other	Nov	\N
province	KZN	2016	Other	Dec	\N
province	KZN	2016	Other	Jan	\N
province	KZN	2016	Other	Feb	155
province	KZN	2016	Other	Mar	59
province	KZN	2016	Other	Apr	30
province	KZN	2016	Other	May	20
province	KZN	2016	Other	Jun	\N
province	KZN	2016	Other	Jul	\N
province	LIM	2016	Government Agriculture	Aug	\N
province	LIM	2016	Government Agriculture	Sep	2428
province	LIM	2016	Government Agriculture	Oct	\N
province	LIM	2016	Government Agriculture	Nov	963
province	LIM	2016	Government Agriculture	Dec	\N
province	LIM	2016	Government Agriculture	Jan	\N
province	LIM	2016	Government Agriculture	Feb	\N
province	LIM	2016	Government Agriculture	Mar	\N
province	LIM	2016	Government Agriculture	Apr	\N
province	LIM	2016	Government Agriculture	May	\N
province	LIM	2016	Government Agriculture	Jun	\N
province	LIM	2016	Government Agriculture	Jul	\N
province	LIM	2016	Government Urban	Aug	\N
province	LIM	2016	Government Urban	Sep	\N
province	LIM	2016	Government Urban	Oct	\N
province	LIM	2016	Government Urban	Nov	25
province	LIM	2016	Government Urban	Dec	\N
province	LIM	2016	Government Urban	Jan	\N
province	LIM	2016	Government Urban	Feb	56
province	LIM	2016	Government Urban	Mar	20
province	LIM	2016	Government Urban	Apr	\N
province	LIM	2016	Government Urban	May	\N
province	LIM	2016	Government Urban	Jun	\N
province	LIM	2016	Government Urban	Jul	389
province	LIM	2016	Private	Aug	1855
province	LIM	2016	Private	Sep	120
province	LIM	2016	Private	Oct	796
province	LIM	2016	Private	Nov	1099
province	LIM	2016	Private	Dec	2164
province	LIM	2016	Private	Jan	1269
province	LIM	2016	Private	Feb	3173
province	LIM	2016	Private	Mar	788
province	LIM	2016	Private	Apr	387
province	LIM	2016	Private	May	6391
province	LIM	2016	Private	Jun	685
province	LIM	2016	Private	Jul	2431
province	LIM	2016	Other	Aug	\N
province	LIM	2016	Other	Sep	\N
province	LIM	2016	Other	Oct	10
province	LIM	2016	Other	Nov	477
province	LIM	2016	Other	Dec	11
province	LIM	2016	Other	Jan	54
province	LIM	2016	Other	Feb	551
province	LIM	2016	Other	Mar	258
province	LIM	2016	Other	Apr	39
province	LIM	2016	Other	May	\N
province	LIM	2016	Other	Jun	2982
province	LIM	2016	Other	Jul	\N
province	MP	2016	Government Agriculture	Aug	301
province	MP	2016	Government Agriculture	Sep	1020
province	MP	2016	Government Agriculture	Oct	1447
province	MP	2016	Government Agriculture	Nov	948
province	MP	2016	Government Agriculture	Dec	857
province	MP	2016	Government Agriculture	Jan	\N
province	MP	2016	Government Agriculture	Feb	942
province	MP	2016	Government Agriculture	Mar	\N
province	MP	2016	Government Agriculture	Apr	\N
province	MP	2016	Government Agriculture	May	\N
province	MP	2016	Government Agriculture	Jun	\N
province	MP	2016	Government Agriculture	Jul	676
province	MP	2016	Government Urban	Aug	\N
province	MP	2016	Government Urban	Sep	\N
province	MP	2016	Government Urban	Oct	\N
province	MP	2016	Government Urban	Nov	\N
province	MP	2016	Government Urban	Dec	\N
province	MP	2016	Government Urban	Jan	\N
province	MP	2016	Government Urban	Feb	\N
province	MP	2016	Government Urban	Mar	\N
province	MP	2016	Government Urban	Apr	\N
province	MP	2016	Government Urban	May	\N
province	MP	2016	Government Urban	Jun	\N
province	MP	2016	Government Urban	Jul	82
province	MP	2016	Private	Aug	292
province	MP	2016	Private	Sep	929
province	MP	2016	Private	Oct	1148
province	MP	2016	Private	Nov	1393
province	MP	2016	Private	Dec	367
province	MP	2016	Private	Jan	1260
province	MP	2016	Private	Feb	2016
province	MP	2016	Private	Mar	1264
province	MP	2016	Private	Apr	2879
province	MP	2016	Private	May	745
province	MP	2016	Private	Jun	922
province	MP	2016	Other	Aug	1390
province	MP	2016	Other	Sep	371
province	MP	2016	Other	Oct	692
province	MP	2016	Other	Nov	3726
province	MP	2016	Other	Dec	30
province	MP	2016	Other	Jan	260
province	MP	2016	Other	Feb	4653
province	MP	2016	Other	Mar	1547
province	MP	2016	Other	Apr	496
province	MP	2016	Other	May	31
province	MP	2016	Other	Jun	\N
province	MP	2016	Other	Jul	557
province	NC	2016	Government Agriculture	Aug	11869
province	NC	2016	Government Agriculture	Sep	3131
province	NC	2016	Government Agriculture	Oct	\N
province	NC	2016	Government Agriculture	Nov	\N
province	NC	2016	Government Agriculture	Dec	\N
province	NC	2016	Government Agriculture	Jan	\N
province	NC	2016	Government Agriculture	Feb	\N
province	NC	2016	Government Agriculture	Mar	\N
province	NC	2016	Government Agriculture	Apr	\N
province	NC	2016	Government Agriculture	May	\N
province	NC	2016	Government Agriculture	Jun	\N
province	NC	2016	Government Agriculture	Jul	\N
province	NC	2016	Government Urban	Aug	\N
province	NC	2016	Government Urban	Sep	\N
province	NC	2016	Government Urban	Oct	300
province	NC	2016	Government Urban	Nov	\N
province	NC	2016	Government Urban	Dec	\N
province	NC	2016	Government Urban	Jan	\N
province	NC	2016	Government Urban	Feb	\N
province	NC	2016	Government Urban	Mar	46
province	NC	2016	Government Urban	Apr	\N
province	NC	2016	Government Urban	May	\N
province	NC	2016	Government Urban	Jun	\N
province	NC	2016	Government Urban	Jul	\N
province	NC	2016	Private	Aug	2540
province	NC	2016	Private	Sep	680
province	NC	2016	Private	Oct	\N
province	NC	2016	Private	Nov	\N
province	NC	2016	Private	Dec	38
province	NC	2016	Private	Jan	857
province	NC	2016	Private	Feb	7928
province	NC	2016	Private	Mar	3293
province	NC	2016	Private	Apr	1575
province	NC	2016	Private	May	\N
province	NC	2016	Private	Jun	11347
province	NC	2016	Private	Jul	\N
province	NC	2016	Other	Aug	3810
province	NC	2016	Other	Sep	\N
province	NC	2016	Other	Oct	7454
province	NC	2016	Other	Nov	7982
province	NC	2016	Other	Dec	5145
province	NC	2016	Other	Jan	\N
province	NC	2016	Other	Feb	20
province	NC	2016	Other	Mar	15503
province	NC	2016	Other	Apr	12019
province	NC	2016	Other	May	\N
province	NC	2016	Other	Jun	\N
province	NC	2016	Other	Jul	\N
province	NW	2016	Government Agriculture	Aug	802
province	NW	2016	Government Agriculture	Sep	865
province	NW	2016	Government Agriculture	Oct	\N
province	NW	2016	Government Agriculture	Nov	477
province	NW	2016	Government Agriculture	Dec	108
province	NW	2016	Government Agriculture	Jan	\N
province	NW	2016	Government Agriculture	Feb	\N
province	NW	2016	Government Agriculture	Mar	9672
province	NW	2016	Government Agriculture	Apr	\N
province	NW	2016	Government Agriculture	May	2593
province	NW	2016	Government Agriculture	Jun	602
province	NW	2016	Government Agriculture	Jul	366
province	NW	2016	Government Urban	Aug	\N
province	NW	2016	Government Urban	Sep	\N
province	NW	2016	Government Urban	Oct	332
province	NW	2016	Government Urban	Nov	\N
province	NW	2016	Government Urban	Dec	\N
province	NW	2016	Government Urban	Jan	\N
province	NW	2016	Government Urban	Feb	\N
province	NW	2016	Government Urban	Mar	\N
province	NW	2016	Government Urban	Apr	\N
province	NW	2016	Government Urban	May	10
province	NW	2016	Government Urban	Jun	\N
province	NW	2016	Government Urban	Jul	\N
province	NW	2016	Private	Aug	3335
province	NW	2016	Private	Sep	2102
province	NW	2016	Private	Oct	1521
province	NW	2016	Private	Nov	1071
province	NW	2016	Private	Dec	7579
province	NW	2016	Private	Jan	2830
province	NW	2016	Private	Feb	1516
province	NW	2016	Private	Mar	777
province	NW	2016	Private	Apr	6593
province	NW	2016	Private	May	875
province	NW	2016	Private	Jun	1798
province	NW	2016	Private	Jul	585
province	NW	2016	Other	Aug	\N
province	NW	2016	Other	Sep	858
province	NW	2016	Other	Oct	44
province	NW	2016	Other	Nov	73
province	NW	2016	Other	Dec	\N
province	NW	2016	Other	Jan	\N
province	NW	2016	Other	Feb	\N
province	NW	2016	Other	Mar	\N
province	NW	2016	Other	Apr	628
province	NW	2016	Other	May	466
province	NW	2016	Other	Jun	578
province	NW	2016	Other	Jul	24
province	WC	2016	Government Agriculture	Aug	\N
province	WC	2016	Government Agriculture	Sep	860
province	WC	2016	Government Agriculture	Oct	\N
province	WC	2016	Government Agriculture	Nov	\N
province	WC	2016	Government Agriculture	Dec	\N
province	WC	2016	Government Agriculture	Jan	\N
province	WC	2016	Government Agriculture	Feb	\N
province	WC	2016	Government Agriculture	Mar	\N
province	WC	2016	Government Agriculture	Apr	1054
province	WC	2016	Government Agriculture	May	715
province	WC	2016	Government Agriculture	Jun	\N
province	WC	2016	Government Agriculture	Jul	\N
province	WC	2016	Government Urban	Aug	17
province	WC	2016	Government Urban	Sep	\N
province	WC	2016	Government Urban	Oct	\N
province	WC	2016	Government Urban	Nov	\N
province	WC	2016	Government Urban	Dec	\N
province	WC	2016	Government Urban	Jan	\N
province	WC	2016	Government Urban	Feb	\N
province	WC	2016	Government Urban	Mar	\N
province	WC	2016	Government Urban	Apr	\N
province	WC	2016	Government Urban	May	\N
province	WC	2016	Government Urban	Jun	\N
province	WC	2016	Government Urban	Jul	\N
province	WC	2016	Private	Aug	421
province	WC	2016	Private	Sep	2484
province	WC	2016	Private	Oct	112
province	WC	2016	Private	Nov	902
province	WC	2016	Private	Dec	383
province	WC	2016	Private	Jan	313
province	WC	2016	Private	Feb	593
province	WC	2016	Private	Mar	207
province	WC	2016	Private	Apr	1362
province	WC	2016	Private	May	250
province	WC	2016	Private	Jun	183
province	WC	2016	Private	Jul	\N
province	WC	2016	Other	Aug	14
province	WC	2016	Other	Sep	\N
province	WC	2016	Other	Oct	\N
province	WC	2016	Other	Nov	\N
province	WC	2016	Other	Dec	2063
province	WC	2016	Other	Jan	\N
province	WC	2016	Other	Feb	25
province	WC	2016	Other	Mar	11
province	WC	2016	Other	Apr	\N
province	WC	2016	Other	May	\N
province	WC	2016	Other	Jun	\N
province	WC	2016	Other	Jul	\N
\.


--
-- PostgreSQL database dump complete
--
