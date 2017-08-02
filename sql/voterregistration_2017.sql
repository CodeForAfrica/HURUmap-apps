--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-08-02 11:46:42 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 243 (class 1259 OID 255447)
-- Name: voterregistration_2017; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE voterregistration_2017 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    voterregistration_2017 character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE voterregistration_2017 OWNER TO hurumap_ke;

--
-- TOC entry 2550 (class 0 OID 255447)
-- Dependencies: 243
-- Data for Name: voterregistration_2017; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY voterregistration_2017 (geo_level, geo_code, voterregistration_2017, total) FROM stdin;
county	1	Actual Dead with IDs	3473
county	1	additional voters registered	163211
county	1	bvr kits	96
county	1	constituencies	6
county	1	Dead with IDs	94359
county	1	female voters	274702
county	1	IDs issued	892702
county	1	male voters	305521
county	1	polling stations	934
county	1	potential voting population not registered	343544
county	1	potential voting population with Ids	798343
county	1	registered voters	413069
county	1	registration centers	196
county	1	total registered	580223
county	1	wards	30
county	2	Actual Dead with IDs	1042
county	2	additional voters registered	103782
county	2	bvr kits	122
county	2	constituencies	4
county	2	Dead with IDs	46804
county	2	female voters	134863
county	2	IDs issued	442804
county	2	male voters	146178
county	2	polling stations	612
county	2	potential voting population not registered	187662
county	2	potential voting population with Ids	396000
county	2	registered voters	175572
county	2	registration centers	415
county	2	total registered	281041
county	2	wards	20
county	3	Actual Dead with IDs	2432
county	3	additional voters registered	165320
county	3	bvr kits	194
county	3	constituencies	7
county	3	Dead with IDs	86227
county	3	female voters	244470
county	3	IDs issued	815768
county	3	male voters	263598
county	3	polling stations	988
county	3	potential voting population not registered	342923
county	3	potential voting population with Ids	729541
county	3	registered voters	336410
county	3	registration centers	542
county	3	total registered	508068
county	3	wards	35
county	4	Actual Dead with IDs	372
county	4	additional voters registered	36866
county	4	bvr kits	112
county	4	constituencies	3
county	4	Dead with IDs	16370
county	4	female voters	56659
county	4	IDs issued	154876
county	4	male voters	61668
county	4	polling stations	307
county	4	potential voting population not registered	41831
county	4	potential voting population with Ids	138506
county	4	registered voters	79641
county	4	registration centers	243
county	4	total registered	118327
county	4	wards	15
county	5	Actual Dead with IDs	347
county	5	additional voters registered	17378
county	5	bvr kits	63
county	5	constituencies	2
county	5	Dead with IDs	10233
county	5	female voters	31222
county	5	IDs issued	96812
county	5	male voters	38554
county	5	polling stations	167
county	5	potential voting population not registered	29835
county	5	potential voting population with Ids	86579
county	5	registered voters	52359
county	5	registration centers	120
county	5	total registered	69776
county	5	wards	10
county	6	Actual Dead with IDs	2229
county	6	additional voters registered	40445
county	6	bvr kits	124
county	6	constituencies	4
county	6	Dead with IDs	26919
county	6	female voters	69210
county	6	IDs issued	254675
county	6	male voters	86506
county	6	polling stations	354
county	6	potential voting population not registered	102036
county	6	potential voting population with Ids	227756
county	6	registered voters	114189
county	6	registration centers	276
county	6	total registered	155716
county	6	wards	20
county	7	Actual Dead with IDs	149
county	7	additional voters registered	47209
county	7	bvr kits	208
county	7	constituencies	6
county	7	Dead with IDs	21985
county	7	female voters	75440
county	7	IDs issued	207991
county	7	male voters	87910
county	7	polling stations	381
county	7	potential voting population not registered	61136
county	7	potential voting population with Ids	186006
county	7	registered voters	115236
county	7	registration centers	262
county	7	total registered	163350
county	7	wards	30
county	8	Actual Dead with IDs	793
county	8	additional voters registered	44255
county	8	bvr kits	219
county	8	constituencies	6
county	8	Dead with IDs	20816
county	8	female voters	74283
county	8	IDs issued	196938
county	8	male voters	88619
county	8	polling stations	434
county	8	potential voting population not registered	49966
county	8	potential voting population with Ids	176122
county	8	registered voters	118245
county	8	registration centers	360
county	8	total registered	162902
county	8	wards	30
county	9	Actual Dead with IDs	789
county	17	bvr kits	178
county	9	additional voters registered	54372
county	9	bvr kits	198
county	9	constituencies	6
county	9	Dead with IDs	21397
county	9	female voters	80856
county	9	IDs issued	202434
county	9	male voters	94786
county	9	polling stations	41
county	9	potential voting population not registered	55881
county	9	potential voting population with Ids	181037
county	9	registered voters	120923
county	9	registration centers	265
county	9	total registered	175642
county	9	wards	30
county	10	Actual Dead with IDs	407
county	10	additional voters registered	35972
county	10	bvr kits	154
county	10	constituencies	4
county	10	Dead with IDs	19913
county	10	female voters	64318
county	10	IDs issued	188390
county	10	male voters	77390
county	10	polling stations	384
county	10	potential voting population not registered	43729
county	10	potential voting population with Ids	168477
county	10	registered voters	105259
county	10	registration centers	301
county	10	total registered	141708
county	10	wards	20
county	11	Actual Dead with IDs	122
county	11	additional voters registered	20262
county	11	bvr kits	70
county	11	constituencies	2
county	11	Dead with IDs	10988
county	11	female voters	33805
county	11	IDs issued	103955
county	11	male voters	41533
county	11	polling stations	195
county	11	potential voting population not registered	33243
county	11	potential voting population with Ids	92967
county	11	registered voters	54587
county	11	registration centers	144
county	11	total registered	75338
county	11	wards	10
county	12	Actual Dead with IDs	2169
county	12	additional voters registered	208430
county	12	bvr kits	240
county	12	constituencies	9
county	12	Dead with IDs	102845
county	12	female voters	320458
county	12	IDs issued	972991
county	12	male voters	382022
county	12	polling stations	1473
county	12	potential voting population not registered	327571
county	12	potential voting population with Ids	870146
county	12	registered voters	489590
county	12	registration centers	951
county	12	total registered	702480
county	12	wards	45
county	13	Actual Dead with IDs	1505
county	13	additional voters registered	55475
county	13	bvr kits	82
county	13	constituencies	3
county	13	Dead with IDs	32758
county	13	female voters	96115
county	13	IDs issued	309916
county	13	male voters	117039
county	13	polling stations	625
county	13	potential voting population not registered	106644
county	13	potential voting population with Ids	277158
county	13	registered voters	155904
county	13	registration centers	567
county	13	total registered	213154
county	13	wards	15
county	14	Actual Dead with IDs	3526
county	14	additional voters registered	80291
county	14	bvr kits	105
county	14	constituencies	4
county	14	Dead with IDs	50752
county	14	female voters	143369
county	14	IDs issued	480150
county	14	male voters	166099
county	14	polling stations	710
county	14	potential voting population not registered	184374
county	14	potential voting population with Ids	429398
county	14	registered voters	227638
county	14	registration centers	517
county	14	total registered	309468
county	14	wards	20
county	15	Actual Dead with IDs	2306
county	15	additional voters registered	144545
county	15	bvr kits	251
county	15	constituencies	8
county	15	Dead with IDs	77407
county	15	female voters	217502
county	15	IDs issued	732331
county	15	male voters	257010
county	15	polling stations	1454
county	15	potential voting population not registered	260558
county	15	potential voting population with Ids	654924
county	15	registered voters	324798
county	15	registration centers	1318
county	15	total registered	474512
county	15	wards	40
county	16	Actual Dead with IDs	4767
county	16	additional voters registered	166715
county	16	bvr kits	222
county	16	constituencies	8
county	16	Dead with IDs	90113
county	16	female voters	273213
county	16	IDs issued	852534
county	16	male voters	347041
county	16	polling stations	1332
county	16	potential voting population not registered	249573
county	16	potential voting population with Ids	762421
county	16	registered voters	445421
county	16	registration centers	875
county	16	total registered	620254
county	16	wards	40
county	17	Actual Dead with IDs	1580
county	17	additional voters registered	120653
county	17	constituencies	6
county	17	Dead with IDs	66555
county	17	female voters	183486
county	17	IDs issued	629663
county	17	male voters	239824
county	17	polling stations	1060
county	17	potential voting population not registered	220764
county	17	potential voting population with Ids	563108
county	17	registered voters	298474
county	17	registration centers	862
county	17	total registered	423310
county	17	wards	30
county	18	Actual Dead with IDs	2504
county	18	additional voters registered	77018
county	18	bvr kits	144
county	18	constituencies	5
county	18	Dead with IDs	49525
county	18	female voters	159678
county	18	IDs issued	468541
county	18	male voters	175956
county	18	polling stations	654
county	18	potential voting population not registered	135811
county	18	potential voting population with Ids	419016
county	18	registered voters	256425
county	18	registration centers	350
county	18	total registered	335634
county	18	wards	25
county	19	Actual Dead with IDs	4536
county	19	additional voters registered	97754
county	19	bvr kits	152
county	19	constituencies	6
county	19	Dead with IDs	74664
county	19	female voters	211452
county	19	IDs issued	706380
county	19	male voters	245497
county	19	polling stations	917
county	19	potential voting population not registered	240834
county	19	potential voting population with Ids	631716
county	19	registered voters	357059
county	19	registration centers	572
county	19	total registered	456949
county	19	wards	30
county	20	Actual Dead with IDs	3472
county	20	additional voters registered	82234
county	20	bvr kits	102
county	20	constituencies	4
county	20	Dead with IDs	45999
county	20	female voters	165776
county	20	IDs issued	435186
county	20	male voters	184060
county	20	polling stations	659
county	20	potential voting population not registered	98167
county	20	potential voting population with Ids	389187
county	20	registered voters	265567
county	20	registration centers	315
county	20	total registered	349836
county	20	wards	20
county	21	Actual Dead with IDs	7763
county	21	additional voters registered	130672
county	21	bvr kits	178
county	21	constituencies	7
county	21	Dead with IDs	78677
county	21	female voters	257301
county	21	IDs issued	744340
county	21	male voters	329825
county	21	polling stations	1131
county	21	potential voting population not registered	176612
county	21	potential voting population with Ids	665663
county	21	registered voters	453725
county	21	registration centers	584
county	21	total registered	587126
county	21	wards	35
county	22	Actual Dead with IDs	5743
county	22	additional voters registered	312213
county	22	bvr kits	266
county	22	constituencies	12
county	22	Dead with IDs	156188
county	22	female voters	588220
county	22	IDs issued	1477657
county	22	male voters	592700
county	22	polling stations	1963
county	22	potential voting population not registered	373870
county	22	potential voting population with Ids	1321469
county	22	registered voters	863199
county	22	registration centers	551
county	22	total registered	1180920
county	22	wards	60
county	23	Actual Dead with IDs	49
county	23	additional voters registered	54481
county	23	bvr kits	226
county	23	constituencies	6
county	23	Dead with IDs	29996
county	23	female voters	93939
county	23	IDs issued	283782
county	23	male voters	97496
county	23	polling stations	644
county	23	potential voting population not registered	100034
county	23	potential voting population with Ids	253786
county	23	registered voters	134426
county	23	registration centers	557
county	23	total registered	191435
county	23	wards	30
county	24	Actual Dead with IDs	159
county	24	additional voters registered	57129
county	24	bvr kits	126
county	24	constituencies	4
county	24	Dead with IDs	25580
county	24	female voters	86755
county	24	IDs issued	242004
county	24	male voters	93477
county	24	polling stations	712
county	24	potential voting population not registered	81657
county	24	potential voting population with Ids	216424
county	24	registered voters	121204
county	24	registration centers	673
county	24	total registered	180232
county	24	wards	20
county	25	Actual Dead with IDs	153
county	25	additional voters registered	21006
county	25	bvr kits	105
county	25	constituencies	3
county	25	Dead with IDs	13635
county	25	female voters	40614
county	25	IDs issued	128996
county	25	male voters	42173
county	25	polling stations	284
county	25	potential voting population not registered	45975
county	25	potential voting population with Ids	115361
county	25	registered voters	61150
county	25	registration centers	272
county	25	total registered	82787
county	25	wards	15
county	26	Actual Dead with IDs	1128
county	26	additional voters registered	91408
county	26	bvr kits	131
county	26	constituencies	5
county	26	Dead with IDs	51398
county	26	female voters	154822
county	26	IDs issued	486259
county	26	male voters	184800
county	26	polling stations	639
county	26	potential voting population not registered	160382
county	26	potential voting population with Ids	434861
county	26	registered voters	245092
county	26	registration centers	310
county	26	total registered	339622
county	26	wards	25
county	27	Actual Dead with IDs	788
county	27	additional voters registered	115231
county	27	bvr kits	159
county	27	constituencies	6
county	27	Dead with IDs	65368
county	27	female voters	212103
county	27	IDs issued	618426
county	27	male voters	237952
county	27	polling stations	868
county	27	potential voting population not registered	201919
county	27	potential voting population with Ids	553058
county	27	registered voters	332177
county	27	registration centers	467
county	27	total registered	450055
county	27	wards	30
county	28	Actual Dead with IDs	835
county	28	additional voters registered	44050
county	28	bvr kits	116
county	28	constituencies	4
county	28	Dead with IDs	28425
county	28	female voters	80414
county	28	IDs issued	268922
county	28	male voters	100250
county	28	polling stations	529
county	28	potential voting population not registered	95794
county	28	potential voting population with Ids	240497
county	28	registered voters	135487
county	28	registration centers	492
county	28	total registered	180664
county	28	wards	20
county	29	Actual Dead with IDs	1326
county	29	additional voters registered	79243
county	29	bvr kits	160
county	29	constituencies	6
county	29	Dead with IDs	50127
county	29	female voters	157513
county	29	IDs issued	474234
county	29	male voters	188494
county	29	polling stations	796
county	29	potential voting population not registered	144441
county	29	potential voting population with Ids	424107
county	29	registered voters	265109
county	29	registration centers	614
county	29	total registered	346007
county	29	wards	30
county	30	Actual Dead with IDs	740
county	30	additional voters registered	56290
county	30	bvr kits	186
county	30	constituencies	6
county	30	Dead with IDs	35867
county	30	female voters	105296
county	30	IDs issued	339329
county	30	male voters	126962
county	30	polling stations	892
county	30	potential voting population not registered	113156
county	30	potential voting population with Ids	303462
county	30	registered voters	174136
county	30	registration centers	855
county	30	total registered	232258
county	30	wards	30
county	31	Actual Dead with IDs	1893
county	31	additional voters registered	71554
county	31	bvr kits	97
county	31	constituencies	3
county	31	Dead with IDs	34451
county	31	female voters	115255
county	31	IDs issued	325928
county	31	male voters	131232
county	31	polling stations	531
county	31	potential voting population not registered	98151
county	31	potential voting population with Ids	291477
county	31	registered voters	174131
county	31	registration centers	325
county	31	total registered	246487
county	31	wards	15
county	32	Actual Dead with IDs	6735
county	32	additional voters registered	247250
county	32	bvr kits	288
county	32	constituencies	11
county	32	Dead with IDs	128399
county	32	female voters	455972
county	32	IDs issued	1214746
county	32	male voters	493646
county	32	polling stations	1806
county	32	potential voting population not registered	313435
county	32	potential voting population with Ids	1086347
county	32	registered voters	696594
county	32	registration centers	899
county	32	total registered	949618
county	32	wards	55
county	33	Actual Dead with IDs	917
county	33	additional voters registered	77025
county	33	bvr kits	187
county	33	constituencies	6
county	33	Dead with IDs	44589
county	33	female voters	161414
county	33	IDs issued	421847
county	33	male voters	180316
county	33	polling stations	750
county	33	potential voting population not registered	93481
county	33	potential voting population with Ids	377258
county	33	registered voters	263365
county	33	registration centers	529
county	33	total registered	341730
county	33	wards	30
county	34	Actual Dead with IDs	915
county	34	additional voters registered	102069
county	34	bvr kits	157
county	34	constituencies	5
county	34	Dead with IDs	44820
county	34	female voters	201125
county	34	IDs issued	424027
county	34	male voters	210068
county	34	polling stations	797
county	34	potential voting population not registered	49674
county	34	potential voting population with Ids	379207
county	34	registered voters	306977
county	34	registration centers	393
county	34	total registered	411193
county	34	wards	25
county	35	Actual Dead with IDs	2193
county	35	additional voters registered	82205
county	35	bvr kits	157
county	35	constituencies	6
county	35	Dead with IDs	59187
county	35	female voters	170537
county	35	IDs issued	559950
county	35	male voters	205131
county	35	polling stations	780
county	35	potential voting population not registered	186819
county	35	potential voting population with Ids	500763
county	35	registered voters	290947
county	35	registration centers	524
county	35	total registered	375668
county	35	wards	30
county	36	Actual Dead with IDs	2906
county	36	additional voters registered	68952
county	36	bvr kits	130
county	36	constituencies	5
county	36	Dead with IDs	46090
county	36	female voters	144088
county	36	IDs issued	436041
county	36	male voters	177924
county	36	polling stations	728
county	36	potential voting population not registered	119455
county	36	potential voting population with Ids	389951
county	36	registered voters	253060
county	36	registration centers	566
county	36	total registered	322012
county	36	wards	25
county	37	Actual Dead with IDs	3319
county	37	additional voters registered	164905
county	37	bvr kits	295
county	37	constituencies	12
county	37	Dead with IDs	124077
county	37	female voters	341994
county	37	IDs issued	1173861
county	37	male voters	401742
county	37	polling stations	1497
county	37	potential voting population not registered	417033
county	37	potential voting population with Ids	1049784
county	37	registered voters	568151
county	37	registration centers	904
county	37	total registered	743736
county	37	wards	60
county	38	Actual Dead with IDs	553
county	38	additional voters registered	65370
county	38	bvr kits	100
county	38	constituencies	5
county	38	Dead with IDs	52507
county	38	female voters	117663
county	38	IDs issued	496755
county	38	male voters	154746
county	38	polling stations	548
county	38	potential voting population not registered	219610
county	38	potential voting population with Ids	444248
county	38	registered voters	202887
county	38	registration centers	343
county	38	total registered	272409
county	38	wards	25
county	39	Actual Dead with IDs	1081
county	39	additional voters registered	140701
county	39	bvr kits	219
county	39	constituencies	9
county	39	Dead with IDs	89335
county	39	female voters	253744
county	39	IDs issued	845172
county	39	male voters	306106
county	39	polling stations	1186
county	39	potential voting population not registered	284381
county	39	potential voting population with Ids	755837
county	39	registered voters	412018
county	39	registration centers	804
county	39	total registered	559850
county	39	wards	45
county	40	Actual Dead with IDs	2016
county	40	additional voters registered	93754
county	40	bvr kits	169
county	40	constituencies	7
county	40	Dead with IDs	56273
county	40	female voters	161377
county	40	IDs issued	532383
county	40	male voters	189671
county	40	polling stations	760
county	40	potential voting population not registered	186500
county	40	potential voting population with Ids	476110
county	40	registered voters	251517
county	40	registration centers	527
county	40	total registered	351048
county	40	wards	35
county	41	Actual Dead with IDs	624
county	41	additional voters registered	140510
county	41	bvr kits	157
county	41	constituencies	6
county	41	Dead with IDs	68256
county	41	female voters	203293
county	41	IDs issued	645754
county	41	male voters	254660
county	41	polling stations	916
county	41	potential voting population not registered	198205
county	41	potential voting population with Ids	577498
county	41	registered voters	312441
county	41	registration centers	572
county	41	total registered	457953
county	41	wards	30
county	42	Actual Dead with IDs	1167
county	42	additional voters registered	144264
county	42	bvr kits	166
county	42	constituencies	7
county	42	Dead with IDs	85509
county	42	female voters	249549
county	42	IDs issued	808977
county	42	male voters	289661
county	42	polling stations	127
county	42	potential voting population not registered	273457
county	42	potential voting population with Ids	723468
county	42	registered voters	386606
county	42	registration centers	528
county	42	total registered	539210
county	42	wards	35
county	43	Actual Dead with IDs	1424
county	43	additional voters registered	144534
county	43	bvr kits	206
county	43	constituencies	8
county	43	Dead with IDs	67570
county	43	female voters	221918
county	43	IDs issued	639261
county	43	male voters	254957
county	43	polling stations	1062
county	43	potential voting population not registered	186153
county	43	potential voting population with Ids	571691
county	43	registered voters	326505
county	43	registration centers	816
county	43	total registered	476875
county	43	wards	40
county	44	Actual Dead with IDs	848
county	44	additional voters registered	101782
county	44	bvr kits	201
county	44	constituencies	8
county	44	Dead with IDs	59447
county	44	female voters	181752
county	44	IDs issued	562412
county	44	male voters	206881
county	44	polling stations	826
county	44	potential voting population not registered	176510
county	44	potential voting population with Ids	502965
county	44	registered voters	283997
county	44	registration centers	593
county	44	total registered	388633
county	44	wards	40
county	45	Actual Dead with IDs	1755
county	45	additional voters registered	127350
county	45	bvr kits	201
county	45	constituencies	9
county	45	Dead with IDs	90003
county	45	female voters	247857
county	45	IDs issued	851495
county	45	male voters	298723
county	45	polling stations	1126
county	45	potential voting population not registered	304631
county	45	potential voting population with Ids	761492
county	45	registered voters	413161
county	45	registration centers	748
county	45	total registered	546580
county	45	wards	45
county	46	Actual Dead with IDs	1980
county	46	additional voters registered	56113
county	46	bvr kits	99
county	46	constituencies	4
county	46	Dead with IDs	44229
county	46	female voters	127427
county	46	IDs issued	418437
county	46	male voters	151426
county	46	polling stations	553
county	46	potential voting population not registered	135938
county	46	potential voting population with Ids	374208
county	46	registered voters	219428
county	46	registration centers	332
county	46	total registered	278853
county	46	wards	20
county	47	Actual Dead with IDs	4747
county	47	additional voters registered	506294
county	47	bvr kits	275
county	47	constituencies	17
county	47	Dead with IDs	368756
county	47	female voters	1096371
county	47	IDs issued	3488708
county	47	male voters	1154482
county	47	polling stations	3378
county	47	potential voting population not registered	1276912
county	47	potential voting population with Ids	3119952
county	47	registered voters	1732288
county	47	registration centers	330
county	47	total registered	2250853
county	47	wards	85
country	KE	Actual Dead with IDs	92277
country	KE	additional voters registered	5055905
country	KE	bvr kits	7793
country	KE	constituencies	290
country	KE	Dead with IDs	2965386
country	KE	female voters	9139190
country	KE	IDs issued	28054740
country	KE	male voters	10462312
country	KE	polling stations	39510
country	KE	potential voting population not registered	9139269
country	KE	potential voting population with Ids	25089354
country	KE	registered voters	14386144
country	KE	registration centers	24559
country	KE	total registered	19601502
country	KE	wards	15936252
\.


--
-- TOC entry 2432 (class 2606 OID 255451)
-- Name: voterregistration_2017 voterregistration_2017_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY voterregistration_2017
    ADD CONSTRAINT voterregistration_2017_pkey PRIMARY KEY (geo_level, geo_code, voterregistration_2017);


-- Completed on 2017-08-02 11:46:43 EAT

--
-- PostgreSQL database dump complete
--

