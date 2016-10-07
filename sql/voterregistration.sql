--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.voterregistration DROP CONSTRAINT IF EXISTS voterregistration_pkey;
DROP TABLE IF EXISTS public.voterregistration;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: voterregistration; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE voterregistration (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "voterregistration" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: voterregistration; Type: TABLE DATA; Schema: public; Owner: -
--

COPY voterregistration (geo_level, geo_code, "voterregistration", total) FROM stdin;
county	1	IDs issued	799735
county	1	dead with IDs	84532
county	1	potential voting population with IDs	715203
county	1	registered voters	413069
county	1	additional voters registered	3943
county	1	total registered	417012
county	1	potential voting population not registered	298191
county	1	constituencies	6
county	1	wards	30
county	1	registration centers	196
county	1	bvr kits	62
county	2	IDs issued	394359
county	2	dead with IDs	41684
county	2	potential voting population with IDs	352675
county	2	registered voters	175572
county	2	additional voters registered	1687
county	2	total registered	177259
county	2	potential voting population not registered	175416
county	2	constituencies	4
county	2	wards	20
county	2	registration centers	415
county	2	bvr kits	88
county	3	IDs issued	732701
county	3	dead with IDs	77446
county	3	potential voting population with IDs	655255
county	3	registered voters	336410
county	3	additional voters registered	6338
county	3	total registered	342748
county	3	potential voting population not registered	312507
county	3	constituencies	7
county	3	wards	35
county	3	registration centers	542
county	3	bvr kits	142
county	4	IDs issued	142700
county	4	dead with IDs	15083
county	4	potential voting population with IDs	127617
county	4	registered voters	79641
county	4	additional voters registered	1820
county	4	total registered	81461
county	4	potential voting population not registered	46156
county	4	constituencies	3
county	4	wards	15
county	4	registration centers	243
county	4	bvr kits	88
county	5	IDs issued	84020
county	5	dead with IDs	8881
county	5	potential voting population with IDs	75139
county	5	registered voters	52359
county	5	additional voters registered	39
county	5	total registered	52398
county	5	potential voting population not registered	22741
county	5	constituencies	2
county	5	wards	10
county	5	registration centers	120
county	5	bvr kits	50
county	6	IDs issued	235621
county	6	dead with IDs	24905
county	6	potential voting population with IDs	210716
county	6	registered voters	114189
county	6	additional voters registered	1082
county	6	total registered	115271
county	6	potential voting population not registered	95445
county	6	constituencies	4
county	6	wards	20
county	6	registration centers	276
county	6	bvr kits	92
county	7	IDs issued	189502
county	7	dead with IDs	20030
county	7	potential voting population with IDs	169472
county	7	registered voters	115236
county	7	additional voters registered	905
county	7	total registered	116141
county	7	potential voting population not registered	53331
county	7	constituencies	6
county	7	wards	30
county	7	registration centers	262
county	7	bvr kits	164
county	8	IDs issued	174904
county	8	dead with IDs	18487
county	8	potential voting population with IDs	156417
county	8	registered voters	118245
county	8	additional voters registered	402
county	8	total registered	118647
county	8	potential voting population not registered	37770
county	8	constituencies	6
county	8	wards	30
county	8	registration centers	360
county	8	bvr kits	170
county	9	IDs issued	168122
county	9	dead with IDs	17770
county	9	potential voting population with IDs	150352
county	9	registered voters	120923
county	9	additional voters registered	347
county	9	total registered	121270
county	9	potential voting population not registered	29082
county	9	constituencies	6
county	9	wards	30
county	9	registration centers	265
county	9	bvr kits	152
county	10	IDs issued	173520
county	10	dead with IDs	18341
county	10	potential voting population with IDs	155179
county	10	registered voters	105259
county	10	additional voters registered	477
county	10	total registered	105736
county	10	potential voting population not registered	49443
county	10	constituencies	4
county	10	wards	20
county	10	registration centers	301
county	10	bvr kits	120
county	11	IDs issued	97343
county	11	dead with IDs	10289
county	11	potential voting population with IDs	87054
county	11	registered voters	54587
county	11	additional voters registered	489
county	11	total registered	55076
county	11	potential voting population not registered	31978
county	11	constituencies	2
county	11	wards	10
county	11	registration centers	144
county	11	bvr kits	54
county	12	IDs issued	876779
county	12	dead with IDs	92676
county	12	potential voting population with IDs	784103
county	12	registered voters	489590
county	12	additional voters registered	4460
county	12	total registered	494050
county	12	potential voting population not registered	290053
county	12	constituencies	9
county	12	wards	45
county	12	registration centers	951
county	12	bvr kits	176
county	13	IDs issued	276666
county	13	dead with IDs	29244
county	13	potential voting population with IDs	247422
county	13	registered voters	155904
county	13	additional voters registered	1775
county	13	total registered	157679
county	13	potential voting population not registered	89743
county	13	constituencies	3
county	13	wards	15
county	13	registration centers	567
county	13	bvr kits	60
county	14	IDs issued	436308
county	14	dead with IDs	46118
county	14	potential voting population with IDs	390190
county	14	registered voters	227638
county	14	additional voters registered	1539
county	14	total registered	229177
county	14	potential voting population not registered	161013
county	14	constituencies	4
county	14	wards	20
county	14	registration centers	517
county	14	bvr kits	74
county	15	IDs issued	659598
county	15	dead with IDs	69720
county	15	potential voting population with IDs	589878
county	15	registered voters	324798
county	15	additional voters registered	5169
county	15	total registered	329967
county	15	potential voting population not registered	259911
county	15	constituencies	8
county	15	wards	40
county	15	registration centers	1318
county	15	bvr kits	186
county	16	IDs issued	791515
county	16	dead with IDs	83663
county	16	potential voting population with IDs	707852
county	16	registered voters	445421
county	16	additional voters registered	8118
county	16	total registered	453539
county	16	potential voting population not registered	254313
county	16	constituencies	8
county	16	wards	40
county	16	registration centers	875
county	16	bvr kits	158
county	17	IDs issued	577359
county	17	dead with IDs	61027
county	17	potential voting population with IDs	516332
county	17	registered voters	298474
county	17	additional voters registered	4183
county	17	total registered	302657
county	17	potential voting population not registered	213675
county	17	constituencies	6
county	17	wards	30
county	17	registration centers	862
county	17	bvr kits	126
county	18	IDs issued	428978
county	18	dead with IDs	45343
county	18	potential voting population with IDs	383635
county	18	registered voters	256425
county	18	additional voters registered	2191
county	18	total registered	258616
county	18	potential voting population not registered	125019
county	18	constituencies	5
county	18	wards	25
county	18	registration centers	350
county	18	bvr kits	100
county	19	IDs issued	650846
county	19	dead with IDs	68794
county	19	potential voting population with IDs	582052
county	19	registered voters	357059
county	19	additional voters registered	2136
county	19	total registered	359195
county	19	potential voting population not registered	222857
county	19	constituencies	6
county	19	wards	30
county	19	registration centers	572
county	19	bvr kits	114
county	20	IDs issued	395839
county	20	dead with IDs	41840
county	20	potential voting population with IDs	353999
county	20	registered voters	265567
county	20	additional voters registered	2035
county	20	total registered	267602
county	20	potential voting population not registered	86397
county	20	constituencies	4
county	20	wards	20
county	20	registration centers	315
county	20	bvr kits	78
county	21	IDs issued	679940
county	21	dead with IDs	71870
county	21	potential voting population with IDs	608070
county	21	registered voters	453725
county	21	additional voters registered	2729
county	21	total registered	456454
county	21	potential voting population not registered	151616
county	21	constituencies	7
county	21	wards	35
county	21	registration centers	584
county	21	bvr kits	136
county	22	IDs issued	1326733
county	22	dead with IDs	140236
county	22	potential voting population with IDs	1186497
county	22	registered voters	863199
county	22	additional voters registered	5508
county	22	total registered	868707
county	22	potential voting population not registered	317790
county	22	constituencies	12
county	22	wards	60
county	22	registration centers	551
county	22	bvr kits	182
county	23	IDs issued	263837
county	23	dead with IDs	27888
county	23	potential voting population with IDs	235949
county	23	registered voters	134426
county	23	additional voters registered	2528
county	23	total registered	136954
county	23	potential voting population not registered	98995
county	23	constituencies	6
county	23	wards	30
county	23	registration centers	557
county	23	bvr kits	182
county	24	IDs issued	211273
county	24	dead with IDs	22332
county	24	potential voting population with IDs	188941
county	24	registered voters	121204
county	24	additional voters registered	1899
county	24	total registered	123103
county	24	potential voting population not registered	65838
county	24	constituencies	4
county	24	wards	20
county	24	registration centers	673
county	24	bvr kits	94
county	25	IDs issued	117246
county	25	dead with IDs	12393
county	25	potential voting population with IDs	104853
county	25	registered voters	61150
county	25	additional voters registered	631
county	25	total registered	61781
county	25	potential voting population not registered	43072
county	25	constituencies	3
county	25	wards	15
county	25	registration centers	272
county	25	bvr kits	84
county	26	IDs issued	440582
county	26	dead with IDs	46570
county	26	potential voting population with IDs	394012
county	26	registered voters	245092
county	26	additional voters registered	3122
county	26	total registered	248214
county	26	potential voting population not registered	145798
county	26	constituencies	5
county	26	wards	25
county	26	registration centers	310
county	26	bvr kits	94
county	27	IDs issued	560403
county	27	dead with IDs	59235
county	27	potential voting population with IDs	501168
county	27	registered voters	332177
county	27	additional voters registered	2647
county	27	total registered	334824
county	27	potential voting population not registered	166344
county	27	constituencies	6
county	27	wards	30
county	27	registration centers	467
county	27	bvr kits	112
county	28	IDs issued	249001
county	28	dead with IDs	26319
county	28	potential voting population with IDs	222682
county	28	registered voters	135487
county	28	additional voters registered	1127
county	28	total registered	136614
county	28	potential voting population not registered	86068
county	28	constituencies	4
county	28	wards	20
county	28	registration centers	492
county	28	bvr kits	82
county	29	IDs issued	437378
county	29	dead with IDs	46231
county	29	potential voting population with IDs	391147
county	29	registered voters	265109
county	29	additional voters registered	1655
county	29	total registered	266764
county	29	potential voting population not registered	124383
county	29	constituencies	6
county	29	wards	30
county	29	registration centers	614
county	29	bvr kits	120
county	30	IDs issued	316428
county	30	dead with IDs	33446
county	30	potential voting population with IDs	282982
county	30	registered voters	174136
county	30	additional voters registered	1832
county	30	total registered	175968
county	30	potential voting population not registered	107014
county	30	constituencies	6
county	30	wards	30
county	30	registration centers	855
county	30	bvr kits	140
county	31	IDs issued	294773
county	31	dead with IDs	31158
county	31	potential voting population with IDs	263615
county	31	registered voters	174131
county	31	additional voters registered	802
county	31	total registered	174933
county	31	potential voting population not registered	88682
county	31	constituencies	3
county	31	wards	15
county	31	registration centers	325
county	31	bvr kits	76
county	32	IDs issued	1101467
county	32	dead with IDs	116425
county	32	potential voting population with IDs	985042
county	32	registered voters	696594
county	32	additional voters registered	5774
county	32	total registered	702368
county	32	potential voting population not registered	282674
county	32	constituencies	11
county	32	wards	55
county	32	registration centers	899
county	32	bvr kits	202
county	33	IDs issued	383478
county	33	dead with IDs	40534
county	33	potential voting population with IDs	342944
county	33	registered voters	263365
county	33	additional voters registered	1340
county	33	total registered	264705
county	33	potential voting population not registered	78239
county	33	constituencies	6
county	33	wards	30
county	33	registration centers	529
county	33	bvr kits	140
county	34	IDs issued	386120
county	34	dead with IDs	40813
county	34	potential voting population with IDs	345307
county	34	registered voters	306977
county	34	additional voters registered	2147
county	34	total registered	309124
county	34	potential voting population not registered	36183
county	34	constituencies	5
county	34	wards	25
county	34	registration centers	393
county	34	bvr kits	120
county	35	IDs issued	630836
county	35	dead with IDs	66679
county	35	potential voting population with IDs	564157
county	35	registered voters	290947
county	35	additional voters registered	2516
county	35	total registered	293463
county	35	potential voting population not registered	270694
county	35	constituencies	6
county	35	wards	30
county	35	registration centers	524
county	35	bvr kits	116
county	36	IDs issued	291127
county	36	dead with IDs	30772
county	36	potential voting population with IDs	260355
county	36	registered voters	253060
county	36	additional voters registered	0
county	36	total registered	253060
county	36	potential voting population not registered	7295
county	36	constituencies	5
county	36	wards	25
county	36	registration centers	566
county	36	bvr kits	100
county	37	IDs issued	1088915
county	37	dead with IDs	115098
county	37	potential voting population with IDs	973817
county	37	registered voters	568151
county	37	additional voters registered	10680
county	37	total registered	578831
county	37	potential voting population not registered	394986
county	37	constituencies	12
county	37	wards	60
county	37	registration centers	904
county	37	bvr kits	228
county	38	IDs issued	467772
county	38	dead with IDs	49444
county	38	potential voting population with IDs	418328
county	38	registered voters	202887
county	38	additional voters registered	4152
county	38	total registered	207039
county	38	potential voting population not registered	211289
county	38	constituencies	5
county	38	wards	25
county	38	registration centers	343
county	38	bvr kits	52
county	39	IDs issued	775554
county	39	dead with IDs	81976
county	39	potential voting population with IDs	693578
county	39	registered voters	412018
county	39	additional voters registered	7131
county	39	total registered	419149
county	39	potential voting population not registered	274429
county	39	constituencies	9
county	39	wards	45
county	39	registration centers	804
county	39	bvr kits	174
county	40	IDs issued	484548
county	40	dead with IDs	51217
county	40	potential voting population with IDs	433331
county	40	registered voters	251517
county	40	additional voters registered	5777
county	40	total registered	257294
county	40	potential voting population not registered	176037
county	40	constituencies	7
county	40	wards	35
county	40	registration centers	527
county	40	bvr kits	130
county	41	IDs issued	588004
county	41	dead with IDs	62152
county	41	potential voting population with IDs	525852
county	41	registered voters	312441
county	41	additional voters registered	5002
county	41	total registered	317443
county	41	potential voting population not registered	208409
county	41	constituencies	6
county	41	wards	30
county	41	registration centers	572
county	41	bvr kits	120
county	42	IDs issued	738345
county	42	dead with IDs	78043
county	42	potential voting population with IDs	660302
county	42	registered voters	386606
county	42	additional voters registered	8340
county	42	total registered	394946
county	42	potential voting population not registered	265356
county	42	constituencies	7
county	42	wards	35
county	42	registration centers	528
county	42	bvr kits	124
county	43	IDs issued	590090
county	43	dead with IDs	62373
county	43	potential voting population with IDs	527717
county	43	registered voters	326505
county	43	additional voters registered	5836
county	43	total registered	332341
county	43	potential voting population not registered	195376
county	43	constituencies	8
county	43	wards	40
county	43	registration centers	816
county	43	bvr kits	154
county	44	IDs issued	508570
county	44	dead with IDs	53756
county	44	potential voting population with IDs	454814
county	44	registered voters	283997
county	44	additional voters registered	2854
county	44	total registered	286851
county	44	potential voting population not registered	167963
county	44	constituencies	8
county	44	wards	40
county	44	registration centers	593
county	44	bvr kits	152
county	45	IDs issued	782373
county	45	dead with IDs	82697
county	45	potential voting population with IDs	699676
county	45	registered voters	413161
county	45	additional voters registered	6069
county	45	total registered	419230
county	45	potential voting population not registered	280446
county	45	constituencies	9
county	45	wards	45
county	45	registration centers	748
county	45	bvr kits	132
county	46	IDs issued	385851
county	46	dead with IDs	40784
county	46	potential voting population with IDs	345067
county	46	registered voters	219428
county	46	additional voters registered	3312
county	46	total registered	222740
county	46	potential voting population not registered	122327
county	46	constituencies	4
county	46	wards	20
county	46	registration centers	332
county	46	bvr kits	78
county	47	IDs issued	3159291
county	47	dead with IDs	333937
county	47	potential voting population with IDs	2825354
county	47	registered voters	1732288
county	47	additional voters registered	12271
county	47	total registered	1744559
county	47	potential voting population not registered	1080795
county	47	constituencies	17
county	47	wards	85
county	47	registration centers	330
county	47	bvr kits	178
country	KE	IDs issued	25551628
country	KE	dead with IDs	2700809
country	KE	potential voting population with IDs	22850819
country	KE	registered voters	14388781
country	KE	additional voters registered	156816
country	KE	total registered	14545597
country	KE	potential voting population not registered	8303239
country	KE	constituencies	290
country	KE	wards	1450
country	KE	registration centers	24559
country	KE	bvr kits	5756
\.
--
-- Name: voterregistration_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY voterregistration
    ADD CONSTRAINT voterregistration_pkey PRIMARY KEY (geo_level, geo_code, "voterregistration");


--
-- PostgreSQL database dump complete
--

