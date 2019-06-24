--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.mobile_subscription DROP CONSTRAINT IF EXISTS mobile_subscription_pkey;
DROP TABLE IF EXISTS public.mobile_subscription;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mobile_subscription; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mobile_subscription (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    network character varying(128) NOT NULL,
    subscription_type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: mobile_subscription; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mobile_subscription (geo_level, geo_code, geo_version, network, subscription_type, total) FROM stdin;
state	1	2016	AIRTEL	 Active Voice Subscriptions	887145
state	1	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	403171
state	1	2016	GLO	 Active Voice Subscriptions	641388
state	1	2016	MTN	 Active Voice Subscriptions	1580100
state	1	2016	Others	 Active Voice Subscriptions	593
state	2	2016	AIRTEL	 Active Voice Subscriptions	968415
state	2	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	188351
state	2	2016	GLO	 Active Voice Subscriptions	632217
state	2	2016	MTN	 Active Voice Subscriptions	1341711
state	2	2016	Others	 Active Voice Subscriptions	497
state	3	2016	AIRTEL	 Active Voice Subscriptions	1131261
state	3	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	240901
state	3	2016	GLO	 Active Voice Subscriptions	648097
state	3	2016	MTN	 Active Voice Subscriptions	1260967
state	3	2016	Others	 Active Voice Subscriptions	676
state	4	2016	AIRTEL	 Active Voice Subscriptions	1134714
state	4	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	440857
state	4	2016	GLO	 Active Voice Subscriptions	792961
state	4	2016	MTN	 Active Voice Subscriptions	2346928
state	4	2016	Others	 Active Voice Subscriptions	5910
state	5	2016	AIRTEL	 Active Voice Subscriptions	860879
state	5	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	238593
state	5	2016	GLO	 Active Voice Subscriptions	590660
state	5	2016	MTN	 Active Voice Subscriptions	1580405
state	5	2016	Others	 Active Voice Subscriptions	449
state	6	2016	AIRTEL	 Active Voice Subscriptions	289612
state	6	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	52428
state	6	2016	GLO	 Active Voice Subscriptions	329719
state	6	2016	MTN	 Active Voice Subscriptions	503991
state	6	2016	Others	 Active Voice Subscriptions	96
state	7	2016	AIRTEL	 Active Voice Subscriptions	921418
state	7	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	515795
state	7	2016	GLO	 Active Voice Subscriptions	1373557
state	7	2016	MTN	 Active Voice Subscriptions	1353653
state	7	2016	Others	 Active Voice Subscriptions	244
state	8	2016	AIRTEL	 Active Voice Subscriptions	1553238
state	8	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	179982
state	8	2016	GLO	 Active Voice Subscriptions	508854
state	8	2016	MTN	 Active Voice Subscriptions	1029633
state	8	2016	Others	 Active Voice Subscriptions	834
state	9	2016	AIRTEL	 Active Voice Subscriptions	714338
state	9	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	250398
state	9	2016	GLO	 Active Voice Subscriptions	537450
state	9	2016	MTN	 Active Voice Subscriptions	942809
state	9	2016	Others	 Active Voice Subscriptions	246
state	10	2016	AIRTEL	 Active Voice Subscriptions	1480803
state	10	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	260121
state	10	2016	GLO	 Active Voice Subscriptions	1636689
state	10	2016	MTN	 Active Voice Subscriptions	2316715
state	10	2016	Others	 Active Voice Subscriptions	4241
state	11	2016	AIRTEL	 Active Voice Subscriptions	449034
state	11	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	112699
state	11	2016	GLO	 Active Voice Subscriptions	262176
state	11	2016	MTN	 Active Voice Subscriptions	675349
state	11	2016	Others	 Active Voice Subscriptions	71
state	12	2016	AIRTEL	 Active Voice Subscriptions	1163962
state	12	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	333601
state	12	2016	GLO	 Active Voice Subscriptions	2124743
state	12	2016	MTN	 Active Voice Subscriptions	1801547
state	12	2016	Others	 Active Voice Subscriptions	7040
state	13	2016	AIRTEL	 Active Voice Subscriptions	295311
state	13	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	27735
state	13	2016	GLO	 Active Voice Subscriptions	368887
state	13	2016	MTN	 Active Voice Subscriptions	890511
state	13	2016	Others	 Active Voice Subscriptions	175
state	14	2016	AIRTEL	 Active Voice Subscriptions	814116
state	14	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	272779
state	14	2016	GLO	 Active Voice Subscriptions	818491
state	14	2016	MTN	 Active Voice Subscriptions	1614251
state	14	2016	Others	 Active Voice Subscriptions	513
state	15	2016	AIRTEL	 Active Voice Subscriptions	1617951
state	15	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	911333
state	15	2016	GLO	 Active Voice Subscriptions	2863187
state	15	2016	MTN	 Active Voice Subscriptions	2265906
state	15	2016	Others	 Active Voice Subscriptions	25551
state	16	2016	AIRTEL	 Active Voice Subscriptions	643563
state	16	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	104821
state	16	2016	GLO	 Active Voice Subscriptions	468488
state	16	2016	MTN	 Active Voice Subscriptions	985899
state	16	2016	Others	 Active Voice Subscriptions	240
state	17	2016	AIRTEL	 Active Voice Subscriptions	715375
state	17	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	305355
state	17	2016	GLO	 Active Voice Subscriptions	716564
state	17	2016	MTN	 Active Voice Subscriptions	1886130
state	17	2016	Others	 Active Voice Subscriptions	458
state	18	2016	AIRTEL	 Active Voice Subscriptions	601339
state	18	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	178460
state	18	2016	GLO	 Active Voice Subscriptions	204176
state	18	2016	MTN	 Active Voice Subscriptions	1108586
state	18	2016	Others	 Active Voice Subscriptions	2175
state	19	2016	AIRTEL	 Active Voice Subscriptions	2288892
state	19	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	846553
state	19	2016	GLO	 Active Voice Subscriptions	1745419
state	19	2016	MTN	 Active Voice Subscriptions	2767377
state	19	2016	Others	 Active Voice Subscriptions	25902
state	20	2016	AIRTEL	 Active Voice Subscriptions	2713495
state	20	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	1034655
state	20	2016	GLO	 Active Voice Subscriptions	1644532
state	20	2016	MTN	 Active Voice Subscriptions	4323252
state	20	2016	Others	 Active Voice Subscriptions	20443
state	21	2016	AIRTEL	 Active Voice Subscriptions	823102
state	21	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	268714
state	21	2016	GLO	 Active Voice Subscriptions	944151
state	21	2016	MTN	 Active Voice Subscriptions	2202271
state	21	2016	Others	 Active Voice Subscriptions	2739
state	22	2016	AIRTEL	 Active Voice Subscriptions	484506
state	22	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	207715
state	22	2016	GLO	 Active Voice Subscriptions	625787
state	22	2016	MTN	 Active Voice Subscriptions	1094470
state	22	2016	Others	 Active Voice Subscriptions	315
state	23	2016	AIRTEL	 Active Voice Subscriptions	526432
state	23	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	238014
state	23	2016	GLO	 Active Voice Subscriptions	1652910
state	23	2016	MTN	 Active Voice Subscriptions	1043789
state	23	2016	Others	 Active Voice Subscriptions	266
state	24	2016	AIRTEL	 Active Voice Subscriptions	958544
state	24	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	252344
state	24	2016	GLO	 Active Voice Subscriptions	967176
state	24	2016	MTN	 Active Voice Subscriptions	1597349
state	24	2016	Others	 Active Voice Subscriptions	484
state	25	2016	AIRTEL	 Active Voice Subscriptions	6540372
state	25	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	3415961
state	25	2016	GLO	 Active Voice Subscriptions	6059124
state	25	2016	MTN	 Active Voice Subscriptions	6832750
state	25	2016	Others	 Active Voice Subscriptions	199993
state	26	2016	AIRTEL	 Active Voice Subscriptions	900031
state	26	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	455096
state	26	2016	GLO	 Active Voice Subscriptions	1204692
state	26	2016	MTN	 Active Voice Subscriptions	1117739
state	26	2016	Others	 Active Voice Subscriptions	850
state	27	2016	AIRTEL	 Active Voice Subscriptions	1193041
state	27	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	650750
state	27	2016	GLO	 Active Voice Subscriptions	2120216
state	27	2016	MTN	 Active Voice Subscriptions	1850773
state	27	2016	Others	 Active Voice Subscriptions	982
state	28	2016	AIRTEL	 Active Voice Subscriptions	2716339
state	28	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	1082291
state	28	2016	GLO	 Active Voice Subscriptions	2461995
state	28	2016	MTN	 Active Voice Subscriptions	3697755
state	28	2016	Others	 Active Voice Subscriptions	15882
state	29	2016	AIRTEL	 Active Voice Subscriptions	732389
state	29	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	94296
state	29	2016	GLO	 Active Voice Subscriptions	1433436
state	29	2016	MTN	 Active Voice Subscriptions	1692605
state	29	2016	Others	 Active Voice Subscriptions	507
state	30	2016	AIRTEL	 Active Voice Subscriptions	771563
state	30	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	129060
state	30	2016	GLO	 Active Voice Subscriptions	1431820
state	30	2016	MTN	 Active Voice Subscriptions	1943988
state	30	2016	Others	 Active Voice Subscriptions	401
state	31	2016	AIRTEL	 Active Voice Subscriptions	2287445
state	31	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	521044
state	31	2016	GLO	 Active Voice Subscriptions	3235487
state	31	2016	MTN	 Active Voice Subscriptions	2777321
state	31	2016	Others	 Active Voice Subscriptions	4560
state	32	2016	AIRTEL	 Active Voice Subscriptions	738557
state	32	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	307853
state	32	2016	GLO	 Active Voice Subscriptions	1048220
state	32	2016	MTN	 Active Voice Subscriptions	1461625
state	32	2016	Others	 Active Voice Subscriptions	983
state	33	2016	AIRTEL	 Active Voice Subscriptions	1645001
state	33	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	665514
state	33	2016	GLO	 Active Voice Subscriptions	1642736
state	33	2016	MTN	 Active Voice Subscriptions	2752646
state	33	2016	Others	 Active Voice Subscriptions	12914
state	34	2016	AIRTEL	 Active Voice Subscriptions	416944
state	34	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	380232
state	34	2016	GLO	 Active Voice Subscriptions	567696
state	34	2016	MTN	 Active Voice Subscriptions	1381600
state	34	2016	Others	 Active Voice Subscriptions	434
state	35	2016	AIRTEL	 Active Voice Subscriptions	820902
state	35	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	155207
state	35	2016	GLO	 Active Voice Subscriptions	380123
state	35	2016	MTN	 Active Voice Subscriptions	1073564
state	35	2016	Others	 Active Voice Subscriptions	157
state	36	2016	AIRTEL	 Active Voice Subscriptions	875183
state	36	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	49005
state	36	2016	GLO	 Active Voice Subscriptions	123881
state	36	2016	MTN	 Active Voice Subscriptions	959078
state	36	2016	Others	 Active Voice Subscriptions	275
state	37	2016	AIRTEL	 Active Voice Subscriptions	505272
state	37	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	145331
state	37	2016	GLO	 Active Voice Subscriptions	447592
state	37	2016	MTN	 Active Voice Subscriptions	1077966
state	37	2016	Others	 Active Voice Subscriptions	336
state	1	2016	AIRTEL	 Active Internet Subscriptions	581974
state	1	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	253933
state	1	2016	GLO	 Active Internet Subscriptions	422674
state	1	2016	MTN	 Active Internet Subscriptions	1007448
state	1	2016	Others	 Active Internet Subscriptions	291
state	2	2016	AIRTEL	 Active Internet Subscriptions	575672
state	2	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	105516
state	2	2016	GLO	 Active Internet Subscriptions	353239
state	2	2016	MTN	 Active Internet Subscriptions	855560
state	2	2016	Others	 Active Internet Subscriptions	298
state	3	2016	AIRTEL	 Active Internet Subscriptions	733432
state	3	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	144751
state	3	2016	GLO	 Active Internet Subscriptions	412205
state	3	2016	MTN	 Active Internet Subscriptions	784345
state	3	2016	Others	 Active Internet Subscriptions	312
state	4	2016	AIRTEL	 Active Internet Subscriptions	729010
state	4	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	260742
state	4	2016	GLO	 Active Internet Subscriptions	555114
state	4	2016	MTN	 Active Internet Subscriptions	1500627
state	4	2016	Others	 Active Internet Subscriptions	10152
state	5	2016	AIRTEL	 Active Internet Subscriptions	532104
state	5	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	135909
state	5	2016	GLO	 Active Internet Subscriptions	313814
state	5	2016	MTN	 Active Internet Subscriptions	1007496
state	5	2016	Others	 Active Internet Subscriptions	274
state	6	2016	AIRTEL	 Active Internet Subscriptions	190749
state	6	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	31028
state	6	2016	GLO	 Active Internet Subscriptions	249249
state	6	2016	MTN	 Active Internet Subscriptions	352913
state	6	2016	Others	 Active Internet Subscriptions	48
state	7	2016	AIRTEL	 Active Internet Subscriptions	589368
state	7	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	325120
state	7	2016	GLO	 Active Internet Subscriptions	837694
state	7	2016	MTN	 Active Internet Subscriptions	869792
state	7	2016	Others	 Active Internet Subscriptions	148
state	8	2016	AIRTEL	 Active Internet Subscriptions	943449
state	8	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	96509
state	8	2016	GLO	 Active Internet Subscriptions	302924
state	8	2016	MTN	 Active Internet Subscriptions	639639
state	8	2016	Others	 Active Internet Subscriptions	514
state	9	2016	AIRTEL	 Active Internet Subscriptions	459541
state	9	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	158937
state	9	2016	GLO	 Active Internet Subscriptions	345476
state	9	2016	MTN	 Active Internet Subscriptions	612908
state	9	2016	Others	 Active Internet Subscriptions	126
state	10	2016	AIRTEL	 Active Internet Subscriptions	1023799
state	10	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	163834
state	10	2016	GLO	 Active Internet Subscriptions	1088399
state	10	2016	MTN	 Active Internet Subscriptions	1556910
state	10	2016	Others	 Active Internet Subscriptions	9649
state	11	2016	AIRTEL	 Active Internet Subscriptions	273508
state	11	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	60923
state	11	2016	GLO	 Active Internet Subscriptions	163826
state	11	2016	MTN	 Active Internet Subscriptions	407611
state	11	2016	Others	 Active Internet Subscriptions	40
state	12	2016	AIRTEL	 Active Internet Subscriptions	781271
state	12	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	208271
state	12	2016	GLO	 Active Internet Subscriptions	1424907
state	12	2016	MTN	 Active Internet Subscriptions	1189305
state	12	2016	Others	 Active Internet Subscriptions	18773
state	13	2016	AIRTEL	 Active Internet Subscriptions	198756
state	13	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	16707
state	13	2016	GLO	 Active Internet Subscriptions	250062
state	13	2016	MTN	 Active Internet Subscriptions	605867
state	13	2016	Others	 Active Internet Subscriptions	105
state	14	2016	AIRTEL	 Active Internet Subscriptions	511082
state	14	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	162641
state	14	2016	GLO	 Active Internet Subscriptions	552936
state	14	2016	MTN	 Active Internet Subscriptions	1011248
state	14	2016	Others	 Active Internet Subscriptions	244
state	15	2016	AIRTEL	 Active Internet Subscriptions	1087481
state	15	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	585090
state	15	2016	GLO	 Active Internet Subscriptions	1906028
state	15	2016	MTN	 Active Internet Subscriptions	1573662
state	15	2016	Others	 Active Internet Subscriptions	65860
state	16	2016	AIRTEL	 Active Internet Subscriptions	399632
state	16	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	58757
state	16	2016	GLO	 Active Internet Subscriptions	217493
state	16	2016	MTN	 Active Internet Subscriptions	618261
state	16	2016	Others	 Active Internet Subscriptions	154
state	17	2016	AIRTEL	 Active Internet Subscriptions	454446
state	17	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	182824
state	17	2016	GLO	 Active Internet Subscriptions	440045
state	17	2016	MTN	 Active Internet Subscriptions	1177216
state	17	2016	Others	 Active Internet Subscriptions	233
state	18	2016	AIRTEL	 Active Internet Subscriptions	350216
state	18	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	99480
state	18	2016	GLO	 Active Internet Subscriptions	106864
state	18	2016	MTN	 Active Internet Subscriptions	660197
state	18	2016	Others	 Active Internet Subscriptions	1276
state	19	2016	AIRTEL	 Active Internet Subscriptions	1504345
state	19	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	520190
state	19	2016	GLO	 Active Internet Subscriptions	1063083
state	19	2016	MTN	 Active Internet Subscriptions	1843278
state	19	2016	Others	 Active Internet Subscriptions	30314
state	20	2016	AIRTEL	 Active Internet Subscriptions	1614653
state	20	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	585862
state	20	2016	GLO	 Active Internet Subscriptions	886198
state	20	2016	MTN	 Active Internet Subscriptions	2743199
state	20	2016	Others	 Active Internet Subscriptions	12205
state	21	2016	AIRTEL	 Active Internet Subscriptions	493076
state	21	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	147255
state	21	2016	GLO	 Active Internet Subscriptions	545215
state	21	2016	MTN	 Active Internet Subscriptions	1346011
state	21	2016	Others	 Active Internet Subscriptions	1637
state	22	2016	AIRTEL	 Active Internet Subscriptions	274778
state	22	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	111674
state	22	2016	GLO	 Active Internet Subscriptions	316910
state	22	2016	MTN	 Active Internet Subscriptions	661655
state	22	2016	Others	 Active Internet Subscriptions	170
state	23	2016	AIRTEL	 Active Internet Subscriptions	347174
state	23	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	145427
state	23	2016	GLO	 Active Internet Subscriptions	1064765
state	23	2016	MTN	 Active Internet Subscriptions	689933
state	23	2016	Others	 Active Internet Subscriptions	147
state	24	2016	AIRTEL	 Active Internet Subscriptions	641060
state	24	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	156626
state	24	2016	GLO	 Active Internet Subscriptions	597926
state	24	2016	MTN	 Active Internet Subscriptions	1045533
state	24	2016	Others	 Active Internet Subscriptions	299
state	25	2016	AIRTEL	 Active Internet Subscriptions	4512269
state	25	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	2304825
state	25	2016	GLO	 Active Internet Subscriptions	3883838
state	25	2016	MTN	 Active Internet Subscriptions	4785151
state	25	2016	Others	 Active Internet Subscriptions	189064
state	26	2016	AIRTEL	 Active Internet Subscriptions	575315
state	26	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	284793
state	26	2016	GLO	 Active Internet Subscriptions	702412
state	26	2016	MTN	 Active Internet Subscriptions	760251
state	26	2016	Others	 Active Internet Subscriptions	894
state	27	2016	AIRTEL	 Active Internet Subscriptions	738337
state	27	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	378868
state	27	2016	GLO	 Active Internet Subscriptions	1222960
state	27	2016	MTN	 Active Internet Subscriptions	1158420
state	27	2016	Others	 Active Internet Subscriptions	753
state	28	2016	AIRTEL	 Active Internet Subscriptions	1786756
state	28	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	726693
state	28	2016	GLO	 Active Internet Subscriptions	1474786
state	28	2016	MTN	 Active Internet Subscriptions	2597985
state	28	2016	Others	 Active Internet Subscriptions	9610
state	29	2016	AIRTEL	 Active Internet Subscriptions	481599
state	29	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	54547
state	29	2016	GLO	 Active Internet Subscriptions	935747
state	29	2016	MTN	 Active Internet Subscriptions	1158715
state	29	2016	Others	 Active Internet Subscriptions	242
state	30	2016	AIRTEL	 Active Internet Subscriptions	503763
state	30	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	82069
state	30	2016	GLO	 Active Internet Subscriptions	891955
state	30	2016	MTN	 Active Internet Subscriptions	1317266
state	30	2016	Others	 Active Internet Subscriptions	272
state	31	2016	AIRTEL	 Active Internet Subscriptions	1551549
state	31	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	320138
state	31	2016	GLO	 Active Internet Subscriptions	2028429
state	31	2016	MTN	 Active Internet Subscriptions	1857407
state	31	2016	Others	 Active Internet Subscriptions	34373
state	32	2016	AIRTEL	 Active Internet Subscriptions	477525
state	32	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	183536
state	32	2016	GLO	 Active Internet Subscriptions	635773
state	32	2016	MTN	 Active Internet Subscriptions	981907
state	32	2016	Others	 Active Internet Subscriptions	574
state	33	2016	AIRTEL	 Active Internet Subscriptions	1115950
state	33	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	422832
state	33	2016	GLO	 Active Internet Subscriptions	1053093
state	33	2016	MTN	 Active Internet Subscriptions	1871381
state	33	2016	Others	 Active Internet Subscriptions	43438
state	34	2016	AIRTEL	 Active Internet Subscriptions	226159
state	34	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	246175
state	34	2016	GLO	 Active Internet Subscriptions	291108
state	34	2016	MTN	 Active Internet Subscriptions	801513
state	34	2016	Others	 Active Internet Subscriptions	281
state	35	2016	AIRTEL	 Active Internet Subscriptions	511781
state	35	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	86793
state	35	2016	GLO	 Active Internet Subscriptions	187821
state	35	2016	MTN	 Active Internet Subscriptions	679714
state	35	2016	Others	 Active Internet Subscriptions	90
state	36	2016	AIRTEL	 Active Internet Subscriptions	504891
state	36	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	24847
state	36	2016	GLO	 Active Internet Subscriptions	75909
state	36	2016	MTN	 Active Internet Subscriptions	564594
state	36	2016	Others	 Active Internet Subscriptions	167
state	37	2016	AIRTEL	 Active Internet Subscriptions	282997
state	37	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	85698
state	37	2016	GLO	 Active Internet Subscriptions	254071
state	37	2016	MTN	 Active Internet Subscriptions	605039
state	37	2016	Others	 Active Internet Subscriptions	195
country	NG	2016	AIRTEL	 Active Voice Subscriptions	44180484
country	NG	2016	AIRTEL	 Active Internet Subscriptions	28559467
country	NG	2016	EMTS/ 9MOBILE	 Active Voice Subscriptions	15917015
country	NG	2016	EMTS/ 9MOBILE	 Active Internet Subscriptions	9919820
country	NG	2016	GLO	 Active Voice Subscriptions	45255297
country	NG	2016	GLO	 Active Internet Subscriptions	28054948
country	NG	2016	MTN	 Active Voice Subscriptions	67133009
country	NG	2016	MTN	 Active Internet Subscriptions	43899957
country	NG	2016	Others	 Active Voice Subscriptions	338432
country	NG	2016	Others	 Active Internet Subscriptions	433222
\.


--
-- Name: mobile_subscription mobile_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_subscription
    ADD CONSTRAINT mobile_subscription_pkey PRIMARY KEY (geo_level, geo_code, geo_version, network, subscription_type);


--
-- PostgreSQL database dump complete
--
