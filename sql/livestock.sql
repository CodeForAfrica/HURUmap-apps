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

ALTER TABLE IF EXISTS ONLY public.livestock_population DROP CONSTRAINT IF EXISTS livestock_population_pkey;
DROP TABLE IF EXISTS public.livestock_population;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: livestock_population; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE livestock_population (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "livestock_population" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: livestock_population; Type: TABLE DATA; Schema: public; Owner: -
--

COPY livestock_population (geo_level, geo_code, "livestock_population", total) FROM stdin;
county	26	cattle dairy	17050
county	26	cattle meat	1690
county	26	sheep wool	200
county	26	sheep hair	11500
county	26	goat dairy	150
county	26	goat meat	2830
county	26	pigs	580
county	26	rabbits	1160
county	26	broilers	1830
county	26	layers	11160
county	26	indigenous	66420
county	26	others	2140
county	26	turkey	0
county	26	ducks	0
county	26	quails	0
county	26	guinea fowl	0
county	26	geese	0
county	24	cattle dairy	700
county	24	cattle meat	36500
county	24	sheep wool	9800
county	24	sheep hair	38500
county	24	goat dairy	250
county	24	goat meat	4500
county	24	pigs	320
county	24	rabbits	380
county	24	broilers	50
county	24	layers	210
county	24	indigenous	47500
county	24	others	5290
county	24	turkey	0
county	24	ducks	0
county	24	quails	0
county	24	guinea fowl	0
county	24	geese	0
county	31	cattle dairy	5600
county	31	cattle meat	233650
county	31	sheep wool	14103
county	31	sheep hair	3900
county	31	goat dairy	12996
county	31	goat meat	3700
county	31	pigs	50
county	31	rabbits	20748
county	31	broilers	1600
county	31	layers	34220
county	31	indigenous	34500
county	31	others	9889
county	31	turkey	0
county	31	ducks	0
county	31	quails	0
county	31	guinea fowl	0
county	31	geese	0
county	34	cattle dairy	157302
county	34	cattle meat	525289
county	34	sheep wool	0
county	34	sheep hair	981271
county	34	goat dairy	1636
county	34	goat meat	1080297
county	34	pigs	21997
county	34	rabbits	22014
county	34	broilers	340408
county	34	layers	169533
county	34	indigenous	211357
county	34	others	1735
county	34	turkey	65
county	34	ducks	25
county	34	quails	1645
county	34	guinea fowl	0
county	15	cattle dairy	6666
county	15	cattle meat	388264
county	15	sheep wool	0
county	15	sheep hair	84196
county	15	goat dairy	4142
county	15	goat meat	940645
county	15	pigs	1015
county	15	rabbits	3499
county	15	broilers	24410
county	15	layers	18892
county	15	indigenous	1425410
county	15	others	10654
county	15	turkey	0
county	15	ducks	0
county	15	quails	0
county	15	guinea fowl	0
county	16	cattle dairy	39950
county	16	cattle meat	205490
county	16	sheep wool	0
county	16	sheep hair	102160
county	16	goat dairy	8430
county	16	goat meat	321870
county	16	pigs	550
county	16	rabbits	16250
county	16	broilers	17480
county	16	layers	18410
county	16	indigenous	130600
county	16	others	23720
county	16	turkey	0
county	16	ducks	0
county	16	quails	0
county	16	guinea fowl	0
county	16	geese	0
county	17	cattle dairy	22353
county	17	cattle meat	233814
county	17	sheep wool	0
county	17	sheep hair	115011
county	17	goat dairy	11678
county	17	goat meat	675045
county	17	pigs	2040
county	17	rabbits	13725
county	17	broilers	1330
county	17	layers	23628
county	17	indigenous	965475
county	17	others	3244
county	17	turkey	0
county	17	ducks	0
county	17	quails	0
county	17	guinea fowl	0
county	17	geese	0
county	7	cattle dairy	191
county	7	cattle meat	1104184
county	7	sheep wool	0
county	7	sheep hair	1089870
county	7	goat dairy	147
county	7	goat meat	1947163
county	7	pigs	0
county	7	rabbits	0
county	7	broilers	0
county	7	layers	0
county	7	indigenous	195021
county	7	others	0
county	7	turkey	0
county	7	ducks	0
county	7	quails	0
county	7	guinea fowl	0
county	7	geese	0
county	5	cattle dairy	8549
county	5	cattle meat	112119
county	5	sheep wool	0
county	5	sheep hair	24576
county	5	goat dairy	5976
county	5	goat meat	130620
county	5	pigs	0
county	5	rabbits	1764
county	5	broilers	6065
county	5	layers	4295
county	5	indigenous	177401
county	5	others	9434
county	5	turkey	0
county	5	ducks	0
county	5	quails	480
county	5	guinea fowl	860
county	4	cattle dairy	76
county	4	cattle meat	607190
county	4	sheep wool	0
county	4	sheep hair	325650
county	4	goat dairy	1330
county	4	goat meat	693350
county	4	pigs	11
county	4	rabbits	332
county	4	broilers	100
county	4	layers	2402
county	4	indigenous	131912
county	4	others	8270
county	4	turkey	0
county	4	ducks	0
county	4	quails	0
county	4	guinea fowl	0
county	4	geese	0
county	8	cattle dairy	12
county	8	cattle meat	718928
county	8	sheep wool	0
county	8	sheep hair	117750
county	8	goat dairy	254
county	8	goat meat	1503730
county	8	pigs	0
county	8	rabbits	0
county	8	broilers	76
county	8	layers	534
county	8	indigenous	188732
county	8	others	20
county	8	turkey	0
county	8	ducks	0
county	8	quails	0
county	8	guinea fowl	0
county	1	cattle dairy	1866
county	1	cattle meat	3968
county	1	sheep wool	3
county	1	sheep hair	931
county	1	goat dairy	115
county	1	goat meat	20710
county	1	pigs	692
county	1	rabbits	1408
county	1	broilers	8060
county	1	layers	1290
county	1	indigenous	36205
county	1	others	0
county	1	turkey	0
county	1	ducks	0
county	1	quails	5695
county	1	guinea fowl	0
county	6	cattle dairy	27472
county	6	cattle meat	149179
county	6	sheep wool	0
county	6	sheep hair	57293
county	6	goat dairy	3145
county	6	goat meat	172450
county	6	pigs	1407
county	6	rabbits	9965
county	6	broilers	17078
county	6	layers	21113
county	6	indigenous	608609
county	6	others	7385
county	6	turkey	0
county	6	ducks	0
county	6	quails	0
county	6	guinea fowl	0
county	2	cattle dairy	3488
county	2	cattle meat	299026
county	2	sheep wool	0
county	2	sheep hair	96031
county	2	goat dairy	1382
county	2	goat meat	350874
county	2	pigs	468
county	2	rabbits	1453
county	2	broilers	7480
county	2	layers	12250
county	2	indigenous	477918
county	2	others	6850
county	2	turkey	0
county	2	ducks	0
county	2	quails	0
county	2	guinea fowl	0
county	2	geese	0
county	3	cattle dairy	51518
county	3	cattle meat	261717
county	3	sheep wool	0
county	3	sheep hair	38770
county	3	goat dairy	828
county	3	goat meat	286782
county	3	pigs	2648
county	3	rabbits	8978
county	3	broilers	129988
county	3	layers	105941
county	3	indigenous	99860
county	3	others	0
county	3	turkey	3944
county	3	ducks	89698
county	3	quails	280
county	3	guinea fowl	7991
county	3	geese	3850
county	14	cattle dairy	90427
county	14	cattle meat	8920
county	14	sheep wool	1525
county	14	sheep hair	53319
county	14	goat dairy	27085
county	14	goat meat	239571
county	14	pigs	15780
county	14	rabbits	59636
county	14	broilers	43690
county	14	layers	73768
county	14	indigenous	510188
county	14	others	3547
county	14	turkey	1595
county	14	ducks	2328
county	14	quails	1955
county	14	guinea fowl	430
county	14	geese	1532
county	20	cattle dairy	79318
county	20	cattle meat	31947
county	20	sheep wool	0
county	20	sheep hair	15671
county	20	goat dairy	13535
county	20	goat meat	37791
county	20	pigs	11316
county	20	rabbits	51126
county	20	broilers	27115
county	20	layers	46407
county	20	indigenous	597366
county	20	others	0
county	20	turkey	15142
county	20	ducks	530
county	20	quails	1033
county	20	guinea fowl	2734
county	20	geese	1228
county	19	cattle dairy	173075
county	19	cattle meat	11938
county	19	sheep wool	13377
county	19	sheep hair	99789
county	19	goat dairy	32367
county	19	goat meat	55113
county	19	pigs	1019
county	19	rabbits	45205
county	19	broilers	62687
county	19	layers	43727
county	19	indigenous	298666
county	19	others	0
county	19	turkey	1809
county	19	ducks	2085
county	19	quails	500
county	19	guinea fowl	45
county	19	geese	1395
county	21	cattle dairy	239196
county	21	cattle meat	21881
county	21	sheep wool	13959
county	21	sheep hair	30652
county	21	goat dairy	51116
county	21	goat meat	107938
county	21	pigs	35510
county	21	rabbits	85210
county	21	broilers	104573
county	21	layers	257646
county	21	indigenous	554883
county	21	others	0
county	21	turkey	2218
county	21	ducks	3851
county	21	quails	1680
county	21	guinea fowl	183
county	21	geese	3425
county	27	cattle dairy	327843
county	27	cattle meat	39763
county	27	sheep wool	37398
county	27	sheep hair	128059
county	27	goat dairy	120
county	27	goat meat	8280
county	27	pigs	12692
county	27	rabbits	6227
county	27	broilers	76913
county	27	layers	143848
county	27	indigenous	707726
county	27	others	0
county	27	turkey	0
county	27	ducks	4394
county	27	quails	0
county	27	guinea fowl	0
county	27	geese	0
county	13	cattle dairy	46188
county	13	cattle meat	92936
county	13	sheep wool	0
county	13	sheep hair	57628
county	13	goat dairy	12230
county	13	goat meat	233231
county	13	pigs	12354
county	13	rabbits	36520
county	13	broilers	24477
county	13	layers	30687
county	13	indigenous	611271
county	13	others	6994
county	13	turkey	0
county	13	ducks	0
county	13	quails	0
county	13	guinea fowl	0
county	13	geese	0
county	12	cattle dairy	17500
county	12	cattle meat	25050
county	12	sheep wool	4100
county	12	sheep hair	18500
county	12	goat dairy	3530
county	12	goat meat	29600
county	12	pigs	2800
county	12	rabbits	5460
county	12	broilers	0
county	12	layers	92969
county	12	indigenous	612271
county	12	others	610
county	12	turkey	0
county	12	ducks	0
county	12	quails	0
county	12	guinea fowl	0
county	12	geese	0
county	11	cattle dairy	240
county	11	cattle meat	205080
county	11	sheep wool	0
county	11	sheep hair	356902
county	11	goat dairy	720
county	11	goat meat	386258
county	11	pigs	0
county	11	rabbits	0
county	11	broilers	200
county	11	layers	400
county	11	indigenous	32978
county	11	others	665
county	11	turkey	0
county	11	ducks	0
county	11	quails	0
county	11	guinea fowl	0
county	11	geese	0
county	10	cattle dairy	742
county	10	cattle meat	218013
county	10	sheep wool	0
county	10	sheep hair	2029490
county	10	goat dairy	488
county	10	goat meat	1185964
county	10	pigs	0
county	10	rabbits	71
county	10	broilers	0
county	10	layers	4714
county	10	indigenous	41137
county	10	others	3
county	10	turkey	0
county	10	ducks	0
county	10	quails	0
county	10	guinea fowl	0
county	10	geese	0
county	33	cattle dairy	25720
county	33	cattle meat	1150998
county	33	sheep wool	35206
county	33	sheep hair	1080812
county	33	goat dairy	1838
county	33	goat meat	787331
county	33	pigs	385
county	33	rabbits	3013
county	33	broilers	140
county	33	layers	9236
county	33	indigenous	816018
county	33	others	6137
county	33	turkey	0
county	33	ducks	0
county	33	quails	0
county	33	guinea fowl	0
county	33	geese	0
county	36	cattle dairy	265431
county	36	cattle meat	112742
county	36	sheep wool	68418
county	36	sheep hair	87388
county	36	goat dairy	2839
county	36	goat meat	62636
county	36	pigs	35
county	36	rabbits	10330
county	36	broilers	22415
county	36	layers	33650
county	36	indigenous	378055
county	36	others	40645
county	36	turkey	0
county	36	ducks	0
county	36	quails	0
county	36	guinea fowl	0
county	36	geese	0
county	46	cattle dairy	70859
county	46	cattle meat	28734
county	46	sheep wool	0
county	46	sheep hair	17170
county	46	goat dairy	509
county	46	goat meat	37290
county	46	pigs	321
county	46	rabbits	3415
county	46	broilers	0
county	46	layers	248997
county	46	indigenous	329380
county	46	others	2136
county	46	turkey	0
county	46	ducks	0
county	46	quails	0
county	46	guinea fowl	0
county	46	geese	0
county	45	cattle dairy	157471
county	45	cattle meat	111871
county	45	sheep wool	0
county	45	sheep hair	47157
county	45	goat dairy	1750
county	45	goat meat	94655
county	45	pigs	914
county	45	rabbits	16323
county	45	broilers	8785
county	45	layers	111921
county	45	indigenous	1310874
county	45	others	8421
county	45	turkey	0
county	45	ducks	0
county	45	quails	0
county	45	guinea fowl	0
county	45	geese	0
county	42	cattle dairy	17322
county	42	cattle meat	268356
county	42	sheep wool	0
county	42	sheep hair	219849
county	42	goat dairy	1798
county	42	goat meat	220462
county	42	pigs	5348
county	42	rabbits	12015
county	42	broilers	124916
county	42	layers	73712
county	42	indigenous	849535
county	42	others	42803
county	42	turkey	0
county	42	ducks	0
county	42	quails	0
county	42	guinea fowl	0
county	42	geese	0
county	44	cattle dairy	11428
county	44	cattle meat	331535
county	44	sheep wool	0
county	44	sheep hair	212484
county	44	goat dairy	3976
county	44	goat meat	307815
county	44	pigs	4604
county	44	rabbits	7603
county	44	broilers	17799
county	44	layers	63883
county	44	indigenous	4648187
county	44	others	13534
county	44	turkey	0
county	44	ducks	0
county	44	quails	0
county	44	guinea fowl	0
county	44	geese	0
county	43	cattle dairy	10518
county	43	cattle meat	636356
county	43	sheep wool	0
county	43	sheep hair	333334
county	43	goat dairy	4102
county	43	goat meat	383373
county	43	pigs	36719
county	43	rabbits	15751
county	43	broilers	13950
county	43	layers	47268
county	43	indigenous	2380393
county	43	others	26551
county	43	turkey	0
county	43	ducks	0
county	43	quails	0
county	43	guinea fowl	0
county	43	geese	0
county	25	cattle dairy	312
county	25	cattle meat	184881
county	25	sheep wool	0
county	25	sheep hair	566871
county	25	goat dairy	162
county	25	goat meat	1110117
county	25	pigs	0
county	25	rabbits	0
county	25	broilers	3463
county	25	layers	4938
county	25	indigenous	164536
county	25	others	52
county	25	turkey	0
county	25	ducks	0
county	25	quails	0
county	25	guinea fowl	0
county	25	geese	0
county	18	cattle dairy	292191
county	18	cattle meat	24713
county	18	sheep wool	193254
county	18	sheep hair	76391
county	18	goat dairy	8086
county	18	goat meat	70420
county	18	pigs	925
county	18	rabbits	39142
county	18	broilers	7310
county	18	layers	16509
county	18	indigenous	242563
county	18	others	12354
county	18	turkey	0
county	18	ducks	0
county	18	quails	0
county	18	guinea fowl	0
county	18	geese	0
county	22	cattle dairy	24605
county	22	cattle meat	42590
county	22	sheep wool	3067
county	22	sheep hair	84024
county	22	goat dairy	81755
county	22	goat meat	24926
county	22	pigs	40788
county	22	rabbits	55814
county	22	broilers	927272
county	22	layers	768713
county	22	indigenous	791434
county	22	others	0
county	22	turkey	0
county	22	ducks	0
county	22	quails	11
county	22	guinea fowl	136
county	22	geese	0
county	41	cattle dairy	5698
county	41	cattle meat	492591
county	41	sheep wool	0
county	41	sheep hair	143752
county	41	goat dairy	4656
county	41	goat meat	260252
county	41	pigs	13453
county	41	rabbits	12324
county	41	broilers	63688
county	41	layers	40394
county	41	indigenous	804161
county	41	others	24262
county	41	turkey	0
county	41	ducks	0
county	41	quails	0
county	41	guinea fowl	0
county	41	geese	0
county	39	cattle dairy	102183
county	39	cattle meat	259940
county	39	sheep wool	5366
county	39	sheep hair	125326
county	39	goat dairy	3353
county	39	goat meat	105437
county	39	pigs	15220
county	39	rabbits	39645
county	39	broilers	8572
county	39	layers	36072
county	39	indigenous	1808108
county	39	others	0
county	39	turkey	21942
county	39	ducks	32259
county	39	quails	0
county	39	guinea fowl	1257
county	39	geese	10529
county	37	cattle dairy	118806
county	37	cattle meat	191905
county	37	sheep wool	150
county	37	sheep hair	77225
county	37	goat dairy	2099
county	37	goat meat	69664
county	37	pigs	34172
county	37	rabbits	41476
county	37	broilers	38840
county	37	layers	121450
county	37	indigenous	2010545
county	37	others	94050
county	37	turkey	0
county	37	ducks	0
county	37	quails	0
county	37	guinea fowl	0
county	37	geese	0
county	38	cattle dairy	40209
county	38	cattle meat	126908
county	38	sheep wool	0
county	38	sheep hair	18060
county	38	goat dairy	7046
county	38	goat meat	2980
county	38	pigs	2130
county	38	rabbits	11856
county	38	broilers	1450
county	38	layers	8980
county	38	indigenous	738999
county	38	others	0
county	38	turkey	460
county	38	ducks	3290
county	38	quails	4320
county	38	guinea fowl	2320
county	38	geese	4075
county	29	cattle dairy	220557
county	29	cattle meat	99388
county	29	sheep wool	36840
county	29	sheep hair	88421
county	29	goat dairy	3235
county	29	goat meat	44972
county	29	pigs	761
county	29	rabbits	8647
county	29	broilers	9286
county	29	layers	37152
county	29	indigenous	690705
county	29	others	0
county	29	turkey	0
county	29	ducks	0
county	29	quails	0
county	29	guinea fowl	0
county	29	geese	0
county	30	cattle dairy	153099
county	30	cattle meat	344289
county	30	sheep wool	15055
county	30	sheep hair	347573
county	30	goat dairy	5171
county	30	goat meat	876936
county	30	pigs	155
county	30	rabbits	5089
county	30	broilers	30646
county	30	layers	41264
county	30	indigenous	106647
county	30	others	0
county	30	turkey	304
county	30	ducks	0
county	30	quails	0
county	30	guinea fowl	0
county	32	cattle dairy	286050
county	32	cattle meat	160514
county	32	sheep wool	128958
county	32	sheep hair	312084
county	32	goat dairy	15529
county	32	goat meat	259506
county	32	pigs	18866
county	32	rabbits	88682
county	32	broilers	8507
county	32	layers	295978
county	32	indigenous	1183108
county	32	others	76075
county	32	turkey	0
county	32	ducks	0
county	32	quails	0
county	32	guinea fowl	0
county	32	geese	0
county	35	cattle dairy	102684
county	35	cattle meat	182372
county	35	sheep wool	13342
county	35	sheep hair	62466
county	35	goat dairy	3756
county	35	goat meat	85601
county	35	pigs	0
county	35	rabbits	0
county	35	broilers	31169
county	35	layers	62370
county	35	indigenous	507138
county	35	others	7471
county	35	turkey	0
county	35	ducks	0
county	35	quails	0
county	35	guinea fowl	0
county	35	geese	0
county	28	cattle dairy	159276
county	28	cattle meat	14808
county	28	sheep wool	114309
county	28	sheep hair	129548
county	28	goat dairy	1220
county	28	goat meat	194670
county	28	pigs	88
county	28	rabbits	2554
county	28	broilers	160
county	28	layers	14594
county	28	indigenous	433527
county	28	others	6694
county	28	turkey	0
county	28	ducks	0
county	28	quails	0
county	28	guinea fowl	0
county	28	geese	0
county	47	cattle dairy	34987
county	47	cattle meat	18212
county	47	sheep wool	125
county	47	sheep hair	29277
county	47	goat dairy	7992
county	47	goat meat	45547
county	47	pigs	33031
county	47	rabbits	42610
county	47	broilers	468156
county	47	layers	179122
county	47	indigenous	243777
county	47	others	41282
county	47	turkey	0
county	47	ducks	0
county	47	quails	0
county	47	guinea fowl	0
county	47	geese	0
county	23	cattle dairy	0
county	23	cattle meat	1534612
county	23	sheep wool	0
county	23	sheep hair	3517148
county	23	goat dairy	0
county	23	goat meat	5994881
county	23	pigs	36
county	23	rabbits	0
county	23	broilers	0
county	23	layers	0
county	23	indigenous	162862
county	23	others	0
county	23	turkey	0
county	23	ducks	0
county	23	quails	0
county	23	guinea fowl	0
county	23	geese	0
county	9	cattle dairy	0
county	9	cattle meat	692321
county	9	sheep wool	0
county	9	sheep hair	986632
county	9	goat dairy	0
county	9	goat meat	2314939
county	9	pigs	0
county	9	rabbits	0
county	9	broilers	0
county	9	layers	0
county	9	indigenous	202995
county	9	others	0
county	9	turkey	0
county	9	ducks	0
county	9	quails	0
county	9	guinea fowl	0
county	9	geese	0
county	40	cattle dairy	15895
county	40	cattle meat	165880
county	40	sheep wool	0
county	40	sheep hair	54991
county	40	goat dairy	1684
county	40	goat meat	6300
county	40	pigs	54824
county	40	rabbits	4145
county	40	broilers	0
county	40	layers	18614
county	40	indigenous	789315
county	40	others	0
county	40	turkey	7433
county	40	ducks	27897
county	40	quails	210
county	40	guinea fowl	200
county	40	geese	2724
country	KE	cattle dairy	4316153
country	KE	cattle meat	13495692
country	KE	sheep wool	862455
country	KE	sheep hair	16557752
country	KE	goat dairy	389326
country	KE	goat meat	25040732
country	KE	pigs	430844
country	KE	rabbits	874565
country	KE	broilers	3117554
country	KE	layers	3716911
country	KE	indigenous	34666188
country	KE	others	575457
country	KE	turkey	61752
country	KE	ducks	166357
country	KE	quails	39319
country	KE	guinea fowl	17956
country	KE	geese	28758
county	26	donkeys	7030
county	26	camels	4
county	26	hives log	3921
county	26	hives KTBH	5836
county	26	hives lang	4496
county	26	hives box	0
county	26	ostrich	0
county	26	horses	0
county	26	crocodiles	0
county	26	guinea pigs	0
county	26	doves	0
county	26	pegions	0
county	24	donkeys	13900
county	24	camels	5600
county	24	hives log	19000
county	24	hives KTBH	2110
county	24	hives lang	590
county	24	hives box	0
county	24	ostrich	0
county	24	horses	0
county	24	crocodiles	0
county	24	guinea pigs	0
county	24	doves	0
county	24	pegions	0
county	34	donkeys	61813
county	34	camels	840
county	34	hives log	4306
county	34	hives KTBH	6323
county	34	hives lang	3467
county	34	hives box	0
county	34	ostrich	1800
county	34	horses	0
county	34	crocodiles	0
county	34	guinea pigs	0
county	34	doves	0
county	34	pegions	0
county	15	donkeys	126064
county	15	camels	0
county	15	hives log	109361
county	15	hives KTBH	2160
county	15	hives lang	4840
county	15	hives box	0
county	15	ostrich	0
county	15	horses	0
county	15	crocodiles	0
county	15	guinea pigs	0
county	15	doves	0
county	15	pegions	0
county	16	donkeys	18720
county	16	camels	0
county	16	hives log	21770
county	16	hives KTBH	28910
county	16	hives lang	8200
county	16	hives box	20
county	16	ostrich	0
county	16	horses	0
county	16	crocodiles	0
county	16	guinea pigs	0
county	16	doves	0
county	17	donkeys	32695
county	17	camels	459
county	17	hives log	41764
county	17	hives KTBH	0
county	17	hives lang	0
county	17	hives box	0
county	17	ostrich	0
county	17	horses	0
county	17	crocodiles	0
county	17	guinea pigs	0
county	17	doves	0
county	17	pegions	0
county	7	donkeys	119513
county	7	camels	375490
county	7	hives log	0
county	7	hives KTBH	0
county	7	hives lang	0
county	7	hives box	0
county	7	ostrich	0
county	7	horses	0
county	7	crocodiles	0
county	7	guinea pigs	0
county	7	doves	0
county	7	pegions	0
county	5	donkeys	7423
county	5	camels	0
county	5	hives log	1800
county	5	hives KTBH	800
county	5	hives lang	950
county	5	hives box	0
county	5	ostrich	270
county	5	horses	0
county	5	crocodiles	0
county	5	guinea pigs	0
county	5	doves	0
county	5	pegions	0
county	4	donkeys	26932
county	4	camels	61992
county	4	hives log	35628
county	4	hives KTBH	570
county	4	hives lang	1651
county	4	hives box	0
county	4	ostrich	600
county	4	horses	0
county	4	crocodiles	0
county	4	guinea pigs	0
county	4	doves	0
county	4	pegions	0
county	8	donkeys	186044
county	8	camels	717028
county	8	hives log	247
county	8	hives KTBH	254
county	8	hives lang	373
county	8	hives box	0
county	8	ostrich	6
county	8	horses	0
county	8	crocodiles	0
county	8	guinea pigs	0
county	8	doves	0
county	8	pegions	0
county	1	donkeys	19
county	1	camels	16
county	1	hives log	53
county	1	hives KTBH	95
county	1	hives lang	128
county	1	hives box	10
county	1	ostrich	0
county	1	horses	0
county	1	crocodiles	0
county	1	guinea pigs	0
county	1	doves	0
county	1	pegions	0
county	6	donkeys	2177
county	6	camels	3320
county	6	hives log	2943
county	6	hives KTBH	1029
county	6	hives lang	5395
county	6	hives box	0
county	6	ostrich	125
county	6	horses	0
county	6	crocodiles	0
county	6	guinea pigs	0
county	6	doves	0
county	6	pegions	0
county	2	donkeys	968
county	2	camels	104
county	2	hives log	3082
county	2	hives KTBH	674
county	2	hives lang	2721
county	2	hives box	0
county	2	ostrich	0
county	2	horses	0
county	2	crocodiles	0
county	2	guinea pigs	0
county	2	doves	0
county	2	pegions	0
county	3	donkeys	7204
county	3	camels	185
county	3	hives log	4378
county	3	hives KTBH	2989
county	3	hives lang	6350
county	3	hives box	0
county	3	ostrich	0
county	3	horses	88
county	3	crocodiles	71500
county	3	guinea pigs	0
county	3	doves	0
county	3	pegions	0
county	14	donkeys	6088
county	14	camels	1
county	14	hives log	55113
county	14	hives KTBH	15133
county	14	hives lang	4597
county	14	hives box	2730
county	14	ostrich	0
county	14	horses	0
county	14	crocodiles	0
county	14	guinea pigs	0
county	14	doves	0
county	14	pegions	0
county	20	donkeys	5392
county	20	camels	0
county	20	hives log	4728
county	20	hives KTBH	4768
county	20	hives lang	1954
county	20	hives box	0
county	20	ostrich	0
county	20	horses	0
county	20	crocodiles	0
county	20	guinea pigs	0
county	20	doves	0
county	20	pegions	0
county	19	donkeys	2368
county	19	camels	0
county	19	hives log	6665
county	19	hives KTBH	9345
county	19	hives lang	2747
county	19	hives box	0
county	19	ostrich	0
county	19	horses	0
county	19	crocodiles	0
county	19	guinea pigs	0
county	19	doves	0
county	19	pegions	0
county	21	donkeys	764
county	21	camels	0
county	21	hives log	5630
county	21	hives KTBH	6332
county	21	hives lang	4008
county	21	hives box	0
county	21	ostrich	2
county	21	horses	0
county	21	crocodiles	0
county	21	guinea pigs	0
county	21	doves	0
county	21	pegions	0
county	27	donkeys	2982
county	27	camels	2
county	27	hives log	13604
county	27	hives KTBH	5577
county	27	hives lang	1894
county	27	hives box	0
county	27	ostrich	3
county	27	horses	0
county	27	crocodiles	0
county	27	guinea pigs	0
county	27	doves	0
county	27	pegions	0
county	13	donkeys	8300
county	13	camels	0
county	13	hives log	326919
county	13	hives KTBH	1174
county	13	hives lang	1077
county	13	hives box	0
county	13	ostrich	0
county	13	horses	0
county	13	crocodiles	0
county	13	guinea pigs	0
county	13	doves	0
county	13	pegions	0
county	12	donkeys	22000
county	12	camels	0
county	12	hives log	60000
county	12	hives KTBH	9500
county	12	hives lang	1400
county	12	hives box	0
county	12	ostrich	0
county	12	horses	0
county	12	crocodiles	0
county	12	guinea pigs	0
county	12	doves	0
county	12	pegions	0
county	11	donkeys	46484
county	11	camels	60836
county	11	hives log	1576
county	11	hives KTBH	110
county	11	hives lang	396
county	11	hives box	0
county	11	ostrich	18
county	11	horses	0
county	11	crocodiles	0
county	11	guinea pigs	0
county	11	doves	0
county	11	pegions	0
county	10	donkeys	81942
county	10	camels	217368
county	10	hives log	2033
county	10	hives KTBH	2902
county	10	hives lang	952
county	10	hives box	0
county	10	ostrich	0
county	10	horses	0
county	10	crocodiles	0
county	10	guinea pigs	0
county	10	doves	0
county	10	pegions	0
county	33	donkeys	70249
county	33	camels	102
county	33	hives log	33018
county	33	hives KTBH	3478
county	33	hives lang	1455
county	33	hives box	0
county	33	ostrich	0
county	33	horses	0
county	33	crocodiles	0
county	33	guinea pigs	0
county	33	doves	0
county	33	pegions	0
county	46	donkeys	277
county	46	camels	0
county	46	hives log	965
county	46	hives KTBH	638
county	46	hives lang	45
county	46	hives box	0
county	46	ostrich	0
county	46	horses	0
county	46	crocodiles	0
county	46	guinea pigs	0
county	46	doves	0
county	46	pegions	0
county	45	donkeys	3800
county	45	camels	0
county	45	hives log	680
county	45	hives KTBH	4980
county	45	hives lang	663
county	45	hives box	20
county	45	ostrich	0
county	45	horses	0
county	45	crocodiles	0
county	45	guinea pigs	0
county	45	doves	0
county	45	pegions	0
county	42	donkeys	7849
county	42	camels	0
county	42	hives log	252
county	42	hives KTBH	2310
county	42	hives lang	2648
county	42	hives box	0
county	42	ostrich	2
county	42	horses	0
county	42	crocodiles	0
county	42	guinea pigs	0
county	42	doves	0
county	42	pegions	0
county	44	donkeys	4029
county	44	camels	0
county	44	hives log	1947
county	44	hives KTBH	1122
county	44	hives lang	2953
county	44	hives box	0
county	44	ostrich	0
county	44	horses	0
county	44	crocodiles	0
county	44	guinea pigs	0
county	44	doves	0
county	44	pegions	0
county	43	donkeys	27846
county	43	camels	0
county	43	hives log	328
county	43	hives KTBH	1983
county	43	hives lang	5218
county	43	hives box	0
county	43	ostrich	0
county	43	horses	0
county	43	crocodiles	0
county	43	guinea pigs	0
county	43	doves	0
county	43	pegions	0
county	25	donkeys	34711
county	25	camels	53921
county	25	hives log	32896
county	25	hives KTBH	6035
county	25	hives lang	2852
county	25	hives box	0
county	25	ostrich	0
county	25	horses	0
county	25	crocodiles	0
county	25	guinea pigs	0
county	25	doves	0
county	25	pegions	0
county	18	donkeys	6800
county	18	camels	0
county	18	hives log	9167
county	18	hives KTBH	4332
county	18	hives lang	1748
county	18	hives box	0
county	18	ostrich	0
county	18	horses	0
county	18	crocodiles	0
county	18	guinea pigs	0
county	18	doves	0
county	18	pegions	0
county	22	donkeys	13442
county	22	camels	0
county	22	hives log	2558
county	22	hives KTBH	7160
county	22	hives lang	5091
county	22	hives box	0
county	22	ostrich	0
county	22	horses	0
county	22	crocodiles	0
county	22	guinea pigs	0
county	22	doves	0
county	22	pegions	0
county	41	donkeys	7719
county	41	camels	0
county	41	hives log	202
county	41	hives KTBH	2148
county	41	hives lang	8310
county	41	hives box	0
county	41	ostrich	0
county	41	horses	0
county	41	crocodiles	0
county	41	guinea pigs	0
county	41	doves	0
county	41	pegions	0
county	39	donkeys	0
county	39	camels	0
county	39	hives log	8879
county	39	hives KTBH	6955
county	39	hives lang	5385
county	39	hives box	0
county	39	ostrich	0
county	39	horses	3
county	39	crocodiles	0
county	39	guinea pigs	0
county	39	doves	0
county	39	pegions	14847
county	37	donkeys	0
county	37	camels	0
county	37	hives log	4934
county	37	hives KTBH	7541
county	37	hives lang	8071
county	37	hives box	0
county	37	ostrich	0
county	37	horses	0
county	37	crocodiles	0
county	37	guinea pigs	0
county	37	doves	0
county	37	pegions	0
county	38	donkeys	1050
county	38	camels	0
county	38	hives log	650
county	38	hives KTBH	1265
county	38	hives lang	1896
county	38	hives box	0
county	38	ostrich	0
county	38	horses	0
county	38	crocodiles	0
county	38	guinea pigs	3420
county	38	doves	0
county	38	pegions	0
county	29	donkeys	9526
county	29	camels	0
county	29	hives log	15050
county	29	hives KTBH	7267
county	29	hives lang	2929
county	29	hives box	0
county	29	ostrich	0
county	29	horses	0
county	29	crocodiles	0
county	29	guinea pigs	0
county	29	doves	0
county	29	pegions	0
county	30	donkeys	14911
county	30	camels	10619
county	30	hives log	125414
county	30	hives KTBH	13935
county	30	hives lang	2366
county	30	hives box	0
county	30	ostrich	0
county	30	horses	0
county	30	crocodiles	0
county	30	guinea pigs	0
county	30	doves	799
county	31	donkeys	73837
county	31	camels	0
county	31	hives log	24878
county	31	hives KTBH	11767
county	31	hives lang	2316
county	31	hives box	0
county	31	ostrich	102
county	31	horses	0
county	31	crocodiles	0
county	31	guinea pigs	0
county	31	doves	0
county	31	pegions	0
county	35	donkeys	19630
county	35	camels	0
county	35	hives log	8585
county	35	hives KTBH	4547
county	35	hives lang	697
county	35	hives box	0
county	35	ostrich	0
county	35	horses	0
county	35	crocodiles	0
county	35	guinea pigs	0
county	35	doves	0
county	35	pegions	0
county	28	donkeys	14745
county	28	camels	50
county	28	hives log	53046
county	28	hives KTBH	1036
county	28	hives lang	142
county	28	hives box	0
county	28	ostrich	0
county	28	horses	0
county	28	crocodiles	0
county	28	guinea pigs	0
county	28	doves	0
county	28	pegions	0
county	47	donkeys	4859
county	47	camels	0
county	47	hives log	314
county	47	hives KTBH	2779
county	47	hives lang	1309
county	47	hives box	0
county	47	ostrich	0
county	47	horses	0
county	47	crocodiles	0
county	47	guinea pigs	0
county	47	doves	0
county	47	pegions	0
county	23	donkeys	558189
county	23	camels	832462
county	23	hives log	0
county	23	hives KTBH	0
county	23	hives lang	0
county	23	hives box	0
county	23	ostrich	0
county	23	horses	0
county	23	crocodiles	0
county	23	guinea pigs	0
county	23	doves	0
county	23	pegions	0
county	9	donkeys	194285
county	9	camels	596863
county	9	hives log	9418
county	9	hives KTBH	0
county	9	hives lang	0
county	9	hives box	0
county	9	ostrich	0
county	9	horses	0
county	9	crocodiles	0
county	9	guinea pigs	0
county	9	doves	0
county	9	pegions	0
county	40	donkeys	853
county	40	camels	0
county	40	hives log	35000
county	40	hives KTBH	0
county	40	hives lang	0
county	40	hives box	0
county	40	ostrich	0
county	40	horses	0
county	40	crocodiles	0
county	40	guinea pigs	0
county	40	doves	0
county	40	pegions	4596
country	KE	donkeys	1882785
country	KE	camels	2937262
country	KE	hives log	1092702
country	KE	hives KTBH	201257
country	KE	hives lang	114280
country	KE	hives box	2780
country	KE	ostrich	2928
country	KE	horses	91
country	KE	crocodiles	71500
country	KE	guinea pigs	3420
country	KE	doves	799
country	KE	pegions	19443
county	32	donkeys	0
county	32	camels	0
county	32	hives log	0
county	32	hives KTBH	0
county	32	hives lang	0
county	32	hives box	0
county	32	ostrich	0
county	32	horses	0
county	32	crocodiles	0
county	32	guinea pigs	0
county	32	doves	0
county	32	pegions	0
county	36	donkeys	0
county	36	camels	0
county	36	hives log	0
county	36	hives KTBH	0
county	36	hives lang	0
county	36	hives box	0
county	36	ostrich	0
county	36	horses	0
county	36	crocodiles	0
county	36	guinea pigs	0
county	36	doves	0
county	36	pegions	0
\.
--
-- Name: livestock_population_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY livestock_population
    ADD CONSTRAINT livestock_population_pkey PRIMARY KEY (geo_level, geo_code, "livestock_population");


--
-- PostgreSQL database dump complete
--


