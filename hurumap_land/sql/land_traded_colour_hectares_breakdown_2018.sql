--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS public.land_traded_colour_hectares_breakdown_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_traded_colour_hectares_breakdown_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_traded_colour_hectares_breakdown_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    breakdown_cc character varying(128) NOT NULL,
    month_cc character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_traded_colour_hectares_breakdown_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_colour_hectares_breakdown_2018 (geo_level, geo_code, geo_version, breakdown_cc, month_cc, total) FROM stdin;
country	ZA	2016	Government Agriculture	Dec2017	2075
country	ZA	2016	Government Urban	Dec2017	19
country	ZA	2016	Private	Dec2017	15654
country	ZA	2016	Other	Dec2017	7513
country	ZA	2016	Government Agriculture	Jan2018	3484
country	ZA	2016	Government Urban	Jan2018	64
country	ZA	2016	Private	Jan2018	7163
country	ZA	2016	Other	Jan2018	345
country	ZA	2016	Government Agriculture	Feb2018	2462
country	ZA	2016	Government Urban	Feb2018	239
country	ZA	2016	Private	Feb2018	19652
country	ZA	2016	Other	Feb2018	5426
country	ZA	2016	Government Agriculture	Mar2018	13823
country	ZA	2016	Government Urban	Mar2018	66
country	ZA	2016	Private	Mar2018	20262
country	ZA	2016	Other	Mar2018	18932
country	ZA	2016	Government Agriculture	Apr2018	1054
country	ZA	2016	Government Urban	Apr2018	\N
country	ZA	2016	Private	Apr2018	18458
country	ZA	2016	Other	Apr2018	13480
country	ZA	2016	Government Agriculture	May2018	3308
country	ZA	2016	Government Urban	May2018	10
country	ZA	2016	Private	May2018	14383
country	ZA	2016	Other	May2018	3934
country	ZA	2016	Government Agriculture	Jun2018	602
country	ZA	2016	Government Urban	Jun2018	\N
country	ZA	2016	Private	Jun2018	18753
country	ZA	2016	Other	Jun2018	4571
country	ZA	2016	Government Agriculture	Jul2018	2318
country	ZA	2016	Government Urban	Jul2018	639
country	ZA	2016	Private	Jul2018	14505
country	ZA	2016	Other	Jul2018	581
country	ZA	2016	Government Agriculture	Aug2018	1256
country	ZA	2016	Government Urban	Aug2018	275
country	ZA	2016	Private	Aug2018	30142
country	ZA	2016	Other	Aug2018	5076
country	ZA	2016	Government Agriculture	Sep2018	1773
country	ZA	2016	Government Urban	Sep2018	\N
country	ZA	2016	Private	Sep2018	9386
country	ZA	2016	Other	Sep2018	12344
country	ZA	2016	Government Agriculture	Oct2018	18146
country	ZA	2016	Government Urban	Oct2018	94
country	ZA	2016	Private	Oct2018	16880
country	ZA	2016	Other	Oct2018	16851
country	ZA	2016	Government Agriculture	Nov2018	3538
country	ZA	2016	Government Urban	Nov2018	\N
country	ZA	2016	Private	Nov2018	10057
country	ZA	2016	Other	Nov2018	1802
province	EC	2016	Government Agriculture	Dec2017	535
province	EC	2016	Government Urban	Dec2017	\N
province	EC	2016	Private	Dec2017	2341
province	EC	2016	Other	Dec2017	\N
province	EC	2016	Government Agriculture	Jan2018	\N
province	EC	2016	Government Urban	Jan2018	\N
province	EC	2016	Private	Jan2018	13
province	EC	2016	Other	Jan2018	\N
province	EC	2016	Government Agriculture	Feb2018	\N
province	EC	2016	Government Urban	Feb2018	183
province	EC	2016	Private	Feb2018	41
province	EC	2016	Other	Feb2018	22
province	EC	2016	Government Agriculture	Mar2018	\N
province	EC	2016	Government Urban	Mar2018	\N
province	EC	2016	Private	Mar2018	3218
province	EC	2016	Other	Mar2018	1304
province	EC	2016	Government Agriculture	Apr2018	\N
province	EC	2016	Government Urban	Apr2018	\N
province	EC	2016	Private	Apr2018	2264
province	EC	2016	Other	Apr2018	\N
province	EC	2016	Government Agriculture	May2018	\N
province	EC	2016	Government Urban	May2018	\N
province	EC	2016	Private	May2018	1244
province	EC	2016	Other	May2018	\N
province	EC	2016	Government Agriculture	Jun2018	\N
province	EC	2016	Government Urban	Jun2018	\N
province	EC	2016	Private	Jun2018	246
province	EC	2016	Other	Jun2018	\N
province	EC	2016	Government Agriculture	Jul2018	\N
province	EC	2016	Government Urban	Jul2018	\N
province	EC	2016	Private	Jul2018	9040
province	EC	2016	Other	Jul2018	\N
province	EC	2016	Government Agriculture	Aug2018	\N
province	EC	2016	Government Urban	Aug2018	\N
province	EC	2016	Private	Aug2018	1048
province	EC	2016	Other	Aug2018	783
province	EC	2016	Government Agriculture	Sep2018	\N
province	EC	2016	Government Urban	Sep2018	\N
province	EC	2016	Private	Sep2018	2368
province	EC	2016	Other	Sep2018	\N
province	EC	2016	Government Agriculture	Oct2018	1330
province	EC	2016	Government Urban	Oct2018	\N
province	EC	2016	Private	Oct2018	498
province	EC	2016	Other	Oct2018	\N
province	EC	2016	Government Agriculture	Nov2018	\N
province	EC	2016	Government Urban	Nov2018	\N
province	EC	2016	Private	Nov2018	1608
province	EC	2016	Other	Nov2018	35
province	FS	2016	Government Agriculture	Dec2017	\N
province	FS	2016	Government Urban	Dec2017	\N
province	FS	2016	Private	Dec2017	1287
province	FS	2016	Other	Dec2017	264
province	FS	2016	Government Agriculture	Jan2018	3484
province	FS	2016	Government Urban	Jan2018	\N
province	FS	2016	Private	Jan2018	12
province	FS	2016	Other	Jan2018	\N
province	FS	2016	Government Agriculture	Feb2018	\N
province	FS	2016	Government Urban	Feb2018	\N
province	FS	2016	Private	Feb2018	3815
province	FS	2016	Other	Feb2018	\N
province	FS	2016	Government Agriculture	Mar2018	886
province	FS	2016	Government Urban	Mar2018	\N
province	FS	2016	Private	Mar2018	2506
province	FS	2016	Other	Mar2018	199
province	FS	2016	Government Agriculture	Apr2018	\N
province	FS	2016	Government Urban	Apr2018	\N
province	FS	2016	Private	Apr2018	1471
province	FS	2016	Other	Apr2018	268
province	FS	2016	Government Agriculture	May2018	\N
province	FS	2016	Government Urban	May2018	\N
province	FS	2016	Private	May2018	2341
province	FS	2016	Other	May2018	602
province	FS	2016	Government Agriculture	Jun2018	\N
province	FS	2016	Government Urban	Jun2018	\N
province	FS	2016	Private	Jun2018	2094
province	FS	2016	Other	Jun2018	939
province	FS	2016	Government Agriculture	Jul2018	1276
province	FS	2016	Government Urban	Jul2018	\N
province	FS	2016	Private	Jul2018	479
province	FS	2016	Other	Jul2018	\N
province	FS	2016	Government Agriculture	Aug2018	\N
province	FS	2016	Government Urban	Aug2018	\N
province	FS	2016	Private	Aug2018	1020
province	FS	2016	Other	Aug2018	524
province	FS	2016	Government Agriculture	Sep2018	\N
province	FS	2016	Government Urban	Sep2018	\N
province	FS	2016	Private	Sep2018	1649
province	FS	2016	Other	Sep2018	12043
province	FS	2016	Government Agriculture	Oct2018	1740
province	FS	2016	Government Urban	Oct2018	\N
province	FS	2016	Private	Oct2018	913
province	FS	2016	Other	Oct2018	14181
province	FS	2016	Government Agriculture	Nov2018	\N
province	FS	2016	Government Urban	Nov2018	\N
province	FS	2016	Private	Nov2018	368
province	FS	2016	Other	Nov2018	257
province	GT	2016	Government Agriculture	Dec2017	312
province	GT	2016	Government Urban	Dec2017	\N
province	GT	2016	Private	Dec2017	265
province	GT	2016	Other	Dec2017	\N
province	GT	2016	Government Agriculture	Jan2018	\N
province	GT	2016	Government Urban	Jan2018	64
province	GT	2016	Private	Jan2018	65
province	GT	2016	Other	Jan2018	31
province	GT	2016	Government Agriculture	Feb2018	152
province	GT	2016	Government Urban	Feb2018	\N
province	GT	2016	Private	Feb2018	442
province	GT	2016	Other	Feb2018	\N
province	GT	2016	Government Agriculture	Mar2018	\N
province	GT	2016	Government Urban	Mar2018	\N
province	GT	2016	Private	Mar2018	215
province	GT	2016	Other	Mar2018	51
province	GT	2016	Government Agriculture	Apr2018	\N
province	GT	2016	Government Urban	Apr2018	\N
province	GT	2016	Private	Apr2018	439
province	GT	2016	Other	Apr2018	\N
province	GT	2016	Government Agriculture	May2018	\N
province	GT	2016	Government Urban	May2018	\N
province	GT	2016	Private	May2018	261
province	GT	2016	Other	May2018	2815
province	GT	2016	Government Agriculture	Jun2018	\N
province	GT	2016	Government Urban	Jun2018	\N
province	GT	2016	Private	Jun2018	670
province	GT	2016	Other	Jun2018	72
province	GT	2016	Government Agriculture	Jul2018	\N
province	GT	2016	Government Urban	Jul2018	168
province	GT	2016	Private	Jul2018	177
province	GT	2016	Other	Jul2018	\N
province	GT	2016	Government Agriculture	Aug2018	21
province	GT	2016	Government Urban	Aug2018	\N
province	GT	2016	Private	Aug2018	2345
province	GT	2016	Other	Aug2018	23
province	GT	2016	Government Agriculture	Sep2018	\N
province	GT	2016	Government Urban	Sep2018	\N
province	GT	2016	Private	Sep2018	231
province	GT	2016	Other	Sep2018	52
province	GT	2016	Government Agriculture	Oct2018	633
province	GT	2016	Government Urban	Oct2018	43
province	GT	2016	Private	Oct2018	347
province	GT	2016	Other	Oct2018	191
province	GT	2016	Government Agriculture	Nov2018	\N
province	GT	2016	Government Urban	Nov2018	\N
province	GT	2016	Private	Nov2018	847
province	GT	2016	Other	Nov2018	232
province	KZN	2016	Government Agriculture	Dec2017	263
province	KZN	2016	Government Urban	Dec2017	19
province	KZN	2016	Private	Dec2017	1230
province	KZN	2016	Other	Dec2017	\N
province	KZN	2016	Government Agriculture	Jan2018	\N
province	KZN	2016	Government Urban	Jan2018	\N
province	KZN	2016	Private	Jan2018	544
province	KZN	2016	Other	Jan2018	\N
province	KZN	2016	Government Agriculture	Feb2018	1368
province	KZN	2016	Government Urban	Feb2018	\N
province	KZN	2016	Private	Feb2018	128
province	KZN	2016	Other	Feb2018	155
province	KZN	2016	Government Agriculture	Mar2018	3265
province	KZN	2016	Government Urban	Mar2018	\N
province	KZN	2016	Private	Mar2018	7994
province	KZN	2016	Other	Mar2018	59
province	KZN	2016	Government Agriculture	Apr2018	\N
province	KZN	2016	Government Urban	Apr2018	\N
province	KZN	2016	Private	Apr2018	1488
province	KZN	2016	Other	Apr2018	30
province	KZN	2016	Government Agriculture	May2018	\N
province	KZN	2016	Government Urban	May2018	\N
province	KZN	2016	Private	May2018	2276
province	KZN	2016	Other	May2018	20
province	KZN	2016	Government Agriculture	Jun2018	\N
province	KZN	2016	Government Urban	Jun2018	\N
province	KZN	2016	Private	Jun2018	808
province	KZN	2016	Other	Jun2018	\N
province	KZN	2016	Government Agriculture	Jul2018	\N
province	KZN	2016	Government Urban	Jul2018	\N
province	KZN	2016	Private	Jul2018	1045
province	KZN	2016	Other	Jul2018	\N
province	KZN	2016	Government Agriculture	Aug2018	\N
province	KZN	2016	Government Urban	Aug2018	\N
province	KZN	2016	Private	Aug2018	3250
province	KZN	2016	Other	Aug2018	160
province	KZN	2016	Government Agriculture	Sep2018	\N
province	KZN	2016	Government Urban	Sep2018	\N
province	KZN	2016	Private	Sep2018	545
province	KZN	2016	Other	Sep2018	122
province	KZN	2016	Government Agriculture	Oct2018	\N
province	KZN	2016	Government Urban	Oct2018	23
province	KZN	2016	Private	Oct2018	3756
province	KZN	2016	Other	Oct2018	17
province	KZN	2016	Government Agriculture	Nov2018	\N
province	KZN	2016	Government Urban	Nov2018	\N
province	KZN	2016	Private	Nov2018	1962
province	KZN	2016	Other	Nov2018	56
province	LIM	2016	Government Agriculture	Dec2017	\N
province	LIM	2016	Government Urban	Dec2017	\N
province	LIM	2016	Private	Dec2017	2164
province	LIM	2016	Other	Dec2017	11
province	LIM	2016	Government Agriculture	Jan2018	\N
province	LIM	2016	Government Urban	Jan2018	\N
province	LIM	2016	Private	Jan2018	1269
province	LIM	2016	Other	Jan2018	54
province	LIM	2016	Government Agriculture	Feb2018	\N
province	LIM	2016	Government Urban	Feb2018	56
province	LIM	2016	Private	Feb2018	3173
province	LIM	2016	Other	Feb2018	551
province	LIM	2016	Government Agriculture	Mar2018	\N
province	LIM	2016	Government Urban	Mar2018	20
province	LIM	2016	Private	Mar2018	788
province	LIM	2016	Other	Mar2018	258
province	LIM	2016	Government Agriculture	Apr2018	\N
province	LIM	2016	Government Urban	Apr2018	\N
province	LIM	2016	Private	Apr2018	387
province	LIM	2016	Other	Apr2018	39
province	LIM	2016	Government Agriculture	May2018	\N
province	LIM	2016	Government Urban	May2018	\N
province	LIM	2016	Private	May2018	6391
province	LIM	2016	Other	May2018	\N
province	LIM	2016	Government Agriculture	Jun2018	\N
province	LIM	2016	Government Urban	Jun2018	\N
province	LIM	2016	Private	Jun2018	685
province	LIM	2016	Other	Jun2018	2982
province	LIM	2016	Government Agriculture	Jul2018	\N
province	LIM	2016	Government Urban	Jul2018	389
province	LIM	2016	Private	Jul2018	2431
province	LIM	2016	Other	Jul2018	\N
province	LIM	2016	Government Agriculture	Aug2018	\N
province	LIM	2016	Government Urban	Aug2018	\N
province	LIM	2016	Private	Aug2018	11251
province	LIM	2016	Other	Aug2018	\N
province	LIM	2016	Government Agriculture	Sep2018	\N
province	LIM	2016	Government Urban	Sep2018	\N
province	LIM	2016	Private	Sep2018	1585
province	LIM	2016	Other	Sep2018	\N
province	LIM	2016	Government Agriculture	Oct2018	\N
province	LIM	2016	Government Urban	Oct2018	\N
province	LIM	2016	Private	Oct2018	6707
province	LIM	2016	Other	Oct2018	276
province	LIM	2016	Government Agriculture	Nov2018	\N
province	LIM	2016	Government Urban	Nov2018	\N
province	LIM	2016	Private	Nov2018	4471
province	LIM	2016	Other	Nov2018	17
province	MP	2016	Government Agriculture	Dec2017	857
province	MP	2016	Government Urban	Dec2017	\N
province	MP	2016	Private	Dec2017	367
province	MP	2016	Other	Dec2017	30
province	MP	2016	Government Agriculture	Jan2018	\N
province	MP	2016	Government Urban	Jan2018	\N
province	MP	2016	Private	Jan2018	1260
province	MP	2016	Other	Jan2018	260
province	MP	2016	Government Agriculture	Feb2018	942
province	MP	2016	Government Urban	Feb2018	\N
province	MP	2016	Private	Feb2018	2016
province	MP	2016	Other	Feb2018	4653
province	MP	2016	Government Agriculture	Mar2018	\N
province	MP	2016	Government Urban	Mar2018	\N
province	MP	2016	Private	Mar2018	1264
province	MP	2016	Other	Mar2018	1547
province	MP	2016	Government Agriculture	Apr2018	\N
province	MP	2016	Government Urban	Apr2018	\N
province	MP	2016	Private	Apr2018	2879
province	MP	2016	Other	Apr2018	496
province	MP	2016	Government Agriculture	May2018	\N
province	MP	2016	Government Urban	May2018	\N
province	MP	2016	Private	May2018	745
province	MP	2016	Other	May2018	31
province	MP	2016	Government Agriculture	Jun2018	\N
province	MP	2016	Government Urban	Jun2018	\N
province	MP	2016	Private	Jun2018	922
province	MP	2016	Other	Jun2018	\N
province	MP	2016	Government Agriculture	Jul2018	676
province	MP	2016	Government Urban	Jul2018	82
province	MP	2016	Private	Jul2018	748
province	MP	2016	Other	Jul2018	557
province	MP	2016	Government Agriculture	Aug2018	\N
province	MP	2016	Government Urban	Aug2018	\N
province	MP	2016	Private	Aug2018	694
province	MP	2016	Other	Aug2018	216
province	MP	2016	Government Agriculture	Sep2018	1035
province	MP	2016	Government Urban	Sep2018	\N
province	MP	2016	Private	Sep2018	1755
province	MP	2016	Other	Sep2018	41
province	MP	2016	Government Agriculture	Oct2018	3055
province	MP	2016	Government Urban	Oct2018	\N
province	MP	2016	Private	Oct2018	1800
province	MP	2016	Other	Oct2018	1829
province	MP	2016	Government Agriculture	Nov2018	\N
province	MP	2016	Government Urban	Nov2018	\N
province	MP	2016	Private	Nov2018	97
province	MP	2016	Other	Nov2018	1083
province	NC	2016	Government Agriculture	Dec2017	\N
province	NC	2016	Government Urban	Dec2017	\N
province	NC	2016	Private	Dec2017	38
province	NC	2016	Other	Dec2017	5145
province	NC	2016	Government Agriculture	Jan2018	\N
province	NC	2016	Government Urban	Jan2018	\N
province	NC	2016	Private	Jan2018	857
province	NC	2016	Other	Jan2018	\N
province	NC	2016	Government Agriculture	Feb2018	\N
province	NC	2016	Government Urban	Feb2018	\N
province	NC	2016	Private	Feb2018	7928
province	NC	2016	Other	Feb2018	20
province	NC	2016	Government Agriculture	Mar2018	\N
province	NC	2016	Government Urban	Mar2018	46
province	NC	2016	Private	Mar2018	3293
province	NC	2016	Other	Mar2018	15503
province	NC	2016	Government Agriculture	Apr2018	\N
province	NC	2016	Government Urban	Apr2018	\N
province	NC	2016	Private	Apr2018	1575
province	NC	2016	Other	Apr2018	12019
province	NC	2016	Government Agriculture	May2018	\N
province	NC	2016	Government Urban	May2018	\N
province	NC	2016	Private	May2018	\N
province	NC	2016	Other	May2018	\N
province	NC	2016	Government Agriculture	Jun2018	\N
province	NC	2016	Government Urban	Jun2018	\N
province	NC	2016	Private	Jun2018	11347
province	NC	2016	Other	Jun2018	\N
province	NC	2016	Government Agriculture	Jul2018	\N
province	NC	2016	Government Urban	Jul2018	\N
province	NC	2016	Private	Jul2018	\N
province	NC	2016	Other	Jul2018	\N
province	NC	2016	Government Agriculture	Aug2018	\N
province	NC	2016	Government Urban	Aug2018	\N
province	NC	2016	Private	Aug2018	6420
province	NC	2016	Other	Aug2018	3279
province	NC	2016	Government Agriculture	Sep2018	\N
province	NC	2016	Government Urban	Sep2018	\N
province	NC	2016	Private	Sep2018	17
province	NC	2016	Other	Sep2018	\N
province	NC	2016	Government Agriculture	Oct2018	10513
province	NC	2016	Government Urban	Oct2018	\N
province	NC	2016	Private	Oct2018	\N
province	NC	2016	Other	Oct2018	\N
province	NC	2016	Government Agriculture	Nov2018	\N
province	NC	2016	Government Urban	Nov2018	\N
province	NC	2016	Private	Nov2018	17
province	NC	2016	Other	Nov2018	\N
province	NW	2016	Government Agriculture	Dec2017	108
province	NW	2016	Government Urban	Dec2017	\N
province	NW	2016	Private	Dec2017	7579
province	NW	2016	Other	Dec2017	\N
province	NW	2016	Government Agriculture	Jan2018	\N
province	NW	2016	Government Urban	Jan2018	\N
province	NW	2016	Private	Jan2018	2830
province	NW	2016	Other	Jan2018	\N
province	NW	2016	Government Agriculture	Feb2018	\N
province	NW	2016	Government Urban	Feb2018	\N
province	NW	2016	Private	Feb2018	1516
province	NW	2016	Other	Feb2018	\N
province	NW	2016	Government Agriculture	Mar2018	9672
province	NW	2016	Government Urban	Mar2018	\N
province	NW	2016	Private	Mar2018	777
province	NW	2016	Other	Mar2018	\N
province	NW	2016	Government Agriculture	Apr2018	\N
province	NW	2016	Government Urban	Apr2018	\N
province	NW	2016	Private	Apr2018	6593
province	NW	2016	Other	Apr2018	628
province	NW	2016	Government Agriculture	May2018	2593
province	NW	2016	Government Urban	May2018	10
province	NW	2016	Private	May2018	875
province	NW	2016	Other	May2018	466
province	NW	2016	Government Agriculture	Jun2018	602
province	NW	2016	Government Urban	Jun2018	\N
province	NW	2016	Private	Jun2018	1798
province	NW	2016	Other	Jun2018	578
province	NW	2016	Government Agriculture	Jul2018	366
province	NW	2016	Government Urban	Jul2018	\N
province	NW	2016	Private	Jul2018	585
province	NW	2016	Other	Jul2018	24
province	NW	2016	Government Agriculture	Aug2018	1235
province	NW	2016	Government Urban	Aug2018	275
province	NW	2016	Private	Aug2018	1330
province	NW	2016	Other	Aug2018	81
province	NW	2016	Government Agriculture	Sep2018	702
province	NW	2016	Government Urban	Sep2018	\N
province	NW	2016	Private	Sep2018	1057
province	NW	2016	Other	Sep2018	\N
province	NW	2016	Government Agriculture	Oct2018	875
province	NW	2016	Government Urban	Oct2018	28
province	NW	2016	Private	Oct2018	2210
province	NW	2016	Other	Oct2018	165
province	NW	2016	Government Agriculture	Nov2018	\N
province	NW	2016	Government Urban	Nov2018	\N
province	NW	2016	Private	Nov2018	687
province	NW	2016	Other	Nov2018	111
province	WC	2016	Government Agriculture	Dec2017	\N
province	WC	2016	Government Urban	Dec2017	\N
province	WC	2016	Private	Dec2017	383
province	WC	2016	Other	Dec2017	2063
province	WC	2016	Government Agriculture	Jan2018	\N
province	WC	2016	Government Urban	Jan2018	\N
province	WC	2016	Private	Jan2018	313
province	WC	2016	Other	Jan2018	\N
province	WC	2016	Government Agriculture	Feb2018	\N
province	WC	2016	Government Urban	Feb2018	\N
province	WC	2016	Private	Feb2018	593
province	WC	2016	Other	Feb2018	25
province	WC	2016	Government Agriculture	Mar2018	\N
province	WC	2016	Government Urban	Mar2018	\N
province	WC	2016	Private	Mar2018	207
province	WC	2016	Other	Mar2018	11
province	WC	2016	Government Agriculture	Apr2018	1054
province	WC	2016	Government Urban	Apr2018	\N
province	WC	2016	Private	Apr2018	1362
province	WC	2016	Other	Apr2018	\N
province	WC	2016	Government Agriculture	May2018	715
province	WC	2016	Government Urban	May2018	\N
province	WC	2016	Private	May2018	250
province	WC	2016	Other	May2018	\N
province	WC	2016	Government Agriculture	Jun2018	\N
province	WC	2016	Government Urban	Jun2018	\N
province	WC	2016	Private	Jun2018	183
province	WC	2016	Other	Jun2018	\N
province	WC	2016	Government Agriculture	Jul2018	\N
province	WC	2016	Government Urban	Jul2018	\N
province	WC	2016	Private	Jul2018	\N
province	WC	2016	Other	Jul2018	\N
province	WC	2016	Government Agriculture	Aug2018	\N
province	WC	2016	Government Urban	Aug2018	\N
province	WC	2016	Private	Aug2018	2784
province	WC	2016	Other	Aug2018	10
province	WC	2016	Government Agriculture	Sep2018	36
province	WC	2016	Government Urban	Sep2018	\N
province	WC	2016	Private	Sep2018	179
province	WC	2016	Other	Sep2018	86
province	WC	2016	Government Agriculture	Oct2018	\N
province	WC	2016	Government Urban	Oct2018	\N
province	WC	2016	Private	Oct2018	649
province	WC	2016	Other	Oct2018	192
province	WC	2016	Government Agriculture	Nov2018	3538
province	WC	2016	Government Urban	Nov2018	\N
province	WC	2016	Private	Nov2018	\N
province	WC	2016	Other	Nov2018	11
\.


--
-- PostgreSQL database dump complete
--

