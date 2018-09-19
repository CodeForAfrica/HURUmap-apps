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

DROP TABLE IF EXISTS public.restitutionoutcomestatistic;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionoutcomestatistic; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.restitutionoutcomestatistic (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionoutcomestatistic character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);


ALTER TABLE IF EXISTS public.restitutionoutcomestatistic OWNER TO our_land;

--
-- Data for Name: restitutionoutcomestatistic; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.restitutionoutcomestatistic (geo_level, geo_code, geo_version, restitutionoutcomestatistic, year, total) FROM stdin;
province	EC	2016	projects	2017/2018	64
province	FS	2016	projects	2017/2018	0
province	GT	2016	projects	2017/2018	10
province	KZN	2016	projects	2017/2018	148
province	LIM	2016	projects	2017/2018	278
province	MP	2016	projects	2017/2018	35
province	NC	2016	projects	2017/2018	2
province	NW	2016	projects	2017/2018	7
province	WC	2016	projects	2017/2018	231
country	ZA	2016	projects	2017/2018	775
province	EC	2016	claims settled	2017/2018	65
province	FS	2016	claims settled	2017/2018	0
province	GT	2016	claims settled	2017/2018	18
province	KZN	2016	claims settled	2017/2018	159
province	LIM	2016	claims settled	2017/2018	289
province	MP	2016	claims settled	2017/2018	35
province	NC	2016	claims settled	2017/2018	2
province	NW	2016	claims settled	2017/2018	48
province	WC	2016	claims settled	2017/2018	234
country	ZA	2016	claims settled	2017/2018	850
province	EC	2016	households	2017/2018	525
province	FS	2016	households	2017/2018	0
province	GT	2016	households	2017/2018	251
province	KZN	2016	households	2017/2018	1890
province	LIM	2016	households	2017/2018	1089
province	MP	2016	households	2017/2018	103
province	NC	2016	households	2017/2018	31
province	NW	2016	households	2017/2018	3601
province	WC	2016	households	2017/2018	245
country	ZA	2016	households	2017/2018	7735
province	EC	2016	beneficiaries	2017/2018	6237
province	FS	2016	beneficiaries	2017/2018	0
province	GT	2016	beneficiaries	2017/2018	794
province	KZN	2016	beneficiaries	2017/2018	7154
province	LIM	2016	beneficiaries	2017/2018	3893
province	MP	2016	beneficiaries	2017/2018	1353
province	NC	2016	beneficiaries	2017/2018	659
province	NW	2016	beneficiaries	2017/2018	10630
province	WC	2016	beneficiaries	2017/2018	1226
country	ZA	2016	beneficiaries	2017/2018	31946
province	EC	2016	people with disabilities	2017/2018	0
province	FS	2016	people with disabilities	2017/2018	0
province	GT	2016	people with disabilities	2017/2018	2
province	KZN	2016	people with disabilities	2017/2018	55
province	LIM	2016	people with disabilities	2017/2018	0
province	MP	2016	people with disabilities	2017/2018	0
province	NC	2016	people with disabilities	2017/2018	0
province	NW	2016	people with disabilities	2017/2018	0
province	WC	2016	people with disabilities	2017/2018	0
country	ZA	2016	people with disabilities	2017/2018	57
province	EC	2016	hectares acquired	2017/2018	0
province	FS	2016	hectares acquired	2017/2018	0
province	GT	2016	hectares acquired	2017/2018	0
province	KZN	2016	hectares acquired	2017/2018	3657
province	LIM	2016	hectares acquired	2017/2018	766
province	MP	2016	hectares acquired	2017/2018	1010
province	NC	2016	hectares acquired	2017/2018	1370
province	NW	2016	hectares acquired	2017/2018	17663
province	WC	2016	hectares acquired	2017/2018	10
country	ZA	2016	hectares acquired	2017/2018	24476
province	EC	2016	landcost	2017/2018	0
province	FS	2016	landcost	2017/2018	0
province	GT	2016	landcost	2017/2018	0
province	KZN	2016	landcost	2017/2018	29795000
province	LIM	2016	landcost	2017/2018	3950000
province	MP	2016	landcost	2017/2018	15300000
province	NC	2016	landcost	2017/2018	0
province	NW	2016	landcost	2017/2018	0
province	WC	2016	landcost	2017/2018	19100
country	ZA	2016	landcost	2017/2018	49064100
province	EC	2016	financial compensation	2017/2018	119737376.2
province	FS	2016	financial compensation	2017/2018	0
province	GT	2016	financial compensation	2017/2018	11495331.1
province	KZN	2016	financial compensation	2017/2018	426535925
province	LIM	2016	financial compensation	2017/2018	241701978
province	MP	2016	financial compensation	2017/2018	24520268.41
province	NC	2016	financial compensation	2017/2018	3415113.67
province	NW	2016	financial compensation	2017/2018	31074701.26
province	WC	2016	financial compensation	2017/2018	16474489.42
country	ZA	2016	financial compensation	2017/2018	874955183.1
province	EC	2016	female headed households	2017/2018	197
province	FS	2016	female headed households	2017/2018	0
province	GT	2016	female headed households	2017/2018	145
province	KZN	2016	female headed households	2017/2018	849
province	LIM	2016	female headed households	2017/2018	722
province	MP	2016	female headed households	2017/2018	13
province	NC	2016	female headed households	2017/2018	10
province	NW	2016	female headed households	2017/2018	2197
province	WC	2016	female headed households	2017/2018	101
country	ZA	2016	female headed households	2017/2018	4234
province	EC	2016	households	2009/2010	1816
province	FS	2016	households	2009/2010	125
province	GT	2016	households	2009/2010	0
province	KZN	2016	households	2009/2010	3950
province	LIM	2016	households	2009/2010	1099
province	MP	2016	households	2009/2010	300
province	NC	2016	households	2009/2010	89
province	NW	2016	households	2009/2010	796
province	WC	2016	households	2009/2010	1119
country	ZA	2016	households	2009/2010	9294
province	EC	2016	households	2010/2011	3634
province	FS	2016	households	2010/2011	151
province	GT	2016	households	2010/2011	356
province	KZN	2016	households	2010/2011	3835
province	LIM	2016	households	2010/2011	2444
province	MP	2016	households	2010/2011	117
province	NC	2016	households	2010/2011	1136
province	NW	2016	households	2010/2011	39
province	WC	2016	households	2010/2011	1598
country	ZA	2016	households	2010/2011	13310
province	EC	2016	households	2011/2012	1072
province	FS	2016	households	2011/2012	533
province	GT	2016	households	2011/2012	34
province	KZN	2016	households	2011/2012	4581
province	LIM	2016	households	2011/2012	2274
province	MP	2016	households	2011/2012	2709
province	NC	2016	households	2011/2012	672
province	NW	2016	households	2011/2012	1646
province	WC	2016	households	2011/2012	916
country	ZA	2016	households	2011/2012	14437
province	EC	2016	households	2012/2013	4767
province	FS	2016	households	2012/2013	1081
province	GT	2016	households	2012/2013	286
province	KZN	2016	households	2012/2013	4454
province	LIM	2016	households	2012/2013	1465
province	MP	2016	households	2012/2013	3489
province	NC	2016	households	2012/2013	1576
province	NW	2016	households	2012/2013	5769
province	WC	2016	households	2012/2013	1101
country	ZA	2016	households	2012/2013	23988
province	EC	2016	households	2013/2014	2521
province	FS	2016	households	2013/2014	120
province	GT	2016	households	2013/2014	78
province	KZN	2016	households	2013/2014	489
province	LIM	2016	households	2013/2014	682
province	MP	2016	households	2013/2014	1617
province	NC	2016	households	2013/2014	767
province	NW	2016	households	2013/2014	656
province	WC	2016	households	2013/2014	1202
country	ZA	2016	households	2013/2014	8132
province	EC	2016	households	2014/2015	3383
province	FS	2016	households	2014/2015	218
province	GT	2016	households	2014/2015	677
province	KZN	2016	households	2014/2015	2340
province	LIM	2016	households	2014/2015	1952
province	MP	2016	households	2014/2015	1557
province	NC	2016	households	2014/2015	1155
province	NW	2016	households	2014/2015	2725
province	WC	2016	households	2014/2015	1450
country	ZA	2016	households	2014/2015	15457
province	EC	2016	households	2015/2016	4335
province	FS	2016	households	2015/2016	283
province	GT	2016	households	2015/2016	919
province	KZN	2016	households	2015/2016	1129
province	LIM	2016	households	2015/2016	3317
province	MP	2016	households	2015/2016	2105
province	NC	2016	households	2015/2016	609
province	NW	2016	households	2015/2016	143
province	WC	2016	households	2015/2016	1398
country	ZA	2016	households	2015/2016	14238
province	EC	2016	households	2016/2017	3419
province	FS	2016	households	2016/2017	346
province	GT	2016	households	2016/2017	702
province	KZN	2016	households	2016/2017	2454
province	LIM	2016	households	2016/2017	1620
province	MP	2016	households	2016/2017	993
province	NC	2016	households	2016/2017	1067
province	NW	2016	households	2016/2017	1347
province	WC	2016	households	2016/2017	1148
country	ZA	2016	households	2016/2017	13096
province	EC	2016	female headed households	2009/2010	559
province	FS	2016	female headed households	2009/2010	79
province	GT	2016	female headed households	2009/2010	0
province	KZN	2016	female headed households	2009/2010	1668
province	LIM	2016	female headed households	2009/2010	669
province	MP	2016	female headed households	2009/2010	119
province	NC	2016	female headed households	2009/2010	46
province	NW	2016	female headed households	2009/2010	409
province	WC	2016	female headed households	2009/2010	628
country	ZA	2016	female headed households	2009/2010	4177
province	EC	2016	female headed households	2010/2011	1396
province	FS	2016	female headed households	2010/2011	76
province	GT	2016	female headed households	2010/2011	196
province	KZN	2016	female headed households	2010/2011	1330
province	LIM	2016	female headed households	2010/2011	1071
province	MP	2016	female headed households	2010/2011	41
province	NC	2016	female headed households	2010/2011	719
province	NW	2016	female headed households	2010/2011	19
province	WC	2016	female headed households	2010/2011	1111
country	ZA	2016	female headed households	2010/2011	5959
province	EC	2016	female headed households	2011/2012	533
province	FS	2016	female headed households	2011/2012	242
province	GT	2016	female headed households	2011/2012	21
province	KZN	2016	female headed households	2011/2012	1587
province	LIM	2016	female headed households	2011/2012	880
province	MP	2016	female headed households	2011/2012	1444
province	NC	2016	female headed households	2011/2012	411
province	NW	2016	female headed households	2011/2012	661
province	WC	2016	female headed households	2011/2012	606
country	ZA	2016	female headed households	2011/2012	6385
province	EC	2016	female headed households	2012/2013	2284
province	FS	2016	female headed households	2012/2013	506
province	GT	2016	female headed households	2012/2013	129
province	KZN	2016	female headed households	2012/2013	1372
province	LIM	2016	female headed households	2012/2013	421
province	MP	2016	female headed households	2012/2013	1719
province	NC	2016	female headed households	2012/2013	712
province	NW	2016	female headed households	2012/2013	2743
province	WC	2016	female headed households	2012/2013	595
country	ZA	2016	female headed households	2012/2013	10481
province	EC	2016	female headed households	2013/2014	692
province	FS	2016	female headed households	2013/2014	66
province	GT	2016	female headed households	2013/2014	33
province	KZN	2016	female headed households	2013/2014	182
province	LIM	2016	female headed households	2013/2014	331
province	MP	2016	female headed households	2013/2014	620
province	NC	2016	female headed households	2013/2014	276
province	NW	2016	female headed households	2013/2014	380
province	WC	2016	female headed households	2013/2014	621
country	ZA	2016	female headed households	2013/2014	3201
province	EC	2016	female headed households	2014/2015	864
province	FS	2016	female headed households	2014/2015	112
province	GT	2016	female headed households	2014/2015	294
province	KZN	2016	female headed households	2014/2015	1086
province	LIM	2016	female headed households	2014/2015	912
province	MP	2016	female headed households	2014/2015	481
province	NC	2016	female headed households	2014/2015	330
province	NW	2016	female headed households	2014/2015	1515
province	WC	2016	female headed households	2014/2015	650
country	ZA	2016	female headed households	2014/2015	6244
province	EC	2016	female headed households	2015/2016	2454
province	FS	2016	female headed households	2015/2016	100
province	GT	2016	female headed households	2015/2016	529
province	KZN	2016	female headed households	2015/2016	476
province	LIM	2016	female headed households	2015/2016	1856
province	MP	2016	female headed households	2015/2016	711
province	NC	2016	female headed households	2015/2016	174
province	NW	2016	female headed households	2015/2016	75
province	WC	2016	female headed households	2015/2016	624
country	ZA	2016	female headed households	2015/2016	6999
province	EC	2016	female headed households	2016/2017	1258
province	FS	2016	female headed households	2016/2017	146
province	GT	2016	female headed households	2016/2017	431
province	KZN	2016	female headed households	2016/2017	1424
province	LIM	2016	female headed households	2016/2017	719
province	MP	2016	female headed households	2016/2017	425
province	NC	2016	female headed households	2016/2017	440
province	NW	2016	female headed households	2016/2017	532
province	WC	2016	female headed households	2016/2017	680
country	ZA	2016	female headed households	2016/2017	6055
province	EC	2016	hectares acquired	2009/2010	1289
province	FS	2016	hectares acquired	2009/2010	252
province	GT	2016	hectares acquired	2009/2010	0
province	KZN	2016	hectares acquired	2009/2010	30469
province	LIM	2016	hectares acquired	2009/2010	25089
province	MP	2016	hectares acquired	2009/2010	10481
province	NC	2016	hectares acquired	2009/2010	67724
province	NW	2016	hectares acquired	2009/2010	9551
province	WC	2016	hectares acquired	2009/2010	637
country	ZA	2016	hectares acquired	2009/2010	145492
province	EC	2016	hectares acquired	2010/2011	34186
province	FS	2016	hectares acquired	2010/2011	3837
province	GT	2016	hectares acquired	2010/2011	6759
province	KZN	2016	hectares acquired	2010/2011	23853
province	LIM	2016	hectares acquired	2010/2011	32348
province	MP	2016	hectares acquired	2010/2011	10043
province	NC	2016	hectares acquired	2010/2011	238
province	NW	2016	hectares acquired	2010/2011	13175
province	WC	2016	hectares acquired	2010/2011	68
country	ZA	2016	hectares acquired	2010/2011	124507
province	EC	2016	hectares acquired	2011/2012	0
province	FS	2016	hectares acquired	2011/2012	1437
province	GT	2016	hectares acquired	2011/2012	0
province	KZN	2016	hectares acquired	2011/2012	31508
province	LIM	2016	hectares acquired	2011/2012	18609
province	MP	2016	hectares acquired	2011/2012	34675
province	NC	2016	hectares acquired	2011/2012	0
province	NW	2016	hectares acquired	2011/2012	12252
province	WC	2016	hectares acquired	2011/2012	3
country	ZA	2016	hectares acquired	2011/2012	98484
province	EC	2016	hectares acquired	2012/2013	829
province	FS	2016	hectares acquired	2012/2013	3293
province	GT	2016	hectares acquired	2012/2013	586
province	KZN	2016	hectares acquired	2012/2013	62644
province	LIM	2016	hectares acquired	2012/2013	24978
province	MP	2016	hectares acquired	2012/2013	27493
province	NC	2016	hectares acquired	2012/2013	8089
province	NW	2016	hectares acquired	2012/2013	68004
province	WC	2016	hectares acquired	2012/2013	51
country	ZA	2016	hectares acquired	2012/2013	195967
province	EC	2016	hectares acquired	2013/2014	0
province	FS	2016	hectares acquired	2013/2014	2394
province	GT	2016	hectares acquired	2013/2014	284
province	KZN	2016	hectares acquired	2013/2014	9036
province	LIM	2016	hectares acquired	2013/2014	12195
province	MP	2016	hectares acquired	2013/2014	28529
province	NC	2016	hectares acquired	2013/2014	6391
province	NW	2016	hectares acquired	2013/2014	10001
province	WC	2016	hectares acquired	2013/2014	8
country	ZA	2016	hectares acquired	2013/2014	68838
province	EC	2016	hectares acquired	2014/2015	1342
province	FS	2016	hectares acquired	2014/2015	0
province	GT	2016	hectares acquired	2014/2015	0
province	KZN	2016	hectares acquired	2014/2015	29512
province	LIM	2016	hectares acquired	2014/2015	19701
province	MP	2016	hectares acquired	2014/2015	25261
province	NC	2016	hectares acquired	2014/2015	38006
province	NW	2016	hectares acquired	2014/2015	28139
province	WC	2016	hectares acquired	2014/2015	2445
country	ZA	2016	hectares acquired	2014/2015	144406
province	EC	2016	hectares acquired	2015/2016	4111
province	FS	2016	hectares acquired	2015/2016	1164
province	GT	2016	hectares acquired	2015/2016	0
province	KZN	2016	hectares acquired	2015/2016	13667
province	LIM	2016	hectares acquired	2015/2016	11269
province	MP	2016	hectares acquired	2015/2016	19815
province	NC	2016	hectares acquired	2015/2016	37295
province	NW	2016	hectares acquired	2015/2016	10137
province	WC	2016	hectares acquired	2015/2016	4427
country	ZA	2016	hectares acquired	2015/2016	101886
province	EC	2016	hectares acquired	2016/2017	1389
province	FS	2016	hectares acquired	2016/2017	2897
province	GT	2016	hectares acquired	2016/2017	142
province	KZN	2016	hectares acquired	2016/2017	6545
province	LIM	2016	hectares acquired	2016/2017	18051
province	MP	2016	hectares acquired	2016/2017	14855
province	NC	2016	hectares acquired	2016/2017	43170
province	NW	2016	hectares acquired	2016/2017	20827
province	WC	2016	hectares acquired	2016/2017	2
country	ZA	2016	hectares acquired	2016/2017	107878
province	EC	2016	beneficiaries	2009/2010	7404
province	FS	2016	beneficiaries	2009/2010	269
province	GT	2016	beneficiaries	2009/2010	0
province	KZN	2016	beneficiaries	2009/2010	23845
province	LIM	2016	beneficiaries	2009/2010	4291
province	MP	2016	beneficiaries	2009/2010	2353
province	NC	2016	beneficiaries	2009/2010	3075
province	NW	2016	beneficiaries	2009/2010	3498
province	WC	2016	beneficiaries	2009/2010	3498
country	ZA	2016	beneficiaries	2009/2010	48233
province	EC	2016	beneficiaries	2010/2011	12339
province	FS	2016	beneficiaries	2010/2011	742
province	GT	2016	beneficiaries	2010/2011	907
province	KZN	2016	beneficiaries	2010/2011	22261
province	LIM	2016	beneficiaries	2010/2011	6901
province	MP	2016	beneficiaries	2010/2011	442
province	NC	2016	beneficiaries	2010/2011	2658
province	NW	2016	beneficiaries	2010/2011	107
province	WC	2016	beneficiaries	2010/2011	4038
country	ZA	2016	beneficiaries	2010/2011	50395
province	EC	2016	beneficiaries	2011/2012	3387
province	FS	2016	beneficiaries	2011/2012	2192
province	GT	2016	beneficiaries	2011/2012	102
province	KZN	2016	beneficiaries	2011/2012	22273
province	LIM	2016	beneficiaries	2011/2012	7848
province	MP	2016	beneficiaries	2011/2012	9157
province	NC	2016	beneficiaries	2011/2012	3626
province	NW	2016	beneficiaries	2011/2012	22383
province	WC	2016	beneficiaries	2011/2012	1828
country	ZA	2016	beneficiaries	2011/2012	72796
province	EC	2016	beneficiaries	2012/2013	27161
province	FS	2016	beneficiaries	2012/2013	5356
province	GT	2016	beneficiaries	2012/2013	1488
province	KZN	2016	beneficiaries	2012/2013	25865
province	LIM	2016	beneficiaries	2012/2013	3818
province	MP	2016	beneficiaries	2012/2013	11727
province	NC	2016	beneficiaries	2012/2013	8691
province	NW	2016	beneficiaries	2012/2013	24161
province	WC	2016	beneficiaries	2012/2013	3011
country	ZA	2016	beneficiaries	2012/2013	111278
province	EC	2016	beneficiaries	2013/2014	7357
province	FS	2016	beneficiaries	2013/2014	532
province	GT	2016	beneficiaries	2013/2014	153
province	KZN	2016	beneficiaries	2013/2014	2013
province	LIM	2016	beneficiaries	2013/2014	2142
province	MP	2016	beneficiaries	2013/2014	10667
province	NC	2016	beneficiaries	2013/2014	3726
province	NW	2016	beneficiaries	2013/2014	4606
province	WC	2016	beneficiaries	2013/2014	5709
country	ZA	2016	beneficiaries	2013/2014	36905
province	EC	2016	beneficiaries	2014/2015	20603
province	FS	2016	beneficiaries	2014/2015	1094
province	GT	2016	beneficiaries	2014/2015	2755
province	KZN	2016	beneficiaries	2014/2015	16012
province	LIM	2016	beneficiaries	2014/2015	7242
province	MP	2016	beneficiaries	2014/2015	9910
province	NC	2016	beneficiaries	2014/2015	5482
province	NW	2016	beneficiaries	2014/2015	10611
province	WC	2016	beneficiaries	2014/2015	4891
country	ZA	2016	beneficiaries	2014/2015	78600
province	EC	2016	beneficiaries	2015/2016	21853
province	FS	2016	beneficiaries	2015/2016	969
province	GT	2016	beneficiaries	2015/2016	2049
province	KZN	2016	beneficiaries	2015/2016	5983
province	LIM	2016	beneficiaries	2015/2016	9951
province	MP	2016	beneficiaries	2015/2016	15285
province	NC	2016	beneficiaries	2015/2016	3483
province	NW	2016	beneficiaries	2015/2016	257
province	WC	2016	beneficiaries	2015/2016	3577
country	ZA	2016	beneficiaries	2015/2016	63407
province	EC	2016	beneficiaries	2016/2017	27613
province	FS	2016	beneficiaries	2016/2017	892
province	GT	2016	beneficiaries	2016/2017	2132
province	KZN	2016	beneficiaries	2016/2017	11364
province	LIM	2016	beneficiaries	2016/2017	6386
province	MP	2016	beneficiaries	2016/2017	10513
province	NC	2016	beneficiaries	2016/2017	6563
province	NW	2016	beneficiaries	2016/2017	4521
province	WC	2016	beneficiaries	2016/2017	4686
country	ZA	2016	beneficiaries	2016/2017	74670
province	EC	2016	claims settled	2009/2010	7
province	FS	2016	claims settled	2009/2010	3
province	GT	2016	claims settled	2009/2010	0
province	KZN	2016	claims settled	2009/2010	10
province	LIM	2016	claims settled	2009/2010	1
province	MP	2016	claims settled	2009/2010	5
province	NC	2016	claims settled	2009/2010	3
province	NW	2016	claims settled	2009/2010	2
province	WC	2016	claims settled	2009/2010	2
country	ZA	2016	claims settled	2009/2010	33
province	EC	2016	claims settled	2010/2011	176
province	FS	2016	claims settled	2010/2011	3
province	GT	2016	claims settled	2010/2011	2
province	KZN	2016	claims settled	2010/2011	11
province	LIM	2016	claims settled	2010/2011	38
province	MP	2016	claims settled	2010/2011	14
province	NC	2016	claims settled	2010/2011	13
province	NW	2016	claims settled	2010/2011	9
province	WC	2016	claims settled	2010/2011	191
country	ZA	2016	claims settled	2010/2011	457
province	EC	2016	claims settled	2011/2012	126
province	FS	2016	claims settled	2011/2012	4
province	GT	2016	claims settled	2011/2012	38
province	KZN	2016	claims settled	2011/2012	25
province	LIM	2016	claims settled	2011/2012	159
province	MP	2016	claims settled	2011/2012	14
province	NC	2016	claims settled	2011/2012	0
province	NW	2016	claims settled	2011/2012	6
province	WC	2016	claims settled	2011/2012	44
country	ZA	2016	claims settled	2011/2012	416
province	EC	2016	claims settled	2012/2013	53
province	FS	2016	claims settled	2012/2013	5
province	GT	2016	claims settled	2012/2013	118
province	KZN	2016	claims settled	2012/2013	61
province	LIM	2016	claims settled	2012/2013	105
province	MP	2016	claims settled	2012/2013	47
province	NC	2016	claims settled	2012/2013	3
province	NW	2016	claims settled	2012/2013	12
province	WC	2016	claims settled	2012/2013	198
country	ZA	2016	claims settled	2012/2013	602
province	EC	2016	claims settled	2013/2014	21
province	FS	2016	claims settled	2013/2014	6
province	GT	2016	claims settled	2013/2014	4
province	KZN	2016	claims settled	2013/2014	10
province	LIM	2016	claims settled	2013/2014	2
province	MP	2016	claims settled	2013/2014	10
province	NC	2016	claims settled	2013/2014	4
province	NW	2016	claims settled	2013/2014	3
province	WC	2016	claims settled	2013/2014	210
country	ZA	2016	claims settled	2013/2014	270
province	EC	2016	claims settled	2014/2015	79
province	FS	2016	claims settled	2014/2015	1
province	GT	2016	claims settled	2014/2015	9
province	KZN	2016	claims settled	2014/2015	59
province	LIM	2016	claims settled	2014/2015	35
province	MP	2016	claims settled	2014/2015	35
province	NC	2016	claims settled	2014/2015	9
province	NW	2016	claims settled	2014/2015	7
province	WC	2016	claims settled	2014/2015	194
country	ZA	2016	claims settled	2014/2015	428
province	EC	2016	claims settled	2015/2016	80
province	FS	2016	claims settled	2015/2016	5
province	GT	2016	claims settled	2015/2016	18
province	KZN	2016	claims settled	2015/2016	50
province	LIM	2016	claims settled	2015/2016	189
province	MP	2016	claims settled	2015/2016	59
province	NC	2016	claims settled	2015/2016	8
province	NW	2016	claims settled	2015/2016	30
province	WC	2016	claims settled	2015/2016	178
country	ZA	2016	claims settled	2015/2016	617
province	EC	2016	claims settled	2016/2017	89
province	FS	2016	claims settled	2016/2017	3
province	GT	2016	claims settled	2016/2017	24
province	KZN	2016	claims settled	2016/2017	110
province	LIM	2016	claims settled	2016/2017	122
province	MP	2016	claims settled	2016/2017	74
province	NC	2016	claims settled	2016/2017	14
province	NW	2016	claims settled	2016/2017	12
province	WC	2016	claims settled	2016/2017	356
country	ZA	2016	claims settled	2016/2017	804
\.


--
-- PostgreSQL database dump complete
--
