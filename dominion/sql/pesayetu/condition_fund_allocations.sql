--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = pesayetu, public, pg_catalog;

ALTER TABLE IF EXISTS ONLY pesayetu.conditional_fund_allocations DROP CONSTRAINT IF EXISTS pk_conditional_fund_allocations;
DROP TABLE IF EXISTS pesayetu.conditional_fund_allocations;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: conditional_fund_allocations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.conditional_fund_allocations (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    allocation_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: conditional_fund_allocations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.conditional_fund_allocations (geo_level, geo_code, geo_version, allocation_type, year, total) FROM stdin;
country	KE	2009	Development Partners	2015/2016	10671178204
country	KE	2009	National Government	2015/2016	20998480000
level1	KE_1_030	2009	Development Partners	2015/2016	43194300
level1	KE_1_030	2009	National Government	2015/2016	324481292
level1	KE_1_036	2009	Development Partners	2015/2016	14950000
level1	KE_1_036	2009	National Government	2015/2016	324488449
level1	KE_1_039	2009	Development Partners	2015/2016	196750000
level1	KE_1_039	2009	National Government	2015/2016	495516573
level1	KE_1_040	2009	Development Partners	2015/2016	46240000
level1	KE_1_040	2009	National Government	2015/2016	369561553
level1	KE_1_028	2009	Development Partners	2015/2016	40979116
level1	KE_1_028	2009	National Government	2015/2016	282941615
level1	KE_1_014	2009	Development Partners	2015/2016	113750000
level1	KE_1_014	2009	National Government	2015/2016	500625241
level1	KE_1_007	2009	Development Partners	2015/2016	33028268
level1	KE_1_007	2009	National Government	2015/2016	687539457
level1	KE_1_043	2009	Development Partners	2015/2016	24770000
level1	KE_1_043	2009	National Government	2015/2016	414499437
level1	KE_1_011	2009	Development Partners	2015/2016	16698052
level1	KE_1_011	2009	National Government	2015/2016	254739627
level1	KE_1_034	2009	Development Partners	2015/2016	89533654
level1	KE_1_034	2009	National Government	2015/2016	311294742
level1	KE_1_037	2009	Development Partners	2015/2016	278500000
level1	KE_1_037	2009	National Government	2015/2016	899038414
level1	KE_1_035	2009	Development Partners	2015/2016	22600000
level1	KE_1_035	2009	National Government	2015/2016	363121852
level1	KE_1_022	2009	Development Partners	2015/2016	556200000
level1	KE_1_022	2009	National Government	2015/2016	876841548
level1	KE_1_003	2009	Development Partners	2015/2016	82306764
level1	KE_1_003	2009	National Government	2015/2016	486835382
level1	KE_1_020	2009	Development Partners	2015/2016	336770000
level1	KE_1_020	2009	National Government	2015/2016	297334152
level1	KE_1_045	2009	Development Partners	2015/2016	22950000
level1	KE_1_045	2009	National Government	2015/2016	839649985
level1	KE_1_042	2009	Development Partners	2015/2016	64580000
level1	KE_1_042	2009	National Government	2015/2016	746516873
level1	KE_1_015	2009	Development Partners	2015/2016	83958266
level1	KE_1_015	2009	National Government	2015/2016	368896848
level1	KE_1_002	2009	Development Partners	2015/2016	59379322
level1	KE_1_002	2009	National Government	2015/2016	374066375
level1	KE_1_031	2009	Development Partners	2015/2016	236375096
level1	KE_1_031	2009	National Government	2015/2016	306098811
level1	KE_1_005	2009	Development Partners	2015/2016	14772526
level1	KE_1_005	2009	National Government	2015/2016	234556520
level1	KE_1_016	2009	Development Partners	2015/2016	206700000
level1	KE_1_016	2009	National Government	2015/2016	702415150
level1	KE_1_017	2009	Development Partners	2015/2016	244130000
level1	KE_1_017	2009	National Government	2015/2016	366617073
level1	KE_1_009	2009	Development Partners	2015/2016	28306168
level1	KE_1_009	2009	National Government	2015/2016	373457658
level1	KE_1_010	2009	Development Partners	2015/2016	25436676
level1	KE_1_010	2009	National Government	2015/2016	281413195
level1	KE_1_012	2009	Development Partners	2015/2016	220590000
level1	KE_1_012	2009	National Government	2015/2016	671568065
level1	KE_1_044	2009	Development Partners	2015/2016	87452156
level1	KE_1_044	2009	National Government	2015/2016	449931534
level1	KE_1_001	2009	Development Partners	2015/2016	22300000
level1	KE_1_001	2009	National Government	2015/2016	816446379
level1	KE_1_021	2009	Development Partners	2015/2016	124810000
level1	KE_1_021	2009	National Government	2015/2016	360174609
level1	KE_1_047	2009	Development Partners	2015/2016	6227800000
level1	KE_1_047	2009	National Government	2015/2016	730196325
level1	KE_1_032	2009	Development Partners	2015/2016	25260000
level1	KE_1_032	2009	National Government	2015/2016	926660487
level1	KE_1_029	2009	Development Partners	2015/2016	18310000
level1	KE_1_029	2009	National Government	2015/2016	334367747
level1	KE_1_033	2009	Development Partners	2015/2016	56027350
level1	KE_1_033	2009	National Government	2015/2016	332674346
level1	KE_1_046	2009	Development Partners	2015/2016	23920000
level1	KE_1_046	2009	National Government	2015/2016	336026183
level1	KE_1_018	2009	Development Partners	2015/2016	91860000
level1	KE_1_018	2009	National Government	2015/2016	308691210
level1	KE_1_019	2009	Development Partners	2015/2016	182930000
level1	KE_1_019	2009	National Government	2015/2016	712760771
level1	KE_1_025	2009	Development Partners	2015/2016	19659898
level1	KE_1_025	2009	National Government	2015/2016	253891092
level1	KE_1_041	2009	Development Partners	2015/2016	119030000
level1	KE_1_041	2009	National Government	2015/2016	400533084
level1	KE_1_006	2009	Development Partners	2015/2016	32052898
level1	KE_1_006	2009	National Government	2015/2016	280159968
level1	KE_1_004	2009	Development Partners	2015/2016	17771988
level1	KE_1_004	2009	National Government	2015/2016	264916131
level1	KE_1_013	2009	Development Partners	2015/2016	326229808
level1	KE_1_013	2009	National Government	2015/2016	272978662
level1	KE_1_026	2009	Development Partners	2015/2016	11330000
level1	KE_1_026	2009	National Government	2015/2016	341137338
level1	KE_1_023	2009	Development Partners	2015/2016	32556700
level1	KE_1_023	2009	National Government	2015/2016	365628794
level1	KE_1_027	2009	Development Partners	2015/2016	17320000
level1	KE_1_027	2009	National Government	2015/2016	393481820
level1	KE_1_038	2009	Development Partners	2015/2016	66670000
level1	KE_1_038	2009	National Government	2015/2016	319378127
level1	KE_1_008	2009	Development Partners	2015/2016	36459300
level1	KE_1_008	2009	National Government	2015/2016	346957977
level1	KE_1_024	2009	Development Partners	2015/2016	27979898
level1	KE_1_024	2009	National Government	2015/2016	297371526
country	KE	2009	Development Partners	2016/2017	3870679737
country	KE	2009	National Government	2016/2017	18027836984
level1	KE_1_030	2009	Development Partners	2016/2017	90746278
level1	KE_1_030	2009	National Government	2016/2017	247398231
level1	KE_1_036	2009	Development Partners	2016/2017	8810000
level1	KE_1_036	2009	National Government	2016/2017	249230239
level1	KE_1_039	2009	Development Partners	2016/2017	7375000
level1	KE_1_039	2009	National Government	2016/2017	445853234
level1	KE_1_040	2009	Development Partners	2016/2017	6495000
level1	KE_1_040	2009	National Government	2016/2017	295321032
level1	KE_1_028	2009	Development Partners	2016/2017	67332570
level1	KE_1_028	2009	National Government	2016/2017	209149840
level1	KE_1_014	2009	Development Partners	2016/2017	6875000
level1	KE_1_014	2009	National Government	2016/2017	511841166
level1	KE_1_007	2009	Development Partners	2016/2017	50131467
level1	KE_1_007	2009	National Government	2016/2017	586657085
level1	KE_1_043	2009	Development Partners	2016/2017	12385000
level1	KE_1_043	2009	National Government	2016/2017	340520062
level1	KE_1_011	2009	Development Partners	2016/2017	26232373
level1	KE_1_011	2009	National Government	2016/2017	172115898
level1	KE_1_034	2009	Development Partners	2016/2017	149526341
level1	KE_1_034	2009	National Government	2016/2017	239970891
level1	KE_1_037	2009	Development Partners	2016/2017	11750000
level1	KE_1_037	2009	National Government	2016/2017	906172077
level1	KE_1_035	2009	Development Partners	2016/2017	9965000
level1	KE_1_035	2009	National Government	2016/2017	278075722
level1	KE_1_022	2009	Development Partners	2016/2017	9600000
level1	KE_1_022	2009	National Government	2016/2017	869840936
level1	KE_1_003	2009	Development Partners	2016/2017	122422642
level1	KE_1_003	2009	National Government	2016/2017	427175164
level1	KE_1_020	2009	Development Partners	2016/2017	6385000
level1	KE_1_020	2009	National Government	2016/2017	211419707
level1	KE_1_045	2009	Development Partners	2016/2017	11475000
level1	KE_1_045	2009	National Government	2016/2017	806118433
level1	KE_1_042	2009	Development Partners	2016/2017	38290000
level1	KE_1_042	2009	National Government	2016/2017	681249588
level1	KE_1_015	2009	Development Partners	2016/2017	150020244
level1	KE_1_015	2009	National Government	2016/2017	293741405
level1	KE_1_002	2009	Development Partners	2016/2017	88976289
level1	KE_1_002	2009	National Government	2016/2017	315507017
level1	KE_1_031	2009	Development Partners	2016/2017	65814676
level1	KE_1_031	2009	National Government	2016/2017	224217040
level1	KE_1_005	2009	Development Partners	2016/2017	18348378
level1	KE_1_005	2009	National Government	2016/2017	247617538
level1	KE_1_016	2009	Development Partners	2016/2017	13350000
level1	KE_1_016	2009	National Government	2016/2017	703521230
level1	KE_1_017	2009	Development Partners	2016/2017	12065000
level1	KE_1_017	2009	National Government	2016/2017	297862274
level1	KE_1_009	2009	Development Partners	2016/2017	49787798
level1	KE_1_009	2009	National Government	2016/2017	315078397
level1	KE_1_010	2009	Development Partners	2016/2017	42302134
level1	KE_1_010	2009	National Government	2016/2017	213750227
level1	KE_1_012	2009	Development Partners	2016/2017	1710295000
level1	KE_1_012	2009	National Government	2016/2017	706272310
level1	KE_1_044	2009	Development Partners	2016/2017	148440725
level1	KE_1_044	2009	National Government	2016/2017	386744511
level1	KE_1_001	2009	Development Partners	2016/2017	19150000
level1	KE_1_001	2009	National Government	2016/2017	701099704
level1	KE_1_021	2009	Development Partners	2016/2017	12405000
level1	KE_1_021	2009	National Government	2016/2017	284119733
level1	KE_1_047	2009	Development Partners	2016/2017	373900000
level1	KE_1_047	2009	National Government	2016/2017	590993985
level1	KE_1_032	2009	Development Partners	2016/2017	12630000
level1	KE_1_032	2009	National Government	2016/2017	840874682
level1	KE_1_029	2009	Development Partners	2016/2017	9155000
level1	KE_1_029	2009	National Government	2016/2017	260830907
level1	KE_1_033	2009	Development Partners	2016/2017	90146403
level1	KE_1_033	2009	National Government	2016/2017	273673815
level1	KE_1_046	2009	Development Partners	2016/2017	11960000
level1	KE_1_046	2009	National Government	2016/2017	258376249
level1	KE_1_018	2009	Development Partners	2016/2017	9430000
level1	KE_1_018	2009	National Government	2016/2017	226788828
level1	KE_1_019	2009	Development Partners	2016/2017	11465000
level1	KE_1_019	2009	National Government	2016/2017	641510955
level1	KE_1_025	2009	Development Partners	2016/2017	35343554
level1	KE_1_025	2009	National Government	2016/2017	176911952
level1	KE_1_041	2009	Development Partners	2016/2017	13765000
level1	KE_1_041	2009	National Government	2016/2017	310178291
level1	KE_1_006	2009	Development Partners	2016/2017	43439216
level1	KE_1_006	2009	National Government	2016/2017	194904811
level1	KE_1_004	2009	Development Partners	2016/2017	28819105
level1	KE_1_004	2009	National Government	2016/2017	292735592
level1	KE_1_013	2009	Development Partners	2016/2017	50819343
level1	KE_1_013	2009	National Government	2016/2017	186035373
level1	KE_1_026	2009	Development Partners	2016/2017	5665000
level1	KE_1_026	2009	National Government	2016/2017	276793229
level1	KE_1_023	2009	Development Partners	2016/2017	73293982
level1	KE_1_023	2009	National Government	2016/2017	327563586
level1	KE_1_027	2009	Development Partners	2016/2017	8660000
level1	KE_1_027	2009	National Government	2016/2017	244752303
level1	KE_1_038	2009	Development Partners	2016/2017	7085000
level1	KE_1_038	2009	National Government	2016/2017	239401487
level1	KE_1_008	2009	Development Partners	2016/2017	56211458
level1	KE_1_008	2009	National Government	2016/2017	287241974
level1	KE_1_024	2009	Development Partners	2016/2017	62139761
level1	KE_1_024	2009	National Government	2016/2017	230628275
country	KE	2009	Development Partners	2017/2018	16407826139
country	KE	2009	National Government	2017/2018	23273192369
level1	KE_1_030	2009	Development Partners	2017/2018	299821230
level1	KE_1_030	2009	National Government	2017/2018	333374243
level1	KE_1_036	2009	Development Partners	2017/2018	149391438
level1	KE_1_036	2009	National Government	2017/2018	358153393
level1	KE_1_039	2009	Development Partners	2017/2018	298824753
level1	KE_1_039	2009	National Government	2017/2018	531884312
level1	KE_1_040	2009	Development Partners	2017/2018	155229716
level1	KE_1_040	2009	National Government	2017/2018	408177033
level1	KE_1_028	2009	Development Partners	2017/2018	142673578
level1	KE_1_028	2009	National Government	2017/2018	281518265
level1	KE_1_014	2009	Development Partners	2017/2018	137088346
level1	KE_1_014	2009	National Government	2017/2018	611940103
level1	KE_1_007	2009	Development Partners	2017/2018	242544407
level1	KE_1_007	2009	National Government	2017/2018	727272975
level1	KE_1_043	2009	Development Partners	2017/2018	247766983
level1	KE_1_043	2009	National Government	2017/2018	410977282
level1	KE_1_011	2009	Development Partners	2017/2018	128629328
level1	KE_1_011	2009	National Government	2017/2018	376614697
level1	KE_1_034	2009	Development Partners	2017/2018	182819277
level1	KE_1_034	2009	National Government	2017/2018	327698687
level1	KE_1_037	2009	Development Partners	2017/2018	259117644
level1	KE_1_037	2009	National Government	2017/2018	968430285
level1	KE_1_035	2009	Development Partners	2017/2018	123263880
level1	KE_1_035	2009	National Government	2017/2018	341487512
level1	KE_1_022	2009	Development Partners	2017/2018	171860543
level1	KE_1_022	2009	National Government	2017/2018	921227765
level1	KE_1_003	2009	Development Partners	2017/2018	393492525
level1	KE_1_003	2009	National Government	2017/2018	506667945
level1	KE_1_020	2009	Development Partners	2017/2018	136198212
level1	KE_1_020	2009	National Government	2017/2018	295119105
level1	KE_1_045	2009	Development Partners	2017/2018	272278253
level1	KE_1_045	2009	National Government	2017/2018	871511268
level1	KE_1_042	2009	Development Partners	2017/2018	205150974
level1	KE_1_042	2009	National Government	2017/2018	756595347
level1	KE_1_015	2009	Development Partners	2017/2018	344841671
level1	KE_1_015	2009	National Government	2017/2018	495457373
level1	KE_1_002	2009	Development Partners	2017/2018	321582690
level1	KE_1_002	2009	National Government	2017/2018	373107313
level1	KE_1_031	2009	Development Partners	2017/2018	212173539
level1	KE_1_031	2009	National Government	2017/2018	286046433
level1	KE_1_005	2009	Development Partners	2017/2018	94106690
level1	KE_1_005	2009	National Government	2017/2018	338400604
level1	KE_1_016	2009	Development Partners	2017/2018	175585971
level1	KE_1_016	2009	National Government	2017/2018	857806061
level1	KE_1_017	2009	Development Partners	2017/2018	294396310
level1	KE_1_017	2009	National Government	2017/2018	433661302
level1	KE_1_009	2009	Development Partners	2017/2018	283179311
level1	KE_1_009	2009	National Government	2017/2018	532626010
level1	KE_1_010	2009	Development Partners	2017/2018	315142151
level1	KE_1_010	2009	National Government	2017/2018	353093486
level1	KE_1_012	2009	Development Partners	2017/2018	4092379277
level1	KE_1_012	2009	National Government	2017/2018	836607144
level1	KE_1_044	2009	Development Partners	2017/2018	333790711
level1	KE_1_044	2009	National Government	2017/2018	413106666
level1	KE_1_001	2009	Development Partners	2017/2018	101425861
level1	KE_1_001	2009	National Government	2017/2018	759622516
level1	KE_1_021	2009	Development Partners	2017/2018	175025300
level1	KE_1_021	2009	National Government	2017/2018	428174399
level1	KE_1_047	2009	Development Partners	2017/2018	2290502230
level1	KE_1_047	2009	National Government	2017/2018	759568406
level1	KE_1_032	2009	Development Partners	2017/2018	237657121
level1	KE_1_032	2009	National Government	2017/2018	889584107
level1	KE_1_029	2009	Development Partners	2017/2018	210116247
level1	KE_1_029	2009	National Government	2017/2018	345713873
level1	KE_1_033	2009	Development Partners	2017/2018	282870310
level1	KE_1_033	2009	National Government	2017/2018	373105934
level1	KE_1_046	2009	Development Partners	2017/2018	149561205
level1	KE_1_046	2009	National Government	2017/2018	369636128
level1	KE_1_018	2009	Development Partners	2017/2018	166491908
level1	KE_1_018	2009	National Government	2017/2018	459581935
level1	KE_1_019	2009	Development Partners	2017/2018	92761342
level1	KE_1_019	2009	National Government	2017/2018	749086744
level1	KE_1_025	2009	Development Partners	2017/2018	318897301
level1	KE_1_025	2009	National Government	2017/2018	277702372
level1	KE_1_041	2009	Development Partners	2017/2018	160144386
level1	KE_1_041	2009	National Government	2017/2018	367420940
level1	KE_1_006	2009	Development Partners	2017/2018	196900401
level1	KE_1_006	2009	National Government	2017/2018	291798675
level1	KE_1_004	2009	Development Partners	2017/2018	253251635
level1	KE_1_004	2009	National Government	2017/2018	419558308
level1	KE_1_013	2009	Development Partners	2017/2018	100798020
level1	KE_1_013	2009	National Government	2017/2018	396766501
level1	KE_1_026	2009	Development Partners	2017/2018	230131937
level1	KE_1_026	2009	National Government	2017/2018	373438282
level1	KE_1_023	2009	Development Partners	2017/2018	342211436
level1	KE_1_023	2009	National Government	2017/2018	594217857
level1	KE_1_027	2009	Development Partners	2017/2018	214713880
level1	KE_1_027	2009	National Government	2017/2018	373197782
level1	KE_1_038	2009	Development Partners	2017/2018	196636664
level1	KE_1_038	2009	National Government	2017/2018	324237222
level1	KE_1_008	2009	Development Partners	2017/2018	353279800
level1	KE_1_008	2009	National Government	2017/2018	448002378
level1	KE_1_024	2009	Development Partners	2017/2018	314393341
level1	KE_1_024	2009	National Government	2017/2018	324215400
country	KE	2009	Development Partners	2018/2019	36981384138
country	KE	2009	National Government	2018/2019	25500000000
level1	KE_1_030	2009	Development Partners	2018/2019	455614301
level1	KE_1_030	2009	National Government	2018/2019	382727014
level1	KE_1_036	2009	Development Partners	2018/2019	495931469
level1	KE_1_036	2009	National Government	2018/2019	420841205
level1	KE_1_039	2009	Development Partners	2018/2019	772708758
level1	KE_1_039	2009	National Government	2018/2019	533956683
level1	KE_1_040	2009	Development Partners	2018/2019	514468709
level1	KE_1_040	2009	National Government	2018/2019	435973669
level1	KE_1_028	2009	Development Partners	2018/2019	448113957
level1	KE_1_028	2009	National Government	2018/2019	349797077
level1	KE_1_014	2009	Development Partners	2018/2019	423634353
level1	KE_1_014	2009	National Government	2018/2019	667061008
level1	KE_1_007	2009	Development Partners	2018/2019	1619534869
level1	KE_1_007	2009	National Government	2018/2019	775747878
level1	KE_1_043	2009	Development Partners	2018/2019	479279189
level1	KE_1_043	2009	National Government	2018/2019	444954827
level1	KE_1_011	2009	Development Partners	2018/2019	424751976
level1	KE_1_011	2009	National Government	2018/2019	449049293
level1	KE_1_034	2009	Development Partners	2018/2019	572134165
level1	KE_1_034	2009	National Government	2018/2019	415206684
level1	KE_1_037	2009	Development Partners	2018/2019	847913637
level1	KE_1_037	2009	National Government	2018/2019	1006978228
level1	KE_1_035	2009	Development Partners	2018/2019	557172175
level1	KE_1_035	2009	National Government	2018/2019	409519496
level1	KE_1_022	2009	Development Partners	2018/2019	2230951780
level1	KE_1_022	2009	National Government	2018/2019	1087865232
level1	KE_1_003	2009	Development Partners	2018/2019	1130333518
level1	KE_1_003	2009	National Government	2018/2019	564228319
level1	KE_1_020	2009	Development Partners	2018/2019	375297242
level1	KE_1_020	2009	National Government	2018/2019	371794810
level1	KE_1_045	2009	Development Partners	2018/2019	590705381
level1	KE_1_045	2009	National Government	2018/2019	917177976
level1	KE_1_042	2009	Development Partners	2018/2019	1260705051
level1	KE_1_042	2009	National Government	2018/2019	813848454
level1	KE_1_015	2009	Development Partners	2018/2019	625053090
level1	KE_1_015	2009	National Government	2018/2019	510797140
level1	KE_1_002	2009	Development Partners	2018/2019	872997000
level1	KE_1_002	2009	National Government	2018/2019	455485910
level1	KE_1_031	2009	Development Partners	2018/2019	440883643
level1	KE_1_031	2009	National Government	2018/2019	347622182
level1	KE_1_005	2009	Development Partners	2018/2019	349454694
level1	KE_1_005	2009	National Government	2018/2019	448082050
level1	KE_1_016	2009	Development Partners	2018/2019	1371260080
level1	KE_1_016	2009	National Government	2018/2019	881092537
level1	KE_1_017	2009	Development Partners	2018/2019	559260092
level1	KE_1_017	2009	National Government	2018/2019	438674526
level1	KE_1_009	2009	Development Partners	2018/2019	586255092
level1	KE_1_009	2009	National Government	2018/2019	523750213
level1	KE_1_010	2009	Development Partners	2018/2019	519678603
level1	KE_1_010	2009	National Government	2018/2019	417280542
level1	KE_1_012	2009	Development Partners	2018/2019	448987235
level1	KE_1_012	2009	National Government	2018/2019	882363597
level1	KE_1_044	2009	Development Partners	2018/2019	982299570
level1	KE_1_044	2009	National Government	2018/2019	430327100
level1	KE_1_001	2009	Development Partners	2018/2019	749726174
level1	KE_1_001	2009	National Government	2018/2019	868324719
level1	KE_1_021	2009	Development Partners	2018/2019	382120438
level1	KE_1_021	2009	National Government	2018/2019	450368887
level1	KE_1_047	2009	Development Partners	2018/2019	215149968
level1	KE_1_047	2009	National Government	2018/2019	729840781
level1	KE_1_032	2009	Development Partners	2018/2019	1474865158
level1	KE_1_032	2009	National Government	2018/2019	909243228
level1	KE_1_029	2009	Development Partners	2018/2019	616995189
level1	KE_1_029	2009	National Government	2018/2019	396712989
level1	KE_1_033	2009	Development Partners	2018/2019	448450203
level1	KE_1_033	2009	National Government	2018/2019	419242432
level1	KE_1_046	2009	Development Partners	2018/2019	424043052
level1	KE_1_046	2009	National Government	2018/2019	391753888
level1	KE_1_018	2009	Development Partners	2018/2019	466332856
level1	KE_1_018	2009	National Government	2018/2019	503233263
level1	KE_1_019	2009	Development Partners	2018/2019	522609757
level1	KE_1_019	2009	National Government	2018/2019	782635195
level1	KE_1_025	2009	Development Partners	2018/2019	473519323
level1	KE_1_025	2009	National Government	2018/2019	342710164
level1	KE_1_041	2009	Development Partners	2018/2019	428874926
level1	KE_1_041	2009	National Government	2018/2019	415427861
level1	KE_1_006	2009	Development Partners	2018/2019	820585453
level1	KE_1_006	2009	National Government	2018/2019	361620075
level1	KE_1_004	2009	Development Partners	2018/2019	507651269
level1	KE_1_004	2009	National Government	2018/2019	497504571
level1	KE_1_013	2009	Development Partners	2018/2019	326966757
level1	KE_1_013	2009	National Government	2018/2019	465209339
level1	KE_1_026	2009	Development Partners	2018/2019	745728311
level1	KE_1_026	2009	National Government	2018/2019	423000418
level1	KE_1_023	2009	Development Partners	2018/2019	507247478
level1	KE_1_023	2009	National Government	2018/2019	534489927
level1	KE_1_027	2009	Development Partners	2018/2019	1080111632
level1	KE_1_027	2009	National Government	2018/2019	410315914
level1	KE_1_038	2009	Development Partners	2018/2019	661090578
level1	KE_1_038	2009	National Government	2018/2019	385053522
level1	KE_1_008	2009	Development Partners	2018/2019	1611438084
level1	KE_1_008	2009	National Government	2018/2019	460298353
level1	KE_1_024	2009	Development Partners	2018/2019	562497958
level1	KE_1_024	2009	National Government	2018/2019	370810825
country	KE	2009	Development Partners	2019/2020	38704877210
country	KE	2009	National Government	2019/2020	22895214684
level1	KE_1_030	2009	Development Partners	2019/2020	325325892
level1	KE_1_030	2009	National Government	2019/2020	314622598
level1	KE_1_036	2009	Development Partners	2019/2020	457270099
level1	KE_1_036	2009	National Government	2019/2020	352339235
level1	KE_1_039	2009	Development Partners	2019/2020	923352734
level1	KE_1_039	2009	National Government	2019/2020	471132654
level1	KE_1_040	2009	Development Partners	2019/2020	419041031
level1	KE_1_040	2009	National Government	2019/2020	382879464
level1	KE_1_028	2009	Development Partners	2019/2020	354907368
level1	KE_1_028	2009	National Government	2019/2020	280537673
level1	KE_1_014	2009	Development Partners	2019/2020	581992895
level1	KE_1_014	2009	National Government	2019/2020	599466129
level1	KE_1_007	2009	Development Partners	2019/2020	918389383
level1	KE_1_007	2009	National Government	2019/2020	709693899
level1	KE_1_043	2009	Development Partners	2019/2020	599801103
level1	KE_1_043	2009	National Government	2019/2020	380624069
level1	KE_1_011	2009	Development Partners	2019/2020	403048854
level1	KE_1_011	2009	National Government	2019/2020	387607090
level1	KE_1_034	2009	Development Partners	2019/2020	626033282
level1	KE_1_034	2009	National Government	2019/2020	366740025
level1	KE_1_037	2009	Development Partners	2019/2020	702368864
level1	KE_1_037	2009	National Government	2019/2020	969486374
level1	KE_1_035	2009	Development Partners	2019/2020	599580638
level1	KE_1_035	2009	National Government	2019/2020	332126043
level1	KE_1_022	2009	Development Partners	2019/2020	2381409369
level1	KE_1_022	2009	National Government	2019/2020	1028141559
level1	KE_1_003	2009	Development Partners	2019/2020	1500516666
level1	KE_1_003	2009	National Government	2019/2020	513222118
level1	KE_1_020	2009	Development Partners	2019/2020	521896956
level1	KE_1_020	2009	National Government	2019/2020	298087199
level1	KE_1_045	2009	Development Partners	2019/2020	684744542
level1	KE_1_045	2009	National Government	2019/2020	871187381
level1	KE_1_042	2009	Development Partners	2019/2020	1084577868
level1	KE_1_042	2009	National Government	2019/2020	757960772
level1	KE_1_015	2009	Development Partners	2019/2020	797515756
level1	KE_1_015	2009	National Government	2019/2020	477658441
level1	KE_1_002	2009	Development Partners	2019/2020	982716075
level1	KE_1_002	2009	National Government	2019/2020	427925722
level1	KE_1_031	2009	Development Partners	2019/2020	305078964
level1	KE_1_031	2009	National Government	2019/2020	292381024
level1	KE_1_005	2009	Development Partners	2019/2020	306166757
level1	KE_1_005	2009	National Government	2019/2020	370333538
level1	KE_1_016	2009	Development Partners	2019/2020	1379849081
level1	KE_1_016	2009	National Government	2019/2020	810830576
level1	KE_1_017	2009	Development Partners	2019/2020	704754514
level1	KE_1_017	2009	National Government	2019/2020	421911014
level1	KE_1_009	2009	Development Partners	2019/2020	593513860
level1	KE_1_009	2009	National Government	2019/2020	469688330
level1	KE_1_010	2009	Development Partners	2019/2020	527605108
level1	KE_1_010	2009	National Government	2019/2020	346375843
level1	KE_1_012	2009	Development Partners	2019/2020	532143439
level1	KE_1_012	2009	National Government	2019/2020	822199639
level1	KE_1_044	2009	Development Partners	2019/2020	1065515013
level1	KE_1_044	2009	National Government	2019/2020	375863013
level1	KE_1_001	2009	Development Partners	2019/2020	1658859269
level1	KE_1_001	2009	National Government	2019/2020	769558026
level1	KE_1_021	2009	Development Partners	2019/2020	520780762
level1	KE_1_021	2009	National Government	2019/2020	414104727
level1	KE_1_047	2009	Development Partners	2019/2020	194699600
level1	KE_1_047	2009	National Government	2019/2020	686234787
level1	KE_1_032	2009	Development Partners	2019/2020	1591604871
level1	KE_1_032	2009	National Government	2019/2020	904946758
level1	KE_1_029	2009	Development Partners	2019/2020	683841621
level1	KE_1_029	2009	National Government	2019/2020	334625211
level1	KE_1_033	2009	Development Partners	2019/2020	538812751
level1	KE_1_033	2009	National Government	2019/2020	400193676
level1	KE_1_046	2009	Development Partners	2019/2020	569692854
level1	KE_1_046	2009	National Government	2019/2020	348716163
level1	KE_1_018	2009	Development Partners	2019/2020	377541424
level1	KE_1_018	2009	National Government	2019/2020	441988676
level1	KE_1_019	2009	Development Partners	2019/2020	541842102
level1	KE_1_019	2009	National Government	2019/2020	762248311
level1	KE_1_025	2009	Development Partners	2019/2020	538172418
level1	KE_1_025	2009	National Government	2019/2020	283801082
level1	KE_1_041	2009	Development Partners	2019/2020	360748123
level1	KE_1_041	2009	National Government	2019/2020	308325869
level1	KE_1_006	2009	Development Partners	2019/2020	734315201
level1	KE_1_006	2009	National Government	2019/2020	354796343
level1	KE_1_004	2009	Development Partners	2019/2020	392033835
level1	KE_1_004	2009	National Government	2019/2020	313235934
level1	KE_1_013	2009	Development Partners	2019/2020	307617021
level1	KE_1_013	2009	National Government	2019/2020	446030885
level1	KE_1_026	2009	Development Partners	2019/2020	803143691
level1	KE_1_026	2009	National Government	2019/2020	377918043
level1	KE_1_023	2009	Development Partners	2019/2020	825467592
level1	KE_1_023	2009	National Government	2019/2020	470612414
level1	KE_1_027	2009	Development Partners	2019/2020	1046492860
level1	KE_1_027	2009	National Government	2019/2020	389997506
level1	KE_1_038	2009	Development Partners	2019/2020	769853103
level1	KE_1_038	2009	National Government	2019/2020	344381111
level1	KE_1_008	2009	Development Partners	2019/2020	715958149
level1	KE_1_008	2009	National Government	2019/2020	409172876
level1	KE_1_024	2009	Development Partners	2019/2020	364283864
level1	KE_1_024	2009	National Government	2019/2020	303304863
\.


--
-- Name: conditional_fund_allocations pk_conditional_fund_allocations; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.conditional_fund_allocations
    ADD CONSTRAINT pk_conditional_fund_allocations PRIMARY KEY (geo_level, geo_code, geo_version, allocation_type, year);


--
-- PostgreSQL database dump complete
--

