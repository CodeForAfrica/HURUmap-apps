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
state	1	2016	AIRTEL	 Active Voice	887145
state	1	2016	EMTS/ 9MOBILE	 Active Voice	403171
state	1	2016	GLO	 Active Voice	641388
state	1	2016	MTN	 Active Voice	1580100
state	1	2016	Others	 Active Voice	593
state	2	2016	AIRTEL	 Active Voice	968415
state	2	2016	EMTS/ 9MOBILE	 Active Voice	188351
state	2	2016	GLO	 Active Voice	632217
state	2	2016	MTN	 Active Voice	1341711
state	2	2016	Others	 Active Voice	497
state	3	2016	AIRTEL	 Active Voice	1131261
state	3	2016	EMTS/ 9MOBILE	 Active Voice	240901
state	3	2016	GLO	 Active Voice	648097
state	3	2016	MTN	 Active Voice	1260967
state	3	2016	Others	 Active Voice	676
state	4	2016	AIRTEL	 Active Voice	1134714
state	4	2016	EMTS/ 9MOBILE	 Active Voice	440857
state	4	2016	GLO	 Active Voice	792961
state	4	2016	MTN	 Active Voice	2346928
state	4	2016	Others	 Active Voice	5910
state	5	2016	AIRTEL	 Active Voice	860879
state	5	2016	EMTS/ 9MOBILE	 Active Voice	238593
state	5	2016	GLO	 Active Voice	590660
state	5	2016	MTN	 Active Voice	1580405
state	5	2016	Others	 Active Voice	449
state	6	2016	AIRTEL	 Active Voice	289612
state	6	2016	EMTS/ 9MOBILE	 Active Voice	52428
state	6	2016	GLO	 Active Voice	329719
state	6	2016	MTN	 Active Voice	503991
state	6	2016	Others	 Active Voice	96
state	7	2016	AIRTEL	 Active Voice	921418
state	7	2016	EMTS/ 9MOBILE	 Active Voice	515795
state	7	2016	GLO	 Active Voice	1373557
state	7	2016	MTN	 Active Voice	1353653
state	7	2016	Others	 Active Voice	244
state	8	2016	AIRTEL	 Active Voice	1553238
state	8	2016	EMTS/ 9MOBILE	 Active Voice	179982
state	8	2016	GLO	 Active Voice	508854
state	8	2016	MTN	 Active Voice	1029633
state	8	2016	Others	 Active Voice	834
state	9	2016	AIRTEL	 Active Voice	714338
state	9	2016	EMTS/ 9MOBILE	 Active Voice	250398
state	9	2016	GLO	 Active Voice	537450
state	9	2016	MTN	 Active Voice	942809
state	9	2016	Others	 Active Voice	246
state	10	2016	AIRTEL	 Active Voice	1480803
state	10	2016	EMTS/ 9MOBILE	 Active Voice	260121
state	10	2016	GLO	 Active Voice	1636689
state	10	2016	MTN	 Active Voice	2316715
state	10	2016	Others	 Active Voice	4241
state	11	2016	AIRTEL	 Active Voice	449034
state	11	2016	EMTS/ 9MOBILE	 Active Voice	112699
state	11	2016	GLO	 Active Voice	262176
state	11	2016	MTN	 Active Voice	675349
state	11	2016	Others	 Active Voice	71
state	12	2016	AIRTEL	 Active Voice	1163962
state	12	2016	EMTS/ 9MOBILE	 Active Voice	333601
state	12	2016	GLO	 Active Voice	2124743
state	12	2016	MTN	 Active Voice	1801547
state	12	2016	Others	 Active Voice	7040
state	13	2016	AIRTEL	 Active Voice	295311
state	13	2016	EMTS/ 9MOBILE	 Active Voice	27735
state	13	2016	GLO	 Active Voice	368887
state	13	2016	MTN	 Active Voice	890511
state	13	2016	Others	 Active Voice	175
state	14	2016	AIRTEL	 Active Voice	814116
state	14	2016	EMTS/ 9MOBILE	 Active Voice	272779
state	14	2016	GLO	 Active Voice	818491
state	14	2016	MTN	 Active Voice	1614251
state	14	2016	Others	 Active Voice	513
state	15	2016	AIRTEL	 Active Voice	1617951
state	15	2016	EMTS/ 9MOBILE	 Active Voice	911333
state	15	2016	GLO	 Active Voice	2863187
state	15	2016	MTN	 Active Voice	2265906
state	15	2016	Others	 Active Voice	25551
state	16	2016	AIRTEL	 Active Voice	643563
state	16	2016	EMTS/ 9MOBILE	 Active Voice	104821
state	16	2016	GLO	 Active Voice	468488
state	16	2016	MTN	 Active Voice	985899
state	16	2016	Others	 Active Voice	240
state	17	2016	AIRTEL	 Active Voice	715375
state	17	2016	EMTS/ 9MOBILE	 Active Voice	305355
state	17	2016	GLO	 Active Voice	716564
state	17	2016	MTN	 Active Voice	1886130
state	17	2016	Others	 Active Voice	458
state	18	2016	AIRTEL	 Active Voice	601339
state	18	2016	EMTS/ 9MOBILE	 Active Voice	178460
state	18	2016	GLO	 Active Voice	204176
state	18	2016	MTN	 Active Voice	1108586
state	18	2016	Others	 Active Voice	2175
state	19	2016	AIRTEL	 Active Voice	2288892
state	19	2016	EMTS/ 9MOBILE	 Active Voice	846553
state	19	2016	GLO	 Active Voice	1745419
state	19	2016	MTN	 Active Voice	2767377
state	19	2016	Others	 Active Voice	25902
state	20	2016	AIRTEL	 Active Voice	2713495
state	20	2016	EMTS/ 9MOBILE	 Active Voice	1034655
state	20	2016	GLO	 Active Voice	1644532
state	20	2016	MTN	 Active Voice	4323252
state	20	2016	Others	 Active Voice	20443
state	21	2016	AIRTEL	 Active Voice	823102
state	21	2016	EMTS/ 9MOBILE	 Active Voice	268714
state	21	2016	GLO	 Active Voice	944151
state	21	2016	MTN	 Active Voice	2202271
state	21	2016	Others	 Active Voice	2739
state	22	2016	AIRTEL	 Active Voice	484506
state	22	2016	EMTS/ 9MOBILE	 Active Voice	207715
state	22	2016	GLO	 Active Voice	625787
state	22	2016	MTN	 Active Voice	1094470
state	22	2016	Others	 Active Voice	315
state	23	2016	AIRTEL	 Active Voice	526432
state	23	2016	EMTS/ 9MOBILE	 Active Voice	238014
state	23	2016	GLO	 Active Voice	1652910
state	23	2016	MTN	 Active Voice	1043789
state	23	2016	Others	 Active Voice	266
state	24	2016	AIRTEL	 Active Voice	958544
state	24	2016	EMTS/ 9MOBILE	 Active Voice	252344
state	24	2016	GLO	 Active Voice	967176
state	24	2016	MTN	 Active Voice	1597349
state	24	2016	Others	 Active Voice	484
state	25	2016	AIRTEL	 Active Voice	6540372
state	25	2016	EMTS/ 9MOBILE	 Active Voice	3415961
state	25	2016	GLO	 Active Voice	6059124
state	25	2016	MTN	 Active Voice	6832750
state	25	2016	Others	 Active Voice	199993
state	26	2016	AIRTEL	 Active Voice	900031
state	26	2016	EMTS/ 9MOBILE	 Active Voice	455096
state	26	2016	GLO	 Active Voice	1204692
state	26	2016	MTN	 Active Voice	1117739
state	26	2016	Others	 Active Voice	850
state	27	2016	AIRTEL	 Active Voice	1193041
state	27	2016	EMTS/ 9MOBILE	 Active Voice	650750
state	27	2016	GLO	 Active Voice	2120216
state	27	2016	MTN	 Active Voice	1850773
state	27	2016	Others	 Active Voice	982
state	28	2016	AIRTEL	 Active Voice	2716339
state	28	2016	EMTS/ 9MOBILE	 Active Voice	1082291
state	28	2016	GLO	 Active Voice	2461995
state	28	2016	MTN	 Active Voice	3697755
state	28	2016	Others	 Active Voice	15882
state	29	2016	AIRTEL	 Active Voice	732389
state	29	2016	EMTS/ 9MOBILE	 Active Voice	94296
state	29	2016	GLO	 Active Voice	1433436
state	29	2016	MTN	 Active Voice	1692605
state	29	2016	Others	 Active Voice	507
state	30	2016	AIRTEL	 Active Voice	771563
state	30	2016	EMTS/ 9MOBILE	 Active Voice	129060
state	30	2016	GLO	 Active Voice	1431820
state	30	2016	MTN	 Active Voice	1943988
state	30	2016	Others	 Active Voice	401
state	31	2016	AIRTEL	 Active Voice	2287445
state	31	2016	EMTS/ 9MOBILE	 Active Voice	521044
state	31	2016	GLO	 Active Voice	3235487
state	31	2016	MTN	 Active Voice	2777321
state	31	2016	Others	 Active Voice	4560
state	32	2016	AIRTEL	 Active Voice	738557
state	32	2016	EMTS/ 9MOBILE	 Active Voice	307853
state	32	2016	GLO	 Active Voice	1048220
state	32	2016	MTN	 Active Voice	1461625
state	32	2016	Others	 Active Voice	983
state	33	2016	AIRTEL	 Active Voice	1645001
state	33	2016	EMTS/ 9MOBILE	 Active Voice	665514
state	33	2016	GLO	 Active Voice	1642736
state	33	2016	MTN	 Active Voice	2752646
state	33	2016	Others	 Active Voice	12914
state	34	2016	AIRTEL	 Active Voice	416944
state	34	2016	EMTS/ 9MOBILE	 Active Voice	380232
state	34	2016	GLO	 Active Voice	567696
state	34	2016	MTN	 Active Voice	1381600
state	34	2016	Others	 Active Voice	434
state	35	2016	AIRTEL	 Active Voice	820902
state	35	2016	EMTS/ 9MOBILE	 Active Voice	155207
state	35	2016	GLO	 Active Voice	380123
state	35	2016	MTN	 Active Voice	1073564
state	35	2016	Others	 Active Voice	157
state	36	2016	AIRTEL	 Active Voice	875183
state	36	2016	EMTS/ 9MOBILE	 Active Voice	49005
state	36	2016	GLO	 Active Voice	123881
state	36	2016	MTN	 Active Voice	959078
state	36	2016	Others	 Active Voice	275
state	37	2016	AIRTEL	 Active Voice	505272
state	37	2016	EMTS/ 9MOBILE	 Active Voice	145331
state	37	2016	GLO	 Active Voice	447592
state	37	2016	MTN	 Active Voice	1077966
state	37	2016	Others	 Active Voice	336
state	1	2016	AIRTEL	 Active Internet	581974
state	1	2016	EMTS/ 9MOBILE	 Active Internet	253933
state	1	2016	GLO	 Active Internet	422674
state	1	2016	MTN	 Active Internet	1007448
state	1	2016	Others	 Active Internet	291
state	2	2016	AIRTEL	 Active Internet	575672
state	2	2016	EMTS/ 9MOBILE	 Active Internet	105516
state	2	2016	GLO	 Active Internet	353239
state	2	2016	MTN	 Active Internet	855560
state	2	2016	Others	 Active Internet	298
state	3	2016	AIRTEL	 Active Internet	733432
state	3	2016	EMTS/ 9MOBILE	 Active Internet	144751
state	3	2016	GLO	 Active Internet	412205
state	3	2016	MTN	 Active Internet	784345
state	3	2016	Others	 Active Internet	312
state	4	2016	AIRTEL	 Active Internet	729010
state	4	2016	EMTS/ 9MOBILE	 Active Internet	260742
state	4	2016	GLO	 Active Internet	555114
state	4	2016	MTN	 Active Internet	1500627
state	4	2016	Others	 Active Internet	10152
state	5	2016	AIRTEL	 Active Internet	532104
state	5	2016	EMTS/ 9MOBILE	 Active Internet	135909
state	5	2016	GLO	 Active Internet	313814
state	5	2016	MTN	 Active Internet	1007496
state	5	2016	Others	 Active Internet	274
state	6	2016	AIRTEL	 Active Internet	190749
state	6	2016	EMTS/ 9MOBILE	 Active Internet	31028
state	6	2016	GLO	 Active Internet	249249
state	6	2016	MTN	 Active Internet	352913
state	6	2016	Others	 Active Internet	48
state	7	2016	AIRTEL	 Active Internet	589368
state	7	2016	EMTS/ 9MOBILE	 Active Internet	325120
state	7	2016	GLO	 Active Internet	837694
state	7	2016	MTN	 Active Internet	869792
state	7	2016	Others	 Active Internet	148
state	8	2016	AIRTEL	 Active Internet	943449
state	8	2016	EMTS/ 9MOBILE	 Active Internet	96509
state	8	2016	GLO	 Active Internet	302924
state	8	2016	MTN	 Active Internet	639639
state	8	2016	Others	 Active Internet	514
state	9	2016	AIRTEL	 Active Internet	459541
state	9	2016	EMTS/ 9MOBILE	 Active Internet	158937
state	9	2016	GLO	 Active Internet	345476
state	9	2016	MTN	 Active Internet	612908
state	9	2016	Others	 Active Internet	126
state	10	2016	AIRTEL	 Active Internet	1023799
state	10	2016	EMTS/ 9MOBILE	 Active Internet	163834
state	10	2016	GLO	 Active Internet	1088399
state	10	2016	MTN	 Active Internet	1556910
state	10	2016	Others	 Active Internet	9649
state	11	2016	AIRTEL	 Active Internet	273508
state	11	2016	EMTS/ 9MOBILE	 Active Internet	60923
state	11	2016	GLO	 Active Internet	163826
state	11	2016	MTN	 Active Internet	407611
state	11	2016	Others	 Active Internet	40
state	12	2016	AIRTEL	 Active Internet	781271
state	12	2016	EMTS/ 9MOBILE	 Active Internet	208271
state	12	2016	GLO	 Active Internet	1424907
state	12	2016	MTN	 Active Internet	1189305
state	12	2016	Others	 Active Internet	18773
state	13	2016	AIRTEL	 Active Internet	198756
state	13	2016	EMTS/ 9MOBILE	 Active Internet	16707
state	13	2016	GLO	 Active Internet	250062
state	13	2016	MTN	 Active Internet	605867
state	13	2016	Others	 Active Internet	105
state	14	2016	AIRTEL	 Active Internet	511082
state	14	2016	EMTS/ 9MOBILE	 Active Internet	162641
state	14	2016	GLO	 Active Internet	552936
state	14	2016	MTN	 Active Internet	1011248
state	14	2016	Others	 Active Internet	244
state	15	2016	AIRTEL	 Active Internet	1087481
state	15	2016	EMTS/ 9MOBILE	 Active Internet	585090
state	15	2016	GLO	 Active Internet	1906028
state	15	2016	MTN	 Active Internet	1573662
state	15	2016	Others	 Active Internet	65860
state	16	2016	AIRTEL	 Active Internet	399632
state	16	2016	EMTS/ 9MOBILE	 Active Internet	58757
state	16	2016	GLO	 Active Internet	217493
state	16	2016	MTN	 Active Internet	618261
state	16	2016	Others	 Active Internet	154
state	17	2016	AIRTEL	 Active Internet	454446
state	17	2016	EMTS/ 9MOBILE	 Active Internet	182824
state	17	2016	GLO	 Active Internet	440045
state	17	2016	MTN	 Active Internet	1177216
state	17	2016	Others	 Active Internet	233
state	18	2016	AIRTEL	 Active Internet	350216
state	18	2016	EMTS/ 9MOBILE	 Active Internet	99480
state	18	2016	GLO	 Active Internet	106864
state	18	2016	MTN	 Active Internet	660197
state	18	2016	Others	 Active Internet	1276
state	19	2016	AIRTEL	 Active Internet	1504345
state	19	2016	EMTS/ 9MOBILE	 Active Internet	520190
state	19	2016	GLO	 Active Internet	1063083
state	19	2016	MTN	 Active Internet	1843278
state	19	2016	Others	 Active Internet	30314
state	20	2016	AIRTEL	 Active Internet	1614653
state	20	2016	EMTS/ 9MOBILE	 Active Internet	585862
state	20	2016	GLO	 Active Internet	886198
state	20	2016	MTN	 Active Internet	2743199
state	20	2016	Others	 Active Internet	12205
state	21	2016	AIRTEL	 Active Internet	493076
state	21	2016	EMTS/ 9MOBILE	 Active Internet	147255
state	21	2016	GLO	 Active Internet	545215
state	21	2016	MTN	 Active Internet	1346011
state	21	2016	Others	 Active Internet	1637
state	22	2016	AIRTEL	 Active Internet	274778
state	22	2016	EMTS/ 9MOBILE	 Active Internet	111674
state	22	2016	GLO	 Active Internet	316910
state	22	2016	MTN	 Active Internet	661655
state	22	2016	Others	 Active Internet	170
state	23	2016	AIRTEL	 Active Internet	347174
state	23	2016	EMTS/ 9MOBILE	 Active Internet	145427
state	23	2016	GLO	 Active Internet	1064765
state	23	2016	MTN	 Active Internet	689933
state	23	2016	Others	 Active Internet	147
state	24	2016	AIRTEL	 Active Internet	641060
state	24	2016	EMTS/ 9MOBILE	 Active Internet	156626
state	24	2016	GLO	 Active Internet	597926
state	24	2016	MTN	 Active Internet	1045533
state	24	2016	Others	 Active Internet	299
state	25	2016	AIRTEL	 Active Internet	4512269
state	25	2016	EMTS/ 9MOBILE	 Active Internet	2304825
state	25	2016	GLO	 Active Internet	3883838
state	25	2016	MTN	 Active Internet	4785151
state	25	2016	Others	 Active Internet	189064
state	26	2016	AIRTEL	 Active Internet	575315
state	26	2016	EMTS/ 9MOBILE	 Active Internet	284793
state	26	2016	GLO	 Active Internet	702412
state	26	2016	MTN	 Active Internet	760251
state	26	2016	Others	 Active Internet	894
state	27	2016	AIRTEL	 Active Internet	738337
state	27	2016	EMTS/ 9MOBILE	 Active Internet	378868
state	27	2016	GLO	 Active Internet	1222960
state	27	2016	MTN	 Active Internet	1158420
state	27	2016	Others	 Active Internet	753
state	28	2016	AIRTEL	 Active Internet	1786756
state	28	2016	EMTS/ 9MOBILE	 Active Internet	726693
state	28	2016	GLO	 Active Internet	1474786
state	28	2016	MTN	 Active Internet	2597985
state	28	2016	Others	 Active Internet	9610
state	29	2016	AIRTEL	 Active Internet	481599
state	29	2016	EMTS/ 9MOBILE	 Active Internet	54547
state	29	2016	GLO	 Active Internet	935747
state	29	2016	MTN	 Active Internet	1158715
state	29	2016	Others	 Active Internet	242
state	30	2016	AIRTEL	 Active Internet	503763
state	30	2016	EMTS/ 9MOBILE	 Active Internet	82069
state	30	2016	GLO	 Active Internet	891955
state	30	2016	MTN	 Active Internet	1317266
state	30	2016	Others	 Active Internet	272
state	31	2016	AIRTEL	 Active Internet	1551549
state	31	2016	EMTS/ 9MOBILE	 Active Internet	320138
state	31	2016	GLO	 Active Internet	2028429
state	31	2016	MTN	 Active Internet	1857407
state	31	2016	Others	 Active Internet	34373
state	32	2016	AIRTEL	 Active Internet	477525
state	32	2016	EMTS/ 9MOBILE	 Active Internet	183536
state	32	2016	GLO	 Active Internet	635773
state	32	2016	MTN	 Active Internet	981907
state	32	2016	Others	 Active Internet	574
state	33	2016	AIRTEL	 Active Internet	1115950
state	33	2016	EMTS/ 9MOBILE	 Active Internet	422832
state	33	2016	GLO	 Active Internet	1053093
state	33	2016	MTN	 Active Internet	1871381
state	33	2016	Others	 Active Internet	43438
state	34	2016	AIRTEL	 Active Internet	226159
state	34	2016	EMTS/ 9MOBILE	 Active Internet	246175
state	34	2016	GLO	 Active Internet	291108
state	34	2016	MTN	 Active Internet	801513
state	34	2016	Others	 Active Internet	281
state	35	2016	AIRTEL	 Active Internet	511781
state	35	2016	EMTS/ 9MOBILE	 Active Internet	86793
state	35	2016	GLO	 Active Internet	187821
state	35	2016	MTN	 Active Internet	679714
state	35	2016	Others	 Active Internet	90
state	36	2016	AIRTEL	 Active Internet	504891
state	36	2016	EMTS/ 9MOBILE	 Active Internet	24847
state	36	2016	GLO	 Active Internet	75909
state	36	2016	MTN	 Active Internet	564594
state	36	2016	Others	 Active Internet	167
state	37	2016	AIRTEL	 Active Internet	282997
state	37	2016	EMTS/ 9MOBILE	 Active Internet	85698
state	37	2016	GLO	 Active Internet	254071
state	37	2016	MTN	 Active Internet	605039
state	37	2016	Others	 Active Internet	195
country	NG	2016	AIRTEL	 Active Voice	44180484
country	NG	2016	AIRTEL	 Active Internet	28559467
country	NG	2016	EMTS/ 9MOBILE	 Active Voice	15917015
country	NG	2016	EMTS/ 9MOBILE	 Active Internet	9919820
country	NG	2016	GLO	 Active Voice	45255297
country	NG	2016	GLO	 Active Internet	28054948
country	NG	2016	MTN	 Active Voice	67133009
country	NG	2016	MTN	 Active Internet	43899957
country	NG	2016	Others	 Active Voice	338432
country	NG	2016	Others	 Active Internet	433222
\.


--
-- Name: mobile_subscription mobile_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_subscription
    ADD CONSTRAINT mobile_subscription_pkey PRIMARY KEY (geo_level, geo_code, geo_version, network, subscription_type);


--
-- PostgreSQL database dump complete
--
