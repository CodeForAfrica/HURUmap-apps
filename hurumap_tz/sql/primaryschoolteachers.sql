--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: primaryschoolteachers; Type: TABLE; Schema: public; Owner: hurumap_tz
--

CREATE TABLE primaryschoolteachers (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "primary school teachers" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE primaryschoolteachers OWNER TO hurumap_tz;

--
-- Data for Name: primaryschoolteachers; Type: TABLE DATA; Schema: public; Owner: hurumap_tz
--

COPY primaryschoolteachers (geo_level, geo_code, geo_version, "primary school teachers", total) FROM stdin;
region	1	2009	Female	6357
region	1	2009	Male	3314
region	10	2009	Female	2953
region	10	2009	Male	4718
region	11	2009	Female	6257
region	11	2009	Male	3003
region	14	2009	Female	1549
region	14	2009	Male	2373
region	15	2009	Female	3276
region	15	2009	Male	3262
region	16	2009	Female	4254
region	16	2009	Male	5867
region	17	2009	Female	5010
region	17	2009	Male	4119
region	18	2009	Female	6041
region	18	2009	Male	4346
region	19	2009	Female	2332
region	19	2009	Male	3429
region	2	2009	Female	12780
region	2	2009	Male	4402
region	20	2009	Female	7008
region	20	2009	Male	7062
region	21	2009	Female	2080
region	21	2009	Male	1982
region	22	2009	Female	4134
region	22	2009	Male	2633
region	23	2009	Female	1648
region	23	2009	Male	2880
region	24	2009	Female	3135
region	24	2009	Male	3386
region	25	2009	Female	3136
region	25	2009	Male	3721
region	26	2009	Female	2844
region	26	2009	Male	4365
region	27	2009	Female	2515
region	27	2009	Male	2922
region	28	2009	Female	5932
region	28	2009	Male	4779
region	29	2009	Female	4358
region	29	2009	Male	5580
region	3	2009	Female	4645
region	3	2009	Male	4185
region	4	2009	Female	3612
region	4	2009	Male	5855
region	5	2009	Female	3048
region	5	2009	Male	2494
region	6	2009	Female	4512
region	6	2009	Male	6586
region	9	2009	Female	846
region	9	2009	Male	1417
country	TZ	2009	Male	98680
country	TZ	2009	Female	104262
district	22	2009	Female	996
district	22	2009	Male	854
district	23	2009	Female	640
district	23	2009	Male	539
district	24	2009	Female	563
district	24	2009	Male	336
district	25	2009	Female	1158
district	25	2009	Male	494
district	26	2009	Female	129
district	26	2009	Male	135
district	27	2009	Female	601
district	27	2009	Male	643
district	28	2009	Female	425
district	28	2009	Male	649
district	29	2009	Female	293
district	29	2009	Male	293
district	30	2009	Female	335
district	30	2009	Male	166
district	31	2009	Female	283
district	31	2009	Male	158
district	89	2009	Female	983
district	89	2009	Male	1194
district	90	2009	Female	626
district	90	2009	Male	908
district	91	2009	Female	562
district	91	2009	Male	816
district	92	2009	Female	384
district	92	2009	Male	433
district	93	2009	Female	333
district	93	2009	Male	497
district	94	2009	Female	777
district	94	2009	Male	424
district	95	2009	Female	693
district	95	2009	Male	1308
district	128	2009	Female	499
district	128	2009	Male	1234
district	129	2009	Female	492
district	129	2009	Male	777
district	130	2009	Female	423
district	130	2009	Male	686
district	131	2009	Female	437
district	131	2009	Male	1232
district	132	2009	Female	521
district	132	2009	Male	903
district	133	2009	Female	474
district	133	2009	Male	600
district	169	2009	Female	491
district	169	2009	Male	435
district	134	2009	Female	753
district	134	2009	Male	704
district	135	2009	Female	614
district	135	2009	Male	663
district	136	2009	Female	394
district	136	2009	Male	902
district	137	2009	Female	347
district	137	2009	Male	391
district	138	2009	Female	355
district	138	2009	Male	425
district	139	2009	Female	436
district	139	2009	Male	177
district	49	2009	Female	303
district	49	2009	Male	545
district	50	2009	Female	304
district	50	2009	Male	535
district	51	2009	Female	382
district	51	2009	Male	501
district	52	2009	Female	135
district	52	2009	Male	309
district	53	2009	Female	241
district	53	2009	Male	363
district	54	2009	Female	184
district	54	2009	Male	120
district	96	2009	Female	296
district	96	2009	Male	693
district	97	2009	Female	394
district	97	2009	Male	888
district	98	2009	Female	309
district	98	2009	Male	776
district	99	2009	Female	649
district	99	2009	Male	523
district	55	2009	Female	263
district	55	2009	Male	307
district	56	2009	Female	135
district	56	2009	Male	557
district	57	2009	Female	393
district	57	2009	Male	659
district	58	2009	Female	379
district	58	2009	Male	800
district	59	2009	Female	368
district	59	2009	Male	168
district	60	2009	Female	198
district	60	2009	Male	489
district	61	2009	Female	248
district	61	2009	Male	143
district	46	2009	Female	4953
district	46	2009	Male	1773
district	47	2009	Female	4202
district	47	2009	Male	1416
district	48	2009	Female	3625
district	48	2009	Male	1213
district	108	2009	Female	551
district	108	2009	Male	219
district	109	2009	Female	409
district	109	2009	Male	664
district	110	2009	Female	622
district	110	2009	Male	836
district	112	2009	Female	827
district	112	2009	Male	620
district	15	2009	Female	957
district	15	2009	Male	570
district	16	2009	Female	512
district	16	2009	Male	317
district	17	2009	Female	878
district	17	2009	Male	662
district	18	2009	Female	1879
district	18	2009	Male	766
district	19	2009	Female	954
district	19	2009	Male	309
district	20	2009	Female	743
district	20	2009	Male	201
district	21	2009	Female	334
district	21	2009	Male	178
district	100	2009	Female	334
district	100	2009	Male	570
district	101	2009	Female	218
district	101	2009	Male	513
district	103	2009	Female	533
district	103	2009	Male	444
district	104	2009	Female	383
district	104	2009	Male	1005
district	106	2009	Female	167
district	106	2009	Male	363
district	107	2009	Female	564
district	107	2009	Male	487
district	1	2009	Female	614
district	1	2009	Male	641
district	2	2009	Female	583
district	2	2009	Male	670
district	3	2009	Female	663
district	3	2009	Male	681
district	4	2009	Female	562
district	4	2009	Male	594
district	5	2009	Female	1593
district	5	2009	Male	669
district	6	2009	Female	300
district	6	2009	Male	366
district	7	2009	Female	330
district	7	2009	Male	564
district	39	2009	Female	551
district	39	2009	Male	221
district	40	2009	Female	371
district	40	2009	Male	142
district	41	2009	Female	481
district	41	2009	Male	413
district	42	2009	Female	814
district	42	2009	Male	471
district	43	2009	Female	547
district	43	2009	Male	562
district	44	2009	Female	146
district	44	2009	Male	206
district	45	2009	Female	617
district	45	2009	Male	184
district	32	2009	Female	961
district	32	2009	Male	746
district	33	2009	Female	722
district	33	2009	Male	624
district	34	2009	Female	530
district	34	2009	Male	593
district	35	2009	Female	351
district	35	2009	Male	403
district	36	2009	Female	1726
district	36	2009	Male	522
district	37	2009	Female	837
district	37	2009	Male	592
district	38	2009	Female	327
district	38	2009	Male	413
district	83	2009	Female	402
district	83	2009	Male	519
district	84	2009	Female	439
district	84	2009	Male	448
district	85	2009	Female	329
district	85	2009	Male	405
district	86	2009	Female	531
district	86	2009	Male	244
district	87	2009	Female	403
district	87	2009	Male	655
district	88	2009	Female	228
district	88	2009	Male	386
district	149	2009	Female	401
district	149	2009	Male	1212
district	150	2009	Female	494
district	150	2009	Male	863
district	151	2009	Female	439
district	151	2009	Male	761
district	152	2009	Female	577
district	152	2009	Male	775
district	153	2009	Female	469
district	153	2009	Male	754
district	140	2009	Female	514
district	140	2009	Male	365
district	142	2009	Female	293
district	142	2009	Male	385
district	143	2009	Male	247
district	144	2009	Female	307
district	144	2009	Male	403
district	145	2009	Female	394
district	145	2009	Male	197
district	121	2009	Female	564
district	121	2009	Male	1045
district	122	2009	Female	728
district	122	2009	Male	724
district	124	2009	Female	689
district	124	2009	Male	1065
district	125	2009	Female	908
district	125	2009	Male	1050
district	127	2009	Female	735
district	127	2009	Male	846
district	113	2009	Female	603
district	113	2009	Male	840
district	114	2009	Female	662
district	114	2009	Male	862
district	115	2009	Female	1039
district	115	2009	Male	1541
district	116	2009	Female	453
district	116	2009	Male	754
district	117	2009	Female	575
district	117	2009	Male	997
district	118	2009	Female	419
district	118	2009	Male	302
district	119	2009	Female	355
district	119	2009	Male	454
district	120	2009	Female	406
district	120	2009	Male	836
district	8	2009	Female	487
district	8	2009	Male	299
district	9	2009	Female	1514
district	9	2009	Male	651
district	10	2009	Female	1824
district	10	2009	Male	772
district	11	2009	Female	654
district	11	2009	Male	512
district	12	2009	Female	287
district	12	2009	Male	300
district	13	2009	Female	1362
district	13	2009	Male	562
district	14	2009	Female	229
district	14	2009	Male	218
district	68	2009	Male	656
district	69	2009	Female	602
district	69	2009	Male	769
district	70	2009	Female	704
district	70	2009	Male	218
district	71	2009	Female	695
district	71	2009	Male	697
district	72	2009	Female	337
district	72	2009	Male	154
district	146	2009	Female	340
district	146	2009	Male	269
district	147	2009	Female	173
district	147	2009	Male	460
district	148	2009	Female	37
district	148	2009	Male	142
district	73	2009	Female	443
district	73	2009	Male	568
district	74	2009	Female	865
district	74	2009	Male	697
district	75	2009	Female	560
district	75	2009	Male	560
district	76	2009	Female	891
district	76	2009	Male	749
district	77	2009	Female	230
district	77	2009	Male	345
district	78	2009	Female	1137
district	78	2009	Male	1045
district	79	2009	Female	621
district	79	2009	Male	627
district	80	2009	Female	1415
district	80	2009	Male	592
district	81	2009	Female	171
district	81	2009	Male	462
district	82	2009	Female	285
district	82	2009	Male	212
district	62	2009	Female	426
district	62	2009	Male	719
district	63	2009	Female	256
district	63	2009	Male	306
district	64	2009	Female	444
district	64	2009	Male	825
district	65	2009	Female	868
district	65	2009	Male	361
district	66	2009	Female	398
district	66	2009	Male	551
district	67	2009	Female	240
district	67	2009	Male	497
district	154	2009	Female	1947
district	154	2009	Male	2844
district	156	2009	Female	294
district	156	2009	Male	573
district	157	2009	Female	433
district	157	2009	Male	535
district	158	2009	Female	701
district	158	2009	Male	1255
\.


--
-- Name: pk_primaryschoolteachers; Type: CONSTRAINT; Schema: public; Owner: hurumap_tz
--

ALTER TABLE ONLY primaryschoolteachers
    ADD CONSTRAINT pk_primaryschoolteachers PRIMARY KEY (geo_level, geo_code, geo_version, "primary school teachers");


--
-- PostgreSQL database dump complete
--

