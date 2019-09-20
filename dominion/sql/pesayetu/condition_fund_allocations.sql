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
country	KE	2009	Combined	2013/2014	20000000000
country	KE	2009	Combined	2014/2015	13898673499
country	KE	2009	Development Partners	2015/2016	10671178204
country	KE	2009	National Government	2015/2016	20998480000
country	KE	2009	Development Partners	2016/2017	3870679737
country	KE	2009	National Government	2016/2017	18027836984
country	KE	2009	Development Partners	2017/2018	16407826139
country	KE	2009	National Government	2017/2018	23273192369
country	KE	2009	Development Partners	2018/2019	36981384138
country	KE	2009	National Government	2018/2019	25500000000
country	KE	2009	Development Partners	2019/2020	38704877210
country	KE	2009	National Government	2019/2020	22895214684
county	30	2009	Combined	2013/2014	382555501
county	30	2009	Combined	2014/2015	182876218
county	30	2009	Development Partners	2015/2016	43194300
county	30	2009	National Government	2015/2016	324481292
county	30	2009	Development Partners	2016/2017	90746278
county	30	2009	National Government	2016/2017	247398231
county	30	2009	Development Partners	2017/2018	299821230
county	30	2009	National Government	2017/2018	333374243
county	30	2009	Development Partners	2018/2019	455614301
county	30	2009	National Government	2018/2019	382727014
county	30	2009	Development Partners	2019/2020	325325892
county	30	2009	National Government	2019/2020	314622598
county	36	2009	Combined	2013/2014	272582727
county	36	2009	Combined	2014/2015	150769518
county	36	2009	Development Partners	2015/2016	14950000
county	36	2009	National Government	2015/2016	324488449
county	36	2009	Development Partners	2016/2017	8810000
county	36	2009	National Government	2016/2017	249230239
county	36	2009	Development Partners	2017/2018	149391438
county	36	2009	National Government	2017/2018	358153393
county	36	2009	Development Partners	2018/2019	495931469
county	36	2009	National Government	2018/2019	420841205
county	36	2009	Development Partners	2019/2020	457270099
county	36	2009	National Government	2019/2020	352339235
county	39	2009	Combined	2013/2014	334595329
county	39	2009	Combined	2014/2015	711417035
county	39	2009	Development Partners	2015/2016	196750000
county	39	2009	National Government	2015/2016	495516573
county	39	2009	Development Partners	2016/2017	7375000
county	39	2009	National Government	2016/2017	445853234
county	39	2009	Development Partners	2017/2018	298824753
county	39	2009	National Government	2017/2018	531884312
county	39	2009	Development Partners	2018/2019	772708758
county	39	2009	National Government	2018/2019	533956683
county	39	2009	Development Partners	2019/2020	923352734
county	39	2009	National Government	2019/2020	471132654
county	40	2009	Combined	2013/2014	266369417
county	40	2009	Combined	2014/2015	661134231
county	40	2009	Development Partners	2015/2016	46240000
county	40	2009	National Government	2015/2016	369561553
county	40	2009	Development Partners	2016/2017	6495000
county	40	2009	National Government	2016/2017	295321032
county	40	2009	Development Partners	2017/2018	155229716
county	40	2009	National Government	2017/2018	408177033
county	40	2009	Development Partners	2018/2019	514468709
county	40	2009	National Government	2018/2019	435973669
county	40	2009	Development Partners	2019/2020	419041031
county	40	2009	National Government	2019/2020	382879464
county	28	2009	Combined	2013/2014	744501814
county	28	2009	Combined	2014/2015	139362418
county	28	2009	Development Partners	2015/2016	40979116
county	28	2009	National Government	2015/2016	282941615
county	28	2009	Development Partners	2016/2017	67332570
county	28	2009	National Government	2016/2017	209149840
county	28	2009	Development Partners	2017/2018	142673578
county	28	2009	National Government	2017/2018	281518265
county	28	2009	Development Partners	2018/2019	448113957
county	28	2009	National Government	2018/2019	349797077
county	28	2009	Development Partners	2019/2020	354907368
county	28	2009	National Government	2019/2020	280537673
county	14	2009	Combined	2013/2014	557198402
county	14	2009	Combined	2014/2015	426494990
county	14	2009	Development Partners	2015/2016	113750000
county	14	2009	National Government	2015/2016	500625241
county	14	2009	Development Partners	2016/2017	6875000
county	14	2009	National Government	2016/2017	511841166
county	14	2009	Development Partners	2017/2018	137088346
county	14	2009	National Government	2017/2018	611940103
county	14	2009	Development Partners	2018/2019	423634353
county	14	2009	National Government	2018/2019	667061008
county	14	2009	Development Partners	2019/2020	581992895
county	14	2009	National Government	2019/2020	599466129
county	7	2009	Combined	2013/2014	475032960
county	7	2009	Combined	2014/2015	91802418
county	7	2009	Development Partners	2015/2016	33028268
county	7	2009	National Government	2015/2016	687539457
county	7	2009	Development Partners	2016/2017	50131467
county	7	2009	National Government	2016/2017	586657085
county	7	2009	Development Partners	2017/2018	242544407
county	7	2009	National Government	2017/2018	727272975
county	7	2009	Development Partners	2018/2019	1619534869
county	7	2009	National Government	2018/2019	775747878
county	7	2009	Development Partners	2019/2020	918389383
county	7	2009	National Government	2019/2020	709693899
county	43	2009	Combined	2013/2014	1604785613
county	43	2009	Combined	2014/2015	215462418
county	43	2009	Development Partners	2015/2016	24770000
county	43	2009	National Government	2015/2016	414499437
county	43	2009	Development Partners	2016/2017	12385000
county	43	2009	National Government	2016/2017	340520062
county	43	2009	Development Partners	2017/2018	247766983
county	43	2009	National Government	2017/2018	410977282
county	43	2009	Development Partners	2018/2019	479279189
county	43	2009	National Government	2018/2019	444954827
county	43	2009	Development Partners	2019/2020	599801103
county	43	2009	National Government	2019/2020	380624069
county	11	2009	Combined	2013/2014	187893545
county	11	2009	Combined	2014/2015	91802418
county	11	2009	Development Partners	2015/2016	16698052
county	11	2009	National Government	2015/2016	254739627
county	11	2009	Development Partners	2016/2017	26232373
county	11	2009	National Government	2016/2017	172115898
county	11	2009	Development Partners	2017/2018	128629328
county	11	2009	National Government	2017/2018	376614697
county	11	2009	Development Partners	2018/2019	424751976
county	11	2009	National Government	2018/2019	449049293
county	11	2009	Development Partners	2019/2020	403048854
county	11	2009	National Government	2019/2020	387607090
county	34	2009	Combined	2013/2014	284382199
county	34	2009	Combined	2014/2015	214154418
county	34	2009	Development Partners	2015/2016	89533654
county	34	2009	National Government	2015/2016	311294742
county	34	2009	Development Partners	2016/2017	149526341
county	34	2009	National Government	2016/2017	239970891
county	34	2009	Development Partners	2017/2018	182819277
county	34	2009	National Government	2017/2018	327698687
county	34	2009	Development Partners	2018/2019	572134165
county	34	2009	National Government	2018/2019	415206684
county	34	2009	Development Partners	2019/2020	626033282
county	34	2009	National Government	2019/2020	366740025
county	37	2009	Combined	2013/2014	840702017
county	37	2009	Combined	2014/2015	955696758
county	37	2009	Development Partners	2015/2016	278500000
county	37	2009	National Government	2015/2016	899038414
county	37	2009	Development Partners	2016/2017	11750000
county	37	2009	National Government	2016/2017	906172077
county	37	2009	Development Partners	2017/2018	259117644
county	37	2009	National Government	2017/2018	968430285
county	37	2009	Development Partners	2018/2019	847913637
county	37	2009	National Government	2018/2019	1006978228
county	37	2009	Development Partners	2019/2020	702368864
county	37	2009	National Government	2019/2020	969486374
county	35	2009	Combined	2013/2014	317792977
county	35	2009	Combined	2014/2015	120827418
county	35	2009	Development Partners	2015/2016	22600000
county	35	2009	National Government	2015/2016	363121852
county	35	2009	Development Partners	2016/2017	9965000
county	35	2009	National Government	2016/2017	278075722
county	35	2009	Development Partners	2017/2018	123263880
county	35	2009	National Government	2017/2018	341487512
county	35	2009	Development Partners	2018/2019	557172175
county	35	2009	National Government	2018/2019	409519496
county	35	2009	Development Partners	2019/2020	599580638
county	35	2009	National Government	2019/2020	332126043
county	22	2009	Combined	2013/2014	805574808
county	22	2009	Combined	2014/2015	148204518
county	22	2009	Development Partners	2015/2016	556200000
county	22	2009	National Government	2015/2016	876841548
county	22	2009	Development Partners	2016/2017	9600000
county	22	2009	National Government	2016/2017	869840936
county	22	2009	Development Partners	2017/2018	171860543
county	22	2009	National Government	2017/2018	921227765
county	22	2009	Development Partners	2018/2019	2230951780
county	22	2009	National Government	2018/2019	1087865232
county	22	2009	Development Partners	2019/2020	2381409369
county	22	2009	National Government	2019/2020	1028141559
county	3	2009	Combined	2013/2014	377885641
county	3	2009	Combined	2014/2015	142602418
county	3	2009	Development Partners	2015/2016	82306764
county	3	2009	National Government	2015/2016	486835382
county	3	2009	Development Partners	2016/2017	122422642
county	3	2009	National Government	2016/2017	427175164
county	3	2009	Development Partners	2017/2018	393492525
county	3	2009	National Government	2017/2018	506667945
county	3	2009	Development Partners	2018/2019	1130333518
county	3	2009	National Government	2018/2019	564228319
county	3	2009	Development Partners	2019/2020	1500516666
county	3	2009	National Government	2019/2020	513222118
county	20	2009	Combined	2013/2014	242055751
county	20	2009	Combined	2014/2015	277576292
county	20	2009	Development Partners	2015/2016	336770000
county	20	2009	National Government	2015/2016	297334152
county	20	2009	Development Partners	2016/2017	6385000
county	20	2009	National Government	2016/2017	211419707
county	20	2009	Development Partners	2017/2018	136198212
county	20	2009	National Government	2017/2018	295119105
county	20	2009	Development Partners	2018/2019	375297242
county	20	2009	National Government	2018/2019	371794810
county	20	2009	Development Partners	2019/2020	521896956
county	20	2009	National Government	2019/2020	298087199
county	45	2009	Combined	2013/2014	635954331
county	45	2009	Combined	2014/2015	155899518
county	45	2009	Development Partners	2015/2016	22950000
county	45	2009	National Government	2015/2016	839649985
county	45	2009	Development Partners	2016/2017	11475000
county	45	2009	National Government	2016/2017	806118433
county	45	2009	Development Partners	2017/2018	272278253
county	45	2009	National Government	2017/2018	871511268
county	45	2009	Development Partners	2018/2019	590705381
county	45	2009	National Government	2018/2019	917177976
county	45	2009	Development Partners	2019/2020	684744542
county	45	2009	National Government	2019/2020	871187381
county	42	2009	Combined	2013/2014	711380679
county	42	2009	Combined	2014/2015	210529518
county	42	2009	Development Partners	2015/2016	64580000
county	42	2009	National Government	2015/2016	746516873
county	42	2009	Development Partners	2016/2017	38290000
county	42	2009	National Government	2016/2017	681249588
county	42	2009	Development Partners	2017/2018	205150974
county	42	2009	National Government	2017/2018	756595347
county	42	2009	Development Partners	2018/2019	1260705051
county	42	2009	National Government	2018/2019	813848454
county	42	2009	Development Partners	2019/2020	1084577868
county	42	2009	National Government	2019/2020	757960772
county	15	2009	Combined	2013/2014	519086118
county	15	2009	Combined	2014/2015	299716518
county	15	2009	Development Partners	2015/2016	83958266
county	15	2009	National Government	2015/2016	368896848
county	15	2009	Development Partners	2016/2017	150020244
county	15	2009	National Government	2016/2017	293741405
county	15	2009	Development Partners	2017/2018	344841671
county	15	2009	National Government	2017/2018	495457373
county	15	2009	Development Partners	2018/2019	625053090
county	15	2009	National Government	2018/2019	510797140
county	15	2009	Development Partners	2019/2020	797515756
county	15	2009	National Government	2019/2020	477658441
county	2	2009	Combined	2013/2014	280447997
county	2	2009	Combined	2014/2015	168482418
county	2	2009	Development Partners	2015/2016	59379322
county	2	2009	National Government	2015/2016	374066375
county	2	2009	Development Partners	2016/2017	88976289
county	2	2009	National Government	2016/2017	315507017
county	2	2009	Development Partners	2017/2018	321582690
county	2	2009	National Government	2017/2018	373107313
county	2	2009	Development Partners	2018/2019	872997000
county	2	2009	National Government	2018/2019	455485910
county	2	2009	Development Partners	2019/2020	982716075
county	2	2009	National Government	2019/2020	427925722
county	31	2009	Combined	2013/2014	234821897
county	31	2009	Combined	2014/2015	155224518
county	31	2009	Development Partners	2015/2016	236375096
county	31	2009	National Government	2015/2016	306098811
county	31	2009	Development Partners	2016/2017	65814676
county	31	2009	National Government	2016/2017	224217040
county	31	2009	Development Partners	2017/2018	212173539
county	31	2009	National Government	2017/2018	286046433
county	31	2009	Development Partners	2018/2019	440883643
county	31	2009	National Government	2018/2019	347622182
county	31	2009	Development Partners	2019/2020	305078964
county	31	2009	National Government	2019/2020	292381024
county	5	2009	Combined	2013/2014	99237004
county	5	2009	Combined	2014/2015	91802418
county	5	2009	Development Partners	2015/2016	14772526
county	5	2009	National Government	2015/2016	234556520
county	5	2009	Development Partners	2016/2017	18348378
county	5	2009	National Government	2016/2017	247617538
county	5	2009	Development Partners	2017/2018	94106690
county	5	2009	National Government	2017/2018	338400604
county	5	2009	Development Partners	2018/2019	349454694
county	5	2009	National Government	2018/2019	448082050
county	5	2009	Development Partners	2019/2020	306166757
county	5	2009	National Government	2019/2020	370333538
county	16	2009	Combined	2013/2014	523080848
county	16	2009	Combined	2014/2015	302987289
county	16	2009	Development Partners	2015/2016	206700000
county	16	2009	National Government	2015/2016	702415150
county	16	2009	Development Partners	2016/2017	13350000
county	16	2009	National Government	2016/2017	703521230
county	16	2009	Development Partners	2017/2018	175585971
county	16	2009	National Government	2017/2018	857806061
county	16	2009	Development Partners	2018/2019	1371260080
county	16	2009	National Government	2018/2019	881092537
county	16	2009	Development Partners	2019/2020	1379849081
county	16	2009	National Government	2019/2020	810830576
county	17	2009	Combined	2013/2014	354912725
county	17	2009	Combined	2014/2015	309133344
county	17	2009	Development Partners	2015/2016	244130000
county	17	2009	National Government	2015/2016	366617073
county	17	2009	Development Partners	2016/2017	12065000
county	17	2009	National Government	2016/2017	297862274
county	17	2009	Development Partners	2017/2018	294396310
county	17	2009	National Government	2017/2018	433661302
county	17	2009	Development Partners	2018/2019	559260092
county	17	2009	National Government	2018/2019	438674526
county	17	2009	Development Partners	2019/2020	704754514
county	17	2009	National Government	2019/2020	421911014
county	9	2009	Combined	2013/2014	230310408
county	9	2009	Combined	2014/2015	91802418
county	9	2009	Development Partners	2015/2016	28306168
county	9	2009	National Government	2015/2016	373457658
county	9	2009	Development Partners	2016/2017	49787798
county	9	2009	National Government	2016/2017	315078397
county	9	2009	Development Partners	2017/2018	283179311
county	9	2009	National Government	2017/2018	532626010
county	9	2009	Development Partners	2018/2019	586255092
county	9	2009	National Government	2018/2019	523750213
county	9	2009	Development Partners	2019/2020	593513860
county	9	2009	National Government	2019/2020	469688330
county	10	2009	Combined	2013/2014	272856567
county	10	2009	Combined	2014/2015	91802418
county	10	2009	Development Partners	2015/2016	25436676
county	10	2009	National Government	2015/2016	281413195
county	10	2009	Development Partners	2016/2017	42302134
county	10	2009	National Government	2016/2017	213750227
county	10	2009	Development Partners	2017/2018	315142151
county	10	2009	National Government	2017/2018	353093486
county	10	2009	Development Partners	2018/2019	519678603
county	10	2009	National Government	2018/2019	417280542
county	10	2009	Development Partners	2019/2020	527605108
county	10	2009	National Government	2019/2020	346375843
county	12	2009	Combined	2013/2014	758421849
county	12	2009	Combined	2014/2015	1584004384
county	12	2009	Development Partners	2015/2016	220590000
county	12	2009	National Government	2015/2016	671568065
county	12	2009	Development Partners	2016/2017	1710295000
county	12	2009	National Government	2016/2017	706272310
county	12	2009	Development Partners	2017/2018	4092379277
county	12	2009	National Government	2017/2018	836607144
county	12	2009	Development Partners	2018/2019	448987235
county	12	2009	National Government	2018/2019	882363597
county	12	2009	Development Partners	2019/2020	532143439
county	12	2009	National Government	2019/2020	822199639
county	44	2009	Combined	2013/2014	490967787
county	44	2009	Combined	2014/2015	216486618
county	44	2009	Development Partners	2015/2016	87452156
county	44	2009	National Government	2015/2016	449931534
county	44	2009	Development Partners	2016/2017	148440725
county	44	2009	National Government	2016/2017	386744511
county	44	2009	Development Partners	2017/2018	333790711
county	44	2009	National Government	2017/2018	413106666
county	44	2009	Development Partners	2018/2019	982299570
county	44	2009	National Government	2018/2019	430327100
county	44	2009	Development Partners	2019/2020	1065515013
county	44	2009	National Government	2019/2020	375863013
county	1	2009	Combined	2013/2014	545817618
county	1	2009	Combined	2014/2015	131729518
county	1	2009	Development Partners	2015/2016	22300000
county	1	2009	National Government	2015/2016	816446379
county	1	2009	Development Partners	2016/2017	19150000
county	1	2009	National Government	2016/2017	701099704
county	1	2009	Development Partners	2017/2018	101425861
county	1	2009	National Government	2017/2018	759622516
county	1	2009	Development Partners	2018/2019	749726174
county	1	2009	National Government	2018/2019	868324719
county	1	2009	Development Partners	2019/2020	1658859269
county	1	2009	National Government	2019/2020	769558026
county	21	2009	Combined	2013/2014	404431503
county	21	2009	Combined	2014/2015	334012785
county	21	2009	Development Partners	2015/2016	124810000
county	21	2009	National Government	2015/2016	360174609
county	21	2009	Development Partners	2016/2017	12405000
county	21	2009	National Government	2016/2017	284119733
county	21	2009	Development Partners	2017/2018	175025300
county	21	2009	National Government	2017/2018	428174399
county	21	2009	Development Partners	2018/2019	382120438
county	21	2009	National Government	2018/2019	450368887
county	21	2009	Development Partners	2019/2020	520780762
county	21	2009	National Government	2019/2020	414104727
county	47	2009	Combined	2013/2014	390470421
county	47	2009	Combined	2014/2015	1605339854
county	47	2009	Development Partners	2015/2016	6227800000
county	47	2009	National Government	2015/2016	730196325
county	47	2009	Development Partners	2016/2017	373900000
county	47	2009	National Government	2016/2017	590993985
county	47	2009	Development Partners	2017/2018	2290502230
county	47	2009	National Government	2017/2018	759568406
county	47	2009	Development Partners	2018/2019	215149968
county	47	2009	National Government	2018/2019	729840781
county	47	2009	Development Partners	2019/2020	194699600
county	47	2009	National Government	2019/2020	686234787
county	32	2009	Combined	2013/2014	1024998693
county	32	2009	Combined	2014/2015	138214518
county	32	2009	Development Partners	2015/2016	25260000
county	32	2009	National Government	2015/2016	926660487
county	32	2009	Development Partners	2016/2017	12630000
county	32	2009	National Government	2016/2017	840874682
county	32	2009	Development Partners	2017/2018	237657121
county	32	2009	National Government	2017/2018	889584107
county	32	2009	Development Partners	2018/2019	1474865158
county	32	2009	National Government	2018/2019	909243228
county	32	2009	Development Partners	2019/2020	1591604871
county	32	2009	National Government	2019/2020	904946758
county	29	2009	Combined	2013/2014	408946759
county	29	2009	Combined	2014/2015	120799518
county	29	2009	Development Partners	2015/2016	18310000
county	29	2009	National Government	2015/2016	334367747
county	29	2009	Development Partners	2016/2017	9155000
county	29	2009	National Government	2016/2017	260830907
county	29	2009	Development Partners	2017/2018	210116247
county	29	2009	National Government	2017/2018	345713873
county	29	2009	Development Partners	2018/2019	616995189
county	29	2009	National Government	2018/2019	396712989
county	29	2009	Development Partners	2019/2020	683841621
county	29	2009	National Government	2019/2020	334625211
county	33	2009	Combined	2013/2014	278791611
county	33	2009	Combined	2014/2015	205416618
county	33	2009	Development Partners	2015/2016	56027350
county	33	2009	National Government	2015/2016	332674346
county	33	2009	Development Partners	2016/2017	90146403
county	33	2009	National Government	2016/2017	273673815
county	33	2009	Development Partners	2017/2018	282870310
county	33	2009	National Government	2017/2018	373105934
county	33	2009	Development Partners	2018/2019	448450203
county	33	2009	National Government	2018/2019	419242432
county	33	2009	Development Partners	2019/2020	538812751
county	33	2009	National Government	2019/2020	400193676
county	46	2009	Combined	2013/2014	278440754
county	46	2009	Combined	2014/2015	153902418
county	46	2009	Development Partners	2015/2016	23920000
county	46	2009	National Government	2015/2016	336026183
county	46	2009	Development Partners	2016/2017	11960000
county	46	2009	National Government	2016/2017	258376249
county	46	2009	Development Partners	2017/2018	149561205
county	46	2009	National Government	2017/2018	369636128
county	46	2009	Development Partners	2018/2019	424043052
county	46	2009	National Government	2018/2019	391753888
county	46	2009	Development Partners	2019/2020	569692854
county	46	2009	National Government	2019/2020	348716163
county	18	2009	Combined	2013/2014	284911755
county	18	2009	Combined	2014/2015	145774518
county	18	2009	Development Partners	2015/2016	91860000
county	18	2009	National Government	2015/2016	308691210
county	18	2009	Development Partners	2016/2017	9430000
county	18	2009	National Government	2016/2017	226788828
county	18	2009	Development Partners	2017/2018	166491908
county	18	2009	National Government	2017/2018	459581935
county	18	2009	Development Partners	2018/2019	466332856
county	18	2009	National Government	2018/2019	503233263
county	18	2009	Development Partners	2019/2020	377541424
county	18	2009	National Government	2019/2020	441988676
county	19	2009	Combined	2013/2014	817147697
county	19	2009	Combined	2014/2015	316867785
county	19	2009	Development Partners	2015/2016	182930000
county	19	2009	National Government	2015/2016	712760771
county	19	2009	Development Partners	2016/2017	11465000
county	19	2009	National Government	2016/2017	641510955
county	19	2009	Development Partners	2017/2018	92761342
county	19	2009	National Government	2017/2018	749086744
county	19	2009	Development Partners	2018/2019	522609757
county	19	2009	National Government	2018/2019	782635195
county	19	2009	Development Partners	2019/2020	541842102
county	19	2009	National Government	2019/2020	762248311
county	25	2009	Combined	2013/2014	206938875
county	25	2009	Combined	2014/2015	91802418
county	25	2009	Development Partners	2015/2016	19659898
county	25	2009	National Government	2015/2016	253891092
county	25	2009	Development Partners	2016/2017	35343554
county	25	2009	National Government	2016/2017	176911952
county	25	2009	Development Partners	2017/2018	318897301
county	25	2009	National Government	2017/2018	277702372
county	25	2009	Development Partners	2018/2019	473519323
county	25	2009	National Government	2018/2019	342710164
county	25	2009	Development Partners	2019/2020	538172418
county	25	2009	National Government	2019/2020	283801082
county	41	2009	Combined	2013/2014	318012871
county	41	2009	Combined	2014/2015	653606711
county	41	2009	Development Partners	2015/2016	119030000
county	41	2009	National Government	2015/2016	400533084
county	41	2009	Development Partners	2016/2017	13765000
county	41	2009	National Government	2016/2017	310178291
county	41	2009	Development Partners	2017/2018	160144386
county	41	2009	National Government	2017/2018	367420940
county	41	2009	Development Partners	2018/2019	428874926
county	41	2009	National Government	2018/2019	415427861
county	41	2009	Development Partners	2019/2020	360748123
county	41	2009	National Government	2019/2020	308325869
county	6	2009	Combined	2013/2014	205852212
county	6	2009	Combined	2014/2015	91802418
county	6	2009	Development Partners	2015/2016	32052898
county	6	2009	National Government	2015/2016	280159968
county	6	2009	Development Partners	2016/2017	43439216
county	6	2009	National Government	2016/2017	194904811
county	6	2009	Development Partners	2017/2018	196900401
county	6	2009	National Government	2017/2018	291798675
county	6	2009	Development Partners	2018/2019	820585453
county	6	2009	National Government	2018/2019	361620075
county	6	2009	Development Partners	2019/2020	734315201
county	6	2009	National Government	2019/2020	354796343
county	4	2009	Combined	2013/2014	204478573
county	4	2009	Combined	2014/2015	123797418
county	4	2009	Development Partners	2015/2016	17771988
county	4	2009	National Government	2015/2016	264916131
county	4	2009	Development Partners	2016/2017	28819105
county	4	2009	National Government	2016/2017	292735592
county	4	2009	Development Partners	2017/2018	253251635
county	4	2009	National Government	2017/2018	419558308
county	4	2009	Development Partners	2018/2019	507651269
county	4	2009	National Government	2018/2019	497504571
county	4	2009	Development Partners	2019/2020	392033835
county	4	2009	National Government	2019/2020	313235934
county	13	2009	Combined	2013/2014	139762124
county	13	2009	Combined	2014/2015	698823239
county	13	2009	Development Partners	2015/2016	326229808
county	13	2009	National Government	2015/2016	272978662
county	13	2009	Development Partners	2016/2017	50819343
county	13	2009	National Government	2016/2017	186035373
county	13	2009	Development Partners	2017/2018	100798020
county	13	2009	National Government	2017/2018	396766501
county	13	2009	Development Partners	2018/2019	326966757
county	13	2009	National Government	2018/2019	465209339
county	13	2009	Development Partners	2019/2020	307617021
county	13	2009	National Government	2019/2020	446030885
county	26	2009	Combined	2013/2014	193134230
county	26	2009	Combined	2014/2015	91802418
county	26	2009	Development Partners	2015/2016	11330000
county	26	2009	National Government	2015/2016	341137338
county	26	2009	Development Partners	2016/2017	5665000
county	26	2009	National Government	2016/2017	276793229
county	26	2009	Development Partners	2017/2018	230131937
county	26	2009	National Government	2017/2018	373438282
county	26	2009	Development Partners	2018/2019	745728311
county	26	2009	National Government	2018/2019	423000418
county	26	2009	Development Partners	2019/2020	803143691
county	26	2009	National Government	2019/2020	377918043
county	23	2009	Combined	2013/2014	229995474
county	23	2009	Combined	2014/2015	91802418
county	23	2009	Development Partners	2015/2016	32556700
county	23	2009	National Government	2015/2016	365628794
county	23	2009	Development Partners	2016/2017	73293982
county	23	2009	National Government	2016/2017	327563586
county	23	2009	Development Partners	2017/2018	342211436
county	23	2009	National Government	2017/2018	594217857
county	23	2009	Development Partners	2018/2019	507247478
county	23	2009	National Government	2018/2019	534489927
county	23	2009	Development Partners	2019/2020	825467592
county	23	2009	National Government	2019/2020	470612414
county	27	2009	Combined	2013/2014	270261206
county	27	2009	Combined	2014/2015	96432418
county	27	2009	Development Partners	2015/2016	17320000
county	27	2009	National Government	2015/2016	393481820
county	27	2009	Development Partners	2016/2017	8660000
county	27	2009	National Government	2016/2017	244752303
county	27	2009	Development Partners	2017/2018	214713880
county	27	2009	National Government	2017/2018	373197782
county	27	2009	Development Partners	2018/2019	1080111632
county	27	2009	National Government	2018/2019	410315914
county	27	2009	Development Partners	2019/2020	1046492860
county	27	2009	National Government	2019/2020	389997506
county	38	2009	Combined	2013/2014	196974298
county	38	2009	Combined	2014/2015	410456808
county	38	2009	Development Partners	2015/2016	66670000
county	38	2009	National Government	2015/2016	319378127
county	38	2009	Development Partners	2016/2017	7085000
county	38	2009	National Government	2016/2017	239401487
county	38	2009	Development Partners	2017/2018	196636664
county	38	2009	National Government	2017/2018	324237222
county	38	2009	Development Partners	2018/2019	661090578
county	38	2009	National Government	2018/2019	385053522
county	38	2009	Development Partners	2019/2020	769853103
county	38	2009	National Government	2019/2020	344381111
county	8	2009	Combined	2013/2014	357469372
county	8	2009	Combined	2014/2015	91802418
county	8	2009	Development Partners	2015/2016	36459300
county	8	2009	National Government	2015/2016	346957977
county	8	2009	Development Partners	2016/2017	56211458
county	8	2009	National Government	2016/2017	287241974
county	8	2009	Development Partners	2017/2018	353279800
county	8	2009	National Government	2017/2018	448002378
county	8	2009	Development Partners	2018/2019	1611438084
county	8	2009	National Government	2018/2019	460298353
county	8	2009	Development Partners	2019/2020	715958149
county	8	2009	National Government	2019/2020	409172876
county	24	2009	Combined	2013/2014	437777043
county	24	2009	Combined	2014/2015	96432418
county	24	2009	Development Partners	2015/2016	27979898
county	24	2009	National Government	2015/2016	297371526
county	24	2009	Development Partners	2016/2017	62139761
county	24	2009	National Government	2016/2017	230628275
county	24	2009	Development Partners	2017/2018	314393341
county	24	2009	National Government	2017/2018	324215400
county	24	2009	Development Partners	2018/2019	562497958
county	24	2009	National Government	2018/2019	370810825
county	24	2009	Development Partners	2019/2020	364283864
county	24	2009	National Government	2019/2020	303304863
\.


--
-- Name: conditional_fund_allocations pk_conditional_fund_allocations; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.conditional_fund_allocations
    ADD CONSTRAINT pk_conditional_fund_allocations PRIMARY KEY (geo_level, geo_code, geo_version, allocation_type, year);


--
-- PostgreSQL database dump complete
--

