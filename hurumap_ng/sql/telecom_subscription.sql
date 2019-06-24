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

ALTER TABLE IF EXISTS ONLY public.telecom_subscription DROP CONSTRAINT IF EXISTS telecom_subscription_pkey;
DROP TABLE IF EXISTS public.telecom_subscription;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: telecom_subscription; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.telecom_subscription (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    period character varying(128) NOT NULL,
    subscription_type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: telecom_subscription; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.telecom_subscription (geo_level, geo_code, geo_version, period, subscription_type, total) FROM stdin;
state	1	2016	Q1	Voice Subscriptions	2957551
state	1	2016	Q2	Voice Subscriptions	3223433
state	1	2016	Q3	Voice Subscriptions	3285469
state	1	2016	Q4	Voice Subscriptions	2266320
state	2	2016	Q1	Voice Subscriptions	2720893
state	2	2016	Q2	Voice Subscriptions	2998939
state	2	2016	Q3	Voice Subscriptions	2880932
state	2	2016	Q4	Voice Subscriptions	1890285
state	3	2016	Q1	Voice Subscriptions	2869279
state	3	2016	Q2	Voice Subscriptions	3103795
state	3	2016	Q3	Voice Subscriptions	3101129
state	3	2016	Q4	Voice Subscriptions	2075045
state	4	2016	Q1	Voice Subscriptions	4228685
state	4	2016	Q2	Voice Subscriptions	4526285
state	4	2016	Q3	Voice Subscriptions	4447956
state	4	2016	Q4	Voice Subscriptions	3055645
state	5	2016	Q1	Voice Subscriptions	2838911
state	5	2016	Q2	Voice Subscriptions	3149318
state	5	2016	Q3	Voice Subscriptions	2998098
state	5	2016	Q4	Voice Subscriptions	1989597
state	6	2016	Q1	Voice Subscriptions	992391
state	6	2016	Q2	Voice Subscriptions	1102635
state	6	2016	Q3	Voice Subscriptions	1114504
state	6	2016	Q4	Voice Subscriptions	823987
state	7	2016	Q1	Voice Subscriptions	3684223
state	7	2016	Q2	Voice Subscriptions	3872250
state	7	2016	Q3	Voice Subscriptions	3836046
state	7	2016	Q4	Voice Subscriptions	2622122
state	8	2016	Q1	Voice Subscriptions	2811201
state	8	2016	Q2	Voice Subscriptions	2982755
state	8	2016	Q3	Voice Subscriptions	2901254
state	8	2016	Q4	Voice Subscriptions	1983035
state	9	2016	Q1	Voice Subscriptions	2104273
state	9	2016	Q2	Voice Subscriptions	2274633
state	9	2016	Q3	Voice Subscriptions	2238580
state	9	2016	Q4	Voice Subscriptions	1576988
state	10	2016	Q1	Voice Subscriptions	4689850
state	10	2016	Q2	Voice Subscriptions	5333316
state	10	2016	Q3	Voice Subscriptions	5333575
state	10	2016	Q4	Voice Subscriptions	3842591
state	11	2016	Q1	Voice Subscriptions	1292802
state	11	2016	Q2	Voice Subscriptions	1426145
state	11	2016	Q3	Voice Subscriptions	1386665
state	11	2016	Q4	Voice Subscriptions	905908
state	12	2016	Q1	Voice Subscriptions	4729503
state	12	2016	Q2	Voice Subscriptions	5169076
state	12	2016	Q3	Voice Subscriptions	5156566
state	12	2016	Q4	Voice Subscriptions	3622527
state	13	2016	Q1	Voice Subscriptions	1367721
state	13	2016	Q2	Voice Subscriptions	1549094
state	13	2016	Q3	Voice Subscriptions	1572995
state	13	2016	Q4	Voice Subscriptions	1071497
state	14	2016	Q1	Voice Subscriptions	3045896
state	14	2016	Q2	Voice Subscriptions	3255588
state	14	2016	Q3	Voice Subscriptions	3242851
state	14	2016	Q4	Voice Subscriptions	2238151
state	15	2016	Q1	Voice Subscriptions	6529210
state	15	2016	Q2	Voice Subscriptions	6979372
state	15	2016	Q3	Voice Subscriptions	7481055
state	15	2016	Q4	Voice Subscriptions	5218121
state	16	2016	Q1	Voice Subscriptions	1843579
state	16	2016	Q2	Voice Subscriptions	2011620
state	16	2016	Q3	Voice Subscriptions	1895175
state	16	2016	Q4	Voice Subscriptions	1294297
state	17	2016	Q1	Voice Subscriptions	3029041
state	17	2016	Q2	Voice Subscriptions	3409600
state	17	2016	Q3	Voice Subscriptions	3347070
state	17	2016	Q4	Voice Subscriptions	2254764
state	18	2016	Q1	Voice Subscriptions	1781922
state	18	2016	Q2	Voice Subscriptions	1992056
state	18	2016	Q3	Voice Subscriptions	1858670
state	18	2016	Q4	Voice Subscriptions	1218033
state	19	2016	Q1	Voice Subscriptions	6779311
state	19	2016	Q2	Voice Subscriptions	7418129
state	19	2016	Q3	Voice Subscriptions	7180332
state	19	2016	Q4	Voice Subscriptions	4961210
state	20	2016	Q1	Voice Subscriptions	7539983
state	20	2016	Q2	Voice Subscriptions	8477042
state	20	2016	Q3	Voice Subscriptions	8948935
state	20	2016	Q4	Voice Subscriptions	5842117
state	21	2016	Q1	Voice Subscriptions	3408441
state	21	2016	Q2	Voice Subscriptions	3938303
state	21	2016	Q3	Voice Subscriptions	3883723
state	21	2016	Q4	Voice Subscriptions	2533194
state	22	2016	Q1	Voice Subscriptions	2137951
state	22	2016	Q2	Voice Subscriptions	2333656
state	22	2016	Q3	Voice Subscriptions	2213212
state	22	2016	Q4	Voice Subscriptions	1365187
state	23	2016	Q1	Voice Subscriptions	3050346
state	23	2016	Q2	Voice Subscriptions	3241621
state	23	2016	Q3	Voice Subscriptions	3176001
state	23	2016	Q4	Voice Subscriptions	2247446
state	24	2016	Q1	Voice Subscriptions	3423661
state	24	2016	Q2	Voice Subscriptions	3742133
state	24	2016	Q3	Voice Subscriptions	3618100
state	24	2016	Q4	Voice Subscriptions	2441444
state	25	2016	Q1	Voice Subscriptions	19453437
state	25	2016	Q2	Voice Subscriptions	21281072
state	25	2016	Q3	Voice Subscriptions	21785622
state	25	2016	Q4	Voice Subscriptions	15675147
state	26	2016	Q1	Voice Subscriptions	3464374
state	26	2016	Q2	Voice Subscriptions	3635043
state	26	2016	Q3	Voice Subscriptions	3461600
state	26	2016	Q4	Voice Subscriptions	2323665
state	27	2016	Q1	Voice Subscriptions	5567020
state	27	2016	Q2	Voice Subscriptions	5804883
state	27	2016	Q3	Voice Subscriptions	5397052
state	27	2016	Q4	Voice Subscriptions	3499338
state	28	2016	Q1	Voice Subscriptions	9109445
state	28	2016	Q2	Voice Subscriptions	9857468
state	28	2016	Q3	Voice Subscriptions	9677796
state	28	2016	Q4	Voice Subscriptions	6595830
state	29	2016	Q1	Voice Subscriptions	3450028
state	29	2016	Q2	Voice Subscriptions	3792527
state	29	2016	Q3	Voice Subscriptions	3749538
state	29	2016	Q4	Voice Subscriptions	2630850
state	30	2016	Q1	Voice Subscriptions	3725192
state	30	2016	Q2	Voice Subscriptions	4021713
state	30	2016	Q3	Voice Subscriptions	4004407
state	30	2016	Q4	Voice Subscriptions	2795325
state	31	2016	Q1	Voice Subscriptions	8306790
state	31	2016	Q2	Voice Subscriptions	8267500
state	31	2016	Q3	Voice Subscriptions	8515377
state	31	2016	Q4	Voice Subscriptions	5791896
state	32	2016	Q1	Voice Subscriptions	3096533
state	32	2016	Q2	Voice Subscriptions	3436914
state	32	2016	Q3	Voice Subscriptions	3355366
state	32	2016	Q4	Voice Subscriptions	2279315
state	33	2016	Q1	Voice Subscriptions	5543501
state	33	2016	Q2	Voice Subscriptions	6284439
state	33	2016	Q3	Voice Subscriptions	6436370
state	33	2016	Q4	Voice Subscriptions	4506694
state	34	2016	Q1	Voice Subscriptions	2184997
state	34	2016	Q2	Voice Subscriptions	2513150
state	34	2016	Q3	Voice Subscriptions	2594873
state	34	2016	Q4	Voice Subscriptions	1565236
state	35	2016	Q1	Voice Subscriptions	2113750
state	35	2016	Q2	Voice Subscriptions	2289257
state	35	2016	Q3	Voice Subscriptions	2158222
state	35	2016	Q4	Voice Subscriptions	1466199
state	36	2016	Q1	Voice Subscriptions	1650794
state	36	2016	Q2	Voice Subscriptions	1797338
state	36	2016	Q3	Voice Subscriptions	1790447
state	36	2016	Q4	Voice Subscriptions	1170408
state	37	2016	Q1	Voice Subscriptions	1771380
state	37	2016	Q2	Voice Subscriptions	2030672
state	37	2016	Q3	Voice Subscriptions	2006916
state	37	2016	Q4	Voice Subscriptions	1228000
state	1	2016	Q1	Internet Subscriptions	1954302
state	1	2016	Q2	Internet Subscriptions	2038101
state	1	2016	Q3	Internet Subscriptions	2151838
state	1	2016	Q4	Internet Subscriptions	2266320
state	2	2016	Q1	Internet Subscriptions	1729281
state	2	2016	Q2	Internet Subscriptions	1787031
state	2	2016	Q3	Internet Subscriptions	1751928
state	2	2016	Q4	Internet Subscriptions	1890285
state	3	2016	Q1	Internet Subscriptions	1824440
state	3	2016	Q2	Internet Subscriptions	1901802
state	3	2016	Q3	Internet Subscriptions	2013139
state	3	2016	Q4	Internet Subscriptions	2075045
state	4	2016	Q1	Internet Subscriptions	2830457
state	4	2016	Q2	Internet Subscriptions	2835843
state	4	2016	Q3	Internet Subscriptions	2907966
state	4	2016	Q4	Internet Subscriptions	3055645
state	5	2016	Q1	Internet Subscriptions	1850833
state	5	2016	Q2	Internet Subscriptions	1881544
state	5	2016	Q3	Internet Subscriptions	1803096
state	5	2016	Q4	Internet Subscriptions	1989597
state	6	2016	Q1	Internet Subscriptions	711246
state	6	2016	Q2	Internet Subscriptions	743643
state	6	2016	Q3	Internet Subscriptions	794942
state	6	2016	Q4	Internet Subscriptions	823987
state	7	2016	Q1	Internet Subscriptions	2479650
state	7	2016	Q2	Internet Subscriptions	2490120
state	7	2016	Q3	Internet Subscriptions	2501216
state	7	2016	Q4	Internet Subscriptions	2622122
state	8	2016	Q1	Internet Subscriptions	1744525
state	8	2016	Q2	Internet Subscriptions	1802336
state	8	2016	Q3	Internet Subscriptions	1794337
state	8	2016	Q4	Internet Subscriptions	1983035
state	9	2016	Q1	Internet Subscriptions	1383605
state	9	2016	Q2	Internet Subscriptions	1431578
state	9	2016	Q3	Internet Subscriptions	1480239
state	9	2016	Q4	Internet Subscriptions	1576988
state	10	2016	Q1	Internet Subscriptions	3225639
state	10	2016	Q2	Internet Subscriptions	3470092
state	10	2016	Q3	Internet Subscriptions	3641334
state	10	2016	Q4	Internet Subscriptions	3842591
state	11	2016	Q1	Internet Subscriptions	815883
state	11	2016	Q2	Internet Subscriptions	842099
state	11	2016	Q3	Internet Subscriptions	857729
state	11	2016	Q4	Internet Subscriptions	905908
state	12	2016	Q1	Internet Subscriptions	3260197
state	12	2016	Q2	Internet Subscriptions	3406685
state	12	2016	Q3	Internet Subscriptions	3539607
state	12	2016	Q4	Internet Subscriptions	3622527
state	13	2016	Q1	Internet Subscriptions	944578
state	13	2016	Q2	Internet Subscriptions	988812
state	13	2016	Q3	Internet Subscriptions	1071425
state	13	2016	Q4	Internet Subscriptions	1071497
state	14	2016	Q1	Internet Subscriptions	1986372
state	14	2016	Q2	Internet Subscriptions	2000304
state	14	2016	Q3	Internet Subscriptions	2086278
state	14	2016	Q4	Internet Subscriptions	2238151
state	15	2016	Q1	Internet Subscriptions	4575086
state	15	2016	Q2	Internet Subscriptions	4731758
state	15	2016	Q3	Internet Subscriptions	5158720
state	15	2016	Q4	Internet Subscriptions	5218121
state	16	2016	Q1	Internet Subscriptions	1191963
state	16	2016	Q2	Internet Subscriptions	1191663
state	16	2016	Q3	Internet Subscriptions	1149678
state	16	2016	Q4	Internet Subscriptions	1294297
state	17	2016	Q1	Internet Subscriptions	1962155
state	17	2016	Q2	Internet Subscriptions	2064296
state	17	2016	Q3	Internet Subscriptions	2136739
state	17	2016	Q4	Internet Subscriptions	2254764
state	18	2016	Q1	Internet Subscriptions	1066293
state	18	2016	Q2	Internet Subscriptions	1098549
state	18	2016	Q3	Internet Subscriptions	1036181
state	18	2016	Q4	Internet Subscriptions	1218033
state	19	2016	Q1	Internet Subscriptions	4566034
state	19	2016	Q2	Internet Subscriptions	4724672
state	19	2016	Q3	Internet Subscriptions	4670184
state	19	2016	Q4	Internet Subscriptions	4961210
state	20	2016	Q1	Internet Subscriptions	4717670
state	20	2016	Q2	Internet Subscriptions	4945645
state	20	2016	Q3	Internet Subscriptions	5304468
state	20	2016	Q4	Internet Subscriptions	5842117
state	21	2016	Q1	Internet Subscriptions	2145841
state	21	2016	Q2	Internet Subscriptions	2229895
state	21	2016	Q3	Internet Subscriptions	2250977
state	21	2016	Q4	Internet Subscriptions	2533194
state	22	2016	Q1	Internet Subscriptions	1339319
state	22	2016	Q2	Internet Subscriptions	1340091
state	22	2016	Q3	Internet Subscriptions	1270417
state	22	2016	Q4	Internet Subscriptions	1365187
state	23	2016	Q1	Internet Subscriptions	2110382
state	23	2016	Q2	Internet Subscriptions	2153669
state	23	2016	Q3	Internet Subscriptions	2157208
state	23	2016	Q4	Internet Subscriptions	2247446
state	24	2016	Q1	Internet Subscriptions	2295287
state	24	2016	Q2	Internet Subscriptions	2368171
state	24	2016	Q3	Internet Subscriptions	2326012
state	24	2016	Q4	Internet Subscriptions	2441444
state	25	2016	Q1	Internet Subscriptions	13541510
state	25	2016	Q2	Internet Subscriptions	14322982
state	25	2016	Q3	Internet Subscriptions	15208399
state	25	2016	Q4	Internet Subscriptions	15675147
state	26	2016	Q1	Internet Subscriptions	2292118
state	26	2016	Q2	Internet Subscriptions	2322587
state	26	2016	Q3	Internet Subscriptions	2233820
state	26	2016	Q4	Internet Subscriptions	2323665
state	27	2016	Q1	Internet Subscriptions	3646410
state	27	2016	Q2	Internet Subscriptions	3601300
state	27	2016	Q3	Internet Subscriptions	3275185
state	27	2016	Q4	Internet Subscriptions	3499338
state	28	2016	Q1	Internet Subscriptions	6312124
state	28	2016	Q2	Internet Subscriptions	6563625
state	28	2016	Q3	Internet Subscriptions	6600728
state	28	2016	Q4	Internet Subscriptions	6595830
state	29	2016	Q1	Internet Subscriptions	2397314
state	29	2016	Q2	Internet Subscriptions	2474536
state	29	2016	Q3	Internet Subscriptions	2536125
state	29	2016	Q4	Internet Subscriptions	2630850
state	30	2016	Q1	Internet Subscriptions	2554606
state	30	2016	Q2	Internet Subscriptions	2551509
state	30	2016	Q3	Internet Subscriptions	2662320
state	30	2016	Q4	Internet Subscriptions	2795325
state	31	2016	Q1	Internet Subscriptions	5690359
state	31	2016	Q2	Internet Subscriptions	5451037
state	31	2016	Q3	Internet Subscriptions	5746485
state	31	2016	Q4	Internet Subscriptions	5791896
state	32	2016	Q1	Internet Subscriptions	2088789
state	32	2016	Q2	Internet Subscriptions	2182046
state	32	2016	Q3	Internet Subscriptions	2199463
state	32	2016	Q4	Internet Subscriptions	2279315
state	33	2016	Q1	Internet Subscriptions	3777985
state	33	2016	Q2	Internet Subscriptions	4109457
state	33	2016	Q3	Internet Subscriptions	4397084
state	33	2016	Q4	Internet Subscriptions	4506694
state	34	2016	Q1	Internet Subscriptions	1386825
state	34	2016	Q2	Internet Subscriptions	1450708
state	34	2016	Q3	Internet Subscriptions	1484702
state	34	2016	Q4	Internet Subscriptions	1565236
state	35	2016	Q1	Internet Subscriptions	1243028
state	35	2016	Q2	Internet Subscriptions	1330050
state	35	2016	Q3	Internet Subscriptions	1291986
state	35	2016	Q4	Internet Subscriptions	1466199
state	36	2016	Q1	Internet Subscriptions	985109
state	36	2016	Q2	Internet Subscriptions	995628
state	36	2016	Q3	Internet Subscriptions	1013400
state	36	2016	Q4	Internet Subscriptions	1170408
state	37	2016	Q1	Internet Subscriptions	1046954
state	37	2016	Q2	Internet Subscriptions	1092129
state	37	2016	Q3	Internet Subscriptions	1091180
state	37	2016	Q4	Internet Subscriptions	1228000
country	NG	2016	Q1	Voice Subscriptions	149293865
country	NG	2016	Q2	Voice Subscriptions	162522770
country	NG	2016	Q3	Voice Subscriptions	162032479
country	NG	2016	Q4	Voice Subscriptions	110867414
country	NG	2016	Q1	Internet Subscriptions	99674169
country	NG	2016	Q2	Internet Subscriptions	102915993
country	NG	2016	Q3	Internet Subscriptions	105596535
country	NG	2016	Q4	Internet Subscriptions	110867414
\.


--
-- Name: telecom_subscription telecom_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.telecom_subscription
    ADD CONSTRAINT telecom_subscription_pkey PRIMARY KEY (geo_level, geo_code, geo_version, period, subscription_type);


--
-- PostgreSQL database dump complete
--
