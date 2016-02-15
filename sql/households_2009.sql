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

ALTER TABLE IF EXISTS ONLY public.maintypeoflightingfuel DROP CONSTRAINT IF EXISTS maintypeoflightingfuel_pkey;
ALTER TABLE IF EXISTS ONLY public.mainsourceofwater DROP CONSTRAINT IF EXISTS mainsourceofwater_pkey;
ALTER TABLE IF EXISTS ONLY public.mainmodeofhumanwastedisposal DROP CONSTRAINT IF EXISTS mainmodeofhumanwastedisposal_pkey;
DROP TABLE IF EXISTS public.maintypeoflightingfuel;
DROP TABLE IF EXISTS public.mainsourceofwater;
DROP TABLE IF EXISTS public.mainmodeofhumanwastedisposal;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mainmodeofhumanwastedisposal; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mainmodeofhumanwastedisposal (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main mode of human waste disposal" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Name: mainsourceofwater; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mainsourceofwater (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main source of water" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Name: maintypeoflightingfuel; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE maintypeoflightingfuel (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of lighting fuel" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: mainmodeofhumanwastedisposal; Type: TABLE DATA; Schema: public; Owner: -
--

COPY mainmodeofhumanwastedisposal (geo_level, geo_code, "main mode of human waste disposal", total) FROM stdin;
country	KE	bucket	22828
country	KE	bush	1196509
country	KE	cess pool	29881
country	KE	main sewer	674541
country	KE	other	14104
country	KE	septic tank	299030
county	2	bucket	196
county	2	bush	62342
county	2	cess pool	574
county	2	main sewer	614
county	2	other	166
county	2	septic tank	2723
county	3	bucket	1152
county	3	bush	67545
county	3	cess pool	930
county	3	main sewer	3234
county	3	other	273
county	5	bucket	92
county	5	bush	4822
county	5	cess pool	97
county	5	main sewer	75
county	5	other	78
county	5	septic tank	759
county	7	bucket	308
county	7	bush	46934
county	7	cess pool	150
county	7	main sewer	1121
county	7	other	557
county	7	septic tank	851
county	9	bucket	168
county	9	bush	82437
county	9	cess pool	226
county	9	main sewer	122
county	9	other	404
county	10	bucket	24
county	10	bush	36636
county	10	cess pool	23
county	10	main sewer	22
county	10	other	131
county	10	septic tank	118
county	11	bucket	36
county	11	bush	13739
county	11	cess pool	17
county	11	main sewer	1557
county	11	other	107
county	12	bucket	277
county	12	bush	8257
county	12	cess pool	874
county	12	main sewer	2306
county	12	other	540
county	12	septic tank	6029
county	14	bucket	78
county	14	bush	2188
county	14	cess pool	469
county	14	main sewer	3264
county	14	other	83
county	15	bucket	86
county	15	bush	63204
county	15	cess pool	217
county	15	main sewer	433
county	15	other	216
county	15	septic tank	1269
county	16	bucket	307
county	16	bush	6989
county	16	cess pool	1175
county	16	main sewer	11666
county	16	other	524
county	16	septic tank	8944
county	17	bucket	78
county	17	bush	3811
county	17	cess pool	249
county	17	main sewer	1032
county	17	other	74
county	20	bucket	245
county	20	bush	807
county	20	cess pool	252
county	20	main sewer	1222
county	20	other	147
county	20	septic tank	4985
county	40	bucket	135
county	40	bush	12033
county	40	cess pool	178
county	40	main sewer	545
county	40	other	223
county	21	bucket	116
county	21	bush	415
county	22	bucket	491
county	22	bush	1118
county	22	cess pool	1862
county	22	main sewer	31288
county	22	other	264
county	22	septic tank	44518
county	28	bucket	51
county	28	bush	14465
county	28	cess pool	33
county	28	main sewer	295
county	28	other	34
county	30	bucket	40
county	30	bush	47510
county	30	cess pool	80
county	30	main sewer	296
county	30	other	59
county	30	septic tank	1111
county	31	bucket	84
county	31	bush	11626
county	31	cess pool	194
county	31	main sewer	10324
county	31	other	70
county	34	bucket	232
county	34	bush	44197
county	34	cess pool	478
county	34	main sewer	2407
county	34	other	316
county	34	septic tank	17157
county	35	bucket	129
county	35	bush	10080
county	35	cess pool	107
county	35	main sewer	2695
county	35	other	78
county	36	bucket	96
county	36	bush	8639
county	36	cess pool	144
county	36	main sewer	565
county	36	other	113
county	36	septic tank	546
county	37	bucket	336
county	37	bush	4941
county	1	bucket	3040
county	1	bush	5723
county	1	cess pool	3698
county	1	main sewer	37225
county	1	other	494
county	1	septic tank	35307
county	3	septic tank	14764
county	4	bucket	104
county	4	bush	33291
county	4	cess pool	30
county	4	main sewer	132
county	4	other	103
county	4	septic tank	261
county	6	bucket	31
county	6	bush	3948
county	6	cess pool	185
county	6	main sewer	953
county	6	other	86
county	6	septic tank	3223
county	8	bucket	6660
county	8	bush	67723
county	8	cess pool	59
county	8	main sewer	151
county	8	other	239
county	8	septic tank	329
county	9	septic tank	87
county	11	septic tank	622
county	13	bucket	8
county	13	bush	2541
county	13	cess pool	9
county	13	main sewer	19
county	13	other	26
county	13	septic tank	81
county	14	septic tank	4076
county	17	septic tank	632
county	18	bucket	116
county	18	bush	223
county	18	cess pool	110
county	18	main sewer	346
county	18	other	39
county	18	septic tank	1022
county	19	bucket	196
county	19	bush	486
county	19	cess pool	584
county	19	main sewer	9633
county	19	other	34
county	19	septic tank	7083
county	25	bucket	19
county	25	bush	34746
county	25	cess pool	30
county	25	main sewer	94
county	25	other	33
county	25	septic tank	295
county	40	septic tank	808
county	21	cess pool	419
county	21	main sewer	3967
county	21	other	101
county	21	septic tank	3578
county	23	bucket	67
county	23	bush	100997
county	23	cess pool	133
county	23	main sewer	192
county	23	other	230
county	23	septic tank	252
county	24	bucket	41
county	24	bush	62901
county	24	cess pool	56
county	24	main sewer	132
county	24	other	42
county	24	septic tank	156
county	26	bucket	173
county	26	bush	4346
county	26	cess pool	200
county	26	main sewer	2802
county	26	other	261
county	26	septic tank	1377
county	27	bucket	293
county	27	bush	3374
county	27	cess pool	315
county	27	main sewer	16411
county	27	other	330
county	27	septic tank	6845
county	28	septic tank	333
county	29	bucket	58
county	29	bush	7173
county	29	cess pool	146
county	29	main sewer	599
county	29	other	295
county	29	septic tank	663
county	31	septic tank	1886
county	32	bucket	554
county	32	bush	11262
county	32	cess pool	3148
county	32	main sewer	32864
county	32	other	339
county	32	septic tank	14507
county	33	bucket	122
county	33	bush	81700
county	33	cess pool	122
county	33	main sewer	755
county	33	other	209
county	33	septic tank	1429
county	35	septic tank	1316
county	37	cess pool	466
county	37	main sewer	5272
county	37	other	570
county	37	septic tank	2879
county	38	bucket	55
county	38	bush	908
county	38	cess pool	78
county	38	main sewer	374
county	38	other	98
county	38	septic tank	275
county	39	bucket	303
county	39	bush	8060
county	39	cess pool	282
county	39	main sewer	1936
county	39	other	743
county	39	septic tank	2086
county	41	bucket	154
county	41	bush	39793
county	41	cess pool	199
county	41	main sewer	396
county	41	other	385
county	41	septic tank	512
county	42	bucket	275
county	42	bush	27440
county	42	cess pool	294
county	42	main sewer	10933
county	42	other	758
county	42	septic tank	5513
county	43	bucket	171
county	43	bush	79509
county	43	cess pool	111
county	43	main sewer	1869
county	43	other	481
county	43	septic tank	354
county	44	bucket	215
county	44	bush	59404
county	44	cess pool	125
county	44	main sewer	861
county	44	other	245
county	44	septic tank	595
county	45	bucket	128
county	45	bush	1726
county	45	cess pool	214
county	45	main sewer	1640
county	45	other	304
county	45	septic tank	1191
county	47	bucket	5205
county	47	bush	3962
county	47	cess pool	10489
county	47	main sewer	469830
county	47	other	3180
county	46	bucket	83
county	46	bush	538
county	46	cess pool	50
county	46	main sewer	72
county	46	other	22
county	46	septic tank	273
county	47	septic tank	95410
\.


--
-- Data for Name: mainsourceofwater; Type: TABLE DATA; Schema: public; Owner: -
--

COPY mainsourceofwater (geo_level, geo_code, "main source of water", total) FROM stdin;
county	22	jabia/rain/harvested	4620
county	22	lake	3873
county	22	other	164
county	22	piped	158445
county	22	piped into dwelling	60224
county	22	pond/dam	163
county	22	spring/well/borehole	153734
county	22	stream	57079
county	22	water vendor	44148
county	28	jabia/rain/harvested	148
county	28	lake	606
county	28	other	29
county	28	piped	13426
county	28	piped into dwelling	1856
county	28	pond/dam	60
county	28	spring/well/borehole	18869
county	28	stream	42315
county	28	water vendor	246
county	30	jabia/rain/harvested	440
county	30	lake	7123
county	30	other	3384
county	30	piped	13623
county	30	piped into dwelling	1925
county	30	pond/dam	2344
county	30	spring/well/borehole	22901
county	30	stream	57714
county	30	water vendor	1195
county	34	jabia/rain/harvested	1325
county	34	lake	6889
county	34	other	261
county	34	piped	48283
county	34	piped into dwelling	15602
county	34	pond/dam	299
county	34	spring/well/borehole	60198
county	34	stream	15482
county	34	water vendor	25125
county	35	jabia/rain/harvested	935
county	35	lake	1334
county	35	other	39
county	35	piped	23743
county	35	piped into dwelling	15249
county	35	pond/dam	90
county	35	spring/well/borehole	31603
county	35	stream	52052
county	35	water vendor	2536
county	36	jabia/rain/harvested	2353
county	36	lake	26480
county	36	other	49
county	36	piped	16819
county	36	piped into dwelling	7910
county	36	pond/dam	229
county	36	spring/well/borehole	44261
county	36	stream	75666
county	36	water vendor	1147
county	37	jabia/rain/harvested	1250
county	37	lake	2463
county	37	other	109
county	37	piped	14459
county	37	piped into dwelling	6263
county	37	pond/dam	264
county	3	lake	26218
county	7	jabia/rain/harvested	618
county	7	lake	3797
county	7	other	9514
county	7	piped	24492
county	7	piped into dwelling	3233
county	7	pond/dam	120
county	7	spring/well/borehole	46371
county	7	stream	7506
county	11	jabia/rain/harvested	71
county	11	lake	213
county	11	other	162
county	11	piped	13413
county	11	piped into dwelling	2010
county	11	pond/dam	3
county	11	spring/well/borehole	11018
county	11	stream	3386
county	14	jabia/rain/harvested	607
county	14	lake	4662
county	14	other	146
county	14	piped	37288
county	14	piped into dwelling	11810
county	14	pond/dam	99
county	14	spring/well/borehole	32127
county	14	stream	40822
county	14	water vendor	4122
county	15	jabia/rain/harvested	1336
county	15	lake	9583
county	15	other	49
county	15	piped	13758
county	15	piped into dwelling	1968
county	15	pond/dam	294
county	20	jabia/rain/harvested	756
county	20	lake	318
county	20	other	79
county	20	piped	51515
county	20	piped into dwelling	10975
county	20	pond/dam	28
county	20	spring/well/borehole	24356
county	20	stream	63242
county	40	jabia/rain/harvested	260
county	40	lake	1800
county	40	other	44
county	40	piped	7689
county	40	piped into dwelling	986
county	40	pond/dam	5033
county	40	spring/well/borehole	118850
county	40	stream	18793
county	40	water vendor	770
county	37	spring/well/borehole	248628
county	37	stream	80202
county	37	water vendor	2041
county	39	jabia/rain/harvested	394
county	39	lake	729
county	39	other	55
county	39	piped	23765
county	39	piped into dwelling	4186
county	39	pond/dam	168
county	39	spring/well/borehole	212514
county	39	stream	25720
county	39	water vendor	3293
county	42	jabia/rain/harvested	2362
county	42	lake	9735
county	42	other	72
county	42	piped	49658
county	42	piped into dwelling	7653
county	42	pond/dam	5287
county	42	spring/well/borehole	76589
county	42	stream	55491
county	43	jabia/rain/harvested	1353
county	43	lake	24289
county	43	other	114
county	43	piped	9969
county	43	piped into dwelling	1625
county	43	pond/dam	34914
county	43	spring/well/borehole	66615
county	43	stream	64696
county	43	water vendor	2680
county	45	jabia/rain/harvested	2510
county	45	lake	437
county	45	other	55
county	45	piped	8007
county	45	piped into dwelling	2449
county	45	pond/dam	147
county	45	spring/well/borehole	170166
county	45	stream	84837
county	21	jabia/rain/harvested	8537
county	21	lake	1583
county	21	other	82
county	21	piped	46955
county	21	piped into dwelling	10802
county	21	pond/dam	96
county	21	spring/well/borehole	57400
county	21	stream	112927
county	21	water vendor	4108
county	29	jabia/rain/harvested	859
county	29	lake	1656
county	29	other	30
county	29	piped	17747
county	29	piped into dwelling	3234
county	29	pond/dam	116
county	29	spring/well/borehole	64729
county	29	stream	64381
county	29	water vendor	1321
county	31	jabia/rain/harvested	1580
county	31	lake	7847
county	31	other	48
county	31	piped	21809
county	31	piped into dwelling	8753
county	31	pond/dam	40
county	31	spring/well/borehole	32560
county	31	stream	26873
county	31	water vendor	3604
county	32	jabia/rain/harvested	15511
county	32	lake	8131
county	32	other	609
county	32	piped	118036
county	32	piped into dwelling	32572
county	32	pond/dam	1625
county	32	spring/well/borehole	106202
county	32	stream	69081
county	32	water vendor	58069
county	33	jabia/rain/harvested	1589
county	33	lake	22845
county	33	other	672
county	33	piped	10241
county	33	piped into dwelling	1401
county	33	pond/dam	291
county	33	spring/well/borehole	43601
county	33	stream	78939
county	33	water vendor	9641
county	44	jabia/rain/harvested	802
county	44	lake	9615
county	44	other	232
county	44	piped	2901
county	44	piped into dwelling	1359
county	44	pond/dam	11291
county	44	spring/well/borehole	81080
county	44	stream	71603
county	44	water vendor	1328
county	46	jabia/rain/harvested	2140
county	46	lake	660
county	46	other	11
county	46	piped	3666
county	46	piped into dwelling	713
county	46	pond/dam	52
county	46	spring/well/borehole	66466
county	46	stream	32287
county	46	water vendor	390
county	47	jabia/rain/harvested	1691
county	47	lake	2761
county	47	other	687
county	47	piped	514943
county	47	piped into dwelling	230704
county	47	pond/dam	99
county	47	spring/well/borehole	70729
county	47	stream	1345
county	47	water vendor	162057
county	2	jabia/rain/harvested	701
county	2	lake	25370
county	2	other	125
county	2	piped	31361
county	2	piped into dwelling	3080
county	2	pond/dam	265
county	2	spring/well/borehole	45131
county	2	stream	13470
county	5	jabia/rain/harvested	1652
county	5	lake	1396
county	5	other	29
county	5	piped	5030
county	5	piped into dwelling	1732
county	5	pond/dam	146
county	5	spring/well/borehole	11402
county	5	stream	532
county	9	jabia/rain/harvested	6167
county	9	lake	34942
county	9	other	353
county	9	piped	5769
county	9	piped into dwelling	1426
county	9	pond/dam	118
county	9	spring/well/borehole	51713
county	9	stream	8410
county	9	water vendor	16599
county	10	jabia/rain/harvested	1008
county	10	lake	5599
county	10	other	53
county	10	piped	3747
county	10	piped into dwelling	147
county	10	pond/dam	724
county	10	spring/well/borehole	39266
county	10	stream	350
county	12	jabia/rain/harvested	3276
county	12	lake	1214
county	12	other	832
county	12	piped	170912
county	12	piped into dwelling	29737
county	12	pond/dam	449
county	12	spring/well/borehole	43660
county	12	stream	102300
county	12	water vendor	28646
county	15	spring/well/borehole	87259
county	15	stream	83955
county	15	water vendor	7289
county	16	jabia/rain/harvested	1920
county	16	lake	20640
county	16	other	138
county	16	piped	27785
county	16	piped into dwelling	9809
county	16	pond/dam	155
county	16	spring/well/borehole	114074
county	16	stream	61163
county	17	jabia/rain/harvested	1158
county	17	lake	9380
county	17	other	11
county	17	piped	36034
county	17	piped into dwelling	4529
county	17	pond/dam	77
county	17	spring/well/borehole	64460
county	17	stream	62249
county	17	water vendor	8580
county	18	jabia/rain/harvested	9675
county	18	lake	11979
county	18	other	32
county	18	piped	29594
county	18	piped into dwelling	5718
county	18	pond/dam	90
county	18	spring/well/borehole	52806
county	18	stream	29165
county	19	jabia/rain/harvested	8206
county	19	lake	1111
county	19	other	138
county	19	piped	88332
county	23	jabia/rain/harvested	56
county	23	lake	692
county	23	other	323
county	23	piped	12945
county	23	piped into dwelling	2313
county	23	pond/dam	3247
county	23	spring/well/borehole	76203
county	23	stream	25515
county	23	water vendor	1897
county	24	jabia/rain/harvested	104
county	24	lake	3270
county	24	other	15
county	24	piped	7353
county	24	piped into dwelling	1210
county	24	pond/dam	128
county	24	spring/well/borehole	26259
county	24	stream	54977
county	24	water vendor	461
county	26	jabia/rain/harvested	407
county	26	lake	1197
county	26	other	90
county	26	piped	16880
county	26	piped into dwelling	2822
county	26	pond/dam	85
county	26	spring/well/borehole	110386
county	26	stream	34441
county	26	water vendor	3809
county	27	jabia/rain/harvested	214
county	27	lake	1638
county	27	other	122
county	27	piped	50168
county	27	piped into dwelling	15465
county	27	pond/dam	135
county	27	spring/well/borehole	113923
county	27	stream	17991
county	27	water vendor	2635
county	38	jabia/rain/harvested	1497
county	38	lake	416
county	38	other	21
county	38	piped	4155
county	38	piped into dwelling	1387
county	38	pond/dam	57
county	38	spring/well/borehole	87185
county	38	stream	27406
county	38	water vendor	1223
county	41	jabia/rain/harvested	2052
county	41	lake	28184
county	41	other	38
county	41	piped	11698
county	41	piped into dwelling	1850
county	1	jabia/rain/harvested	323
county	1	lake	1102
county	1	other	147
county	1	piped	110955
county	1	piped into dwelling	31055
county	1	pond/dam	33
county	1	spring/well/borehole	59144
county	1	stream	340
county	1	water vendor	65601
county	2	water vendor	2544
county	3	jabia/rain/harvested	1418
county	3	other	582
county	3	piped	93557
county	3	piped into dwelling	14151
county	3	pond/dam	511
county	3	spring/well/borehole	42476
county	3	stream	8636
county	3	water vendor	12215
county	4	jabia/rain/harvested	82
county	4	lake	3691
county	4	other	2549
county	4	piped	5024
county	4	piped into dwelling	800
county	4	pond/dam	460
county	4	spring/well/borehole	20399
county	4	stream	12703
county	4	water vendor	1706
county	5	water vendor	265
county	6	jabia/rain/harvested	134
county	6	lake	617
county	6	other	52
county	6	piped	37451
county	6	piped into dwelling	4639
county	6	pond/dam	216
county	6	spring/well/borehole	7532
county	6	stream	16368
county	6	water vendor	4081
county	7	water vendor	2939
county	8	jabia/rain/harvested	965
county	8	lake	12091
county	8	other	211
county	8	piped	1061
county	8	piped into dwelling	249
county	8	pond/dam	26
county	8	spring/well/borehole	62867
county	8	stream	48
county	8	water vendor	11056
county	10	water vendor	6047
county	11	water vendor	1050
county	13	jabia/rain/harvested	23
county	13	lake	21
county	13	other	7
county	13	piped	2895
county	13	piped into dwelling	328
county	13	pond/dam	28
county	13	spring/well/borehole	7828
county	13	stream	16084
county	13	water vendor	179
county	16	water vendor	28816
county	18	water vendor	4820
county	19	piped into dwelling	24534
county	19	pond/dam	56
county	19	spring/well/borehole	18701
county	19	stream	55794
county	19	water vendor	4831
county	20	water vendor	2951
county	25	jabia/rain/harvested	194
county	25	lake	2624
county	25	other	22
county	25	piped	6389
county	25	piped into dwelling	441
county	25	pond/dam	233
county	25	spring/well/borehole	25100
county	25	stream	11747
county	25	water vendor	604
county	41	pond/dam	27534
county	41	spring/well/borehole	77281
county	41	stream	46921
county	41	water vendor	3476
county	42	water vendor	19872
county	45	water vendor	1075
country	KE	jabia/rain/harvested	95279
country	KE	lake	352821
country	KE	other	22586
country	KE	piped	2023745
country	KE	piped into dwelling	602884
country	KE	pond/dam	97925
country	KE	spring/well/borehole	3106622
country	KE	stream	1893004
country	KE	water vendor	573088
\.


--
-- Data for Name: maintypeoflightingfuel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY maintypeoflightingfuel (geo_level, geo_code, "main type of lighting fuel", total) FROM stdin;
county	3	electricity	33423
county	3	gas lamps	911
county	3	lanterns	33735
county	3	other	665
county	3	pressure lamps	1433
county	3	solar	3471
county	3	tin lamps	125005
county	3	wood	1121
county	5	electricity	3767
county	5	gas lamps	158
county	5	lanterns	7211
county	5	other	428
county	5	pressure lamps	135
county	5	solar	560
county	7	electricity	11405
county	7	gas lamps	17277
county	7	lanterns	20272
county	7	other	6827
county	7	pressure lamps	552
county	7	solar	10251
county	7	tin lamps	31642
county	7	wood	364
county	11	electricity	5800
county	11	gas lamps	781
county	11	lanterns	9751
county	11	other	1015
county	11	pressure lamps	154
county	11	solar	7283
county	11	tin lamps	6113
county	14	electricity	19611
county	14	gas lamps	778
county	14	lanterns	46512
county	14	other	626
county	14	pressure lamps	992
county	14	solar	1114
county	14	tin lamps	57535
county	14	wood	4515
county	15	electricity	9850
county	15	gas lamps	1372
county	15	lanterns	111037
county	15	other	1277
county	15	pressure lamps	1192
county	15	solar	10311
county	15	tin lamps	64450
county	20	electricity	25353
county	20	gas lamps	1005
county	20	lanterns	51589
county	20	other	367
county	20	pressure lamps	1028
county	20	solar	413
county	20	tin lamps	69116
county	20	wood	5349
county	40	electricity	9253
county	40	gas lamps	709
county	40	lanterns	33283
county	40	other	338
county	40	pressure lamps	494
county	40	solar	566
county	40	tin lamps	108949
county	22	electricity	255704
county	22	gas lamps	1428
county	22	lanterns	125860
county	22	other	1866
county	22	pressure lamps	3345
county	22	solar	735
county	22	tin lamps	89701
county	28	electricity	5547
county	28	gas lamps	449
county	28	lanterns	36321
county	28	other	228
county	28	pressure lamps	220
county	28	solar	11744
county	28	tin lamps	21891
county	28	wood	1155
county	30	electricity	10583
county	30	gas lamps	796
county	30	lanterns	43488
county	30	other	471
county	30	pressure lamps	437
county	30	solar	30734
county	30	tin lamps	22238
county	31	electricity	18222
county	31	gas lamps	740
county	31	lanterns	36366
county	31	other	428
county	31	pressure lamps	542
county	31	solar	5276
county	31	tin lamps	35413
county	31	wood	6127
county	34	electricity	69098
county	34	gas lamps	706
county	34	lanterns	32788
county	34	other	1780
county	34	pressure lamps	1430
county	34	solar	3804
county	34	tin lamps	62031
county	35	electricity	15005
county	35	gas lamps	587
county	35	lanterns	58865
county	35	other	212
county	35	pressure lamps	505
county	35	solar	361
county	35	tin lamps	49875
county	35	wood	2171
county	36	electricity	7552
county	36	gas lamps	1135
county	36	lanterns	113311
county	36	other	499
county	36	pressure lamps	581
county	36	solar	1444
county	36	tin lamps	45434
county	37	electricity	19959
county	37	gas lamps	2718
county	37	lanterns	100156
county	37	other	483
county	37	pressure lamps	1791
county	37	solar	1367
county	37	tin lamps	226650
county	37	wood	2555
county	39	electricity	12219
county	39	gas lamps	1704
county	39	lanterns	72256
county	39	other	458
county	39	pressure lamps	1351
county	39	solar	1493
county	4	electricity	1184
county	4	gas lamps	604
county	4	lanterns	9590
county	4	other	1279
county	4	pressure lamps	86
county	4	solar	2785
county	4	tin lamps	31438
county	4	wood	448
county	5	tin lamps	8752
county	5	wood	1173
county	6	electricity	10653
county	6	gas lamps	257
county	6	lanterns	32595
county	6	other	450
county	6	pressure lamps	353
county	6	solar	412
county	6	tin lamps	24732
county	6	wood	1638
county	9	electricity	3198
county	9	gas lamps	13845
county	9	lanterns	41321
county	9	other	4340
county	9	pressure lamps	271
county	9	solar	45240
county	9	tin lamps	16989
county	9	wood	293
county	10	electricity	4258
county	10	gas lamps	1665
county	10	lanterns	13084
county	10	other	2879
county	10	pressure lamps	69
county	10	solar	27355
county	10	tin lamps	6953
county	12	electricity	50004
county	12	gas lamps	3018
county	12	lanterns	112946
county	12	other	1519
county	12	pressure lamps	2388
county	12	solar	7015
county	12	tin lamps	183198
county	12	wood	20938
county	13	electricity	826
county	13	gas lamps	154
county	13	lanterns	3801
county	13	other	366
county	13	pressure lamps	93
county	13	solar	1652
county	13	tin lamps	18194
county	16	electricity	45067
county	16	gas lamps	1355
county	16	lanterns	143523
county	16	other	1172
county	16	pressure lamps	1846
county	16	solar	565
county	16	tin lamps	63999
county	16	wood	6973
county	17	electricity	10912
county	17	gas lamps	859
county	17	lanterns	117991
county	17	other	517
county	17	pressure lamps	816
county	17	solar	1136
county	17	tin lamps	47245
county	18	electricity	15086
county	18	gas lamps	911
county	18	lanterns	79351
county	18	other	387
county	18	pressure lamps	875
county	18	solar	391
county	18	tin lamps	38225
county	19	electricity	53086
county	19	gas lamps	1038
county	19	lanterns	69517
county	19	other	486
county	19	pressure lamps	1641
county	19	solar	1004
county	19	tin lamps	66305
county	19	wood	8626
county	25	electricity	2949
county	25	gas lamps	444
county	25	lanterns	5074
county	25	other	374
county	25	pressure lamps	165
county	25	solar	28451
county	25	tin lamps	9239
county	21	electricity	33847
county	21	gas lamps	1296
county	21	lanterns	95784
county	21	other	386
county	21	pressure lamps	1306
county	21	solar	555
county	21	tin lamps	103722
county	21	wood	5594
county	26	electricity	15121
county	26	gas lamps	1088
county	26	lanterns	65971
county	26	other	489
county	29	electricity	9788
county	29	gas lamps	796
county	29	lanterns	64865
county	29	other	246
county	29	pressure lamps	504
county	29	solar	316
county	29	tin lamps	75638
county	32	electricity	139430
county	32	gas lamps	1994
county	32	lanterns	147950
county	32	other	1927
county	32	pressure lamps	2271
county	32	solar	3398
county	32	tin lamps	103605
county	32	wood	9261
county	33	electricity	9903
county	33	gas lamps	861
county	33	lanterns	49009
county	33	other	1921
county	33	pressure lamps	826
county	33	solar	12977
county	33	tin lamps	91422
county	41	electricity	8615
county	41	gas lamps	885
county	41	lanterns	41128
county	41	other	270
county	41	pressure lamps	858
county	41	solar	440
county	1	electricity	158588
county	1	gas lamps	512
county	1	lanterns	43057
county	1	other	1644
county	1	pressure lamps	2748
county	1	solar	530
county	1	tin lamps	61236
county	1	wood	385
county	2	electricity	12888
county	2	gas lamps	419
county	2	lanterns	16063
county	2	other	326
county	2	pressure lamps	713
county	2	solar	1522
county	2	tin lamps	89118
county	2	wood	998
county	8	electricity	3039
county	8	gas lamps	9767
county	8	lanterns	27923
county	8	other	6348
county	8	pressure lamps	98
county	8	solar	26296
county	8	tin lamps	14948
county	8	wood	155
county	10	wood	678
county	11	wood	429
county	13	wood	2307
county	15	wood	6002
county	17	wood	7002
county	18	wood	8653
county	25	wood	658
county	40	wood	633
county	22	wood	3811
county	23	electricity	3017
county	23	gas lamps	694
county	23	lanterns	10571
county	23	other	4322
county	23	pressure lamps	224
county	23	solar	89894
county	23	tin lamps	13523
county	23	wood	946
county	24	electricity	2456
county	24	gas lamps	467
county	24	lanterns	20880
county	24	other	400
county	24	pressure lamps	104
county	24	solar	46980
county	24	tin lamps	22021
county	24	wood	469
county	26	pressure lamps	977
county	26	solar	994
county	26	tin lamps	84035
county	26	wood	1442
county	27	electricity	56534
county	27	gas lamps	782
county	27	lanterns	89231
county	27	other	1035
county	27	pressure lamps	1218
county	27	solar	628
county	27	tin lamps	50506
county	27	wood	2357
county	29	wood	1920
county	30	wood	1902
county	33	wood	2301
county	34	wood	1827
county	36	wood	4958
county	38	electricity	8678
county	38	gas lamps	1038
county	38	lanterns	35132
county	38	other	129
county	38	pressure lamps	547
county	38	solar	582
county	38	tin lamps	76480
county	38	wood	761
county	39	tin lamps	180120
county	39	wood	1223
county	41	tin lamps	145066
county	41	wood	1772
county	42	electricity	41551
county	42	gas lamps	921
county	42	lanterns	52543
county	42	other	392
county	42	pressure lamps	1256
county	42	solar	513
county	42	tin lamps	127278
county	42	wood	2265
county	43	electricity	6850
county	43	gas lamps	1067
county	43	lanterns	43788
county	43	other	226
county	43	pressure lamps	980
county	43	solar	823
county	43	tin lamps	150440
county	43	wood	2081
county	44	electricity	9551
county	44	gas lamps	1057
county	44	lanterns	46080
county	44	other	297
county	44	pressure lamps	1015
county	44	solar	1051
county	44	tin lamps	119675
county	44	wood	1485
county	45	electricity	20965
county	45	gas lamps	1490
county	45	lanterns	87971
county	45	other	345
county	45	pressure lamps	1033
county	45	solar	711
county	45	tin lamps	154632
county	45	wood	2536
county	46	electricity	6486
county	46	gas lamps	586
county	46	lanterns	42674
county	46	other	67
county	46	pressure lamps	453
county	46	solar	297
county	46	tin lamps	54798
county	46	wood	1024
county	47	electricity	712859
county	47	gas lamps	1251
county	47	lanterns	128173
county	47	other	7244
county	47	pressure lamps	10324
county	47	solar	622
county	47	tin lamps	123551
county	47	wood	992
country	KE	electricity	1989740
country	KE	gas lamps	84375
country	KE	lanterns	2670387
country	KE	other	59751
country	KE	pressure lamps	52240
country	KE	solar	396062
country	KE	tin lamps	3373126
country	KE	wood	142273
\.


--
-- Name: mainmodeofhumanwastedisposal_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mainmodeofhumanwastedisposal
    ADD CONSTRAINT mainmodeofhumanwastedisposal_pkey PRIMARY KEY (geo_level, geo_code, "main mode of human waste disposal");


--
-- Name: mainsourceofwater_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mainsourceofwater
    ADD CONSTRAINT mainsourceofwater_pkey PRIMARY KEY (geo_level, geo_code, "main source of water");


--
-- Name: maintypeoflightingfuel_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY maintypeoflightingfuel
    ADD CONSTRAINT maintypeoflightingfuel_pkey PRIMARY KEY (geo_level, geo_code, "main type of lighting fuel");


--
-- PostgreSQL database dump complete
--

