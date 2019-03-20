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
country	ZA	2016	Government Agriculture	DZA_1_003	2075
country	ZA	2016	Government Urban	DZA_1_003	19
country	ZA	2016	Private	DZA_1_003	15654
country	ZA	2016	Other	DZA_1_003	7513
country	ZA	2016	Government Agriculture	Jan	3484
country	ZA	2016	Government Urban	Jan	64
country	ZA	2016	Private	Jan	7163
country	ZA	2016	Other	Jan	345
country	ZA	2016	Government Agriculture	Feb	2462
country	ZA	2016	Government Urban	Feb	239
country	ZA	2016	Private	Feb	19652
country	ZA	2016	Other	Feb	5426
country	ZA	2016	Government Agriculture	Mar	13823
country	ZA	2016	Government Urban	Mar	66
country	ZA	2016	Private	Mar	20262
country	ZA	2016	Other	Mar	18932
country	ZA	2016	Government Agriculture	Apr	1054
country	ZA	2016	Government Urban	Apr	\N
country	ZA	2016	Private	Apr	18458
country	ZA	2016	Other	Apr	13480
country	ZA	2016	Government Agriculture	May	3308
country	ZA	2016	Government Urban	May	10
country	ZA	2016	Private	May	14383
country	ZA	2016	Other	May	3934
country	ZA	2016	Government Agriculture	Jun	602
country	ZA	2016	Government Urban	Jun	\N
country	ZA	2016	Private	Jun	18753
country	ZA	2016	Other	Jun	4571
country	ZA	2016	Government Agriculture	Jul	2318
country	ZA	2016	Government Urban	Jul	639
country	ZA	2016	Private	Jul	14505
country	ZA	2016	Other	Jul	581
country	ZA	2016	Government Agriculture	Aug	1256
country	ZA	2016	Government Urban	Aug	275
country	ZA	2016	Private	Aug	30142
country	ZA	2016	Other	Aug	5076
country	ZA	2016	Government Agriculture	Sep	1773
country	ZA	2016	Government Urban	Sep	\N
country	ZA	2016	Private	Sep	9386
country	ZA	2016	Other	Sep	12344
country	ZA	2016	Government Agriculture	Oct	18146
country	ZA	2016	Government Urban	Oct	94
country	ZA	2016	Private	Oct	16880
country	ZA	2016	Other	Oct	16851
country	ZA	2016	Government Agriculture	Nov	3538
country	ZA	2016	Government Urban	Nov	\N
country	ZA	2016	Private	Nov	10057
country	ZA	2016	Other	Nov	1802
level1	ZA_1_003	2016	Government Agriculture	DZA_1_003	535
level1	ZA_1_003	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_003	2016	Private	DZA_1_003	2341
level1	ZA_1_003	2016	Other	DZA_1_003	\N
level1	ZA_1_003	2016	Government Agriculture	Jan	\N
level1	ZA_1_003	2016	Government Urban	Jan	\N
level1	ZA_1_003	2016	Private	Jan	13
level1	ZA_1_003	2016	Other	Jan	\N
level1	ZA_1_003	2016	Government Agriculture	Feb	\N
level1	ZA_1_003	2016	Government Urban	Feb	183
level1	ZA_1_003	2016	Private	Feb	41
level1	ZA_1_003	2016	Other	Feb	22
level1	ZA_1_003	2016	Government Agriculture	Mar	\N
level1	ZA_1_003	2016	Government Urban	Mar	\N
level1	ZA_1_003	2016	Private	Mar	3218
level1	ZA_1_003	2016	Other	Mar	1304
level1	ZA_1_003	2016	Government Agriculture	Apr	\N
level1	ZA_1_003	2016	Government Urban	Apr	\N
level1	ZA_1_003	2016	Private	Apr	2264
level1	ZA_1_003	2016	Other	Apr	\N
level1	ZA_1_003	2016	Government Agriculture	May	\N
level1	ZA_1_003	2016	Government Urban	May	\N
level1	ZA_1_003	2016	Private	May	1244
level1	ZA_1_003	2016	Other	May	\N
level1	ZA_1_003	2016	Government Agriculture	Jun	\N
level1	ZA_1_003	2016	Government Urban	Jun	\N
level1	ZA_1_003	2016	Private	Jun	246
level1	ZA_1_003	2016	Other	Jun	\N
level1	ZA_1_003	2016	Government Agriculture	Jul	\N
level1	ZA_1_003	2016	Government Urban	Jul	\N
level1	ZA_1_003	2016	Private	Jul	9040
level1	ZA_1_003	2016	Other	Jul	\N
level1	ZA_1_003	2016	Government Agriculture	Aug	\N
level1	ZA_1_003	2016	Government Urban	Aug	\N
level1	ZA_1_003	2016	Private	Aug	1048
level1	ZA_1_003	2016	Other	Aug	783
level1	ZA_1_003	2016	Government Agriculture	Sep	\N
level1	ZA_1_003	2016	Government Urban	Sep	\N
level1	ZA_1_003	2016	Private	Sep	2368
level1	ZA_1_003	2016	Other	Sep	\N
level1	ZA_1_003	2016	Government Agriculture	Oct	1330
level1	ZA_1_003	2016	Government Urban	Oct	\N
level1	ZA_1_003	2016	Private	Oct	498
level1	ZA_1_003	2016	Other	Oct	\N
level1	ZA_1_003	2016	Government Agriculture	Nov	\N
level1	ZA_1_003	2016	Government Urban	Nov	\N
level1	ZA_1_003	2016	Private	Nov	1608
level1	ZA_1_003	2016	Other	Nov	35
level1	ZA_1_002	2016	Government Agriculture	DZA_1_003	\N
level1	ZA_1_002	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_002	2016	Private	DZA_1_003	1287
level1	ZA_1_002	2016	Other	DZA_1_003	264
level1	ZA_1_002	2016	Government Agriculture	Jan	3484
level1	ZA_1_002	2016	Government Urban	Jan	\N
level1	ZA_1_002	2016	Private	Jan	12
level1	ZA_1_002	2016	Other	Jan	\N
level1	ZA_1_002	2016	Government Agriculture	Feb	\N
level1	ZA_1_002	2016	Government Urban	Feb	\N
level1	ZA_1_002	2016	Private	Feb	3815
level1	ZA_1_002	2016	Other	Feb	\N
level1	ZA_1_002	2016	Government Agriculture	Mar	886
level1	ZA_1_002	2016	Government Urban	Mar	\N
level1	ZA_1_002	2016	Private	Mar	2506
level1	ZA_1_002	2016	Other	Mar	199
level1	ZA_1_002	2016	Government Agriculture	Apr	\N
level1	ZA_1_002	2016	Government Urban	Apr	\N
level1	ZA_1_002	2016	Private	Apr	1471
level1	ZA_1_002	2016	Other	Apr	268
level1	ZA_1_002	2016	Government Agriculture	May	\N
level1	ZA_1_002	2016	Government Urban	May	\N
level1	ZA_1_002	2016	Private	May	2341
level1	ZA_1_002	2016	Other	May	602
level1	ZA_1_002	2016	Government Agriculture	Jun	\N
level1	ZA_1_002	2016	Government Urban	Jun	\N
level1	ZA_1_002	2016	Private	Jun	2094
level1	ZA_1_002	2016	Other	Jun	939
level1	ZA_1_002	2016	Government Agriculture	Jul	1276
level1	ZA_1_002	2016	Government Urban	Jul	\N
level1	ZA_1_002	2016	Private	Jul	479
level1	ZA_1_002	2016	Other	Jul	\N
level1	ZA_1_002	2016	Government Agriculture	Aug	\N
level1	ZA_1_002	2016	Government Urban	Aug	\N
level1	ZA_1_002	2016	Private	Aug	1020
level1	ZA_1_002	2016	Other	Aug	524
level1	ZA_1_002	2016	Government Agriculture	Sep	\N
level1	ZA_1_002	2016	Government Urban	Sep	\N
level1	ZA_1_002	2016	Private	Sep	1649
level1	ZA_1_002	2016	Other	Sep	12043
level1	ZA_1_002	2016	Government Agriculture	Oct	1740
level1	ZA_1_002	2016	Government Urban	Oct	\N
level1	ZA_1_002	2016	Private	Oct	913
level1	ZA_1_002	2016	Other	Oct	14181
level1	ZA_1_002	2016	Government Agriculture	Nov	\N
level1	ZA_1_002	2016	Government Urban	Nov	\N
level1	ZA_1_002	2016	Private	Nov	368
level1	ZA_1_002	2016	Other	Nov	257
level1	ZA_1_009	2016	Government Agriculture	DZA_1_003	312
level1	ZA_1_009	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_009	2016	Private	DZA_1_003	265
level1	ZA_1_009	2016	Other	DZA_1_003	\N
level1	ZA_1_009	2016	Government Agriculture	Jan	\N
level1	ZA_1_009	2016	Government Urban	Jan	64
level1	ZA_1_009	2016	Private	Jan	65
level1	ZA_1_009	2016	Other	Jan	31
level1	ZA_1_009	2016	Government Agriculture	Feb	152
level1	ZA_1_009	2016	Government Urban	Feb	\N
level1	ZA_1_009	2016	Private	Feb	442
level1	ZA_1_009	2016	Other	Feb	\N
level1	ZA_1_009	2016	Government Agriculture	Mar	\N
level1	ZA_1_009	2016	Government Urban	Mar	\N
level1	ZA_1_009	2016	Private	Mar	215
level1	ZA_1_009	2016	Other	Mar	51
level1	ZA_1_009	2016	Government Agriculture	Apr	\N
level1	ZA_1_009	2016	Government Urban	Apr	\N
level1	ZA_1_009	2016	Private	Apr	439
level1	ZA_1_009	2016	Other	Apr	\N
level1	ZA_1_009	2016	Government Agriculture	May	\N
level1	ZA_1_009	2016	Government Urban	May	\N
level1	ZA_1_009	2016	Private	May	261
level1	ZA_1_009	2016	Other	May	2815
level1	ZA_1_009	2016	Government Agriculture	Jun	\N
level1	ZA_1_009	2016	Government Urban	Jun	\N
level1	ZA_1_009	2016	Private	Jun	670
level1	ZA_1_009	2016	Other	Jun	72
level1	ZA_1_009	2016	Government Agriculture	Jul	\N
level1	ZA_1_009	2016	Government Urban	Jul	168
level1	ZA_1_009	2016	Private	Jul	177
level1	ZA_1_009	2016	Other	Jul	\N
level1	ZA_1_009	2016	Government Agriculture	Aug	21
level1	ZA_1_009	2016	Government Urban	Aug	\N
level1	ZA_1_009	2016	Private	Aug	2345
level1	ZA_1_009	2016	Other	Aug	23
level1	ZA_1_009	2016	Government Agriculture	Sep	\N
level1	ZA_1_009	2016	Government Urban	Sep	\N
level1	ZA_1_009	2016	Private	Sep	231
level1	ZA_1_009	2016	Other	Sep	52
level1	ZA_1_009	2016	Government Agriculture	Oct	633
level1	ZA_1_009	2016	Government Urban	Oct	43
level1	ZA_1_009	2016	Private	Oct	347
level1	ZA_1_009	2016	Other	Oct	191
level1	ZA_1_009	2016	Government Agriculture	Nov	\N
level1	ZA_1_009	2016	Government Urban	Nov	\N
level1	ZA_1_009	2016	Private	Nov	847
level1	ZA_1_009	2016	Other	Nov	232
level1	ZA_1_001	2016	Government Agriculture	DZA_1_003	263
level1	ZA_1_001	2016	Government Urban	DZA_1_003	19
level1	ZA_1_001	2016	Private	DZA_1_003	1230
level1	ZA_1_001	2016	Other	DZA_1_003	\N
level1	ZA_1_001	2016	Government Agriculture	Jan	\N
level1	ZA_1_001	2016	Government Urban	Jan	\N
level1	ZA_1_001	2016	Private	Jan	544
level1	ZA_1_001	2016	Other	Jan	\N
level1	ZA_1_001	2016	Government Agriculture	Feb	1368
level1	ZA_1_001	2016	Government Urban	Feb	\N
level1	ZA_1_001	2016	Private	Feb	128
level1	ZA_1_001	2016	Other	Feb	155
level1	ZA_1_001	2016	Government Agriculture	Mar	3265
level1	ZA_1_001	2016	Government Urban	Mar	\N
level1	ZA_1_001	2016	Private	Mar	7994
level1	ZA_1_001	2016	Other	Mar	59
level1	ZA_1_001	2016	Government Agriculture	Apr	\N
level1	ZA_1_001	2016	Government Urban	Apr	\N
level1	ZA_1_001	2016	Private	Apr	1488
level1	ZA_1_001	2016	Other	Apr	30
level1	ZA_1_001	2016	Government Agriculture	May	\N
level1	ZA_1_001	2016	Government Urban	May	\N
level1	ZA_1_001	2016	Private	May	2276
level1	ZA_1_001	2016	Other	May	20
level1	ZA_1_001	2016	Government Agriculture	Jun	\N
level1	ZA_1_001	2016	Government Urban	Jun	\N
level1	ZA_1_001	2016	Private	Jun	808
level1	ZA_1_001	2016	Other	Jun	\N
level1	ZA_1_001	2016	Government Agriculture	Jul	\N
level1	ZA_1_001	2016	Government Urban	Jul	\N
level1	ZA_1_001	2016	Private	Jul	1045
level1	ZA_1_001	2016	Other	Jul	\N
level1	ZA_1_001	2016	Government Agriculture	Aug	\N
level1	ZA_1_001	2016	Government Urban	Aug	\N
level1	ZA_1_001	2016	Private	Aug	3250
level1	ZA_1_001	2016	Other	Aug	160
level1	ZA_1_001	2016	Government Agriculture	Sep	\N
level1	ZA_1_001	2016	Government Urban	Sep	\N
level1	ZA_1_001	2016	Private	Sep	545
level1	ZA_1_001	2016	Other	Sep	122
level1	ZA_1_001	2016	Government Agriculture	Oct	\N
level1	ZA_1_001	2016	Government Urban	Oct	23
level1	ZA_1_001	2016	Private	Oct	3756
level1	ZA_1_001	2016	Other	Oct	17
level1	ZA_1_001	2016	Government Agriculture	Nov	\N
level1	ZA_1_001	2016	Government Urban	Nov	\N
level1	ZA_1_001	2016	Private	Nov	1962
level1	ZA_1_001	2016	Other	Nov	56
level1	ZA_1_005	2016	Government Agriculture	DZA_1_003	\N
level1	ZA_1_005	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_005	2016	Private	DZA_1_003	2164
level1	ZA_1_005	2016	Other	DZA_1_003	11
level1	ZA_1_005	2016	Government Agriculture	Jan	\N
level1	ZA_1_005	2016	Government Urban	Jan	\N
level1	ZA_1_005	2016	Private	Jan	1269
level1	ZA_1_005	2016	Other	Jan	54
level1	ZA_1_005	2016	Government Agriculture	Feb	\N
level1	ZA_1_005	2016	Government Urban	Feb	56
level1	ZA_1_005	2016	Private	Feb	3173
level1	ZA_1_005	2016	Other	Feb	551
level1	ZA_1_005	2016	Government Agriculture	Mar	\N
level1	ZA_1_005	2016	Government Urban	Mar	20
level1	ZA_1_005	2016	Private	Mar	788
level1	ZA_1_005	2016	Other	Mar	258
level1	ZA_1_005	2016	Government Agriculture	Apr	\N
level1	ZA_1_005	2016	Government Urban	Apr	\N
level1	ZA_1_005	2016	Private	Apr	387
level1	ZA_1_005	2016	Other	Apr	39
level1	ZA_1_005	2016	Government Agriculture	May	\N
level1	ZA_1_005	2016	Government Urban	May	\N
level1	ZA_1_005	2016	Private	May	6391
level1	ZA_1_005	2016	Other	May	\N
level1	ZA_1_005	2016	Government Agriculture	Jun	\N
level1	ZA_1_005	2016	Government Urban	Jun	\N
level1	ZA_1_005	2016	Private	Jun	685
level1	ZA_1_005	2016	Other	Jun	2982
level1	ZA_1_005	2016	Government Agriculture	Jul	\N
level1	ZA_1_005	2016	Government Urban	Jul	389
level1	ZA_1_005	2016	Private	Jul	2431
level1	ZA_1_005	2016	Other	Jul	\N
level1	ZA_1_005	2016	Government Agriculture	Aug	\N
level1	ZA_1_005	2016	Government Urban	Aug	\N
level1	ZA_1_005	2016	Private	Aug	11251
level1	ZA_1_005	2016	Other	Aug	\N
level1	ZA_1_005	2016	Government Agriculture	Sep	\N
level1	ZA_1_005	2016	Government Urban	Sep	\N
level1	ZA_1_005	2016	Private	Sep	1585
level1	ZA_1_005	2016	Other	Sep	\N
level1	ZA_1_005	2016	Government Agriculture	Oct	\N
level1	ZA_1_005	2016	Government Urban	Oct	\N
level1	ZA_1_005	2016	Private	Oct	6707
level1	ZA_1_005	2016	Other	Oct	276
level1	ZA_1_005	2016	Government Agriculture	Nov	\N
level1	ZA_1_005	2016	Government Urban	Nov	\N
level1	ZA_1_005	2016	Private	Nov	4471
level1	ZA_1_005	2016	Other	Nov	17
level1	ZA_1_004	2016	Government Agriculture	DZA_1_003	857
level1	ZA_1_004	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_004	2016	Private	DZA_1_003	367
level1	ZA_1_004	2016	Other	DZA_1_003	30
level1	ZA_1_004	2016	Government Agriculture	Jan	\N
level1	ZA_1_004	2016	Government Urban	Jan	\N
level1	ZA_1_004	2016	Private	Jan	1260
level1	ZA_1_004	2016	Other	Jan	260
level1	ZA_1_004	2016	Government Agriculture	Feb	942
level1	ZA_1_004	2016	Government Urban	Feb	\N
level1	ZA_1_004	2016	Private	Feb	2016
level1	ZA_1_004	2016	Other	Feb	4653
level1	ZA_1_004	2016	Government Agriculture	Mar	\N
level1	ZA_1_004	2016	Government Urban	Mar	\N
level1	ZA_1_004	2016	Private	Mar	1264
level1	ZA_1_004	2016	Other	Mar	1547
level1	ZA_1_004	2016	Government Agriculture	Apr	\N
level1	ZA_1_004	2016	Government Urban	Apr	\N
level1	ZA_1_004	2016	Private	Apr	2879
level1	ZA_1_004	2016	Other	Apr	496
level1	ZA_1_004	2016	Government Agriculture	May	\N
level1	ZA_1_004	2016	Government Urban	May	\N
level1	ZA_1_004	2016	Private	May	745
level1	ZA_1_004	2016	Other	May	31
level1	ZA_1_004	2016	Government Agriculture	Jun	\N
level1	ZA_1_004	2016	Government Urban	Jun	\N
level1	ZA_1_004	2016	Private	Jun	922
level1	ZA_1_004	2016	Other	Jun	\N
level1	ZA_1_004	2016	Government Agriculture	Jul	676
level1	ZA_1_004	2016	Government Urban	Jul	82
level1	ZA_1_004	2016	Private	Jul	748
level1	ZA_1_004	2016	Other	Jul	557
level1	ZA_1_004	2016	Government Agriculture	Aug	\N
level1	ZA_1_004	2016	Government Urban	Aug	\N
level1	ZA_1_004	2016	Private	Aug	694
level1	ZA_1_004	2016	Other	Aug	216
level1	ZA_1_004	2016	Government Agriculture	Sep	1035
level1	ZA_1_004	2016	Government Urban	Sep	\N
level1	ZA_1_004	2016	Private	Sep	1755
level1	ZA_1_004	2016	Other	Sep	41
level1	ZA_1_004	2016	Government Agriculture	Oct	3055
level1	ZA_1_004	2016	Government Urban	Oct	\N
level1	ZA_1_004	2016	Private	Oct	1800
level1	ZA_1_004	2016	Other	Oct	1829
level1	ZA_1_004	2016	Government Agriculture	Nov	\N
level1	ZA_1_004	2016	Government Urban	Nov	\N
level1	ZA_1_004	2016	Private	Nov	97
level1	ZA_1_004	2016	Other	Nov	1083
level1	ZA_1_006	2016	Government Agriculture	DZA_1_003	\N
level1	ZA_1_006	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_006	2016	Private	DZA_1_003	38
level1	ZA_1_006	2016	Other	DZA_1_003	5145
level1	ZA_1_006	2016	Government Agriculture	Jan	\N
level1	ZA_1_006	2016	Government Urban	Jan	\N
level1	ZA_1_006	2016	Private	Jan	857
level1	ZA_1_006	2016	Other	Jan	\N
level1	ZA_1_006	2016	Government Agriculture	Feb	\N
level1	ZA_1_006	2016	Government Urban	Feb	\N
level1	ZA_1_006	2016	Private	Feb	7928
level1	ZA_1_006	2016	Other	Feb	20
level1	ZA_1_006	2016	Government Agriculture	Mar	\N
level1	ZA_1_006	2016	Government Urban	Mar	46
level1	ZA_1_006	2016	Private	Mar	3293
level1	ZA_1_006	2016	Other	Mar	15503
level1	ZA_1_006	2016	Government Agriculture	Apr	\N
level1	ZA_1_006	2016	Government Urban	Apr	\N
level1	ZA_1_006	2016	Private	Apr	1575
level1	ZA_1_006	2016	Other	Apr	12019
level1	ZA_1_006	2016	Government Agriculture	May	\N
level1	ZA_1_006	2016	Government Urban	May	\N
level1	ZA_1_006	2016	Private	May	\N
level1	ZA_1_006	2016	Other	May	\N
level1	ZA_1_006	2016	Government Agriculture	Jun	\N
level1	ZA_1_006	2016	Government Urban	Jun	\N
level1	ZA_1_006	2016	Private	Jun	11347
level1	ZA_1_006	2016	Other	Jun	\N
level1	ZA_1_006	2016	Government Agriculture	Jul	\N
level1	ZA_1_006	2016	Government Urban	Jul	\N
level1	ZA_1_006	2016	Private	Jul	\N
level1	ZA_1_006	2016	Other	Jul	\N
level1	ZA_1_006	2016	Government Agriculture	Aug	\N
level1	ZA_1_006	2016	Government Urban	Aug	\N
level1	ZA_1_006	2016	Private	Aug	6420
level1	ZA_1_006	2016	Other	Aug	3279
level1	ZA_1_006	2016	Government Agriculture	Sep	\N
level1	ZA_1_006	2016	Government Urban	Sep	\N
level1	ZA_1_006	2016	Private	Sep	17
level1	ZA_1_006	2016	Other	Sep	\N
level1	ZA_1_006	2016	Government Agriculture	Oct	10513
level1	ZA_1_006	2016	Government Urban	Oct	\N
level1	ZA_1_006	2016	Private	Oct	\N
level1	ZA_1_006	2016	Other	Oct	\N
level1	ZA_1_006	2016	Government Agriculture	Nov	\N
level1	ZA_1_006	2016	Government Urban	Nov	\N
level1	ZA_1_006	2016	Private	Nov	17
level1	ZA_1_006	2016	Other	Nov	\N
level1	ZA_1_007	2016	Government Agriculture	DZA_1_003	108
level1	ZA_1_007	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_007	2016	Private	DZA_1_003	7579
level1	ZA_1_007	2016	Other	DZA_1_003	\N
level1	ZA_1_007	2016	Government Agriculture	Jan	\N
level1	ZA_1_007	2016	Government Urban	Jan	\N
level1	ZA_1_007	2016	Private	Jan	2830
level1	ZA_1_007	2016	Other	Jan	\N
level1	ZA_1_007	2016	Government Agriculture	Feb	\N
level1	ZA_1_007	2016	Government Urban	Feb	\N
level1	ZA_1_007	2016	Private	Feb	1516
level1	ZA_1_007	2016	Other	Feb	\N
level1	ZA_1_007	2016	Government Agriculture	Mar	9672
level1	ZA_1_007	2016	Government Urban	Mar	\N
level1	ZA_1_007	2016	Private	Mar	777
level1	ZA_1_007	2016	Other	Mar	\N
level1	ZA_1_007	2016	Government Agriculture	Apr	\N
level1	ZA_1_007	2016	Government Urban	Apr	\N
level1	ZA_1_007	2016	Private	Apr	6593
level1	ZA_1_007	2016	Other	Apr	628
level1	ZA_1_007	2016	Government Agriculture	May	2593
level1	ZA_1_007	2016	Government Urban	May	10
level1	ZA_1_007	2016	Private	May	875
level1	ZA_1_007	2016	Other	May	466
level1	ZA_1_007	2016	Government Agriculture	Jun	602
level1	ZA_1_007	2016	Government Urban	Jun	\N
level1	ZA_1_007	2016	Private	Jun	1798
level1	ZA_1_007	2016	Other	Jun	578
level1	ZA_1_007	2016	Government Agriculture	Jul	366
level1	ZA_1_007	2016	Government Urban	Jul	\N
level1	ZA_1_007	2016	Private	Jul	585
level1	ZA_1_007	2016	Other	Jul	24
level1	ZA_1_007	2016	Government Agriculture	Aug	1235
level1	ZA_1_007	2016	Government Urban	Aug	275
level1	ZA_1_007	2016	Private	Aug	1330
level1	ZA_1_007	2016	Other	Aug	81
level1	ZA_1_007	2016	Government Agriculture	Sep	702
level1	ZA_1_007	2016	Government Urban	Sep	\N
level1	ZA_1_007	2016	Private	Sep	1057
level1	ZA_1_007	2016	Other	Sep	\N
level1	ZA_1_007	2016	Government Agriculture	Oct	875
level1	ZA_1_007	2016	Government Urban	Oct	28
level1	ZA_1_007	2016	Private	Oct	2210
level1	ZA_1_007	2016	Other	Oct	165
level1	ZA_1_007	2016	Government Agriculture	Nov	\N
level1	ZA_1_007	2016	Government Urban	Nov	\N
level1	ZA_1_007	2016	Private	Nov	687
level1	ZA_1_007	2016	Other	Nov	111
level1	ZA_1_008	2016	Government Agriculture	DZA_1_003	\N
level1	ZA_1_008	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_008	2016	Private	DZA_1_003	383
level1	ZA_1_008	2016	Other	DZA_1_003	2063
level1	ZA_1_008	2016	Government Agriculture	Jan	\N
level1	ZA_1_008	2016	Government Urban	Jan	\N
level1	ZA_1_008	2016	Private	Jan	313
level1	ZA_1_008	2016	Other	Jan	\N
level1	ZA_1_008	2016	Government Agriculture	Feb	\N
level1	ZA_1_008	2016	Government Urban	Feb	\N
level1	ZA_1_008	2016	Private	Feb	593
level1	ZA_1_008	2016	Other	Feb	25
level1	ZA_1_008	2016	Government Agriculture	Mar	\N
level1	ZA_1_008	2016	Government Urban	Mar	\N
level1	ZA_1_008	2016	Private	Mar	207
level1	ZA_1_008	2016	Other	Mar	11
level1	ZA_1_008	2016	Government Agriculture	Apr	1054
level1	ZA_1_008	2016	Government Urban	Apr	\N
level1	ZA_1_008	2016	Private	Apr	1362
level1	ZA_1_008	2016	Other	Apr	\N
level1	ZA_1_008	2016	Government Agriculture	May	715
level1	ZA_1_008	2016	Government Urban	May	\N
level1	ZA_1_008	2016	Private	May	250
level1	ZA_1_008	2016	Other	May	\N
level1	ZA_1_008	2016	Government Agriculture	Jun	\N
level1	ZA_1_008	2016	Government Urban	Jun	\N
level1	ZA_1_008	2016	Private	Jun	183
level1	ZA_1_008	2016	Other	Jun	\N
level1	ZA_1_008	2016	Government Agriculture	Jul	\N
level1	ZA_1_008	2016	Government Urban	Jul	\N
level1	ZA_1_008	2016	Private	Jul	\N
level1	ZA_1_008	2016	Other	Jul	\N
level1	ZA_1_008	2016	Government Agriculture	Aug	\N
level1	ZA_1_008	2016	Government Urban	Aug	\N
level1	ZA_1_008	2016	Private	Aug	2784
level1	ZA_1_008	2016	Other	Aug	10
level1	ZA_1_008	2016	Government Agriculture	Sep	36
level1	ZA_1_008	2016	Government Urban	Sep	\N
level1	ZA_1_008	2016	Private	Sep	179
level1	ZA_1_008	2016	Other	Sep	86
level1	ZA_1_008	2016	Government Agriculture	Oct	\N
level1	ZA_1_008	2016	Government Urban	Oct	\N
level1	ZA_1_008	2016	Private	Oct	649
level1	ZA_1_008	2016	Other	Oct	192
level1	ZA_1_008	2016	Government Agriculture	Nov	3538
level1	ZA_1_008	2016	Government Urban	Nov	\N
level1	ZA_1_008	2016	Private	Nov	\N
level1	ZA_1_008	2016	Other	Nov	11
\.


--
-- PostgreSQL database dump complete
--
