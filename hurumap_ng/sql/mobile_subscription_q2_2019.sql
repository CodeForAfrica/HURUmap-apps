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

ALTER TABLE IF EXISTS ONLY public.mobile_subscription_q2_2019 DROP CONSTRAINT IF EXISTS mobile_subscription_q2_2019_pkey;
DROP TABLE IF EXISTS public.mobile_subscription_q2_2019;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mobile_subscription_q2_2019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mobile_subscription_q2_2019 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    network character varying(128) NOT NULL,
    subscription_type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: mobile_subscription_q2_2019; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mobile_subscription_q2_2019 (geo_level, geo_code, geo_version, network, subscription_type, total) FROM stdin;
country	NG	2016	9MOBILE	Active Voice	15965250
country	NG	2016	AIRTEL	Active Voice	45929995
country	NG	2016	GLO	Active Voice	46594981
country	NG	2016	MTN	Active Voice	65142166
country	NG	2016	OTHERS	Active Voice	391724
state	1	2016	9MOBILE	Active Voice	388598
state	1	2016	AIRTEL	Active Voice	938390
state	1	2016	GLO	Active Voice	667204
state	1	2016	MTN	Active Voice	1479671
state	1	2016	OTHERS	Active Voice	521
state	2	2016	9MOBILE	Active Voice	183535
state	2	2016	AIRTEL	Active Voice	964971
state	2	2016	GLO	Active Voice	570416
state	2	2016	MTN	Active Voice	1344743
state	2	2016	OTHERS	Active Voice	481
state	3	2016	9MOBILE	Active Voice	242819
state	3	2016	AIRTEL	Active Voice	1342130
state	3	2016	GLO	Active Voice	721809
state	3	2016	MTN	Active Voice	1188327
state	3	2016	OTHERS	Active Voice	631
state	4	2016	9MOBILE	Active Voice	430459
state	4	2016	AIRTEL	Active Voice	1228449
state	4	2016	GLO	Active Voice	975590
state	4	2016	MTN	Active Voice	2283644
state	4	2016	OTHERS	Active Voice	8390
state	5	2016	9MOBILE	Active Voice	243407
state	5	2016	AIRTEL	Active Voice	914689
state	5	2016	GLO	Active Voice	534832
state	5	2016	MTN	Active Voice	1607882
state	5	2016	OTHERS	Active Voice	515
state	6	2016	9MOBILE	Active Voice	55801
state	6	2016	AIRTEL	Active Voice	306475
state	6	2016	GLO	Active Voice	410652
state	6	2016	MTN	Active Voice	486121
state	6	2016	OTHERS	Active Voice	94
state	7	2016	9MOBILE	Active Voice	496173
state	7	2016	AIRTEL	Active Voice	985694
state	7	2016	GLO	Active Voice	1458973
state	7	2016	MTN	Active Voice	1254040
state	7	2016	OTHERS	Active Voice	269
state	8	2016	9MOBILE	Active Voice	174898
state	8	2016	AIRTEL	Active Voice	1546991
state	8	2016	GLO	Active Voice	484309
state	8	2016	MTN	Active Voice	1020592
state	8	2016	OTHERS	Active Voice	893
state	9	2016	9MOBILE	Active Voice	251971
state	9	2016	AIRTEL	Active Voice	758064
state	9	2016	GLO	Active Voice	593051
state	9	2016	MTN	Active Voice	898818
state	9	2016	OTHERS	Active Voice	216
state	10	2016	9MOBILE	Active Voice	261770
state	10	2016	AIRTEL	Active Voice	1615772
state	10	2016	GLO	Active Voice	1630022
state	10	2016	MTN	Active Voice	2230269
state	10	2016	OTHERS	Active Voice	5386
state	11	2016	9MOBILE	Active Voice	113180
state	11	2016	AIRTEL	Active Voice	514931
state	11	2016	GLO	Active Voice	336889
state	11	2016	MTN	Active Voice	661485
state	11	2016	OTHERS	Active Voice	74
state	12	2016	9MOBILE	Active Voice	326686
state	12	2016	AIRTEL	Active Voice	1244361
state	12	2016	GLO	Active Voice	2366917
state	12	2016	MTN	Active Voice	1730061
state	12	2016	OTHERS	Active Voice	9692
state	13	2016	9MOBILE	Active Voice	31573
state	13	2016	AIRTEL	Active Voice	312538
state	13	2016	GLO	Active Voice	409474
state	13	2016	MTN	Active Voice	874904
state	13	2016	OTHERS	Active Voice	189
state	14	2016	9MOBILE	Active Voice	268497
state	14	2016	AIRTEL	Active Voice	843825
state	14	2016	GLO	Active Voice	915849
state	14	2016	MTN	Active Voice	1496887
state	14	2016	OTHERS	Active Voice	465
state	15	2016	9MOBILE	Active Voice	893050
state	15	2016	AIRTEL	Active Voice	1676622
state	15	2016	GLO	Active Voice	2961925
state	15	2016	MTN	Active Voice	2222399
state	15	2016	OTHERS	Active Voice	41458
state	16	2016	9MOBILE	Active Voice	107102
state	16	2016	AIRTEL	Active Voice	644603
state	16	2016	GLO	Active Voice	392245
state	16	2016	MTN	Active Voice	947563
state	16	2016	OTHERS	Active Voice	219
state	17	2016	9MOBILE	Active Voice	303968
state	17	2016	AIRTEL	Active Voice	783203
state	17	2016	GLO	Active Voice	872573
state	17	2016	MTN	Active Voice	1911804
state	17	2016	OTHERS	Active Voice	500
state	18	2016	9MOBILE	Active Voice	182272
state	18	2016	AIRTEL	Active Voice	640411
state	18	2016	GLO	Active Voice	240641
state	18	2016	MTN	Active Voice	1114173
state	18	2016	OTHERS	Active Voice	1996
state	19	2016	9MOBILE	Active Voice	833497
state	19	2016	AIRTEL	Active Voice	2353673
state	19	2016	GLO	Active Voice	1633599
state	19	2016	MTN	Active Voice	2786577
state	19	2016	OTHERS	Active Voice	36003
state	20	2016	9MOBILE	Active Voice	1193535
state	20	2016	AIRTEL	Active Voice	2834301
state	20	2016	GLO	Active Voice	1762857
state	20	2016	MTN	Active Voice	4264707
state	20	2016	OTHERS	Active Voice	19185
state	21	2016	9MOBILE	Active Voice	277446
state	21	2016	AIRTEL	Active Voice	782055
state	21	2016	GLO	Active Voice	958116
state	21	2016	MTN	Active Voice	2172080
state	21	2016	OTHERS	Active Voice	2401
state	22	2016	9MOBILE	Active Voice	221148
state	22	2016	AIRTEL	Active Voice	495289
state	22	2016	GLO	Active Voice	566314
state	22	2016	MTN	Active Voice	1212365
state	22	2016	OTHERS	Active Voice	330
state	23	2016	9MOBILE	Active Voice	228478
state	23	2016	AIRTEL	Active Voice	521454
state	23	2016	GLO	Active Voice	1630367
state	23	2016	MTN	Active Voice	973608
state	23	2016	OTHERS	Active Voice	271
state	24	2016	9MOBILE	Active Voice	256889
state	24	2016	AIRTEL	Active Voice	1014512
state	24	2016	GLO	Active Voice	1084746
state	24	2016	MTN	Active Voice	1552486
state	24	2016	OTHERS	Active Voice	464
state	25	2016	9MOBILE	Active Voice	3352176
state	25	2016	AIRTEL	Active Voice	6636346
state	25	2016	GLO	Active Voice	5981951
state	25	2016	MTN	Active Voice	6445931
state	25	2016	OTHERS	Active Voice	198120
state	26	2016	9MOBILE	Active Voice	448564
state	26	2016	AIRTEL	Active Voice	903250
state	26	2016	GLO	Active Voice	1124101
state	26	2016	MTN	Active Voice	1139282
state	26	2016	OTHERS	Active Voice	944
state	27	2016	9MOBILE	Active Voice	642977
state	27	2016	AIRTEL	Active Voice	1278300
state	27	2016	GLO	Active Voice	1908269
state	27	2016	MTN	Active Voice	1823537
state	27	2016	OTHERS	Active Voice	927
state	28	2016	9MOBILE	Active Voice	1061551
state	28	2016	AIRTEL	Active Voice	2801996
state	28	2016	GLO	Active Voice	2947826
state	28	2016	MTN	Active Voice	3544880
state	28	2016	OTHERS	Active Voice	15508
state	29	2016	9MOBILE	Active Voice	94637
state	29	2016	AIRTEL	Active Voice	719787
state	29	2016	GLO	Active Voice	1523389
state	29	2016	MTN	Active Voice	1580033
state	29	2016	OTHERS	Active Voice	429
state	30	2016	9MOBILE	Active Voice	134802
state	30	2016	AIRTEL	Active Voice	775766
state	30	2016	GLO	Active Voice	1394844
state	30	2016	MTN	Active Voice	1811515
state	30	2016	OTHERS	Active Voice	388
state	31	2016	9MOBILE	Active Voice	506864
state	31	2016	AIRTEL	Active Voice	2343350
state	31	2016	GLO	Active Voice	3458995
state	31	2016	MTN	Active Voice	2600727
state	31	2016	OTHERS	Active Voice	25447
state	32	2016	9MOBILE	Active Voice	302452
state	32	2016	AIRTEL	Active Voice	784974
state	32	2016	GLO	Active Voice	922028
state	32	2016	MTN	Active Voice	1424756
state	32	2016	OTHERS	Active Voice	1216
state	33	2016	9MOBILE	Active Voice	655746
state	33	2016	AIRTEL	Active Voice	1711752
state	33	2016	GLO	Active Voice	1699756
state	33	2016	MTN	Active Voice	2570741
state	33	2016	OTHERS	Active Voice	16712
state	34	2016	9MOBILE	Active Voice	434664
state	34	2016	AIRTEL	Active Voice	520006
state	34	2016	GLO	Active Voice	531910
state	34	2016	MTN	Active Voice	1499826
state	34	2016	OTHERS	Active Voice	590
state	35	2016	9MOBILE	Active Voice	146895
state	35	2016	AIRTEL	Active Voice	799711
state	35	2016	GLO	Active Voice	314716
state	35	2016	MTN	Active Voice	1015260
state	35	2016	OTHERS	Active Voice	141
state	36	2016	9MOBILE	Active Voice	49803
state	36	2016	AIRTEL	Active Voice	860676
state	36	2016	GLO	Active Voice	149350
state	36	2016	MTN	Active Voice	888590
state	36	2016	OTHERS	Active Voice	261
state	37	2016	9MOBILE	Active Voice	167367
state	37	2016	AIRTEL	Active Voice	530678
state	37	2016	GLO	Active Voice	458476
state	37	2016	MTN	Active Voice	1081882
state	37	2016	OTHERS	Active Voice	398
country	NG	2016	9MOBILE	Active Internet	9039553
country	NG	2016	AIRTEL	Active Internet	31975260
country	NG	2016	GLO	Active Internet	29022349
country	NG	2016	MTN	Active Internet	52173020
country	NG	2016	OTHERS	Active Internet	463441
state	1	2016	9MOBILE	Active Internet	223741
state	1	2016	AIRTEL	Active Internet	660815
state	1	2016	GLO	Active Internet	408184
state	1	2016	MTN	Active Internet	1162213
state	1	2016	OTHERS	Active Internet	339
state	2	2016	9MOBILE	Active Internet	86423
state	2	2016	AIRTEL	Active Internet	627791
state	2	2016	GLO	Active Internet	366357
state	2	2016	MTN	Active Internet	1061447
state	2	2016	OTHERS	Active Internet	338
state	3	2016	9MOBILE	Active Internet	132278
state	3	2016	AIRTEL	Active Internet	926992
state	3	2016	GLO	Active Internet	441271
state	3	2016	MTN	Active Internet	926175
state	3	2016	OTHERS	Active Internet	425
state	4	2016	9MOBILE	Active Internet	230802
state	4	2016	AIRTEL	Active Internet	842737
state	4	2016	GLO	Active Internet	621363
state	4	2016	MTN	Active Internet	1793423
state	4	2016	OTHERS	Active Internet	12324
state	5	2016	9MOBILE	Active Internet	120387
state	5	2016	AIRTEL	Active Internet	611904
state	5	2016	GLO	Active Internet	319414
state	5	2016	MTN	Active Internet	1267424
state	5	2016	OTHERS	Active Internet	377
state	6	2016	9MOBILE	Active Internet	29230
state	6	2016	AIRTEL	Active Internet	215712
state	6	2016	GLO	Active Internet	272996
state	6	2016	MTN	Active Internet	407455
state	6	2016	OTHERS	Active Internet	67
state	7	2016	9MOBILE	Active Internet	270272
state	7	2016	AIRTEL	Active Internet	697481
state	7	2016	GLO	Active Internet	866789
state	7	2016	MTN	Active Internet	986851
state	7	2016	OTHERS	Active Internet	209
state	8	2016	9MOBILE	Active Internet	80370
state	8	2016	AIRTEL	Active Internet	1048312
state	8	2016	GLO	Active Internet	316813
state	8	2016	MTN	Active Internet	785150
state	8	2016	OTHERS	Active Internet	670
state	9	2016	9MOBILE	Active Internet	147250
state	9	2016	AIRTEL	Active Internet	519923
state	9	2016	GLO	Active Internet	360274
state	9	2016	MTN	Active Internet	713355
state	9	2016	OTHERS	Active Internet	148
state	10	2016	9MOBILE	Active Internet	144829
state	10	2016	AIRTEL	Active Internet	1178346
state	10	2016	GLO	Active Internet	1110016
state	10	2016	MTN	Active Internet	1820317
state	10	2016	OTHERS	Active Internet	10951
state	11	2016	9MOBILE	Active Internet	55316
state	11	2016	AIRTEL	Active Internet	342689
state	11	2016	GLO	Active Internet	197926
state	11	2016	MTN	Active Internet	502049
state	11	2016	OTHERS	Active Internet	49
state	12	2016	9MOBILE	Active Internet	182654
state	12	2016	AIRTEL	Active Internet	883505
state	12	2016	GLO	Active Internet	1521855
state	12	2016	MTN	Active Internet	1389698
state	12	2016	OTHERS	Active Internet	21257
state	13	2016	9MOBILE	Active Internet	17496
state	13	2016	AIRTEL	Active Internet	222454
state	13	2016	GLO	Active Internet	267766
state	13	2016	MTN	Active Internet	734102
state	13	2016	OTHERS	Active Internet	145
state	14	2016	9MOBILE	Active Internet	145857
state	14	2016	AIRTEL	Active Internet	571662
state	14	2016	GLO	Active Internet	616360
state	14	2016	MTN	Active Internet	1148637
state	14	2016	OTHERS	Active Internet	303
state	15	2016	9MOBILE	Active Internet	523208
state	15	2016	AIRTEL	Active Internet	1187239
state	15	2016	GLO	Active Internet	1902273
state	15	2016	MTN	Active Internet	1843477
state	15	2016	OTHERS	Active Internet	74379
state	16	2016	9MOBILE	Active Internet	53178
state	16	2016	AIRTEL	Active Internet	429270
state	16	2016	GLO	Active Internet	235775
state	16	2016	MTN	Active Internet	740594
state	16	2016	OTHERS	Active Internet	137
state	17	2016	9MOBILE	Active Internet	167618
state	17	2016	AIRTEL	Active Internet	540175
state	17	2016	GLO	Active Internet	493744
state	17	2016	MTN	Active Internet	1500736
state	17	2016	OTHERS	Active Internet	333
state	18	2016	9MOBILE	Active Internet	87684
state	18	2016	AIRTEL	Active Internet	409505
state	18	2016	GLO	Active Internet	127975
state	18	2016	MTN	Active Internet	848528
state	18	2016	OTHERS	Active Internet	1514
state	19	2016	9MOBILE	Active Internet	464341
state	19	2016	AIRTEL	Active Internet	1670768
state	19	2016	GLO	Active Internet	1069645
state	19	2016	MTN	Active Internet	2282899
state	19	2016	OTHERS	Active Internet	41095
state	20	2016	9MOBILE	Active Internet	686680
state	20	2016	AIRTEL	Active Internet	1896336
state	20	2016	GLO	Active Internet	883955
state	20	2016	MTN	Active Internet	3371309
state	20	2016	OTHERS	Active Internet	14222
state	21	2016	9MOBILE	Active Internet	138804
state	21	2016	AIRTEL	Active Internet	532022
state	21	2016	GLO	Active Internet	564236
state	21	2016	MTN	Active Internet	1684963
state	21	2016	OTHERS	Active Internet	1794
state	22	2016	9MOBILE	Active Internet	104841
state	22	2016	AIRTEL	Active Internet	336173
state	22	2016	GLO	Active Internet	280601
state	22	2016	MTN	Active Internet	914217
state	22	2016	OTHERS	Active Internet	226
state	23	2016	9MOBILE	Active Internet	120773
state	23	2016	AIRTEL	Active Internet	359677
state	23	2016	GLO	Active Internet	1037825
state	23	2016	MTN	Active Internet	787467
state	23	2016	OTHERS	Active Internet	182
state	24	2016	9MOBILE	Active Internet	147203
state	24	2016	AIRTEL	Active Internet	713321
state	24	2016	GLO	Active Internet	661578
state	24	2016	MTN	Active Internet	1238201
state	24	2016	OTHERS	Active Internet	336
state	25	2016	9MOBILE	Active Internet	2073246
state	25	2016	AIRTEL	Active Internet	4868349
state	25	2016	GLO	Active Internet	3968978
state	25	2016	MTN	Active Internet	5388194
state	25	2016	OTHERS	Active Internet	184177
state	26	2016	9MOBILE	Active Internet	244693
state	26	2016	AIRTEL	Active Internet	613269
state	26	2016	GLO	Active Internet	680179
state	26	2016	MTN	Active Internet	936813
state	26	2016	OTHERS	Active Internet	993
state	27	2016	9MOBILE	Active Internet	331219
state	27	2016	AIRTEL	Active Internet	855997
state	27	2016	GLO	Active Internet	1168505
state	27	2016	MTN	Active Internet	1419049
state	27	2016	OTHERS	Active Internet	758
state	28	2016	9MOBILE	Active Internet	644063
state	28	2016	AIRTEL	Active Internet	2012612
state	28	2016	GLO	Active Internet	1794733
state	28	2016	MTN	Active Internet	2983882
state	28	2016	OTHERS	Active Internet	11533
state	29	2016	9MOBILE	Active Internet	50368
state	29	2016	AIRTEL	Active Internet	493591
state	29	2016	GLO	Active Internet	961813
state	29	2016	MTN	Active Internet	1309727
state	29	2016	OTHERS	Active Internet	289
state	30	2016	9MOBILE	Active Internet	78346
state	30	2016	AIRTEL	Active Internet	531125
state	30	2016	GLO	Active Internet	873392
state	30	2016	MTN	Active Internet	1497374
state	30	2016	OTHERS	Active Internet	319
state	31	2016	9MOBILE	Active Internet	275750
state	31	2016	AIRTEL	Active Internet	1669186
state	31	2016	GLO	Active Internet	2129401
state	31	2016	MTN	Active Internet	2106133
state	31	2016	OTHERS	Active Internet	40696
state	32	2016	9MOBILE	Active Internet	161242
state	32	2016	AIRTEL	Active Internet	541156
state	32	2016	GLO	Active Internet	606201
state	32	2016	MTN	Active Internet	1167741
state	32	2016	OTHERS	Active Internet	875
state	33	2016	9MOBILE	Active Internet	384523
state	33	2016	AIRTEL	Active Internet	1239295
state	33	2016	GLO	Active Internet	1093790
state	33	2016	MTN	Active Internet	2135003
state	33	2016	OTHERS	Active Internet	40971
state	34	2016	9MOBILE	Active Internet	258484
state	34	2016	AIRTEL	Active Internet	326129
state	34	2016	GLO	Active Internet	291452
state	34	2016	MTN	Active Internet	1082941
state	34	2016	OTHERS	Active Internet	447
state	35	2016	9MOBILE	Active Internet	65269
state	35	2016	AIRTEL	Active Internet	526950
state	35	2016	GLO	Active Internet	179864
state	35	2016	MTN	Active Internet	782935
state	35	2016	OTHERS	Active Internet	100
state	36	2016	9MOBILE	Active Internet	21983
state	36	2016	AIRTEL	Active Internet	542246
state	36	2016	GLO	Active Internet	93463
state	36	2016	MTN	Active Internet	661374
state	36	2016	OTHERS	Active Internet	189
state	37	2016	9MOBILE	Active Internet	89132
state	37	2016	AIRTEL	Active Internet	330546
state	37	2016	GLO	Active Internet	235587
state	37	2016	MTN	Active Internet	791167
state	37	2016	OTHERS	Active Internet	274
\.


--
-- Name: mobile_subscription_q2_2019 mobile_subscription_q2_2019_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_subscription_q2_2019
    ADD CONSTRAINT mobile_subscription_q2_2019_pkey PRIMARY KEY (geo_level, geo_code, geo_version, network, subscription_type);


--
-- PostgreSQL database dump complete
--
