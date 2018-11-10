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

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.householddistributionbyenergysource DROP CONSTRAINT IF EXISTS pk_householddistributionbyenergysource;
DROP TABLE IF EXISTS public.householddistributionbyenergysource;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: householddistributionbyenergysource; Type: TABLE; Schema: public; Owner: hurumap_ug
--

CREATE TABLE householddistributionbyenergysource (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT '2009'::character varying NOT NULL,
    "household distribution by energy source" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE householddistributionbyenergysource OWNER TO hurumap_ug;

--
-- Data for Name: householddistributionbyenergysource; Type: TABLE DATA; Schema: public; Owner: hurumap_ug
--

COPY householddistributionbyenergysource (geo_level, geo_code, geo_version, "household distribution by energy source", total) FROM stdin;
district	1	2014	gas	45
district	73	2014	others	737
district	6	2014	gas	460
district	80	2014	electricity	2481
district	80	2014	gas	444
district	80	2014	paraffin stove	881
district	80	2014	charcoal	36107
district	80	2014	firewood	56409
district	80	2014	others	1046
district	16	2014	electricity	521
district	16	2014	gas	73
district	16	2014	paraffin stove	334
district	16	2014	charcoal	3118
district	16	2014	firewood	29691
district	16	2014	others	376
district	67	2014	electricity	431
district	67	2014	gas	53
district	67	2014	paraffin stove	308
district	67	2014	charcoal	4444
district	67	2014	firewood	16184
district	67	2014	others	160
district	74	2014	electricity	133
district	74	2014	gas	51
district	74	2014	paraffin stove	184
district	74	2014	charcoal	10267
district	74	2014	firewood	13561
district	74	2014	others	739
district	19	2014	electricity	619
district	19	2014	gas	101
district	19	2014	paraffin stove	269
district	19	2014	charcoal	4142
district	19	2014	firewood	29788
district	19	2014	others	296
district	1	2014	electricity	182
district	1	2014	paraffin stove	509
district	1	2014	charcoal	11655
district	1	2014	firewood	7225
district	1	2014	others	484
district	85	2014	electricity	742
district	85	2014	gas	129
district	85	2014	paraffin stove	635
district	85	2014	charcoal	6868
district	85	2014	firewood	32432
district	85	2014	others	444
district	20	2014	electricity	33792
district	20	2014	gas	22802
district	20	2014	paraffin stove	17947
district	20	2014	charcoal	321686
district	20	2014	firewood	10612
district	20	2014	others	7726
district	26	2014	electricity	891
district	26	2014	gas	172
district	26	2014	paraffin stove	509
district	26	2014	charcoal	14594
district	26	2014	firewood	59197
district	26	2014	others	449
district	109	2014	electricity	408
district	109	2014	gas	86
district	109	2014	paraffin stove	303
district	109	2014	charcoal	8086
district	109	2014	firewood	24765
district	109	2014	others	377
district	108	2014	electricity	448
district	108	2014	gas	133
district	108	2014	paraffin stove	263
district	108	2014	charcoal	7075
district	108	2014	firewood	39407
district	108	2014	others	385
district	21	2014	electricity	3105
district	21	2014	gas	455
district	21	2014	paraffin stove	1074
district	21	2014	charcoal	31732
district	21	2014	firewood	67861
district	21	2014	others	784
district	17	2014	electricity	1028
district	17	2014	gas	177
district	17	2014	paraffin stove	592
district	17	2014	charcoal	10322
district	17	2014	firewood	49014
district	17	2014	others	446
district	28	2014	electricity	284
district	28	2014	gas	120
district	28	2014	paraffin stove	337
district	28	2014	charcoal	4941
district	28	2014	firewood	14641
district	28	2014	others	160
district	18	2014	electricity	2927
district	18	2014	gas	536
district	18	2014	paraffin stove	2160
district	18	2014	charcoal	27166
district	18	2014	firewood	41617
district	18	2014	others	945
district	29	2014	electricity	1427
district	29	2014	gas	383
district	29	2014	paraffin stove	757
district	29	2014	charcoal	19125
district	29	2014	firewood	57360
district	29	2014	others	744
district	68	2014	electricity	1008
district	68	2014	gas	269
district	68	2014	paraffin stove	635
district	68	2014	charcoal	14621
district	68	2014	firewood	42417
district	68	2014	others	646
district	22	2014	electricity	2681
district	22	2014	gas	619
district	22	2014	paraffin stove	976
district	22	2014	charcoal	25155
district	22	2014	firewood	120675
district	22	2014	others	841
district	79	2014	electricity	3349
district	79	2014	gas	1464
district	79	2014	paraffin stove	1940
district	79	2014	charcoal	59563
district	79	2014	firewood	76018
district	79	2014	others	1383
district	30	2014	electricity	807
district	30	2014	gas	170
district	30	2014	paraffin stove	401
district	30	2014	charcoal	9428
district	30	2014	firewood	31922
district	30	2014	others	328
district	23	2014	electricity	937
district	23	2014	gas	144
district	23	2014	paraffin stove	318
district	23	2014	charcoal	7695
district	23	2014	firewood	26558
district	23	2014	others	394
district	24	2014	electricity	1713
district	24	2014	gas	431
district	24	2014	paraffin stove	1302
district	24	2014	charcoal	15751
district	24	2014	firewood	95817
district	24	2014	others	916
district	25	2014	electricity	847
district	25	2014	gas	189
district	25	2014	paraffin stove	486
district	25	2014	charcoal	6798
district	25	2014	firewood	45046
district	25	2014	others	319
district	27	2014	electricity	22292
district	27	2014	gas	10706
district	27	2014	paraffin stove	13714
district	27	2014	charcoal	342921
district	27	2014	firewood	99136
district	27	2014	others	4723
district	396	2014	electricity	323
district	396	2014	gas	185
district	396	2014	paraffin stove	124
district	396	2014	charcoal	2584
district	396	2014	firewood	44826
district	396	2014	others	228
district	319	2014	electricity	326
district	319	2014	gas	61
district	319	2014	paraffin stove	117
district	319	2014	charcoal	2205
district	319	2014	firewood	34145
district	319	2014	others	201
district	37	2014	electricity	486
district	37	2014	gas	150
district	37	2014	paraffin stove	234
district	37	2014	charcoal	1387
district	37	2014	firewood	34295
district	37	2014	others	112
district	81	2014	electricity	720
district	81	2014	gas	263
district	81	2014	paraffin stove	293
district	81	2014	charcoal	10383
district	81	2014	firewood	61870
district	81	2014	others	277
district	38	2014	electricity	242
district	38	2014	gas	78
district	38	2014	paraffin stove	149
district	38	2014	charcoal	2150
district	38	2014	firewood	33346
district	38	2014	others	165
district	39	2014	electricity	172
district	39	2014	gas	94
district	39	2014	paraffin stove	116
district	39	2014	charcoal	736
district	39	2014	firewood	15491
district	39	2014	others	29
district	382	2014	electricity	277
district	382	2014	gas	113
district	382	2014	paraffin stove	180
district	382	2014	charcoal	2066
district	382	2014	firewood	31074
district	382	2014	others	201
district	83	2014	electricity	579
district	83	2014	gas	267
district	83	2014	paraffin stove	461
district	83	2014	charcoal	15734
district	83	2014	firewood	47289
district	83	2014	others	354
district	40	2014	electricity	355
district	40	2014	gas	130
district	40	2014	paraffin stove	136
district	40	2014	charcoal	2982
district	40	2014	firewood	40348
district	40	2014	others	379
district	78	2014	electricity	668
district	78	2014	gas	174
district	78	2014	paraffin stove	239
district	78	2014	charcoal	4082
district	78	2014	firewood	55193
district	78	2014	others	269
district	72	2014	electricity	1322
district	72	2014	gas	376
district	72	2014	paraffin stove	587
district	72	2014	charcoal	29707
district	72	2014	firewood	69284
district	72	2014	others	757
district	31	2014	electricity	3965
district	31	2014	gas	1176
district	31	2014	paraffin stove	877
district	31	2014	charcoal	48848
district	31	2014	firewood	49229
district	31	2014	others	816
district	383	2014	electricity	283
district	383	2014	gas	121
district	383	2014	paraffin stove	123
district	383	2014	charcoal	2080
district	383	2014	firewood	35891
district	383	2014	others	147
district	41	2014	electricity	568
district	41	2014	gas	97
district	41	2014	paraffin stove	158
district	41	2014	charcoal	3870
district	41	2014	firewood	37681
district	41	2014	others	160
district	77	2014	electricity	1138
district	77	2014	gas	329
district	77	2014	paraffin stove	376
district	77	2014	charcoal	12914
district	77	2014	firewood	77791
district	77	2014	others	445
district	90	2014	electricity	287
district	90	2014	gas	117
district	90	2014	paraffin stove	180
district	90	2014	charcoal	2456
district	90	2014	firewood	19071
district	90	2014	others	71
district	32	2014	electricity	310
district	32	2014	gas	118
district	32	2014	paraffin stove	118
district	32	2014	charcoal	2019
district	32	2014	firewood	27750
district	32	2014	others	94
district	75	2014	electricity	277
district	75	2014	gas	60
district	75	2014	paraffin stove	120
district	75	2014	charcoal	1788
district	75	2014	firewood	32869
district	75	2014	others	117
district	323	2014	electricity	460
district	323	2014	gas	218
district	323	2014	paraffin stove	213
district	323	2014	charcoal	3668
district	323	2014	firewood	35767
district	323	2014	others	192
district	91	2014	electricity	152
district	91	2014	gas	61
district	91	2014	paraffin stove	90
district	91	2014	charcoal	585
district	91	2014	firewood	16393
district	91	2014	others	47
district	345	2014	electricity	552
district	345	2014	gas	119
district	345	2014	paraffin stove	163
district	345	2014	charcoal	4294
district	345	2014	firewood	38733
district	345	2014	others	197
district	42	2014	electricity	670
district	42	2014	gas	241
district	42	2014	paraffin stove	571
district	42	2014	charcoal	3582
district	42	2014	firewood	66740
district	42	2014	others	588
district	73	2014	electricity	1358
district	73	2014	gas	358
district	73	2014	paraffin stove	471
district	73	2014	charcoal	16609
district	73	2014	firewood	73675
district	33	2014	electricity	2771
district	33	2014	gas	1348
district	33	2014	paraffin stove	1342
district	33	2014	charcoal	35249
district	33	2014	firewood	63931
district	33	2014	others	823
district	82	2014	electricity	229
district	82	2014	gas	154
district	82	2014	paraffin stove	235
district	82	2014	charcoal	6500
district	82	2014	firewood	34837
district	82	2014	others	509
district	43	2014	electricity	447
district	43	2014	gas	95
district	43	2014	paraffin stove	137
district	43	2014	charcoal	3845
district	43	2014	firewood	40327
district	43	2014	others	188
district	84	2014	electricity	226
district	84	2014	gas	118
district	84	2014	paraffin stove	100
district	84	2014	charcoal	1420
district	84	2014	firewood	21246
district	84	2014	others	98
district	76	2014	electricity	617
district	76	2014	gas	205
district	76	2014	paraffin stove	288
district	76	2014	charcoal	3528
district	76	2014	firewood	60270
district	76	2014	others	202
district	87	2014	electricity	492
district	87	2014	gas	170
district	87	2014	paraffin stove	210
district	87	2014	charcoal	2634
district	87	2014	firewood	43079
district	87	2014	others	238
district	89	2014	electricity	698
district	89	2014	gas	512
district	89	2014	paraffin stove	553
district	89	2014	charcoal	3944
district	89	2014	firewood	47516
district	89	2014	others	239
district	88	2014	electricity	883
district	88	2014	gas	293
district	88	2014	paraffin stove	382
district	88	2014	charcoal	13023
district	88	2014	firewood	39591
district	88	2014	others	475
district	34	2014	electricity	1518
district	34	2014	gas	725
district	34	2014	paraffin stove	868
district	34	2014	charcoal	11816
district	34	2014	firewood	83963
district	34	2014	others	426
district	49	2014	electricity	112
district	49	2014	gas	53
district	49	2014	paraffin stove	63
district	49	2014	charcoal	1963
district	49	2014	firewood	15706
district	49	2014	others	118
district	44	2014	electricity	348
district	44	2014	gas	165
district	44	2014	paraffin stove	211
district	44	2014	charcoal	8284
district	44	2014	firewood	31238
district	44	2014	others	465
district	10	2014	electricity	331
district	10	2014	gas	131
district	10	2014	paraffin stove	329
district	10	2014	charcoal	3153
district	10	2014	firewood	38840
district	10	2014	others	160
district	7	2014	electricity	378
district	7	2014	gas	110
district	7	2014	paraffin stove	222
district	7	2014	charcoal	1346
district	7	2014	firewood	43828
district	7	2014	others	121
district	50	2014	electricity	261
district	50	2014	gas	99
district	50	2014	paraffin stove	112
district	50	2014	charcoal	2706
district	50	2014	firewood	24318
district	50	2014	others	223
district	110	2014	electricity	71
district	110	2014	gas	42
district	110	2014	paraffin stove	73
district	110	2014	charcoal	853
district	110	2014	firewood	14252
district	110	2014	others	137
district	9	2014	electricity	475
district	9	2014	gas	188
district	9	2014	paraffin stove	284
district	9	2014	charcoal	3382
district	9	2014	firewood	31585
district	9	2014	others	160
district	12	2014	electricity	588
district	12	2014	gas	241
district	12	2014	paraffin stove	319
district	12	2014	charcoal	4021
district	12	2014	firewood	65437
district	12	2014	others	578
district	104	2014	electricity	1425
district	104	2014	gas	493
district	104	2014	paraffin stove	1152
district	104	2014	charcoal	24567
district	104	2014	firewood	118155
district	104	2014	others	663
district	51	2014	electricity	210
district	51	2014	gas	87
district	51	2014	paraffin stove	178
district	51	2014	charcoal	1474
district	51	2014	firewood	32541
district	51	2014	others	110
district	45	2014	electricity	966
district	45	2014	gas	453
district	45	2014	paraffin stove	685
district	45	2014	charcoal	29118
district	45	2014	firewood	54839
district	45	2014	others	448
district	52	2014	electricity	187
district	52	2014	gas	52
district	52	2014	paraffin stove	50
district	52	2014	charcoal	2017
district	52	2014	firewood	26336
district	52	2014	others	520
district	14	2014	electricity	369
district	14	2014	gas	132
district	14	2014	paraffin stove	233
district	14	2014	charcoal	7282
district	14	2014	firewood	31289
district	14	2014	others	309
district	53	2014	electricity	293
district	53	2014	gas	176
district	53	2014	paraffin stove	264
district	53	2014	charcoal	7656
district	53	2014	firewood	21442
district	53	2014	others	277
district	300	2014	electricity	447
district	300	2014	gas	182
district	300	2014	paraffin stove	292
district	300	2014	charcoal	1169
district	300	2014	firewood	45907
district	300	2014	others	178
district	46	2014	electricity	247
district	46	2014	gas	45
district	46	2014	paraffin stove	54
district	46	2014	charcoal	2640
district	46	2014	firewood	22487
district	46	2014	others	349
district	343	2014	electricity	165
district	343	2014	gas	96
district	343	2014	paraffin stove	191
district	343	2014	charcoal	1053
district	343	2014	firewood	25346
district	343	2014	others	137
district	6	2014	electricity	1208
district	6	2014	paraffin stove	710
district	6	2014	charcoal	28611
district	6	2014	firewood	56352
district	6	2014	others	1091
district	348	2014	electricity	305
district	348	2014	gas	120
district	348	2014	paraffin stove	218
district	348	2014	charcoal	1054
district	348	2014	firewood	34290
district	348	2014	others	97
district	93	2014	electricity	375
district	93	2014	gas	135
district	93	2014	paraffin stove	77
district	93	2014	charcoal	3848
district	93	2014	firewood	17044
district	93	2014	others	286
district	47	2014	electricity	146
district	47	2014	gas	40
district	47	2014	paraffin stove	170
district	47	2014	charcoal	4525
district	47	2014	firewood	20690
district	47	2014	others	170
district	111	2014	electricity	199
district	111	2014	gas	80
district	111	2014	paraffin stove	130
district	111	2014	charcoal	1560
district	111	2014	firewood	23088
district	111	2014	others	260
district	94	2014	electricity	196
district	94	2014	gas	84
district	94	2014	paraffin stove	73
district	94	2014	charcoal	1736
district	94	2014	firewood	23905
district	94	2014	others	403
district	95	2014	electricity	428
district	95	2014	gas	249
district	95	2014	paraffin stove	510
district	95	2014	charcoal	6497
district	95	2014	firewood	66896
district	95	2014	others	251
district	8	2014	electricity	132
district	8	2014	gas	74
district	8	2014	paraffin stove	77
district	8	2014	charcoal	2233
district	8	2014	firewood	23520
district	8	2014	others	63
district	438	2014	electricity	272
district	438	2014	gas	48
district	438	2014	paraffin stove	94
district	438	2014	charcoal	1029
district	438	2014	firewood	20360
district	438	2014	others	98
district	54	2014	electricity	668
district	54	2014	gas	244
district	54	2014	paraffin stove	561
district	54	2014	charcoal	2962
district	54	2014	firewood	70437
district	54	2014	others	378
district	11	2014	electricity	302
district	11	2014	gas	96
district	11	2014	paraffin stove	277
district	11	2014	charcoal	3989
district	11	2014	firewood	28206
district	11	2014	others	156
district	48	2014	electricity	475
district	48	2014	gas	275
district	48	2014	paraffin stove	339
district	48	2014	charcoal	4801
district	48	2014	firewood	55056
district	48	2014	others	255
district	96	2014	electricity	383
district	96	2014	gas	265
district	96	2014	paraffin stove	331
district	96	2014	charcoal	3430
district	96	2014	firewood	44662
district	96	2014	others	165
district	100	2014	electricity	495
district	100	2014	gas	131
district	100	2014	paraffin stove	155
district	100	2014	charcoal	892
district	100	2014	firewood	22416
district	100	2014	others	85
district	66	2014	electricity	146
district	66	2014	gas	74
district	66	2014	paraffin stove	134
district	66	2014	charcoal	4144
district	66	2014	firewood	17018
district	66	2014	others	136
district	107	2014	electricity	593
district	107	2014	gas	254
district	107	2014	paraffin stove	418
district	107	2014	charcoal	6562
district	107	2014	firewood	36665
district	107	2014	others	274
district	103	2014	electricity	1088
district	103	2014	gas	332
district	103	2014	paraffin stove	747
district	103	2014	charcoal	6827
district	103	2014	firewood	41827
district	103	2014	others	293
district	55	2014	electricity	1604
district	55	2014	gas	585
district	55	2014	paraffin stove	812
district	55	2014	charcoal	20954
district	55	2014	firewood	100696
district	55	2014	others	703
district	366	2014	electricity	851
district	366	2014	gas	248
district	366	2014	paraffin stove	464
district	366	2014	charcoal	6483
district	366	2014	firewood	46141
district	366	2014	others	499
district	3	2014	electricity	1431
district	3	2014	gas	284
district	3	2014	paraffin stove	751
district	3	2014	charcoal	10377
district	3	2014	firewood	86303
district	3	2014	others	2033
district	56	2014	electricity	2073
district	56	2014	gas	429
district	56	2014	paraffin stove	519
district	56	2014	charcoal	13609
district	56	2014	firewood	100102
district	56	2014	others	918
district	57	2014	electricity	2272
district	57	2014	gas	722
district	57	2014	paraffin stove	1372
district	57	2014	charcoal	12058
district	57	2014	firewood	88833
district	57	2014	others	1012
district	64	2014	electricity	1247
district	64	2014	gas	383
district	64	2014	paraffin stove	423
district	64	2014	charcoal	6356
district	64	2014	firewood	78958
district	64	2014	others	447
district	65	2014	electricity	880
district	65	2014	gas	201
district	65	2014	paraffin stove	347
district	65	2014	charcoal	4508
district	65	2014	firewood	49306
district	65	2014	others	274
district	58	2014	electricity	2947
district	58	2014	gas	526
district	58	2014	paraffin stove	1498
district	58	2014	charcoal	28120
district	58	2014	firewood	103826
district	58	2014	others	1233
district	59	2014	electricity	2178
district	59	2014	gas	565
district	59	2014	paraffin stove	748
district	59	2014	charcoal	15735
district	59	2014	firewood	147707
district	59	2014	others	758
district	4	2014	electricity	830
district	4	2014	gas	427
district	4	2014	paraffin stove	592
district	4	2014	charcoal	7154
district	4	2014	firewood	57153
district	4	2014	others	583
district	98	2014	electricity	464
district	98	2014	gas	177
district	98	2014	paraffin stove	357
district	98	2014	charcoal	8776
district	98	2014	firewood	41949
district	98	2014	others	273
district	60	2014	electricity	1099
district	60	2014	gas	192
district	60	2014	paraffin stove	248
district	60	2014	charcoal	4342
district	60	2014	firewood	54543
district	60	2014	others	1533
district	70	2014	electricity	754
district	70	2014	gas	308
district	70	2014	paraffin stove	199
district	70	2014	charcoal	5068
district	70	2014	firewood	53331
district	70	2014	others	302
district	69	2014	electricity	1327
district	69	2014	gas	427
district	69	2014	paraffin stove	575
district	69	2014	charcoal	5961
district	69	2014	firewood	82572
district	69	2014	others	574
district	97	2014	electricity	2083
district	97	2014	gas	283
district	97	2014	paraffin stove	652
district	97	2014	charcoal	14199
district	97	2014	firewood	47046
district	97	2014	others	288
district	61	2014	electricity	3786
district	61	2014	gas	1152
district	61	2014	paraffin stove	2250
district	61	2014	charcoal	33677
district	61	2014	firewood	69924
district	61	2014	others	1439
district	102	2014	electricity	747
district	102	2014	gas	144
district	102	2014	paraffin stove	296
district	102	2014	charcoal	1946
district	102	2014	firewood	36237
district	102	2014	others	327
district	436	2014	electricity	134
district	436	2014	gas	63
district	436	2014	paraffin stove	113
district	436	2014	charcoal	3771
district	436	2014	firewood	9445
district	436	2014	others	392
district	62	2014	electricity	1385
district	62	2014	gas	420
district	62	2014	paraffin stove	623
district	62	2014	charcoal	11392
district	62	2014	firewood	85832
district	62	2014	others	1750
district	101	2014	electricity	395
district	101	2014	gas	74
district	101	2014	paraffin stove	265
district	101	2014	charcoal	3090
district	101	2014	firewood	24618
district	101	2014	others	172
district	63	2014	electricity	1135
district	63	2014	gas	302
district	63	2014	paraffin stove	491
district	63	2014	charcoal	6437
district	63	2014	firewood	60244
district	63	2014	others	439
district	456	2014	electricity	732
district	456	2014	gas	201
district	456	2014	paraffin stove	512
district	456	2014	charcoal	4914
district	456	2014	firewood	38583
district	456	2014	others	797
country	UG	2014	charcoal	1678259
country	UG	2014	electricity	151062
country	UG	2014	firewood	5210191
country	UG	2014	gas	62097
country	UG	2014	other	61052
country	UG	2014	paraffin stove	80885
region	116	2014	electricity	11542
region	115	2014	gas	7443
region	114	2014	gas	40278
region	117	2014	gas	7866
region	116	2014	gas	4735
region	116	2014	others	8365
region	117	2014	others	14613
region	114	2014	others	26344
region	115	2014	others	8366
region	117	2014	paraffin stove	12974
region	116	2014	paraffin stove	7862
region	115	2014	paraffin stove	8913
region	114	2014	paraffin stove	48332
region	114	2014	charcoal	1031380
region	115	2014	charcoal	237678
region	116	2014	charcoal	168767
region	117	2014	charcoal	204064
region	115	2014	electricity	20381
region	114	2014	electricity	86000
region	117	2014	electricity	28012
region	115	2014	firewood	1116412
region	116	2014	firewood	1078812
region	117	2014	firewood	1383280
region	114	2014	firewood	1191179
\.


--
-- Name: householddistributionbyenergysource pk_householddistributionbyenergysource; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY householddistributionbyenergysource
    ADD CONSTRAINT pk_householddistributionbyenergysource PRIMARY KEY (geo_level, geo_code, geo_version, "household distribution by energy source");


--
-- PostgreSQL database dump complete
--

