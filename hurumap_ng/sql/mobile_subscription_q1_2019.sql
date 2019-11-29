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

ALTER TABLE IF EXISTS ONLY public.mobile_subscription_q1_2019 DROP CONSTRAINT IF EXISTS mobile_subscription_q1_2019_pkey;
DROP TABLE IF EXISTS public.mobile_subscription_q1_2019;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mobile_subscription_q1_2019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mobile_subscription_q1_2019 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    network character varying(128) NOT NULL,
    subscription_type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: mobile_subscription_q1_2019; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mobile_subscription_q1_2019 (geo_level, geo_code, geo_version, network, subscription_type, total) FROM stdin;
country	NG	2016	9MOBILE	Active Voice	16838403
country	NG	2016	AIRTEL	Active Voice	45238335
country	NG	2016	GLO	Active Voice	46203703
country	NG	2016	MTN	Active Voice	65034615
country	NG	2016	OTHERS	Active Voice	398786
state	1	2016	9MOBILE	Active Voice	409510
state	1	2016	AIRTEL	Active Voice	912761
state	1	2016	GLO	Active Voice	635271
state	1	2016	MTN	Active Voice	1503688
state	1	2016	OTHERS	Active Voice	546
state	2	2016	9MOBILE	Active Voice	194640
state	2	2016	AIRTEL	Active Voice	986798
state	2	2016	GLO	Active Voice	633680
state	2	2016	MTN	Active Voice	1342479
state	2	2016	OTHERS	Active Voice	483
state	3	2016	9MOBILE	Active Voice	252904
state	3	2016	AIRTEL	Active Voice	1313588
state	3	2016	GLO	Active Voice	657273
state	3	2016	MTN	Active Voice	1203510
state	3	2016	OTHERS	Active Voice	667
state	4	2016	9MOBILE	Active Voice	453027
state	4	2016	AIRTEL	Active Voice	1182110
state	4	2016	GLO	Active Voice	826356
state	4	2016	MTN	Active Voice	2199281
state	4	2016	OTHERS	Active Voice	7056
state	5	2016	9MOBILE	Active Voice	249840
state	5	2016	AIRTEL	Active Voice	882608
state	5	2016	GLO	Active Voice	572765
state	5	2016	MTN	Active Voice	1589191
state	5	2016	OTHERS	Active Voice	487
state	6	2016	9MOBILE	Active Voice	56463
state	6	2016	AIRTEL	Active Voice	300997
state	6	2016	GLO	Active Voice	353689
state	6	2016	MTN	Active Voice	487749
state	6	2016	OTHERS	Active Voice	105
state	7	2016	9MOBILE	Active Voice	531355
state	7	2016	AIRTEL	Active Voice	1012505
state	7	2016	GLO	Active Voice	1377767
state	7	2016	MTN	Active Voice	1294413
state	7	2016	OTHERS	Active Voice	265
state	8	2016	9MOBILE	Active Voice	186630
state	8	2016	AIRTEL	Active Voice	1582012
state	8	2016	GLO	Active Voice	514878
state	8	2016	MTN	Active Voice	1032824
state	8	2016	OTHERS	Active Voice	886
state	9	2016	9MOBILE	Active Voice	260353
state	9	2016	AIRTEL	Active Voice	743313
state	9	2016	GLO	Active Voice	543920
state	9	2016	MTN	Active Voice	903730
state	9	2016	OTHERS	Active Voice	232
state	10	2016	9MOBILE	Active Voice	273033
state	10	2016	AIRTEL	Active Voice	1547073
state	10	2016	GLO	Active Voice	1616075
state	10	2016	MTN	Active Voice	2159979
state	10	2016	OTHERS	Active Voice	4857
state	11	2016	9MOBILE	Active Voice	121524
state	11	2016	AIRTEL	Active Voice	498301
state	11	2016	GLO	Active Voice	267147
state	11	2016	MTN	Active Voice	690424
state	11	2016	OTHERS	Active Voice	79
state	12	2016	9MOBILE	Active Voice	346264
state	12	2016	AIRTEL	Active Voice	1241214
state	12	2016	GLO	Active Voice	2040938
state	12	2016	MTN	Active Voice	1771123
state	12	2016	OTHERS	Active Voice	8346
state	13	2016	9MOBILE	Active Voice	34494
state	13	2016	AIRTEL	Active Voice	318166
state	13	2016	GLO	Active Voice	383262
state	13	2016	MTN	Active Voice	885587
state	13	2016	OTHERS	Active Voice	203
state	14	2016	9MOBILE	Active Voice	283248
state	14	2016	AIRTEL	Active Voice	840975
state	14	2016	GLO	Active Voice	849265
state	14	2016	MTN	Active Voice	1558991
state	14	2016	OTHERS	Active Voice	505
state	15	2016	9MOBILE	Active Voice	968407
state	15	2016	AIRTEL	Active Voice	1670319
state	15	2016	GLO	Active Voice	3024889
state	15	2016	MTN	Active Voice	2208905
state	15	2016	OTHERS	Active Voice	35995
state	16	2016	9MOBILE	Active Voice	112352
state	16	2016	AIRTEL	Active Voice	648675
state	16	2016	GLO	Active Voice	444288
state	16	2016	MTN	Active Voice	966103
state	16	2016	OTHERS	Active Voice	209
state	17	2016	9MOBILE	Active Voice	320197
state	17	2016	AIRTEL	Active Voice	764234
state	17	2016	GLO	Active Voice	673931
state	17	2016	MTN	Active Voice	1830984
state	17	2016	OTHERS	Active Voice	443
state	18	2016	9MOBILE	Active Voice	186408
state	18	2016	AIRTEL	Active Voice	632845
state	18	2016	GLO	Active Voice	213098
state	18	2016	MTN	Active Voice	1112623
state	18	2016	OTHERS	Active Voice	1985
state	19	2016	9MOBILE	Active Voice	882013
state	19	2016	AIRTEL	Active Voice	2306944
state	19	2016	GLO	Active Voice	1725625
state	19	2016	MTN	Active Voice	2730946
state	19	2016	OTHERS	Active Voice	30963
state	20	2016	9MOBILE	Active Voice	1149845
state	20	2016	AIRTEL	Active Voice	2702328
state	20	2016	GLO	Active Voice	1668567
state	20	2016	MTN	Active Voice	4198730
state	20	2016	OTHERS	Active Voice	19498
state	21	2016	9MOBILE	Active Voice	283225
state	21	2016	AIRTEL	Active Voice	741461
state	21	2016	GLO	Active Voice	948680
state	21	2016	MTN	Active Voice	2140637
state	21	2016	OTHERS	Active Voice	2513
state	22	2016	9MOBILE	Active Voice	239042
state	22	2016	AIRTEL	Active Voice	520967
state	22	2016	GLO	Active Voice	619740
state	22	2016	MTN	Active Voice	1173412
state	22	2016	OTHERS	Active Voice	313
state	23	2016	9MOBILE	Active Voice	248772
state	23	2016	AIRTEL	Active Voice	522820
state	23	2016	GLO	Active Voice	1616547
state	23	2016	MTN	Active Voice	997651
state	23	2016	OTHERS	Active Voice	253
state	24	2016	9MOBILE	Active Voice	267370
state	24	2016	AIRTEL	Active Voice	1001382
state	24	2016	GLO	Active Voice	1072930
state	24	2016	MTN	Active Voice	1567945
state	24	2016	OTHERS	Active Voice	498
state	25	2016	9MOBILE	Active Voice	3648581
state	25	2016	AIRTEL	Active Voice	6567622
state	25	2016	GLO	Active Voice	6263951
state	25	2016	MTN	Active Voice	6407141
state	25	2016	OTHERS	Active Voice	196808
state	26	2016	9MOBILE	Active Voice	472684
state	26	2016	AIRTEL	Active Voice	911405
state	26	2016	GLO	Active Voice	1194373
state	26	2016	MTN	Active Voice	1112069
state	26	2016	OTHERS	Active Voice	842
state	27	2016	9MOBILE	Active Voice	687728
state	27	2016	AIRTEL	Active Voice	1251865
state	27	2016	GLO	Active Voice	2169040
state	27	2016	MTN	Active Voice	1857609
state	27	2016	OTHERS	Active Voice	942
state	28	2016	9MOBILE	Active Voice	1108869
state	28	2016	AIRTEL	Active Voice	2755825
state	28	2016	GLO	Active Voice	2818059
state	28	2016	MTN	Active Voice	3543467
state	28	2016	OTHERS	Active Voice	15791
state	29	2016	9MOBILE	Active Voice	101463
state	29	2016	AIRTEL	Active Voice	728093
state	29	2016	GLO	Active Voice	1488276
state	29	2016	MTN	Active Voice	1606298
state	29	2016	OTHERS	Active Voice	478
state	30	2016	9MOBILE	Active Voice	137663
state	30	2016	AIRTEL	Active Voice	768180
state	30	2016	GLO	Active Voice	1413645
state	30	2016	MTN	Active Voice	1829180
state	30	2016	OTHERS	Active Voice	406
state	31	2016	9MOBILE	Active Voice	537671
state	31	2016	AIRTEL	Active Voice	2317954
state	31	2016	GLO	Active Voice	3306983
state	31	2016	MTN	Active Voice	2660071
state	31	2016	OTHERS	Active Voice	22264
state	32	2016	9MOBILE	Active Voice	321968
state	32	2016	AIRTEL	Active Voice	783349
state	32	2016	GLO	Active Voice	1016823
state	32	2016	MTN	Active Voice	1434136
state	32	2016	OTHERS	Active Voice	1098
state	33	2016	9MOBILE	Active Voice	680919
state	33	2016	AIRTEL	Active Voice	1663669
state	33	2016	GLO	Active Voice	1742725
state	33	2016	MTN	Active Voice	2584941
state	33	2016	OTHERS	Active Voice	14994
state	34	2016	9MOBILE	Active Voice	453218
state	34	2016	AIRTEL	Active Voice	456116
state	34	2016	GLO	Active Voice	564989
state	34	2016	MTN	Active Voice	1427324
state	34	2016	OTHERS	Active Voice	539
state	35	2016	9MOBILE	Active Voice	158126
state	35	2016	AIRTEL	Active Voice	818220
state	35	2016	GLO	Active Voice	366796
state	35	2016	MTN	Active Voice	1027626
state	35	2016	OTHERS	Active Voice	154
state	36	2016	9MOBILE	Active Voice	52989
state	36	2016	AIRTEL	Active Voice	839514
state	36	2016	GLO	Active Voice	127161
state	36	2016	MTN	Active Voice	923464
state	36	2016	OTHERS	Active Voice	261
state	37	2016	9MOBILE	Active Voice	165608
state	37	2016	AIRTEL	Active Voice	502127
state	37	2016	GLO	Active Voice	450301
state	37	2016	MTN	Active Voice	1070384
state	37	2016	OTHERS	Active Voice	383
country	NG	2016	9MOBILE	Active Internet	9642393
country	NG	2016	AIRTEL	Active Internet	31243185
country	NG	2016	GLO	Active Internet	28436386
country	NG	2016	MTN	Active Internet	46552185
country	NG	2016	OTHERS	Active Internet	436005
state	1	2016	9MOBILE	Active Internet	239875
state	1	2016	AIRTEL	Active Internet	637946
state	1	2016	GLO	Active Internet	433729
state	1	2016	MTN	Active Internet	1054584
state	1	2016	OTHERS	Active Internet	272
state	2	2016	9MOBILE	Active Internet	98486
state	2	2016	AIRTEL	Active Internet	639255
state	2	2016	GLO	Active Internet	384809
state	2	2016	MTN	Active Internet	944761
state	2	2016	OTHERS	Active Internet	290
state	3	2016	9MOBILE	Active Internet	140528
state	3	2016	AIRTEL	Active Internet	895876
state	3	2016	GLO	Active Internet	446064
state	3	2016	MTN	Active Internet	832566
state	3	2016	OTHERS	Active Internet	313
state	4	2016	9MOBILE	Active Internet	246929
state	4	2016	AIRTEL	Active Internet	806876
state	4	2016	GLO	Active Internet	607342
state	4	2016	MTN	Active Internet	1553662
state	4	2016	OTHERS	Active Internet	11087
state	5	2016	9MOBILE	Active Internet	132770
state	5	2016	AIRTEL	Active Internet	595544
state	5	2016	GLO	Active Internet	328246
state	5	2016	MTN	Active Internet	1107025
state	5	2016	OTHERS	Active Internet	304
state	6	2016	9MOBILE	Active Internet	30828
state	6	2016	AIRTEL	Active Internet	210910
state	6	2016	GLO	Active Internet	276367
state	6	2016	MTN	Active Internet	371189
state	6	2016	OTHERS	Active Internet	64
state	7	2016	9MOBILE	Active Internet	303377
state	7	2016	AIRTEL	Active Internet	691416
state	7	2016	GLO	Active Internet	884747
state	7	2016	MTN	Active Internet	914815
state	7	2016	OTHERS	Active Internet	170
state	8	2016	9MOBILE	Active Internet	93067
state	8	2016	AIRTEL	Active Internet	1039366
state	8	2016	GLO	Active Internet	337201
state	8	2016	MTN	Active Internet	713100
state	8	2016	OTHERS	Active Internet	567
state	9	2016	9MOBILE	Active Internet	153607
state	9	2016	AIRTEL	Active Internet	508379
state	9	2016	GLO	Active Internet	367723
state	9	2016	MTN	Active Internet	647179
state	9	2016	OTHERS	Active Internet	113
state	10	2016	9MOBILE	Active Internet	155348
state	10	2016	AIRTEL	Active Internet	1130143
state	10	2016	GLO	Active Internet	852438
state	10	2016	MTN	Active Internet	1588426
state	10	2016	OTHERS	Active Internet	10349
state	11	2016	9MOBILE	Active Internet	61637
state	11	2016	AIRTEL	Active Internet	330702
state	11	2016	GLO	Active Internet	195104
state	11	2016	MTN	Active Internet	470215
state	11	2016	OTHERS	Active Internet	45
state	12	2016	9MOBILE	Active Internet	198574
state	12	2016	AIRTEL	Active Internet	884961
state	12	2016	GLO	Active Internet	788701
state	12	2016	MTN	Active Internet	1278420
state	12	2016	OTHERS	Active Internet	20027
state	13	2016	9MOBILE	Active Internet	20526
state	13	2016	AIRTEL	Active Internet	228431
state	13	2016	GLO	Active Internet	276813
state	13	2016	MTN	Active Internet	666095
state	13	2016	OTHERS	Active Internet	109
state	14	2016	9MOBILE	Active Internet	156056
state	14	2016	AIRTEL	Active Internet	560387
state	14	2016	GLO	Active Internet	597748
state	14	2016	MTN	Active Internet	1073792
state	14	2016	OTHERS	Active Internet	236
state	15	2016	9MOBILE	Active Internet	554164
state	15	2016	AIRTEL	Active Internet	1179391
state	15	2016	GLO	Active Internet	1949273
state	15	2016	MTN	Active Internet	1661396
state	15	2016	OTHERS	Active Internet	68647
state	16	2016	9MOBILE	Active Internet	58779
state	16	2016	AIRTEL	Active Internet	435954
state	16	2016	GLO	Active Internet	220803
state	16	2016	MTN	Active Internet	667471
state	16	2016	OTHERS	Active Internet	117
state	17	2016	9MOBILE	Active Internet	180242
state	17	2016	AIRTEL	Active Internet	520728
state	17	2016	GLO	Active Internet	488875
state	17	2016	MTN	Active Internet	1277749
state	17	2016	OTHERS	Active Internet	232
state	18	2016	9MOBILE	Active Internet	98003
state	18	2016	AIRTEL	Active Internet	404894
state	18	2016	GLO	Active Internet	126644
state	18	2016	MTN	Active Internet	734046
state	18	2016	OTHERS	Active Internet	1225
state	19	2016	9MOBILE	Active Internet	502432
state	19	2016	AIRTEL	Active Internet	1631923
state	19	2016	GLO	Active Internet	1099040
state	19	2016	MTN	Active Internet	1995176
state	19	2016	OTHERS	Active Internet	35485
state	20	2016	9MOBILE	Active Internet	664927
state	20	2016	AIRTEL	Active Internet	1791299
state	20	2016	GLO	Active Internet	906361
state	20	2016	MTN	Active Internet	2884112
state	20	2016	OTHERS	Active Internet	12026
state	21	2016	9MOBILE	Active Internet	149504
state	21	2016	AIRTEL	Active Internet	481240
state	21	2016	GLO	Active Internet	552317
state	21	2016	MTN	Active Internet	1416487
state	21	2016	OTHERS	Active Internet	1546
state	22	2016	9MOBILE	Active Internet	119064
state	22	2016	AIRTEL	Active Internet	331378
state	22	2016	GLO	Active Internet	303044
state	22	2016	MTN	Active Internet	803117
state	22	2016	OTHERS	Active Internet	177
state	23	2016	9MOBILE	Active Internet	136871
state	23	2016	AIRTEL	Active Internet	363587
state	23	2016	GLO	Active Internet	1088102
state	23	2016	MTN	Active Internet	720426
state	23	2016	OTHERS	Active Internet	138
state	24	2016	9MOBILE	Active Internet	154904
state	24	2016	AIRTEL	Active Internet	712808
state	24	2016	GLO	Active Internet	682366
state	24	2016	MTN	Active Internet	1122008
state	24	2016	OTHERS	Active Internet	301
state	25	2016	9MOBILE	Active Internet	2177520
state	25	2016	AIRTEL	Active Internet	4733053
state	25	2016	GLO	Active Internet	3942366
state	25	2016	MTN	Active Internet	4854294
state	25	2016	OTHERS	Active Internet	180802
state	26	2016	9MOBILE	Active Internet	267386
state	26	2016	AIRTEL	Active Internet	621783
state	26	2016	GLO	Active Internet	699823
state	26	2016	MTN	Active Internet	827771
state	26	2016	OTHERS	Active Internet	863
state	27	2016	9MOBILE	Active Internet	368879
state	27	2016	AIRTEL	Active Internet	845619
state	27	2016	GLO	Active Internet	1270975
state	27	2016	MTN	Active Internet	1276437
state	27	2016	OTHERS	Active Internet	657
state	28	2016	9MOBILE	Active Internet	685907
state	28	2016	AIRTEL	Active Internet	1940916
state	28	2016	GLO	Active Internet	1766548
state	28	2016	MTN	Active Internet	2706601
state	28	2016	OTHERS	Active Internet	9339
state	29	2016	9MOBILE	Active Internet	55785
state	29	2016	AIRTEL	Active Internet	503081
state	29	2016	GLO	Active Internet	978905
state	29	2016	MTN	Active Internet	1201317
state	29	2016	OTHERS	Active Internet	227
state	30	2016	9MOBILE	Active Internet	81177
state	30	2016	AIRTEL	Active Internet	525234
state	30	2016	GLO	Active Internet	904950
state	30	2016	MTN	Active Internet	1345242
state	30	2016	OTHERS	Active Internet	271
state	31	2016	9MOBILE	Active Internet	300726
state	31	2016	AIRTEL	Active Internet	1656402
state	31	2016	GLO	Active Internet	2152757
state	31	2016	MTN	Active Internet	1939902
state	31	2016	OTHERS	Active Internet	37039
state	32	2016	9MOBILE	Active Internet	177577
state	32	2016	AIRTEL	Active Internet	541194
state	32	2016	GLO	Active Internet	645922
state	32	2016	MTN	Active Internet	1065969
state	32	2016	OTHERS	Active Internet	676
state	33	2016	9MOBILE	Active Internet	400507
state	33	2016	AIRTEL	Active Internet	1193705
state	33	2016	GLO	Active Internet	1108722
state	33	2016	MTN	Active Internet	1927041
state	33	2016	OTHERS	Active Internet	41463
state	34	2016	9MOBILE	Active Internet	282344
state	34	2016	AIRTEL	Active Internet	282522
state	34	2016	GLO	Active Internet	271397
state	34	2016	MTN	Active Internet	931325
state	34	2016	OTHERS	Active Internet	359
state	35	2016	9MOBILE	Active Internet	75570
state	35	2016	AIRTEL	Active Internet	547202
state	35	2016	GLO	Active Internet	189364
state	35	2016	MTN	Active Internet	714590
state	35	2016	OTHERS	Active Internet	93
state	36	2016	9MOBILE	Active Internet	26313
state	36	2016	AIRTEL	Active Internet	526104
state	36	2016	GLO	Active Internet	87314
state	36	2016	MTN	Active Internet	595723
state	36	2016	OTHERS	Active Internet	145
state	37	2016	9MOBILE	Active Internet	92204
state	37	2016	AIRTEL	Active Internet	312975
state	37	2016	GLO	Active Internet	223486
state	37	2016	MTN	Active Internet	668156
state	37	2016	OTHERS	Active Internet	231
\.


--
-- Name: mobile_subscription_q1_2019 mobile_subscription_q1_2019_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobile_subscription_q1_2019
    ADD CONSTRAINT mobile_subscription_q1_2019_pkey PRIActive VoiceY KEY (geo_level, geo_code, geo_version, network, subscription_type);


--
-- PostgreSQL database dump complete
--
