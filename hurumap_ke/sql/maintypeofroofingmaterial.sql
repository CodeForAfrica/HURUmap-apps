--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 11:01:07 EAT

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
-- TOC entry 225 (class 1259 OID 17878)
-- Name: maintypeofroofingmaterial; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE maintypeofroofingmaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of roofing material" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE maintypeofroofingmaterial OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17878)
-- Dependencies: 225
-- Data for Name: maintypeofroofingmaterial; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY maintypeofroofingmaterial (geo_level, geo_code, "main type of roofing material", total) FROM stdin;
country	KE	asbestos sheets	197217
country	KE	concrete	311379
country	KE	corrugated iron sheets	6398622
country	KE	grass	1194210
country	KE	makuti	283141
country	KE	mud/dung	69715
country	KE	other	64866
country	KE	tiles	193792
country	KE	tin	25155
county	30	asbestos sheets	1597
county	30	concrete	127
county	30	corrugated iron sheets	64044
county	30	grass	42860
county	30	makuti	223
county	30	mud/dung	68
county	30	other	266
county	30	tiles	1109
county	30	tin	132
county	36	asbestos sheets	2417
county	36	concrete	1280
county	36	corrugated iron sheets	126571
county	36	grass	41326
county	36	makuti	336
county	36	mud/dung	158
county	36	other	48
county	36	tiles	1641
county	36	tin	517
county	39	asbestos sheets	7131
county	39	concrete	363
county	39	corrugated iron sheets	210417
county	39	grass	49928
county	39	makuti	229
county	39	mud/dung	116
county	39	other	351
county	39	tiles	1534
county	39	tin	532
county	40	asbestos sheets	2568
county	40	concrete	150
county	40	corrugated iron sheets	77297
county	40	grass	72762
county	40	makuti	214
county	40	mud/dung	38
county	40	other	153
county	40	tiles	798
county	40	tin	100
county	28	asbestos sheets	890
county	28	concrete	65
county	28	corrugated iron sheets	44911
county	28	grass	30179
county	28	makuti	161
county	28	mud/dung	56
county	28	other	446
county	28	tiles	720
county	28	tin	110
county	14	asbestos sheets	3090
county	14	concrete	710
county	14	corrugated iron sheets	121230
county	14	grass	4325
county	14	makuti	169
county	14	mud/dung	51
county	14	other	54
county	14	tiles	1424
county	14	tin	145
county	7	asbestos sheets	2427
county	7	concrete	220
county	7	corrugated iron sheets	28769
county	7	grass	59267
county	7	makuti	4537
county	7	mud/dung	769
county	7	other	836
county	7	tiles	744
county	7	tin	701
county	43	asbestos sheets	3289
county	43	concrete	131
county	43	corrugated iron sheets	169537
county	43	grass	31181
county	43	makuti	259
county	43	mud/dung	78
county	43	other	43
county	43	tiles	1144
county	43	tin	446
county	11	asbestos sheets	459
county	11	concrete	100
county	11	corrugated iron sheets	19025
county	11	grass	6499
county	11	makuti	1823
county	11	mud/dung	1060
county	11	other	1576
county	11	tiles	208
county	11	tin	555
county	34	asbestos sheets	5520
county	34	concrete	5799
county	34	corrugated iron sheets	115996
county	34	grass	18406
county	34	makuti	693
county	34	mud/dung	17838
county	34	other	1215
county	34	tiles	6884
county	34	tin	712
county	37	asbestos sheets	8605
county	37	concrete	509
county	37	corrugated iron sheets	272421
county	37	grass	70575
county	37	makuti	284
county	37	mud/dung	143
county	37	other	160
county	37	tiles	2066
county	37	tin	612
county	35	asbestos sheets	1568
county	35	concrete	1483
county	35	corrugated iron sheets	103851
county	35	grass	18671
county	35	makuti	134
county	35	mud/dung	92
county	35	other	134
county	35	tiles	1037
county	35	tin	255
county	22	asbestos sheets	8616
county	22	concrete	30984
county	22	corrugated iron sheets	423968
county	22	grass	845
county	22	makuti	540
county	22	mud/dung	119
county	22	other	649
county	22	tiles	15256
county	22	tin	810
county	3	asbestos sheets	5039
county	3	concrete	3498
county	3	corrugated iron sheets	83604
county	3	grass	14458
county	3	makuti	88633
county	3	mud/dung	84
county	3	other	218
county	3	tiles	1978
county	3	tin	339
county	20	asbestos sheets	4011
county	20	concrete	1287
county	20	corrugated iron sheets	146203
county	20	grass	956
county	20	makuti	41
county	20	mud/dung	49
county	20	other	182
county	20	tiles	1155
county	20	tin	97
county	45	asbestos sheets	8598
county	45	concrete	1669
county	45	corrugated iron sheets	225456
county	45	grass	30638
county	45	makuti	443
county	45	mud/dung	124
county	45	other	49
county	45	tiles	1604
county	45	tin	873
county	42	asbestos sheets	6075
county	42	concrete	2370
county	42	corrugated iron sheets	192366
county	42	grass	20515
county	42	makuti	231
county	42	mud/dung	108
county	42	other	144
county	42	tiles	3841
county	42	tin	487
county	15	asbestos sheets	3385
county	15	concrete	298
county	15	corrugated iron sheets	156845
county	15	grass	41198
county	15	makuti	753
county	15	mud/dung	127
county	15	other	264
county	15	tiles	2257
county	15	tin	285
county	2	asbestos sheets	2199
county	2	concrete	250
county	2	corrugated iron sheets	45196
county	2	grass	12240
county	2	makuti	60569
county	2	mud/dung	63
county	2	other	228
county	2	tiles	695
county	2	tin	251
county	31	asbestos sheets	2776
county	31	concrete	1432
county	31	corrugated iron sheets	83142
county	31	grass	9620
county	31	makuti	442
county	31	mud/dung	2627
county	31	other	963
county	31	tiles	1423
county	31	tin	656
county	5	asbestos sheets	656
county	5	concrete	2464
county	5	corrugated iron sheets	6955
county	5	grass	3611
county	5	makuti	7670
county	5	mud/dung	16
county	5	other	495
county	5	tiles	70
county	5	tin	76
county	16	asbestos sheets	4114
county	16	concrete	8066
county	16	corrugated iron sheets	235065
county	16	grass	11777
county	16	makuti	313
county	16	mud/dung	132
county	16	other	284
county	16	tiles	4278
county	16	tin	313
county	17	asbestos sheets	2195
county	17	concrete	276
county	17	corrugated iron sheets	161275
county	17	grass	20425
county	17	makuti	447
county	17	mud/dung	53
county	17	other	68
county	17	tiles	1425
county	17	tin	116
county	9	asbestos sheets	531
county	9	concrete	142
county	9	corrugated iron sheets	14372
county	9	grass	77307
county	9	makuti	31088
county	9	mud/dung	265
county	9	other	1009
county	9	tiles	619
county	9	tin	138
county	10	asbestos sheets	584
county	10	concrete	27
county	10	corrugated iron sheets	15613
county	10	grass	13789
county	10	makuti	6661
county	10	mud/dung	452
county	10	other	18606
county	10	tiles	126
county	10	tin	853
county	12	asbestos sheets	10844
county	12	concrete	1092
county	12	corrugated iron sheets	352331
county	12	grass	10920
county	12	makuti	1133
county	12	mud/dung	375
county	12	other	303
county	12	tiles	2998
county	12	tin	509
county	44	asbestos sheets	4341
county	44	concrete	211
county	44	corrugated iron sheets	136532
county	44	grass	37312
county	44	makuti	175
county	44	mud/dung	86
county	44	other	50
county	44	tiles	1098
county	44	tin	165
county	1	asbestos sheets	8338
county	1	concrete	24683
county	1	corrugated iron sheets	201639
county	1	grass	261
county	1	makuti	11418
county	1	mud/dung	344
county	1	other	332
county	1	tiles	9111
county	1	tin	1128
county	21	asbestos sheets	4132
county	21	concrete	4372
county	21	corrugated iron sheets	228723
county	21	grass	332
county	21	makuti	86
county	21	mud/dung	110
county	21	other	85
county	21	tiles	3005
county	21	tin	1487
county	47	asbestos sheets	30463
county	47	concrete	208148
county	47	corrugated iron sheets	641697
county	47	grass	185
county	47	makuti	711
county	47	mud/dung	283
county	47	other	1638
county	47	tiles	95617
county	47	tin	4373
county	32	asbestos sheets	13084
county	32	concrete	3613
county	32	corrugated iron sheets	354675
county	32	grass	23801
county	32	makuti	661
county	32	mud/dung	547
county	32	other	2999
county	32	tiles	8644
county	32	tin	1073
county	29	asbestos sheets	2110
county	29	concrete	113
county	29	corrugated iron sheets	126222
county	29	grass	22662
county	29	makuti	150
county	29	mud/dung	33
county	29	other	187
county	29	tiles	1189
county	29	tin	223
county	33	asbestos sheets	4998
county	33	concrete	191
county	33	corrugated iron sheets	82259
county	33	grass	56817
county	33	makuti	1942
county	33	mud/dung	18677
county	33	other	2720
county	33	tiles	808
county	33	tin	655
county	46	asbestos sheets	1793
county	46	concrete	218
county	46	corrugated iron sheets	96374
county	46	grass	6561
county	46	makuti	148
county	46	mud/dung	30
county	46	other	10
county	46	tiles	901
county	46	tin	30
county	18	asbestos sheets	2864
county	18	concrete	252
county	18	corrugated iron sheets	135489
county	18	grass	1138
county	18	makuti	102
county	18	mud/dung	22
county	18	other	1679
county	18	tiles	866
county	18	tin	81
county	19	asbestos sheets	4441
county	19	concrete	2375
county	19	corrugated iron sheets	190494
county	19	grass	898
county	19	makuti	148
county	19	mud/dung	47
county	19	other	207
county	19	tiles	2376
county	19	tin	367
county	25	asbestos sheets	439
county	25	concrete	32
county	25	corrugated iron sheets	10747
county	25	grass	5257
county	25	makuti	5576
county	25	mud/dung	17966
county	25	other	5713
county	25	tiles	349
county	25	tin	1152
county	41	asbestos sheets	1861
county	41	concrete	198
county	41	corrugated iron sheets	130934
county	41	grass	63799
county	41	makuti	200
county	41	mud/dung	69
county	41	other	56
county	41	tiles	1224
county	41	tin	323
county	6	asbestos sheets	2098
county	6	concrete	299
county	6	corrugated iron sheets	60246
county	6	grass	4678
county	6	makuti	1064
county	6	mud/dung	82
county	6	other	166
county	6	tiles	884
county	6	tin	522
county	4	asbestos sheets	681
county	4	concrete	19
county	4	corrugated iron sheets	12498
county	4	grass	26680
county	4	makuti	6576
county	4	mud/dung	19
county	4	other	546
county	4	tiles	193
county	4	tin	62
county	13	asbestos sheets	855
county	13	concrete	10
county	13	corrugated iron sheets	21477
county	13	grass	4769
county	13	makuti	65
county	13	mud/dung	10
county	13	other	29
county	13	tiles	159
county	13	tin	15
county	26	asbestos sheets	4836
county	26	concrete	286
county	26	corrugated iron sheets	138404
county	26	grass	22979
county	26	makuti	280
county	26	mud/dung	83
county	26	other	844
county	26	tiles	1721
county	26	tin	199
county	23	asbestos sheets	1447
county	23	concrete	53
county	23	corrugated iron sheets	16925
county	23	grass	42370
county	23	makuti	43605
county	23	mud/dung	195
county	23	other	16104
county	23	tiles	456
county	23	tin	1780
county	27	asbestos sheets	5088
county	27	concrete	1150
county	27	corrugated iron sheets	170243
county	27	grass	15613
county	27	makuti	171
county	27	mud/dung	114
county	27	other	2403
county	27	tiles	6432
county	27	tin	402
county	38	asbestos sheets	3026
county	38	concrete	239
county	38	corrugated iron sheets	113898
county	38	grass	4694
county	38	makuti	90
county	38	mud/dung	46
county	38	other	23
county	38	tiles	891
county	38	tin	334
county	8	asbestos sheets	399
county	8	concrete	93
county	8	corrugated iron sheets	9230
county	8	grass	76293
county	8	makuti	1708
county	8	mud/dung	152
county	8	other	188
county	8	tiles	319
county	8	tin	111
county	24	asbestos sheets	739
county	24	concrete	32
county	24	corrugated iron sheets	23456
county	24	grass	62833
county	24	makuti	239
county	24	mud/dung	5739
county	24	other	143
county	24	tiles	515
county	24	tin	53
\.


--
-- TOC entry 3062 (class 2606 OID 18019)
-- Name: maintypeofroofingmaterial maintypeofroofingmaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY maintypeofroofingmaterial
    ADD CONSTRAINT maintypeofroofingmaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of roofing material");


-- Completed on 2017-07-31 11:01:26 EAT

--
-- PostgreSQL database dump complete
--

