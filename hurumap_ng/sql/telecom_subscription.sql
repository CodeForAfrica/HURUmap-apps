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
state	1	2016	Q1	Voice	2957551
state	1	2016	Q2	Voice	3223433
state	1	2016	Q3	Voice	3285469
state	1	2016	Q4	Voice	2266320
state	2	2016	Q1	Voice	2720893
state	2	2016	Q2	Voice	2998939
state	2	2016	Q3	Voice	2880932
state	2	2016	Q4	Voice	1890285
state	3	2016	Q1	Voice	2869279
state	3	2016	Q2	Voice	3103795
state	3	2016	Q3	Voice	3101129
state	3	2016	Q4	Voice	2075045
state	4	2016	Q1	Voice	4228685
state	4	2016	Q2	Voice	4526285
state	4	2016	Q3	Voice	4447956
state	4	2016	Q4	Voice	3055645
state	5	2016	Q1	Voice	2838911
state	5	2016	Q2	Voice	3149318
state	5	2016	Q3	Voice	2998098
state	5	2016	Q4	Voice	1989597
state	6	2016	Q1	Voice	992391
state	6	2016	Q2	Voice	1102635
state	6	2016	Q3	Voice	1114504
state	6	2016	Q4	Voice	823987
state	7	2016	Q1	Voice	3684223
state	7	2016	Q2	Voice	3872250
state	7	2016	Q3	Voice	3836046
state	7	2016	Q4	Voice	2622122
state	8	2016	Q1	Voice	2811201
state	8	2016	Q2	Voice	2982755
state	8	2016	Q3	Voice	2901254
state	8	2016	Q4	Voice	1983035
state	9	2016	Q1	Voice	2104273
state	9	2016	Q2	Voice	2274633
state	9	2016	Q3	Voice	2238580
state	9	2016	Q4	Voice	1576988
state	10	2016	Q1	Voice	4689850
state	10	2016	Q2	Voice	5333316
state	10	2016	Q3	Voice	5333575
state	10	2016	Q4	Voice	3842591
state	11	2016	Q1	Voice	1292802
state	11	2016	Q2	Voice	1426145
state	11	2016	Q3	Voice	1386665
state	11	2016	Q4	Voice	905908
state	12	2016	Q1	Voice	4729503
state	12	2016	Q2	Voice	5169076
state	12	2016	Q3	Voice	5156566
state	12	2016	Q4	Voice	3622527
state	13	2016	Q1	Voice	1367721
state	13	2016	Q2	Voice	1549094
state	13	2016	Q3	Voice	1572995
state	13	2016	Q4	Voice	1071497
state	14	2016	Q1	Voice	3045896
state	14	2016	Q2	Voice	3255588
state	14	2016	Q3	Voice	3242851
state	14	2016	Q4	Voice	2238151
state	15	2016	Q1	Voice	6529210
state	15	2016	Q2	Voice	6979372
state	15	2016	Q3	Voice	7481055
state	15	2016	Q4	Voice	5218121
state	16	2016	Q1	Voice	1843579
state	16	2016	Q2	Voice	2011620
state	16	2016	Q3	Voice	1895175
state	16	2016	Q4	Voice	1294297
state	17	2016	Q1	Voice	3029041
state	17	2016	Q2	Voice	3409600
state	17	2016	Q3	Voice	3347070
state	17	2016	Q4	Voice	2254764
state	18	2016	Q1	Voice	1781922
state	18	2016	Q2	Voice	1992056
state	18	2016	Q3	Voice	1858670
state	18	2016	Q4	Voice	1218033
state	19	2016	Q1	Voice	6779311
state	19	2016	Q2	Voice	7418129
state	19	2016	Q3	Voice	7180332
state	19	2016	Q4	Voice	4961210
state	20	2016	Q1	Voice	7539983
state	20	2016	Q2	Voice	8477042
state	20	2016	Q3	Voice	8948935
state	20	2016	Q4	Voice	5842117
state	21	2016	Q1	Voice	3408441
state	21	2016	Q2	Voice	3938303
state	21	2016	Q3	Voice	3883723
state	21	2016	Q4	Voice	2533194
state	22	2016	Q1	Voice	2137951
state	22	2016	Q2	Voice	2333656
state	22	2016	Q3	Voice	2213212
state	22	2016	Q4	Voice	1365187
state	23	2016	Q1	Voice	3050346
state	23	2016	Q2	Voice	3241621
state	23	2016	Q3	Voice	3176001
state	23	2016	Q4	Voice	2247446
state	24	2016	Q1	Voice	3423661
state	24	2016	Q2	Voice	3742133
state	24	2016	Q3	Voice	3618100
state	24	2016	Q4	Voice	2441444
state	25	2016	Q1	Voice	19453437
state	25	2016	Q2	Voice	21281072
state	25	2016	Q3	Voice	21785622
state	25	2016	Q4	Voice	15675147
state	26	2016	Q1	Voice	3464374
state	26	2016	Q2	Voice	3635043
state	26	2016	Q3	Voice	3461600
state	26	2016	Q4	Voice	2323665
state	27	2016	Q1	Voice	5567020
state	27	2016	Q2	Voice	5804883
state	27	2016	Q3	Voice	5397052
state	27	2016	Q4	Voice	3499338
state	28	2016	Q1	Voice	9109445
state	28	2016	Q2	Voice	9857468
state	28	2016	Q3	Voice	9677796
state	28	2016	Q4	Voice	6595830
state	29	2016	Q1	Voice	3450028
state	29	2016	Q2	Voice	3792527
state	29	2016	Q3	Voice	3749538
state	29	2016	Q4	Voice	2630850
state	30	2016	Q1	Voice	3725192
state	30	2016	Q2	Voice	4021713
state	30	2016	Q3	Voice	4004407
state	30	2016	Q4	Voice	2795325
state	31	2016	Q1	Voice	8306790
state	31	2016	Q2	Voice	8267500
state	31	2016	Q3	Voice	8515377
state	31	2016	Q4	Voice	5791896
state	32	2016	Q1	Voice	3096533
state	32	2016	Q2	Voice	3436914
state	32	2016	Q3	Voice	3355366
state	32	2016	Q4	Voice	2279315
state	33	2016	Q1	Voice	5543501
state	33	2016	Q2	Voice	6284439
state	33	2016	Q3	Voice	6436370
state	33	2016	Q4	Voice	4506694
state	34	2016	Q1	Voice	2184997
state	34	2016	Q2	Voice	2513150
state	34	2016	Q3	Voice	2594873
state	34	2016	Q4	Voice	1565236
state	35	2016	Q1	Voice	2113750
state	35	2016	Q2	Voice	2289257
state	35	2016	Q3	Voice	2158222
state	35	2016	Q4	Voice	1466199
state	36	2016	Q1	Voice	1650794
state	36	2016	Q2	Voice	1797338
state	36	2016	Q3	Voice	1790447
state	36	2016	Q4	Voice	1170408
state	37	2016	Q1	Voice	1771380
state	37	2016	Q2	Voice	2030672
state	37	2016	Q3	Voice	2006916
state	37	2016	Q4	Voice	1228000
state	1	2016	Q1	Internet	1954302
state	1	2016	Q2	Internet	2038101
state	1	2016	Q3	Internet	2151838
state	1	2016	Q4	Internet	2266320
state	2	2016	Q1	Internet	1729281
state	2	2016	Q2	Internet	1787031
state	2	2016	Q3	Internet	1751928
state	2	2016	Q4	Internet	1890285
state	3	2016	Q1	Internet	1824440
state	3	2016	Q2	Internet	1901802
state	3	2016	Q3	Internet	2013139
state	3	2016	Q4	Internet	2075045
state	4	2016	Q1	Internet	2830457
state	4	2016	Q2	Internet	2835843
state	4	2016	Q3	Internet	2907966
state	4	2016	Q4	Internet	3055645
state	5	2016	Q1	Internet	1850833
state	5	2016	Q2	Internet	1881544
state	5	2016	Q3	Internet	1803096
state	5	2016	Q4	Internet	1989597
state	6	2016	Q1	Internet	711246
state	6	2016	Q2	Internet	743643
state	6	2016	Q3	Internet	794942
state	6	2016	Q4	Internet	823987
state	7	2016	Q1	Internet	2479650
state	7	2016	Q2	Internet	2490120
state	7	2016	Q3	Internet	2501216
state	7	2016	Q4	Internet	2622122
state	8	2016	Q1	Internet	1744525
state	8	2016	Q2	Internet	1802336
state	8	2016	Q3	Internet	1794337
state	8	2016	Q4	Internet	1983035
state	9	2016	Q1	Internet	1383605
state	9	2016	Q2	Internet	1431578
state	9	2016	Q3	Internet	1480239
state	9	2016	Q4	Internet	1576988
state	10	2016	Q1	Internet	3225639
state	10	2016	Q2	Internet	3470092
state	10	2016	Q3	Internet	3641334
state	10	2016	Q4	Internet	3842591
state	11	2016	Q1	Internet	815883
state	11	2016	Q2	Internet	842099
state	11	2016	Q3	Internet	857729
state	11	2016	Q4	Internet	905908
state	12	2016	Q1	Internet	3260197
state	12	2016	Q2	Internet	3406685
state	12	2016	Q3	Internet	3539607
state	12	2016	Q4	Internet	3622527
state	13	2016	Q1	Internet	944578
state	13	2016	Q2	Internet	988812
state	13	2016	Q3	Internet	1071425
state	13	2016	Q4	Internet	1071497
state	14	2016	Q1	Internet	1986372
state	14	2016	Q2	Internet	2000304
state	14	2016	Q3	Internet	2086278
state	14	2016	Q4	Internet	2238151
state	15	2016	Q1	Internet	4575086
state	15	2016	Q2	Internet	4731758
state	15	2016	Q3	Internet	5158720
state	15	2016	Q4	Internet	5218121
state	16	2016	Q1	Internet	1191963
state	16	2016	Q2	Internet	1191663
state	16	2016	Q3	Internet	1149678
state	16	2016	Q4	Internet	1294297
state	17	2016	Q1	Internet	1962155
state	17	2016	Q2	Internet	2064296
state	17	2016	Q3	Internet	2136739
state	17	2016	Q4	Internet	2254764
state	18	2016	Q1	Internet	1066293
state	18	2016	Q2	Internet	1098549
state	18	2016	Q3	Internet	1036181
state	18	2016	Q4	Internet	1218033
state	19	2016	Q1	Internet	4566034
state	19	2016	Q2	Internet	4724672
state	19	2016	Q3	Internet	4670184
state	19	2016	Q4	Internet	4961210
state	20	2016	Q1	Internet	4717670
state	20	2016	Q2	Internet	4945645
state	20	2016	Q3	Internet	5304468
state	20	2016	Q4	Internet	5842117
state	21	2016	Q1	Internet	2145841
state	21	2016	Q2	Internet	2229895
state	21	2016	Q3	Internet	2250977
state	21	2016	Q4	Internet	2533194
state	22	2016	Q1	Internet	1339319
state	22	2016	Q2	Internet	1340091
state	22	2016	Q3	Internet	1270417
state	22	2016	Q4	Internet	1365187
state	23	2016	Q1	Internet	2110382
state	23	2016	Q2	Internet	2153669
state	23	2016	Q3	Internet	2157208
state	23	2016	Q4	Internet	2247446
state	24	2016	Q1	Internet	2295287
state	24	2016	Q2	Internet	2368171
state	24	2016	Q3	Internet	2326012
state	24	2016	Q4	Internet	2441444
state	25	2016	Q1	Internet	13541510
state	25	2016	Q2	Internet	14322982
state	25	2016	Q3	Internet	15208399
state	25	2016	Q4	Internet	15675147
state	26	2016	Q1	Internet	2292118
state	26	2016	Q2	Internet	2322587
state	26	2016	Q3	Internet	2233820
state	26	2016	Q4	Internet	2323665
state	27	2016	Q1	Internet	3646410
state	27	2016	Q2	Internet	3601300
state	27	2016	Q3	Internet	3275185
state	27	2016	Q4	Internet	3499338
state	28	2016	Q1	Internet	6312124
state	28	2016	Q2	Internet	6563625
state	28	2016	Q3	Internet	6600728
state	28	2016	Q4	Internet	6595830
state	29	2016	Q1	Internet	2397314
state	29	2016	Q2	Internet	2474536
state	29	2016	Q3	Internet	2536125
state	29	2016	Q4	Internet	2630850
state	30	2016	Q1	Internet	2554606
state	30	2016	Q2	Internet	2551509
state	30	2016	Q3	Internet	2662320
state	30	2016	Q4	Internet	2795325
state	31	2016	Q1	Internet	5690359
state	31	2016	Q2	Internet	5451037
state	31	2016	Q3	Internet	5746485
state	31	2016	Q4	Internet	5791896
state	32	2016	Q1	Internet	2088789
state	32	2016	Q2	Internet	2182046
state	32	2016	Q3	Internet	2199463
state	32	2016	Q4	Internet	2279315
state	33	2016	Q1	Internet	3777985
state	33	2016	Q2	Internet	4109457
state	33	2016	Q3	Internet	4397084
state	33	2016	Q4	Internet	4506694
state	34	2016	Q1	Internet	1386825
state	34	2016	Q2	Internet	1450708
state	34	2016	Q3	Internet	1484702
state	34	2016	Q4	Internet	1565236
state	35	2016	Q1	Internet	1243028
state	35	2016	Q2	Internet	1330050
state	35	2016	Q3	Internet	1291986
state	35	2016	Q4	Internet	1466199
state	36	2016	Q1	Internet	985109
state	36	2016	Q2	Internet	995628
state	36	2016	Q3	Internet	1013400
state	36	2016	Q4	Internet	1170408
state	37	2016	Q1	Internet	1046954
state	37	2016	Q2	Internet	1092129
state	37	2016	Q3	Internet	1091180
state	37	2016	Q4	Internet	1228000
country	NG	2016	Q1	Voice	149293865
country	NG	2016	Q2	Voice	162522770
country	NG	2016	Q3	Voice	162032479
country	NG	2016	Q4	Voice	110867414
country	NG	2016	Q1	Internet	99674169
country	NG	2016	Q2	Internet	102915993
country	NG	2016	Q3	Internet	105596535
country	NG	2016	Q4	Internet	110867414
\.


--
-- Name: telecom_subscription telecom_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.telecom_subscription
    ADD CONSTRAINT telecom_subscription_pkey PRIMARY KEY (geo_level, geo_code, geo_version, period, subscription_type);


--
-- PostgreSQL database dump complete
--
