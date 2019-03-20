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

ALTER TABLE IF EXISTS ONLY public.restitutionoutcomestatistic DROP CONSTRAINT IF EXISTS pk_restitutionoutcomestatistic;
DROP TABLE IF EXISTS public.restitutionoutcomestatistic;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionoutcomestatistic; Type: TABLE; Schema: public; 
--

CREATE TABLE public.restitutionoutcomestatistic (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionoutcomestatistic character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionoutcomestatistic; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionoutcomestatistic (geo_level, geo_code, geo_version, restitutionoutcomestatistic, year, total) FROM stdin;
level1	ZA_1_003	2016	projects	2017/2018	64
level1	ZA_1_002	2016	projects	2017/2018	0
level1	ZA_1_009	2016	projects	2017/2018	10
level1	ZA_1_001	2016	projects	2017/2018	148
level1	ZA_1_005	2016	projects	2017/2018	278
level1	ZA_1_004	2016	projects	2017/2018	35
level1	ZA_1_006	2016	projects	2017/2018	2
level1	ZA_1_007	2016	projects	2017/2018	7
level1	ZA_1_008	2016	projects	2017/2018	231
country	ZA	2016	projects	2017/2018	775
level1	ZA_1_003	2016	claims settled	2017/2018	65
level1	ZA_1_002	2016	claims settled	2017/2018	0
level1	ZA_1_009	2016	claims settled	2017/2018	18
level1	ZA_1_001	2016	claims settled	2017/2018	159
level1	ZA_1_005	2016	claims settled	2017/2018	289
level1	ZA_1_004	2016	claims settled	2017/2018	35
level1	ZA_1_006	2016	claims settled	2017/2018	2
level1	ZA_1_007	2016	claims settled	2017/2018	48
level1	ZA_1_008	2016	claims settled	2017/2018	234
country	ZA	2016	claims settled	2017/2018	850
level1	ZA_1_003	2016	households	2017/2018	525
level1	ZA_1_002	2016	households	2017/2018	0
level1	ZA_1_009	2016	households	2017/2018	251
level1	ZA_1_001	2016	households	2017/2018	1890
level1	ZA_1_005	2016	households	2017/2018	1089
level1	ZA_1_004	2016	households	2017/2018	103
level1	ZA_1_006	2016	households	2017/2018	31
level1	ZA_1_007	2016	households	2017/2018	3601
level1	ZA_1_008	2016	households	2017/2018	245
country	ZA	2016	households	2017/2018	7735
level1	ZA_1_003	2016	beneficiaries	2017/2018	6237
level1	ZA_1_002	2016	beneficiaries	2017/2018	0
level1	ZA_1_009	2016	beneficiaries	2017/2018	794
level1	ZA_1_001	2016	beneficiaries	2017/2018	7154
level1	ZA_1_005	2016	beneficiaries	2017/2018	3893
level1	ZA_1_004	2016	beneficiaries	2017/2018	1353
level1	ZA_1_006	2016	beneficiaries	2017/2018	659
level1	ZA_1_007	2016	beneficiaries	2017/2018	10630
level1	ZA_1_008	2016	beneficiaries	2017/2018	1226
country	ZA	2016	beneficiaries	2017/2018	31946
level1	ZA_1_003	2016	people with disabilities	2017/2018	0
level1	ZA_1_002	2016	people with disabilities	2017/2018	0
level1	ZA_1_009	2016	people with disabilities	2017/2018	2
level1	ZA_1_001	2016	people with disabilities	2017/2018	55
level1	ZA_1_005	2016	people with disabilities	2017/2018	0
level1	ZA_1_004	2016	people with disabilities	2017/2018	0
level1	ZA_1_006	2016	people with disabilities	2017/2018	0
level1	ZA_1_007	2016	people with disabilities	2017/2018	0
level1	ZA_1_008	2016	people with disabilities	2017/2018	0
country	ZA	2016	people with disabilities	2017/2018	57
level1	ZA_1_003	2016	hectares acquired	2017/2018	0
level1	ZA_1_002	2016	hectares acquired	2017/2018	0
level1	ZA_1_009	2016	hectares acquired	2017/2018	0
level1	ZA_1_001	2016	hectares acquired	2017/2018	3657
level1	ZA_1_005	2016	hectares acquired	2017/2018	766
level1	ZA_1_004	2016	hectares acquired	2017/2018	1010
level1	ZA_1_006	2016	hectares acquired	2017/2018	1370
level1	ZA_1_007	2016	hectares acquired	2017/2018	17663
level1	ZA_1_008	2016	hectares acquired	2017/2018	10
country	ZA	2016	hectares acquired	2017/2018	24476
level1	ZA_1_003	2016	landcost	2017/2018	0
level1	ZA_1_002	2016	landcost	2017/2018	0
level1	ZA_1_009	2016	landcost	2017/2018	0
level1	ZA_1_001	2016	landcost	2017/2018	29795000
level1	ZA_1_005	2016	landcost	2017/2018	3950000
level1	ZA_1_004	2016	landcost	2017/2018	15300000
level1	ZA_1_006	2016	landcost	2017/2018	0
level1	ZA_1_007	2016	landcost	2017/2018	0
level1	ZA_1_008	2016	landcost	2017/2018	19100
country	ZA	2016	landcost	2017/2018	49064100
level1	ZA_1_003	2016	financial compensation	2017/2018	119737376.2
level1	ZA_1_002	2016	financial compensation	2017/2018	0
level1	ZA_1_009	2016	financial compensation	2017/2018	11495331.1
level1	ZA_1_001	2016	financial compensation	2017/2018	426535925
level1	ZA_1_005	2016	financial compensation	2017/2018	241701978
level1	ZA_1_004	2016	financial compensation	2017/2018	24520268.41
level1	ZA_1_006	2016	financial compensation	2017/2018	3415113.67
level1	ZA_1_007	2016	financial compensation	2017/2018	31074701.26
level1	ZA_1_008	2016	financial compensation	2017/2018	16474489.42
country	ZA	2016	financial compensation	2017/2018	874955183.1
level1	ZA_1_003	2016	female headed households	2017/2018	197
level1	ZA_1_002	2016	female headed households	2017/2018	0
level1	ZA_1_009	2016	female headed households	2017/2018	145
level1	ZA_1_001	2016	female headed households	2017/2018	849
level1	ZA_1_005	2016	female headed households	2017/2018	722
level1	ZA_1_004	2016	female headed households	2017/2018	13
level1	ZA_1_006	2016	female headed households	2017/2018	10
level1	ZA_1_007	2016	female headed households	2017/2018	2197
level1	ZA_1_008	2016	female headed households	2017/2018	101
country	ZA	2016	female headed households	2017/2018	4234
level1	ZA_1_003	2016	households	2009/2010	1816
level1	ZA_1_002	2016	households	2009/2010	125
level1	ZA_1_009	2016	households	2009/2010	0
level1	ZA_1_001	2016	households	2009/2010	3950
level1	ZA_1_005	2016	households	2009/2010	1099
level1	ZA_1_004	2016	households	2009/2010	300
level1	ZA_1_006	2016	households	2009/2010	89
level1	ZA_1_007	2016	households	2009/2010	796
level1	ZA_1_008	2016	households	2009/2010	1119
country	ZA	2016	households	2009/2010	9294
level1	ZA_1_003	2016	households	2010/2011	3634
level1	ZA_1_002	2016	households	2010/2011	151
level1	ZA_1_009	2016	households	2010/2011	356
level1	ZA_1_001	2016	households	2010/2011	3835
level1	ZA_1_005	2016	households	2010/2011	2444
level1	ZA_1_004	2016	households	2010/2011	117
level1	ZA_1_006	2016	households	2010/2011	1136
level1	ZA_1_007	2016	households	2010/2011	39
level1	ZA_1_008	2016	households	2010/2011	1598
country	ZA	2016	households	2010/2011	13310
level1	ZA_1_003	2016	households	2011/2012	1072
level1	ZA_1_002	2016	households	2011/2012	533
level1	ZA_1_009	2016	households	2011/2012	34
level1	ZA_1_001	2016	households	2011/2012	4581
level1	ZA_1_005	2016	households	2011/2012	2274
level1	ZA_1_004	2016	households	2011/2012	2709
level1	ZA_1_006	2016	households	2011/2012	672
level1	ZA_1_007	2016	households	2011/2012	1646
level1	ZA_1_008	2016	households	2011/2012	916
country	ZA	2016	households	2011/2012	14437
level1	ZA_1_003	2016	households	2012/2013	4767
level1	ZA_1_002	2016	households	2012/2013	1081
level1	ZA_1_009	2016	households	2012/2013	286
level1	ZA_1_001	2016	households	2012/2013	4454
level1	ZA_1_005	2016	households	2012/2013	1465
level1	ZA_1_004	2016	households	2012/2013	3489
level1	ZA_1_006	2016	households	2012/2013	1576
level1	ZA_1_007	2016	households	2012/2013	5769
level1	ZA_1_008	2016	households	2012/2013	1101
country	ZA	2016	households	2012/2013	23988
level1	ZA_1_003	2016	households	2013/2014	2521
level1	ZA_1_002	2016	households	2013/2014	120
level1	ZA_1_009	2016	households	2013/2014	78
level1	ZA_1_001	2016	households	2013/2014	489
level1	ZA_1_005	2016	households	2013/2014	682
level1	ZA_1_004	2016	households	2013/2014	1617
level1	ZA_1_006	2016	households	2013/2014	767
level1	ZA_1_007	2016	households	2013/2014	656
level1	ZA_1_008	2016	households	2013/2014	1202
country	ZA	2016	households	2013/2014	8132
level1	ZA_1_003	2016	households	2014/2015	3383
level1	ZA_1_002	2016	households	2014/2015	218
level1	ZA_1_009	2016	households	2014/2015	677
level1	ZA_1_001	2016	households	2014/2015	2340
level1	ZA_1_005	2016	households	2014/2015	1952
level1	ZA_1_004	2016	households	2014/2015	1557
level1	ZA_1_006	2016	households	2014/2015	1155
level1	ZA_1_007	2016	households	2014/2015	2725
level1	ZA_1_008	2016	households	2014/2015	1450
country	ZA	2016	households	2014/2015	15457
level1	ZA_1_003	2016	households	2015/2016	4335
level1	ZA_1_002	2016	households	2015/2016	283
level1	ZA_1_009	2016	households	2015/2016	919
level1	ZA_1_001	2016	households	2015/2016	1129
level1	ZA_1_005	2016	households	2015/2016	3317
level1	ZA_1_004	2016	households	2015/2016	2105
level1	ZA_1_006	2016	households	2015/2016	609
level1	ZA_1_007	2016	households	2015/2016	143
level1	ZA_1_008	2016	households	2015/2016	1398
country	ZA	2016	households	2015/2016	14238
level1	ZA_1_003	2016	households	2016/2017	3419
level1	ZA_1_002	2016	households	2016/2017	346
level1	ZA_1_009	2016	households	2016/2017	702
level1	ZA_1_001	2016	households	2016/2017	2454
level1	ZA_1_005	2016	households	2016/2017	1620
level1	ZA_1_004	2016	households	2016/2017	993
level1	ZA_1_006	2016	households	2016/2017	1067
level1	ZA_1_007	2016	households	2016/2017	1347
level1	ZA_1_008	2016	households	2016/2017	1148
country	ZA	2016	households	2016/2017	13096
level1	ZA_1_003	2016	female headed households	2009/2010	559
level1	ZA_1_002	2016	female headed households	2009/2010	79
level1	ZA_1_009	2016	female headed households	2009/2010	0
level1	ZA_1_001	2016	female headed households	2009/2010	1668
level1	ZA_1_005	2016	female headed households	2009/2010	669
level1	ZA_1_004	2016	female headed households	2009/2010	119
level1	ZA_1_006	2016	female headed households	2009/2010	46
level1	ZA_1_007	2016	female headed households	2009/2010	409
level1	ZA_1_008	2016	female headed households	2009/2010	628
country	ZA	2016	female headed households	2009/2010	4177
level1	ZA_1_003	2016	female headed households	2010/2011	1396
level1	ZA_1_002	2016	female headed households	2010/2011	76
level1	ZA_1_009	2016	female headed households	2010/2011	196
level1	ZA_1_001	2016	female headed households	2010/2011	1330
level1	ZA_1_005	2016	female headed households	2010/2011	1071
level1	ZA_1_004	2016	female headed households	2010/2011	41
level1	ZA_1_006	2016	female headed households	2010/2011	719
level1	ZA_1_007	2016	female headed households	2010/2011	19
level1	ZA_1_008	2016	female headed households	2010/2011	1111
country	ZA	2016	female headed households	2010/2011	5959
level1	ZA_1_003	2016	female headed households	2011/2012	533
level1	ZA_1_002	2016	female headed households	2011/2012	242
level1	ZA_1_009	2016	female headed households	2011/2012	21
level1	ZA_1_001	2016	female headed households	2011/2012	1587
level1	ZA_1_005	2016	female headed households	2011/2012	880
level1	ZA_1_004	2016	female headed households	2011/2012	1444
level1	ZA_1_006	2016	female headed households	2011/2012	411
level1	ZA_1_007	2016	female headed households	2011/2012	661
level1	ZA_1_008	2016	female headed households	2011/2012	606
country	ZA	2016	female headed households	2011/2012	6385
level1	ZA_1_003	2016	female headed households	2012/2013	2284
level1	ZA_1_002	2016	female headed households	2012/2013	506
level1	ZA_1_009	2016	female headed households	2012/2013	129
level1	ZA_1_001	2016	female headed households	2012/2013	1372
level1	ZA_1_005	2016	female headed households	2012/2013	421
level1	ZA_1_004	2016	female headed households	2012/2013	1719
level1	ZA_1_006	2016	female headed households	2012/2013	712
level1	ZA_1_007	2016	female headed households	2012/2013	2743
level1	ZA_1_008	2016	female headed households	2012/2013	595
country	ZA	2016	female headed households	2012/2013	10481
level1	ZA_1_003	2016	female headed households	2013/2014	692
level1	ZA_1_002	2016	female headed households	2013/2014	66
level1	ZA_1_009	2016	female headed households	2013/2014	33
level1	ZA_1_001	2016	female headed households	2013/2014	182
level1	ZA_1_005	2016	female headed households	2013/2014	331
level1	ZA_1_004	2016	female headed households	2013/2014	620
level1	ZA_1_006	2016	female headed households	2013/2014	276
level1	ZA_1_007	2016	female headed households	2013/2014	380
level1	ZA_1_008	2016	female headed households	2013/2014	621
country	ZA	2016	female headed households	2013/2014	3201
level1	ZA_1_003	2016	female headed households	2014/2015	864
level1	ZA_1_002	2016	female headed households	2014/2015	112
level1	ZA_1_009	2016	female headed households	2014/2015	294
level1	ZA_1_001	2016	female headed households	2014/2015	1086
level1	ZA_1_005	2016	female headed households	2014/2015	912
level1	ZA_1_004	2016	female headed households	2014/2015	481
level1	ZA_1_006	2016	female headed households	2014/2015	330
level1	ZA_1_007	2016	female headed households	2014/2015	1515
level1	ZA_1_008	2016	female headed households	2014/2015	650
country	ZA	2016	female headed households	2014/2015	6244
level1	ZA_1_003	2016	female headed households	2015/2016	2454
level1	ZA_1_002	2016	female headed households	2015/2016	100
level1	ZA_1_009	2016	female headed households	2015/2016	529
level1	ZA_1_001	2016	female headed households	2015/2016	476
level1	ZA_1_005	2016	female headed households	2015/2016	1856
level1	ZA_1_004	2016	female headed households	2015/2016	711
level1	ZA_1_006	2016	female headed households	2015/2016	174
level1	ZA_1_007	2016	female headed households	2015/2016	75
level1	ZA_1_008	2016	female headed households	2015/2016	624
country	ZA	2016	female headed households	2015/2016	6999
level1	ZA_1_003	2016	female headed households	2016/2017	1258
level1	ZA_1_002	2016	female headed households	2016/2017	146
level1	ZA_1_009	2016	female headed households	2016/2017	431
level1	ZA_1_001	2016	female headed households	2016/2017	1424
level1	ZA_1_005	2016	female headed households	2016/2017	719
level1	ZA_1_004	2016	female headed households	2016/2017	425
level1	ZA_1_006	2016	female headed households	2016/2017	440
level1	ZA_1_007	2016	female headed households	2016/2017	532
level1	ZA_1_008	2016	female headed households	2016/2017	680
country	ZA	2016	female headed households	2016/2017	6055
level1	ZA_1_003	2016	hectares acquired	2009/2010	1289
level1	ZA_1_002	2016	hectares acquired	2009/2010	252
level1	ZA_1_009	2016	hectares acquired	2009/2010	0
level1	ZA_1_001	2016	hectares acquired	2009/2010	30469
level1	ZA_1_005	2016	hectares acquired	2009/2010	25089
level1	ZA_1_004	2016	hectares acquired	2009/2010	10481
level1	ZA_1_006	2016	hectares acquired	2009/2010	67724
level1	ZA_1_007	2016	hectares acquired	2009/2010	9551
level1	ZA_1_008	2016	hectares acquired	2009/2010	637
country	ZA	2016	hectares acquired	2009/2010	145492
level1	ZA_1_003	2016	hectares acquired	2010/2011	34186
level1	ZA_1_002	2016	hectares acquired	2010/2011	3837
level1	ZA_1_009	2016	hectares acquired	2010/2011	6759
level1	ZA_1_001	2016	hectares acquired	2010/2011	23853
level1	ZA_1_005	2016	hectares acquired	2010/2011	32348
level1	ZA_1_004	2016	hectares acquired	2010/2011	10043
level1	ZA_1_006	2016	hectares acquired	2010/2011	238
level1	ZA_1_007	2016	hectares acquired	2010/2011	13175
level1	ZA_1_008	2016	hectares acquired	2010/2011	68
country	ZA	2016	hectares acquired	2010/2011	124507
level1	ZA_1_003	2016	hectares acquired	2011/2012	0
level1	ZA_1_002	2016	hectares acquired	2011/2012	1437
level1	ZA_1_009	2016	hectares acquired	2011/2012	0
level1	ZA_1_001	2016	hectares acquired	2011/2012	31508
level1	ZA_1_005	2016	hectares acquired	2011/2012	18609
level1	ZA_1_004	2016	hectares acquired	2011/2012	34675
level1	ZA_1_006	2016	hectares acquired	2011/2012	0
level1	ZA_1_007	2016	hectares acquired	2011/2012	12252
level1	ZA_1_008	2016	hectares acquired	2011/2012	3
country	ZA	2016	hectares acquired	2011/2012	98484
level1	ZA_1_003	2016	hectares acquired	2012/2013	829
level1	ZA_1_002	2016	hectares acquired	2012/2013	3293
level1	ZA_1_009	2016	hectares acquired	2012/2013	586
level1	ZA_1_001	2016	hectares acquired	2012/2013	62644
level1	ZA_1_005	2016	hectares acquired	2012/2013	24978
level1	ZA_1_004	2016	hectares acquired	2012/2013	27493
level1	ZA_1_006	2016	hectares acquired	2012/2013	8089
level1	ZA_1_007	2016	hectares acquired	2012/2013	68004
level1	ZA_1_008	2016	hectares acquired	2012/2013	51
country	ZA	2016	hectares acquired	2012/2013	195967
level1	ZA_1_003	2016	hectares acquired	2013/2014	0
level1	ZA_1_002	2016	hectares acquired	2013/2014	2394
level1	ZA_1_009	2016	hectares acquired	2013/2014	284
level1	ZA_1_001	2016	hectares acquired	2013/2014	9036
level1	ZA_1_005	2016	hectares acquired	2013/2014	12195
level1	ZA_1_004	2016	hectares acquired	2013/2014	28529
level1	ZA_1_006	2016	hectares acquired	2013/2014	6391
level1	ZA_1_007	2016	hectares acquired	2013/2014	10001
level1	ZA_1_008	2016	hectares acquired	2013/2014	8
country	ZA	2016	hectares acquired	2013/2014	68838
level1	ZA_1_003	2016	hectares acquired	2014/2015	1342
level1	ZA_1_002	2016	hectares acquired	2014/2015	0
level1	ZA_1_009	2016	hectares acquired	2014/2015	0
level1	ZA_1_001	2016	hectares acquired	2014/2015	29512
level1	ZA_1_005	2016	hectares acquired	2014/2015	19701
level1	ZA_1_004	2016	hectares acquired	2014/2015	25261
level1	ZA_1_006	2016	hectares acquired	2014/2015	38006
level1	ZA_1_007	2016	hectares acquired	2014/2015	28139
level1	ZA_1_008	2016	hectares acquired	2014/2015	2445
country	ZA	2016	hectares acquired	2014/2015	144406
level1	ZA_1_003	2016	hectares acquired	2015/2016	4111
level1	ZA_1_002	2016	hectares acquired	2015/2016	1164
level1	ZA_1_009	2016	hectares acquired	2015/2016	0
level1	ZA_1_001	2016	hectares acquired	2015/2016	13667
level1	ZA_1_005	2016	hectares acquired	2015/2016	11269
level1	ZA_1_004	2016	hectares acquired	2015/2016	19815
level1	ZA_1_006	2016	hectares acquired	2015/2016	37295
level1	ZA_1_007	2016	hectares acquired	2015/2016	10137
level1	ZA_1_008	2016	hectares acquired	2015/2016	4427
country	ZA	2016	hectares acquired	2015/2016	101886
level1	ZA_1_003	2016	hectares acquired	2016/2017	1389
level1	ZA_1_002	2016	hectares acquired	2016/2017	2897
level1	ZA_1_009	2016	hectares acquired	2016/2017	142
level1	ZA_1_001	2016	hectares acquired	2016/2017	6545
level1	ZA_1_005	2016	hectares acquired	2016/2017	18051
level1	ZA_1_004	2016	hectares acquired	2016/2017	14855
level1	ZA_1_006	2016	hectares acquired	2016/2017	43170
level1	ZA_1_007	2016	hectares acquired	2016/2017	20827
level1	ZA_1_008	2016	hectares acquired	2016/2017	2
country	ZA	2016	hectares acquired	2016/2017	107878
level1	ZA_1_003	2016	beneficiaries	2009/2010	7404
level1	ZA_1_002	2016	beneficiaries	2009/2010	269
level1	ZA_1_009	2016	beneficiaries	2009/2010	0
level1	ZA_1_001	2016	beneficiaries	2009/2010	23845
level1	ZA_1_005	2016	beneficiaries	2009/2010	4291
level1	ZA_1_004	2016	beneficiaries	2009/2010	2353
level1	ZA_1_006	2016	beneficiaries	2009/2010	3075
level1	ZA_1_007	2016	beneficiaries	2009/2010	3498
level1	ZA_1_008	2016	beneficiaries	2009/2010	3498
country	ZA	2016	beneficiaries	2009/2010	48233
level1	ZA_1_003	2016	beneficiaries	2010/2011	12339
level1	ZA_1_002	2016	beneficiaries	2010/2011	742
level1	ZA_1_009	2016	beneficiaries	2010/2011	907
level1	ZA_1_001	2016	beneficiaries	2010/2011	22261
level1	ZA_1_005	2016	beneficiaries	2010/2011	6901
level1	ZA_1_004	2016	beneficiaries	2010/2011	442
level1	ZA_1_006	2016	beneficiaries	2010/2011	2658
level1	ZA_1_007	2016	beneficiaries	2010/2011	107
level1	ZA_1_008	2016	beneficiaries	2010/2011	4038
country	ZA	2016	beneficiaries	2010/2011	50395
level1	ZA_1_003	2016	beneficiaries	2011/2012	3387
level1	ZA_1_002	2016	beneficiaries	2011/2012	2192
level1	ZA_1_009	2016	beneficiaries	2011/2012	102
level1	ZA_1_001	2016	beneficiaries	2011/2012	22273
level1	ZA_1_005	2016	beneficiaries	2011/2012	7848
level1	ZA_1_004	2016	beneficiaries	2011/2012	9157
level1	ZA_1_006	2016	beneficiaries	2011/2012	3626
level1	ZA_1_007	2016	beneficiaries	2011/2012	22383
level1	ZA_1_008	2016	beneficiaries	2011/2012	1828
country	ZA	2016	beneficiaries	2011/2012	72796
level1	ZA_1_003	2016	beneficiaries	2012/2013	27161
level1	ZA_1_002	2016	beneficiaries	2012/2013	5356
level1	ZA_1_009	2016	beneficiaries	2012/2013	1488
level1	ZA_1_001	2016	beneficiaries	2012/2013	25865
level1	ZA_1_005	2016	beneficiaries	2012/2013	3818
level1	ZA_1_004	2016	beneficiaries	2012/2013	11727
level1	ZA_1_006	2016	beneficiaries	2012/2013	8691
level1	ZA_1_007	2016	beneficiaries	2012/2013	24161
level1	ZA_1_008	2016	beneficiaries	2012/2013	3011
country	ZA	2016	beneficiaries	2012/2013	111278
level1	ZA_1_003	2016	beneficiaries	2013/2014	7357
level1	ZA_1_002	2016	beneficiaries	2013/2014	532
level1	ZA_1_009	2016	beneficiaries	2013/2014	153
level1	ZA_1_001	2016	beneficiaries	2013/2014	2013
level1	ZA_1_005	2016	beneficiaries	2013/2014	2142
level1	ZA_1_004	2016	beneficiaries	2013/2014	10667
level1	ZA_1_006	2016	beneficiaries	2013/2014	3726
level1	ZA_1_007	2016	beneficiaries	2013/2014	4606
level1	ZA_1_008	2016	beneficiaries	2013/2014	5709
country	ZA	2016	beneficiaries	2013/2014	36905
level1	ZA_1_003	2016	beneficiaries	2014/2015	20603
level1	ZA_1_002	2016	beneficiaries	2014/2015	1094
level1	ZA_1_009	2016	beneficiaries	2014/2015	2755
level1	ZA_1_001	2016	beneficiaries	2014/2015	16012
level1	ZA_1_005	2016	beneficiaries	2014/2015	7242
level1	ZA_1_004	2016	beneficiaries	2014/2015	9910
level1	ZA_1_006	2016	beneficiaries	2014/2015	5482
level1	ZA_1_007	2016	beneficiaries	2014/2015	10611
level1	ZA_1_008	2016	beneficiaries	2014/2015	4891
country	ZA	2016	beneficiaries	2014/2015	78600
level1	ZA_1_003	2016	beneficiaries	2015/2016	21853
level1	ZA_1_002	2016	beneficiaries	2015/2016	969
level1	ZA_1_009	2016	beneficiaries	2015/2016	2049
level1	ZA_1_001	2016	beneficiaries	2015/2016	5983
level1	ZA_1_005	2016	beneficiaries	2015/2016	9951
level1	ZA_1_004	2016	beneficiaries	2015/2016	15285
level1	ZA_1_006	2016	beneficiaries	2015/2016	3483
level1	ZA_1_007	2016	beneficiaries	2015/2016	257
level1	ZA_1_008	2016	beneficiaries	2015/2016	3577
country	ZA	2016	beneficiaries	2015/2016	63407
level1	ZA_1_003	2016	beneficiaries	2016/2017	27613
level1	ZA_1_002	2016	beneficiaries	2016/2017	892
level1	ZA_1_009	2016	beneficiaries	2016/2017	2132
level1	ZA_1_001	2016	beneficiaries	2016/2017	11364
level1	ZA_1_005	2016	beneficiaries	2016/2017	6386
level1	ZA_1_004	2016	beneficiaries	2016/2017	10513
level1	ZA_1_006	2016	beneficiaries	2016/2017	6563
level1	ZA_1_007	2016	beneficiaries	2016/2017	4521
level1	ZA_1_008	2016	beneficiaries	2016/2017	4686
country	ZA	2016	beneficiaries	2016/2017	74670
level1	ZA_1_003	2016	claims settled	2009/2010	7
level1	ZA_1_002	2016	claims settled	2009/2010	3
level1	ZA_1_009	2016	claims settled	2009/2010	0
level1	ZA_1_001	2016	claims settled	2009/2010	10
level1	ZA_1_005	2016	claims settled	2009/2010	1
level1	ZA_1_004	2016	claims settled	2009/2010	5
level1	ZA_1_006	2016	claims settled	2009/2010	3
level1	ZA_1_007	2016	claims settled	2009/2010	2
level1	ZA_1_008	2016	claims settled	2009/2010	2
country	ZA	2016	claims settled	2009/2010	33
level1	ZA_1_003	2016	claims settled	2010/2011	176
level1	ZA_1_002	2016	claims settled	2010/2011	3
level1	ZA_1_009	2016	claims settled	2010/2011	2
level1	ZA_1_001	2016	claims settled	2010/2011	11
level1	ZA_1_005	2016	claims settled	2010/2011	38
level1	ZA_1_004	2016	claims settled	2010/2011	14
level1	ZA_1_006	2016	claims settled	2010/2011	13
level1	ZA_1_007	2016	claims settled	2010/2011	9
level1	ZA_1_008	2016	claims settled	2010/2011	191
country	ZA	2016	claims settled	2010/2011	457
level1	ZA_1_003	2016	claims settled	2011/2012	126
level1	ZA_1_002	2016	claims settled	2011/2012	4
level1	ZA_1_009	2016	claims settled	2011/2012	38
level1	ZA_1_001	2016	claims settled	2011/2012	25
level1	ZA_1_005	2016	claims settled	2011/2012	159
level1	ZA_1_004	2016	claims settled	2011/2012	14
level1	ZA_1_006	2016	claims settled	2011/2012	0
level1	ZA_1_007	2016	claims settled	2011/2012	6
level1	ZA_1_008	2016	claims settled	2011/2012	44
country	ZA	2016	claims settled	2011/2012	416
level1	ZA_1_003	2016	claims settled	2012/2013	53
level1	ZA_1_002	2016	claims settled	2012/2013	5
level1	ZA_1_009	2016	claims settled	2012/2013	118
level1	ZA_1_001	2016	claims settled	2012/2013	61
level1	ZA_1_005	2016	claims settled	2012/2013	105
level1	ZA_1_004	2016	claims settled	2012/2013	47
level1	ZA_1_006	2016	claims settled	2012/2013	3
level1	ZA_1_007	2016	claims settled	2012/2013	12
level1	ZA_1_008	2016	claims settled	2012/2013	198
country	ZA	2016	claims settled	2012/2013	602
level1	ZA_1_003	2016	claims settled	2013/2014	21
level1	ZA_1_002	2016	claims settled	2013/2014	6
level1	ZA_1_009	2016	claims settled	2013/2014	4
level1	ZA_1_001	2016	claims settled	2013/2014	10
level1	ZA_1_005	2016	claims settled	2013/2014	2
level1	ZA_1_004	2016	claims settled	2013/2014	10
level1	ZA_1_006	2016	claims settled	2013/2014	4
level1	ZA_1_007	2016	claims settled	2013/2014	3
level1	ZA_1_008	2016	claims settled	2013/2014	210
country	ZA	2016	claims settled	2013/2014	270
level1	ZA_1_003	2016	claims settled	2014/2015	79
level1	ZA_1_002	2016	claims settled	2014/2015	1
level1	ZA_1_009	2016	claims settled	2014/2015	9
level1	ZA_1_001	2016	claims settled	2014/2015	59
level1	ZA_1_005	2016	claims settled	2014/2015	35
level1	ZA_1_004	2016	claims settled	2014/2015	35
level1	ZA_1_006	2016	claims settled	2014/2015	9
level1	ZA_1_007	2016	claims settled	2014/2015	7
level1	ZA_1_008	2016	claims settled	2014/2015	194
country	ZA	2016	claims settled	2014/2015	428
level1	ZA_1_003	2016	claims settled	2015/2016	80
level1	ZA_1_002	2016	claims settled	2015/2016	5
level1	ZA_1_009	2016	claims settled	2015/2016	18
level1	ZA_1_001	2016	claims settled	2015/2016	50
level1	ZA_1_005	2016	claims settled	2015/2016	189
level1	ZA_1_004	2016	claims settled	2015/2016	59
level1	ZA_1_006	2016	claims settled	2015/2016	8
level1	ZA_1_007	2016	claims settled	2015/2016	30
level1	ZA_1_008	2016	claims settled	2015/2016	178
country	ZA	2016	claims settled	2015/2016	617
level1	ZA_1_003	2016	claims settled	2016/2017	89
level1	ZA_1_002	2016	claims settled	2016/2017	3
level1	ZA_1_009	2016	claims settled	2016/2017	24
level1	ZA_1_001	2016	claims settled	2016/2017	110
level1	ZA_1_005	2016	claims settled	2016/2017	122
level1	ZA_1_004	2016	claims settled	2016/2017	74
level1	ZA_1_006	2016	claims settled	2016/2017	14
level1	ZA_1_007	2016	claims settled	2016/2017	12
level1	ZA_1_008	2016	claims settled	2016/2017	356
country	ZA	2016	claims settled	2016/2017	804
\.


ALTER TABLE ONLY public.restitutionoutcomestatistic
    ADD CONSTRAINT pk_restitutionoutcomestatistic PRIMARY KEY (geo_level, geo_code, geo_version, restitutionoutcomestatistic, year);

--
-- PostgreSQL database dump complete
--
