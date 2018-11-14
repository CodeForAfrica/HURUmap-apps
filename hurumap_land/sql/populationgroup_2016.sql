--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.15
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.populationgroup_2016 DROP CONSTRAINT IF EXISTS pk_populationgroup_2016;
DROP TABLE IF EXISTS public.populationgroup_2016;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: populationgroup_2016; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE populationgroup_2016 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "population group" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: populationgroup_2016; Type: TABLE DATA; Schema: public; Owner: -
--

COPY populationgroup_2016 (geo_level, geo_code, geo_version, "population group", total) FROM stdin;
province	WC	2016	Black African	2242042
province	WC	2016	Coloured	2984398
province	WC	2016	Indian or Asian	48720
province	WC	2016	White	1004571
province	EC	2016	Black African	6043913
province	EC	2016	Coloured	603685
province	EC	2016	Indian or Asian	29204
province	EC	2016	White	320174
province	NC	2016	Black African	574246
province	NC	2016	Coloured	521261
province	NC	2016	Indian or Asian	6486
province	NC	2016	White	91787
province	FS	2016	Black African	2514990
province	FS	2016	Coloured	72095
province	FS	2016	Indian or Asian	7296
province	FS	2016	White	240333
province	KZN	2016	Black African	9625934
province	KZN	2016	Coloured	134089
province	KZN	2016	Indian or Asian	873161
province	KZN	2016	White	432056
province	NW	2016	Black African	3432379
province	NW	2016	Coloured	61010
province	NW	2016	Indian or Asian	16686
province	NW	2016	White	238360
province	GT	2016	Black African	10770177
province	GT	2016	Coloured	443289
province	GT	2016	Indian or Asian	357409
province	GT	2016	White	1828849
province	MP	2016	Black African	4057760
province	MP	2016	Coloured	32859
province	MP	2016	Indian or Asian	19786
province	MP	2016	White	225558
province	LIM	2016	Black African	5630163
province	LIM	2016	Coloured	16839
province	LIM	2016	Indian or Asian	17085
province	LIM	2016	White	135003
municipality	CPT	2016	Black African	1704232
municipality	CPT	2016	Coloured	1597841
municipality	CPT	2016	Indian or Asian	43593
municipality	CPT	2016	White	659349
district	DC1	2016	Black African	71114
district	DC1	2016	Coloured	297427
district	DC1	2016	Indian or Asian	1076
district	DC1	2016	White	66786
district	DC2	2016	Black African	218590
district	DC2	2016	Coloured	537329
district	DC2	2016	Indian or Asian	1503
district	DC2	2016	White	108579
district	DC3	2016	Black African	74097
district	DC3	2016	Coloured	161129
district	DC3	2016	Indian or Asian	857
district	DC3	2016	White	50703
district	DC4	2016	Black African	164819
district	DC4	2016	Coloured	331402
district	DC4	2016	Indian or Asian	1561
district	DC4	2016	White	113497
district	DC5	2016	Black African	9191
district	DC5	2016	Coloured	59271
district	DC5	2016	Indian or Asian	129
district	DC5	2016	White	5656
municipality	BUF	2016	Black African	713453
municipality	BUF	2016	Coloured	56072
municipality	BUF	2016	Indian or Asian	7457
municipality	BUF	2016	White	58015
district	DC10	2016	Black African	263026
district	DC10	2016	Coloured	176118
district	DC10	2016	Indian or Asian	1096
district	DC10	2016	White	39682
district	DC12	2016	Black African	859414
district	DC12	2016	Coloured	12074
district	DC12	2016	Indian or Asian	853
district	DC12	2016	White	8450
district	DC13	2016	Black African	788149
district	DC13	2016	Coloured	35702
district	DC13	2016	Indian or Asian	1474
district	DC13	2016	White	14729
district	DC14	2016	Black African	352041
district	DC14	2016	Coloured	12260
district	DC14	2016	Indian or Asian	647
district	DC14	2016	White	7963
district	DC15	2016	Black African	1448553
district	DC15	2016	Coloured	6183
district	DC15	2016	Indian or Asian	1449
district	DC15	2016	White	1199
district	DC44	2016	Black African	862589
district	DC44	2016	Coloured	3647
district	DC44	2016	Indian or Asian	598
district	DC44	2016	White	1030
municipality	NMA	2016	Black African	756688
municipality	NMA	2016	Coloured	301629
municipality	NMA	2016	Indian or Asian	15628
municipality	NMA	2016	White	189106
district	DC45	2016	Black African	202347
district	DC45	2016	Coloured	24311
district	DC45	2016	Indian or Asian	890
district	DC45	2016	White	14717
district	DC6	2016	Black African	2683
district	DC6	2016	Coloured	101700
district	DC6	2016	Indian or Asian	339
district	DC6	2016	White	10767
district	DC7	2016	Black African	58688
district	DC7	2016	Coloured	123916
district	DC7	2016	Indian or Asian	734
district	DC7	2016	White	12258
district	DC8	2016	Black African	58525
district	DC8	2016	Coloured	170231
district	DC8	2016	Indian or Asian	1098
district	DC8	2016	White	22837
district	DC9	2016	Black African	252004
district	DC9	2016	Coloured	101104
district	DC9	2016	Indian or Asian	3426
district	DC9	2016	White	31208
district	DC16	2016	Black African	95958
district	DC16	2016	Coloured	17562
district	DC16	2016	Indian or Asian	172
district	DC16	2016	White	12192
district	DC18	2016	Black African	578586
district	DC18	2016	Coloured	12291
district	DC18	2016	Indian or Asian	1777
district	DC18	2016	White	54266
district	DC19	2016	Black African	738508
district	DC19	2016	Coloured	5786
district	DC19	2016	Indian or Asian	2912
district	DC19	2016	White	32124
district	DC20	2016	Black African	428202
district	DC20	2016	Coloured	8648
district	DC20	2016	Indian or Asian	934
district	DC20	2016	White	56993
municipality	MAN	2016	Black African	673737
municipality	MAN	2016	Coloured	27808
municipality	MAN	2016	Indian or Asian	1501
municipality	MAN	2016	White	84758
district	DC21	2016	Black African	678625
district	DC21	2016	Coloured	7228
district	DC21	2016	Indian or Asian	31234
district	DC21	2016	White	36249
district	DC22	2016	Black African	925270
district	DC22	2016	Coloured	20887
district	DC22	2016	Indian or Asian	84941
district	DC22	2016	White	64767
district	DC23	2016	Black African	679912
district	DC23	2016	Coloured	3789
district	DC23	2016	Indian or Asian	15310
district	DC23	2016	White	7578
district	DC24	2016	Black African	537028
district	DC24	2016	Coloured	2894
district	DC24	2016	Indian or Asian	7278
district	DC24	2016	White	7683
district	DC25	2016	Black African	495059
district	DC25	2016	Coloured	3341
district	DC25	2016	Indian or Asian	15103
district	DC25	2016	White	17825
district	DC26	2016	Black African	880001
district	DC26	2016	Coloured	2234
district	DC26	2016	Indian or Asian	1053
district	DC26	2016	White	9022
district	DC27	2016	Black African	684411
district	DC27	2016	Coloured	750
district	DC27	2016	Indian or Asian	593
district	DC27	2016	White	3337
district	DC28	2016	Black African	920772
district	DC28	2016	Coloured	4335
district	DC28	2016	Indian or Asian	17771
district	DC28	2016	White	28257
district	DC29	2016	Black African	586630
district	DC29	2016	Coloured	3509
district	DC29	2016	Indian or Asian	45065
district	DC29	2016	White	22409
district	DC43	2016	Black African	496893
district	DC43	2016	Coloured	7605
district	DC43	2016	Indian or Asian	996
district	DC43	2016	White	5370
municipality	ETH	2016	Black African	2741335
municipality	ETH	2016	Coloured	77518
municipality	ETH	2016	Indian or Asian	653819
municipality	ETH	2016	White	229559
district	DC37	2016	Black African	1554726
district	DC37	2016	Coloured	8406
district	DC37	2016	Indian or Asian	5901
district	DC37	2016	White	88116
district	DC38	2016	Black African	850688
district	DC38	2016	Coloured	11673
district	DC38	2016	Indian or Asian	4177
district	DC38	2016	White	22570
district	DC39	2016	Black African	420314
district	DC39	2016	Coloured	13747
district	DC39	2016	Indian or Asian	1542
district	DC39	2016	White	23755
district	DC40	2016	Black African	606652
district	DC40	2016	Coloured	27185
district	DC40	2016	Indian or Asian	5066
district	DC40	2016	White	103919
district	DC42	2016	Black African	773736
district	DC42	2016	Coloured	12389
district	DC42	2016	Indian or Asian	9651
district	DC42	2016	White	161753
district	DC48	2016	Black African	660179
district	DC48	2016	Coloured	21152
district	DC48	2016	Indian or Asian	9201
district	DC48	2016	White	148062
municipality	EKU	2016	Black African	2762059
municipality	EKU	2016	Coloured	85822
municipality	EKU	2016	Indian or Asian	67382
municipality	EKU	2016	White	463841
municipality	JHB	2016	Black African	3982216
municipality	JHB	2016	Coloured	262309
municipality	JHB	2016	Indian or Asian	217988
municipality	JHB	2016	White	486833
municipality	TSH	2016	Black African	2591987
municipality	TSH	2016	Coloured	61618
municipality	TSH	2016	Indian or Asian	53187
municipality	TSH	2016	White	568360
district	DC30	2016	Black African	1040425
district	DC30	2016	Coloured	9429
district	DC30	2016	Indian or Asian	8126
district	DC30	2016	White	77429
district	DC31	2016	Black African	1313493
district	DC31	2016	Coloured	13501
district	DC31	2016	Indian or Asian	7952
district	DC31	2016	White	110678
district	DC32	2016	Black African	1703841
district	DC32	2016	Coloured	9930
district	DC32	2016	Indian or Asian	3709
district	DC32	2016	White	37451
district	DC33	2016	Black African	1130512
district	DC33	2016	Coloured	2128
district	DC33	2016	Indian or Asian	2918
district	DC33	2016	White	23628
district	DC34	2016	Black African	1375123
district	DC34	2016	Coloured	2499
district	DC34	2016	Indian or Asian	5036
district	DC34	2016	White	11291
district	DC35	2016	Black African	1290255
district	DC35	2016	Coloured	7766
district	DC35	2016	Indian or Asian	5598
district	DC35	2016	White	26817
district	DC36	2016	Black African	680815
district	DC36	2016	Coloured	2272
district	DC36	2016	Indian or Asian	2673
district	DC36	2016	White	59998
district	DC47	2016	Black African	1153458
district	DC47	2016	Coloured	2175
district	DC47	2016	Indian or Asian	860
district	DC47	2016	White	13269
municipality	WC011	2016	Black African	4214
municipality	WC011	2016	Coloured	58106
municipality	WC011	2016	Indian or Asian	22
municipality	WC011	2016	White	8703
municipality	WC012	2016	Black African	6260
municipality	WC012	2016	Coloured	40111
municipality	WC012	2016	Indian or Asian	0
municipality	WC012	2016	White	6578
municipality	WC013	2016	Black African	2786
municipality	WC013	2016	Coloured	51582
municipality	WC013	2016	Indian or Asian	80
municipality	WC013	2016	White	13026
municipality	WC014	2016	Black African	36889
municipality	WC014	2016	Coloured	60558
municipality	WC014	2016	Indian or Asian	178
municipality	WC014	2016	White	13548
municipality	WC015	2016	Black African	20965
municipality	WC015	2016	Coloured	87070
municipality	WC015	2016	Indian or Asian	795
municipality	WC015	2016	White	24932
municipality	WC022	2016	Black African	23488
municipality	WC022	2016	Coloured	96845
municipality	WC022	2016	Indian or Asian	165
municipality	WC022	2016	White	10050
municipality	WC023	2016	Black African	60544
municipality	WC023	2016	Coloured	177371
municipality	WC023	2016	Indian or Asian	646
municipality	WC023	2016	White	41634
municipality	WC024	2016	Black African	76574
municipality	WC024	2016	Coloured	75368
municipality	WC024	2016	Indian or Asian	72
municipality	WC024	2016	White	21182
municipality	WC025	2016	Black African	39555
municipality	WC025	2016	Coloured	113425
municipality	WC025	2016	Indian or Asian	474
municipality	WC025	2016	White	23125
municipality	WC026	2016	Black African	18429
municipality	WC026	2016	Coloured	74319
municipality	WC026	2016	Indian or Asian	147
municipality	WC026	2016	White	12588
municipality	WC031	2016	Black African	29005
municipality	WC031	2016	Coloured	76374
municipality	WC031	2016	Indian or Asian	578
municipality	WC031	2016	White	11210
municipality	WC032	2016	Black African	39713
municipality	WC032	2016	Coloured	27012
municipality	WC032	2016	Indian or Asian	101
municipality	WC032	2016	White	26582
municipality	WC033	2016	Black African	2952
municipality	WC033	2016	Coloured	27056
municipality	WC033	2016	Indian or Asian	84
municipality	WC033	2016	White	5908
municipality	WC034	2016	Black African	2427
municipality	WC034	2016	Coloured	30687
municipality	WC034	2016	Indian or Asian	95
municipality	WC034	2016	White	7003
municipality	WC041	2016	Black African	306
municipality	WC041	2016	Coloured	21718
municipality	WC041	2016	Indian or Asian	19
municipality	WC041	2016	White	2125
municipality	WC042	2016	Black African	1455
municipality	WC042	2016	Coloured	39018
municipality	WC042	2016	Indian or Asian	76
municipality	WC042	2016	White	13687
municipality	WC043	2016	Black African	31739
municipality	WC043	2016	Coloured	40072
municipality	WC043	2016	Indian or Asian	469
municipality	WC043	2016	White	21855
municipality	WC044	2016	Black African	62872
municipality	WC044	2016	Coloured	103988
municipality	WC044	2016	Indian or Asian	634
municipality	WC044	2016	White	40744
municipality	WC045	2016	Black African	8112
municipality	WC045	2016	Coloured	76463
municipality	WC045	2016	Indian or Asian	261
municipality	WC045	2016	White	12673
municipality	WC047	2016	Black African	32496
municipality	WC047	2016	Coloured	18616
municipality	WC047	2016	Indian or Asian	0
municipality	WC047	2016	White	8045
municipality	WC048	2016	Black African	27839
municipality	WC048	2016	Coloured	31526
municipality	WC048	2016	Indian or Asian	103
municipality	WC048	2016	White	14367
municipality	WC051	2016	Black African	154
municipality	WC051	2016	Coloured	7849
municipality	WC051	2016	Indian or Asian	0
municipality	WC051	2016	White	892
municipality	WC052	2016	Black African	8
municipality	WC052	2016	Coloured	13054
municipality	WC052	2016	Indian or Asian	0
municipality	WC052	2016	White	1209
municipality	WC053	2016	Black African	9029
municipality	WC053	2016	Coloured	38368
municipality	WC053	2016	Indian or Asian	129
municipality	WC053	2016	White	3554
municipality	EC101	2016	Black African	20611
municipality	EC101	2016	Coloured	55324
municipality	EC101	2016	Indian or Asian	45
municipality	EC101	2016	White	6217
municipality	EC102	2016	Black African	21283
municipality	EC102	2016	Coloured	13283
municipality	EC102	2016	Indian or Asian	50
municipality	EC102	2016	White	1448
municipality	EC104	2016	Black African	66257
municipality	EC104	2016	Coloured	8788
municipality	EC104	2016	Indian or Asian	470
municipality	EC104	2016	White	6545
municipality	EC105	2016	Black African	52697
municipality	EC105	2016	Coloured	5077
municipality	EC105	2016	Indian or Asian	136
municipality	EC105	2016	White	5271
municipality	EC106	2016	Black African	41650
municipality	EC106	2016	Coloured	17086
municipality	EC106	2016	Indian or Asian	309
municipality	EC106	2016	White	748
municipality	EC108	2016	Black African	46974
municipality	EC108	2016	Coloured	49752
municipality	EC108	2016	Indian or Asian	37
municipality	EC108	2016	White	16179
municipality	EC109	2016	Black African	13554
municipality	EC109	2016	Coloured	26810
municipality	EC109	2016	Indian or Asian	50
municipality	EC109	2016	White	3274
municipality	EC121	2016	Black African	276646
municipality	EC121	2016	Coloured	187
municipality	EC121	2016	Indian or Asian	212
municipality	EC121	2016	White	206
municipality	EC122	2016	Black African	246117
municipality	EC122	2016	Coloured	294
municipality	EC122	2016	Indian or Asian	333
municipality	EC122	2016	White	70
municipality	EC123	2016	Black African	27727
municipality	EC123	2016	Coloured	356
municipality	EC123	2016	Indian or Asian	30
municipality	EC123	2016	White	3580
municipality	EC124	2016	Black African	97591
municipality	EC124	2016	Coloured	1575
municipality	EC124	2016	Indian or Asian	116
municipality	EC124	2016	White	2543
municipality	EC126	2016	Black African	63411
municipality	EC126	2016	Coloured	162
municipality	EC126	2016	Indian or Asian	25
municipality	EC126	2016	White	96
municipality	EC129	2016	Black African	147922
municipality	EC129	2016	Coloured	9499
municipality	EC129	2016	Indian or Asian	138
municipality	EC129	2016	White	1955
municipality	EC131	2016	Black African	39740
municipality	EC131	2016	Coloured	25216
municipality	EC131	2016	Indian or Asian	159
municipality	EC131	2016	White	5379
municipality	EC135	2016	Black African	151925
municipality	EC135	2016	Coloured	152
municipality	EC135	2016	Indian or Asian	67
municipality	EC135	2016	White	15
municipality	EC137	2016	Black African	161787
municipality	EC137	2016	Coloured	119
municipality	EC137	2016	Indian or Asian	98
municipality	EC137	2016	White	10
municipality	EC138	2016	Black African	63246
municipality	EC138	2016	Coloured	352
municipality	EC138	2016	Indian or Asian	24
municipality	EC138	2016	White	226
municipality	EC139	2016	Black African	248125
municipality	EC139	2016	Coloured	9035
municipality	EC139	2016	Indian or Asian	998
municipality	EC139	2016	White	8853
municipality	EC136	2016	Black African	123327
municipality	EC136	2016	Coloured	829
municipality	EC136	2016	Indian or Asian	129
municipality	EC136	2016	White	246
municipality	EC141	2016	Black African	142393
municipality	EC141	2016	Coloured	1459
municipality	EC141	2016	Indian or Asian	96
municipality	EC141	2016	White	981
municipality	EC142	2016	Black African	137498
municipality	EC142	2016	Coloured	1076
municipality	EC142	2016	Indian or Asian	79
municipality	EC142	2016	White	2067
municipality	EC145	2016	Black African	72151
municipality	EC145	2016	Coloured	9725
municipality	EC145	2016	Indian or Asian	472
municipality	EC145	2016	White	4915
municipality	EC153	2016	Black African	301663
municipality	EC153	2016	Coloured	1305
municipality	EC153	2016	Indian or Asian	315
municipality	EC153	2016	White	96
municipality	EC154	2016	Black African	165382
municipality	EC154	2016	Coloured	995
municipality	EC154	2016	Indian or Asian	217
municipality	EC154	2016	White	185
municipality	EC155	2016	Black African	308682
municipality	EC155	2016	Coloured	829
municipality	EC155	2016	Indian or Asian	137
municipality	EC155	2016	White	54
municipality	EC156	2016	Black African	188800
municipality	EC156	2016	Coloured	242
municipality	EC156	2016	Indian or Asian	112
municipality	EC156	2016	White	22
municipality	EC157	2016	Black African	484025
municipality	EC157	2016	Coloured	2812
municipality	EC157	2016	Indian or Asian	669
municipality	EC157	2016	White	843
municipality	EC441	2016	Black African	215886
municipality	EC441	2016	Coloured	2208
municipality	EC441	2016	Indian or Asian	373
municipality	EC441	2016	White	981
municipality	EC442	2016	Black African	199031
municipality	EC442	2016	Coloured	477
municipality	EC442	2016	Indian or Asian	110
municipality	EC442	2016	White	2
municipality	EC443	2016	Black African	319083
municipality	EC443	2016	Coloured	761
municipality	EC443	2016	Indian or Asian	91
municipality	EC443	2016	White	13
municipality	EC444	2016	Black African	128588
municipality	EC444	2016	Coloured	201
municipality	EC444	2016	Indian or Asian	24
municipality	EC444	2016	White	35
municipality	NC451	2016	Black African	81501
municipality	NC451	2016	Coloured	1197
municipality	NC451	2016	Indian or Asian	64
municipality	NC451	2016	White	1438
municipality	NC452	2016	Black African	94783
municipality	NC452	2016	Coloured	5604
municipality	NC452	2016	Indian or Asian	387
municipality	NC452	2016	White	3634
municipality	NC453	2016	Black African	26062
municipality	NC453	2016	Coloured	17510
municipality	NC453	2016	Indian or Asian	439
municipality	NC453	2016	White	9644
municipality	NC061	2016	Black African	1173
municipality	NC061	2016	Coloured	10347
municipality	NC061	2016	Indian or Asian	50
municipality	NC061	2016	White	917
municipality	NC062	2016	Black African	663
municipality	NC062	2016	Coloured	43243
municipality	NC062	2016	Indian or Asian	27
municipality	NC062	2016	White	2580
municipality	NC064	2016	Black African	213
municipality	NC064	2016	Coloured	8272
municipality	NC064	2016	Indian or Asian	0
municipality	NC064	2016	White	1120
municipality	NC065	2016	Black African	200
municipality	NC065	2016	Coloured	18529
municipality	NC065	2016	Indian or Asian	97
municipality	NC065	2016	White	2715
municipality	NC066	2016	Black African	88
municipality	NC066	2016	Coloured	10313
municipality	NC066	2016	Indian or Asian	45
municipality	NC066	2016	White	2564
municipality	NC067	2016	Black African	346
municipality	NC067	2016	Coloured	10997
municipality	NC067	2016	Indian or Asian	119
municipality	NC067	2016	White	872
municipality	NC071	2016	Black African	4382
municipality	NC071	2016	Coloured	14222
municipality	NC071	2016	Indian or Asian	0
municipality	NC071	2016	White	867
municipality	NC072	2016	Black African	19908
municipality	NC072	2016	Coloured	10217
municipality	NC072	2016	Indian or Asian	231
municipality	NC072	2016	White	527
municipality	NC073	2016	Black African	14515
municipality	NC073	2016	Coloured	27644
municipality	NC073	2016	Indian or Asian	116
municipality	NC073	2016	White	3129
municipality	NC074	2016	Black African	66
municipality	NC074	2016	Coloured	12090
municipality	NC074	2016	Indian or Asian	25
municipality	NC074	2016	White	592
municipality	NC075	2016	Black African	3871
municipality	NC075	2016	Coloured	6738
municipality	NC075	2016	Indian or Asian	47
municipality	NC075	2016	White	1162
municipality	NC076	2016	Black African	2258
municipality	NC076	2016	Coloured	11450
municipality	NC076	2016	Indian or Asian	117
municipality	NC076	2016	White	2406
municipality	NC077	2016	Black African	4595
municipality	NC077	2016	Coloured	17187
municipality	NC077	2016	Indian or Asian	125
municipality	NC077	2016	White	1168
municipality	NC078	2016	Black African	9093
municipality	NC078	2016	Coloured	24367
municipality	NC078	2016	Indian or Asian	74
municipality	NC078	2016	White	2407
municipality	NC082	2016	Black African	9162
municipality	NC082	2016	Coloured	54902
municipality	NC082	2016	Indian or Asian	216
municipality	NC082	2016	White	4649
municipality	NC084	2016	Black African	737
municipality	NC084	2016	Coloured	14879
municipality	NC084	2016	Indian or Asian	79
municipality	NC084	2016	White	870
municipality	NC085	2016	Black African	18409
municipality	NC085	2016	Coloured	17295
municipality	NC085	2016	Indian or Asian	230
municipality	NC085	2016	White	3410
municipality	NC086	2016	Black African	8146
municipality	NC086	2016	Coloured	10392
municipality	NC086	2016	Indian or Asian	38
municipality	NC086	2016	White	2115
municipality	NC087	2016	Black African	22071
municipality	NC087	2016	Coloured	72764
municipality	NC087	2016	Indian or Asian	534
municipality	NC087	2016	White	11793
municipality	NC091	2016	Black African	151414
municipality	NC091	2016	Coloured	78033
municipality	NC091	2016	Indian or Asian	2552
municipality	NC091	2016	White	23041
municipality	NC092	2016	Black African	32678
municipality	NC092	2016	Coloured	13926
municipality	NC092	2016	Indian or Asian	171
municipality	NC092	2016	White	1698
municipality	NC093	2016	Black African	18794
municipality	NC093	2016	Coloured	3325
municipality	NC093	2016	Indian or Asian	363
municipality	NC093	2016	White	1578
municipality	NC094	2016	Black African	49118
municipality	NC094	2016	Coloured	5819
municipality	NC094	2016	Indian or Asian	339
municipality	NC094	2016	White	4892
municipality	FS161	2016	Black African	26473
municipality	FS161	2016	Coloured	8593
municipality	FS161	2016	Indian or Asian	43
municipality	FS161	2016	White	4935
municipality	FS162	2016	Black African	36890
municipality	FS162	2016	Coloured	8672
municipality	FS162	2016	Indian or Asian	33
municipality	FS162	2016	White	4404
municipality	FS163	2016	Black African	32595
municipality	FS163	2016	Coloured	297
municipality	FS163	2016	Indian or Asian	96
municipality	FS163	2016	White	2853
municipality	FS181	2016	Black African	55906
municipality	FS181	2016	Coloured	544
municipality	FS181	2016	Indian or Asian	141
municipality	FS181	2016	White	6179
municipality	FS182	2016	Black African	25321
municipality	FS182	2016	Coloured	1074
municipality	FS182	2016	Indian or Asian	24
municipality	FS182	2016	White	2728
municipality	FS183	2016	Black African	43662
municipality	FS183	2016	Coloured	337
municipality	FS183	2016	Indian or Asian	99
municipality	FS183	2016	White	3274
municipality	FS184	2016	Black African	381335
municipality	FS184	2016	Coloured	10112
municipality	FS184	2016	Indian or Asian	1204
municipality	FS184	2016	White	36462
municipality	FS185	2016	Black African	72361
municipality	FS185	2016	Coloured	223
municipality	FS185	2016	Indian or Asian	309
municipality	FS185	2016	White	5622
municipality	FS191	2016	Black African	107550
municipality	FS191	2016	Coloured	1526
municipality	FS191	2016	Indian or Asian	1139
municipality	FS191	2016	White	7146
municipality	FS192	2016	Black African	126577
municipality	FS192	2016	Coloured	1608
municipality	FS192	2016	Indian or Asian	396
municipality	FS192	2016	White	11463
municipality	FS193	2016	Black African	60323
municipality	FS193	2016	Coloured	217
municipality	FS193	2016	Indian or Asian	281
municipality	FS193	2016	White	4073
municipality	FS194	2016	Black African	350258
municipality	FS194	2016	Coloured	523
municipality	FS194	2016	Indian or Asian	266
municipality	FS194	2016	White	2406
municipality	FS195	2016	Black African	46489
municipality	FS195	2016	Coloured	152
municipality	FS195	2016	Indian or Asian	386
municipality	FS195	2016	White	3027
municipality	FS196	2016	Black African	47311
municipality	FS196	2016	Coloured	1760
municipality	FS196	2016	Indian or Asian	444
municipality	FS196	2016	White	4010
municipality	FS204	2016	Black African	134072
municipality	FS204	2016	Coloured	1291
municipality	FS204	2016	Indian or Asian	498
municipality	FS204	2016	White	27703
municipality	FS205	2016	Black African	53616
municipality	FS205	2016	Coloured	227
municipality	FS205	2016	Indian or Asian	45
municipality	FS205	2016	White	3686
municipality	FS201	2016	Black African	136007
municipality	FS201	2016	Coloured	4091
municipality	FS201	2016	Indian or Asian	329
municipality	FS201	2016	White	14304
municipality	FS203	2016	Black African	104507
municipality	FS203	2016	Coloured	3039
municipality	FS203	2016	Indian or Asian	61
municipality	FS203	2016	White	11299
municipality	KZN212	2016	Black African	122178
municipality	KZN212	2016	Coloured	1515
municipality	KZN212	2016	Indian or Asian	14722
municipality	KZN212	2016	White	6135
municipality	KZN213	2016	Black African	151274
municipality	KZN213	2016	Coloured	242
municipality	KZN213	2016	Indian or Asian	23
municipality	KZN213	2016	White	137
municipality	KZN214	2016	Black African	106911
municipality	KZN214	2016	Coloured	1059
municipality	KZN214	2016	Indian or Asian	172
municipality	KZN214	2016	White	434
municipality	KZN216	2016	Black African	298262
municipality	KZN216	2016	Coloured	4412
municipality	KZN216	2016	Indian or Asian	16317
municipality	KZN216	2016	White	29543
municipality	KZN221	2016	Black African	105201
municipality	KZN221	2016	Coloured	538
municipality	KZN221	2016	Indian or Asian	3323
municipality	KZN221	2016	White	2583
municipality	KZN222	2016	Black African	83343
municipality	KZN222	2016	Coloured	1540
municipality	KZN222	2016	Indian or Asian	4190
municipality	KZN222	2016	White	20795
municipality	KZN224	2016	Black African	29205
municipality	KZN224	2016	Coloured	15
municipality	KZN224	2016	Indian or Asian	0
municipality	KZN224	2016	White	305
municipality	KZN225	2016	Black African	551244
municipality	KZN225	2016	Coloured	18114
municipality	KZN225	2016	Indian or Asian	75126
municipality	KZN225	2016	White	34554
municipality	KZN226	2016	Black African	54207
municipality	KZN226	2016	Coloured	79
municipality	KZN226	2016	Indian or Asian	991
municipality	KZN226	2016	White	1799
municipality	KZN227	2016	Black African	68656
municipality	KZN227	2016	Coloured	470
municipality	KZN227	2016	Indian or Asian	578
municipality	KZN227	2016	White	1617
municipality	KZN223	2016	Black African	33414
municipality	KZN223	2016	Coloured	131
municipality	KZN223	2016	Indian or Asian	733
municipality	KZN223	2016	White	3114
municipality	KZN235	2016	Black African	132093
municipality	KZN235	2016	Coloured	270
municipality	KZN235	2016	Indian or Asian	295
municipality	KZN235	2016	White	2474
municipality	KZN237	2016	Black African	207124
municipality	KZN237	2016	Coloured	1245
municipality	KZN237	2016	Indian or Asian	5153
municipality	KZN237	2016	White	1661
municipality	KZN238	2016	Black African	340695
municipality	KZN238	2016	Coloured	2274
municipality	KZN238	2016	Indian or Asian	9862
municipality	KZN238	2016	White	3443
municipality	KZN241	2016	Black African	64623
municipality	KZN241	2016	Coloured	1767
municipality	KZN241	2016	Indian or Asian	4682
municipality	KZN241	2016	White	5567
municipality	KZN242	2016	Black African	171087
municipality	KZN242	2016	Coloured	190
municipality	KZN242	2016	Indian or Asian	42
municipality	KZN242	2016	White	6
municipality	KZN244	2016	Black African	183985
municipality	KZN244	2016	Coloured	102
municipality	KZN244	2016	Indian or Asian	134
municipality	KZN244	2016	White	273
municipality	KZN245	2016	Black African	117333
municipality	KZN245	2016	Coloured	834
municipality	KZN245	2016	Indian or Asian	2419
municipality	KZN245	2016	White	1837
municipality	KZN252	2016	Black African	359112
municipality	KZN252	2016	Coloured	2603
municipality	KZN252	2016	Indian or Asian	13870
municipality	KZN252	2016	White	13531
municipality	KZN253	2016	Black African	33899
municipality	KZN253	2016	Coloured	367
municipality	KZN253	2016	Indian or Asian	0
municipality	KZN253	2016	White	2603
municipality	KZN254	2016	Black African	102047
municipality	KZN254	2016	Coloured	370
municipality	KZN254	2016	Indian or Asian	1233
municipality	KZN254	2016	White	1691
municipality	KZN261	2016	Black African	87661
municipality	KZN261	2016	Coloured	97
municipality	KZN261	2016	Indian or Asian	102
municipality	KZN261	2016	White	1755
municipality	KZN262	2016	Black African	139493
municipality	KZN262	2016	Coloured	140
municipality	KZN262	2016	Indian or Asian	198
municipality	KZN262	2016	White	1415
municipality	KZN263	2016	Black African	236198
municipality	KZN263	2016	Coloured	1589
municipality	KZN263	2016	Indian or Asian	481
municipality	KZN263	2016	White	5527
municipality	KZN265	2016	Black African	211537
municipality	KZN265	2016	Coloured	203
municipality	KZN265	2016	Indian or Asian	120
municipality	KZN265	2016	White	33
municipality	KZN266	2016	Black African	205112
municipality	KZN266	2016	Coloured	206
municipality	KZN266	2016	Indian or Asian	152
municipality	KZN266	2016	White	292
municipality	KZN271	2016	Black African	171387
municipality	KZN271	2016	Coloured	197
municipality	KZN271	2016	Indian or Asian	92
municipality	KZN271	2016	White	401
municipality	KZN272	2016	Black African	197489
municipality	KZN272	2016	Coloured	134
municipality	KZN272	2016	Indian or Asian	114
municipality	KZN272	2016	White	478
municipality	KZN275	2016	Black African	200762
municipality	KZN275	2016	Coloured	311
municipality	KZN275	2016	Indian or Asian	367
municipality	KZN275	2016	White	736
municipality	KZN276	2016	Black African	114773
municipality	KZN276	2016	Coloured	108
municipality	KZN276	2016	Indian or Asian	20
municipality	KZN276	2016	White	1722
municipality	KZN281	2016	Black African	143877
municipality	KZN281	2016	Coloured	28
municipality	KZN281	2016	Indian or Asian	99
municipality	KZN281	2016	White	359
municipality	KZN282	2016	Black African	367166
municipality	KZN282	2016	Coloured	3240
municipality	KZN282	2016	Indian or Asian	15329
municipality	KZN282	2016	White	24730
municipality	KZN284	2016	Black African	217202
municipality	KZN284	2016	Coloured	921
municipality	KZN284	2016	Indian or Asian	2149
municipality	KZN284	2016	White	2867
municipality	KZN285	2016	Black African	78509
municipality	KZN285	2016	Coloured	72
municipality	KZN285	2016	Indian or Asian	29
municipality	KZN285	2016	White	274
municipality	KZN286	2016	Black African	114017
municipality	KZN286	2016	Coloured	74
municipality	KZN286	2016	Indian or Asian	166
municipality	KZN286	2016	White	27
municipality	KZN291	2016	Black African	143563
municipality	KZN291	2016	Coloured	759
municipality	KZN291	2016	Indian or Asian	2676
municipality	KZN291	2016	White	809
municipality	KZN292	2016	Black African	211078
municipality	KZN292	2016	Coloured	2557
municipality	KZN292	2016	Indian or Asian	41759
municipality	KZN292	2016	White	21325
municipality	KZN293	2016	Black African	142104
municipality	KZN293	2016	Coloured	163
municipality	KZN293	2016	Indian or Asian	593
municipality	KZN293	2016	White	257
municipality	KZN294	2016	Black African	89884
municipality	KZN294	2016	Coloured	30
municipality	KZN294	2016	Indian or Asian	36
municipality	KZN294	2016	White	19
municipality	KZN433	2016	Black African	68350
municipality	KZN433	2016	Coloured	5637
municipality	KZN433	2016	Indian or Asian	377
municipality	KZN433	2016	White	2388
municipality	KZN434	2016	Black African	115893
municipality	KZN434	2016	Coloured	1484
municipality	KZN434	2016	Indian or Asian	349
municipality	KZN434	2016	White	620
municipality	KZN435	2016	Black African	196685
municipality	KZN435	2016	Coloured	431
municipality	KZN435	2016	Indian or Asian	170
municipality	KZN435	2016	White	0
municipality	KZN436	2016	Black African	115965
municipality	KZN436	2016	Coloured	53
municipality	KZN436	2016	Indian or Asian	101
municipality	KZN436	2016	White	2362
municipality	NW371	2016	Black African	190291
municipality	NW371	2016	Coloured	256
municipality	NW371	2016	Indian or Asian	649
municipality	NW371	2016	White	110
municipality	NW372	2016	Black African	492073
municipality	NW372	2016	Coloured	3601
municipality	NW372	2016	Indian or Asian	2105
municipality	NW372	2016	White	38332
municipality	NW373	2016	Black African	582951
municipality	NW373	2016	Coloured	3608
municipality	NW373	2016	Indian or Asian	2070
municipality	NW373	2016	White	37893
municipality	NW374	2016	Black African	47437
municipality	NW374	2016	Coloured	408
municipality	NW374	2016	Indian or Asian	363
municipality	NW374	2016	White	11353
municipality	NW375	2016	Black African	241973
municipality	NW375	2016	Coloured	533
municipality	NW375	2016	Indian or Asian	713
municipality	NW375	2016	White	429
municipality	NW381	2016	Black African	104763
municipality	NW381	2016	Coloured	656
municipality	NW381	2016	Indian or Asian	268
municipality	NW381	2016	White	421
municipality	NW383	2016	Black African	305142
municipality	NW383	2016	Coloured	5096
municipality	NW383	2016	Indian or Asian	1888
municipality	NW383	2016	White	2268
municipality	NW384	2016	Black African	165688
municipality	NW384	2016	Coloured	3162
municipality	NW384	2016	Indian or Asian	894
municipality	NW384	2016	White	12122
municipality	NW385	2016	Black African	151587
municipality	NW385	2016	Coloured	1597
municipality	NW385	2016	Indian or Asian	672
municipality	NW385	2016	White	3833
municipality	NW382	2016	Black African	123509
municipality	NW382	2016	Coloured	1162
municipality	NW382	2016	Indian or Asian	456
municipality	NW382	2016	White	3926
municipality	NW392	2016	Black African	51726
municipality	NW392	2016	Coloured	8042
municipality	NW392	2016	Indian or Asian	520
municipality	NW392	2016	White	8515
municipality	NW393	2016	Black African	59588
municipality	NW393	2016	Coloured	850
municipality	NW393	2016	Indian or Asian	295
municipality	NW393	2016	White	3267
municipality	NW394	2016	Black African	165694
municipality	NW394	2016	Coloured	1536
municipality	NW394	2016	Indian or Asian	315
municipality	NW394	2016	White	282
municipality	NW396	2016	Black African	45538
municipality	NW396	2016	Coloured	2408
municipality	NW396	2016	Indian or Asian	128
municipality	NW396	2016	White	7951
municipality	NW397	2016	Black African	97769
municipality	NW397	2016	Coloured	911
municipality	NW397	2016	Indian or Asian	284
municipality	NW397	2016	White	3739
municipality	NW403	2016	Black African	344527
municipality	NW403	2016	Coloured	13360
municipality	NW403	2016	Indian or Asian	2878
municipality	NW403	2016	White	56517
municipality	NW404	2016	Black African	74469
municipality	NW404	2016	Coloured	837
municipality	NW404	2016	Indian or Asian	569
municipality	NW404	2016	White	6138
municipality	NW405	2016	Black African	187656
municipality	NW405	2016	Coloured	12987
municipality	NW405	2016	Indian or Asian	1620
municipality	NW405	2016	White	41264
municipality	GT422	2016	Black African	59781
municipality	GT422	2016	Coloured	2063
municipality	GT422	2016	Indian or Asian	1385
municipality	GT422	2016	White	48383
municipality	GT421	2016	Black African	625778
municipality	GT421	2016	Coloured	9303
municipality	GT421	2016	Indian or Asian	7368
municipality	GT421	2016	White	90996
municipality	GT423	2016	Black African	88177
municipality	GT423	2016	Coloured	1022
municipality	GT423	2016	Indian or Asian	898
municipality	GT423	2016	White	22374
municipality	GT481	2016	Black African	291693
municipality	GT481	2016	Coloured	3118
municipality	GT481	2016	Indian or Asian	7834
municipality	GT481	2016	White	81219
municipality	GT484	2016	Black African	157542
municipality	GT484	2016	Coloured	2179
municipality	GT484	2016	Indian or Asian	655
municipality	GT484	2016	White	28467
municipality	GT485	2016	Black African	210943
municipality	GT485	2016	Coloured	15856
municipality	GT485	2016	Indian or Asian	712
municipality	GT485	2016	White	38376
municipality	MP301	2016	Black African	185247
municipality	MP301	2016	Coloured	570
municipality	MP301	2016	Indian or Asian	406
municipality	MP301	2016	White	1407
municipality	MP302	2016	Black African	150823
municipality	MP302	2016	Coloured	1005
municipality	MP302	2016	Indian or Asian	1493
municipality	MP302	2016	White	11287
municipality	MP303	2016	Black African	185254
municipality	MP303	2016	Coloured	1232
municipality	MP303	2016	Indian or Asian	670
municipality	MP303	2016	White	1880
municipality	MP304	2016	Black African	78628
municipality	MP304	2016	Coloured	319
municipality	MP304	2016	Indian or Asian	758
municipality	MP304	2016	White	5690
municipality	MP305	2016	Black African	110072
municipality	MP305	2016	Coloured	2234
municipality	MP305	2016	Indian or Asian	993
municipality	MP305	2016	White	10119
municipality	MP306	2016	Black African	38663
municipality	MP306	2016	Coloured	132
municipality	MP306	2016	Indian or Asian	554
municipality	MP306	2016	White	5882
municipality	MP307	2016	Black African	291738
municipality	MP307	2016	Coloured	3936
municipality	MP307	2016	Indian or Asian	3252
municipality	MP307	2016	White	41165
municipality	MP311	2016	Black African	72106
municipality	MP311	2016	Coloured	417
municipality	MP311	2016	Indian or Asian	75
municipality	MP311	2016	White	11552
municipality	MP312	2016	Black African	391982
municipality	MP312	2016	Coloured	5450
municipality	MP312	2016	Indian or Asian	3762
municipality	MP312	2016	White	54033
municipality	MP313	2016	Black African	228766
municipality	MP313	2016	Coloured	6515
municipality	MP313	2016	Indian or Asian	3233
municipality	MP313	2016	White	40235
municipality	MP314	2016	Black African	43025
municipality	MP314	2016	Coloured	322
municipality	MP314	2016	Indian or Asian	156
municipality	MP314	2016	White	4646
municipality	MP315	2016	Black African	332372
municipality	MP315	2016	Coloured	413
municipality	MP315	2016	Indian or Asian	403
municipality	MP315	2016	White	143
municipality	MP316	2016	Black African	245241
municipality	MP316	2016	Coloured	382
municipality	MP316	2016	Indian or Asian	322
municipality	MP316	2016	White	70
municipality	MP321	2016	Black African	84962
municipality	MP321	2016	Coloured	1981
municipality	MP321	2016	Indian or Asian	303
municipality	MP321	2016	White	14649
municipality	MP325	2016	Black African	545121
municipality	MP325	2016	Coloured	681
municipality	MP325	2016	Indian or Asian	162
municipality	MP325	2016	White	252
municipality	MP324	2016	Black African	405931
municipality	MP324	2016	Coloured	733
municipality	MP324	2016	Indian or Asian	389
municipality	MP324	2016	White	3854
municipality	MP326	2016	Black African	667827
municipality	MP326	2016	Coloured	6535
municipality	MP326	2016	Indian or Asian	2855
municipality	MP326	2016	White	18695
municipality	LIM331	2016	Black African	255353
municipality	LIM331	2016	Coloured	154
municipality	LIM331	2016	Indian or Asian	413
municipality	LIM331	2016	White	207
municipality	LIM332	2016	Black African	216577
municipality	LIM332	2016	Coloured	238
municipality	LIM332	2016	Indian or Asian	153
municipality	LIM332	2016	White	1062
municipality	LIM333	2016	Black African	403488
municipality	LIM333	2016	Coloured	1068
municipality	LIM333	2016	Indian or Asian	1661
municipality	LIM333	2016	White	9929
municipality	LIM334	2016	Black African	159298
municipality	LIM334	2016	Coloured	426
municipality	LIM334	2016	Indian or Asian	602
municipality	LIM334	2016	White	8611
municipality	LIM335	2016	Black African	95796
municipality	LIM335	2016	Coloured	242
municipality	LIM335	2016	Indian or Asian	89
municipality	LIM335	2016	White	3819
municipality	LIM341	2016	Black African	127073
municipality	LIM341	2016	Coloured	578
municipality	LIM341	2016	Indian or Asian	444
municipality	LIM341	2016	White	3914
municipality	LIM343	2016	Black African	493951
municipality	LIM343	2016	Coloured	538
municipality	LIM343	2016	Indian or Asian	2571
municipality	LIM343	2016	White	177
municipality	LIM344	2016	Black African	406970
municipality	LIM344	2016	Coloured	1104
municipality	LIM344	2016	Indian or Asian	1723
municipality	LIM344	2016	White	6931
municipality	LIM345	2016	Black African	347128
municipality	LIM345	2016	Coloured	280
municipality	LIM345	2016	Indian or Asian	298
municipality	LIM345	2016	White	269
municipality	LIM355	2016	Black African	234844
municipality	LIM355	2016	Coloured	250
municipality	LIM355	2016	Indian or Asian	176
municipality	LIM355	2016	White	110
municipality	LIM351	2016	Black African	171207
municipality	LIM351	2016	Coloured	228
municipality	LIM351	2016	Indian or Asian	188
municipality	LIM351	2016	White	979
municipality	LIM353	2016	Black African	123919
municipality	LIM353	2016	Coloured	95
municipality	LIM353	2016	Indian or Asian	193
municipality	LIM353	2016	White	1120
municipality	LIM354	2016	Black African	760285
municipality	LIM354	2016	Coloured	7193
municipality	LIM354	2016	Indian or Asian	5041
municipality	LIM354	2016	White	24608
municipality	LIM361	2016	Black African	79344
municipality	LIM361	2016	Coloured	274
municipality	LIM361	2016	Indian or Asian	0
municipality	LIM361	2016	White	16614
municipality	LIM362	2016	Black African	126997
municipality	LIM362	2016	Coloured	395
municipality	LIM362	2016	Indian or Asian	322
municipality	LIM362	2016	White	12526
municipality	LIM366	2016	Black African	64642
municipality	LIM366	2016	Coloured	733
municipality	LIM366	2016	Indian or Asian	386
municipality	LIM366	2016	White	10535
municipality	LIM367	2016	Black African	315814
municipality	LIM367	2016	Coloured	500
municipality	LIM367	2016	Indian or Asian	1756
municipality	LIM367	2016	White	7222
municipality	LIM368	2016	Black African	94017
municipality	LIM368	2016	Coloured	370
municipality	LIM368	2016	Indian or Asian	210
municipality	LIM368	2016	White	13102
municipality	LIM471	2016	Black African	124319
municipality	LIM471	2016	Coloured	202
municipality	LIM471	2016	Indian or Asian	170
municipality	LIM471	2016	White	2477
municipality	LIM472	2016	Black African	261819
municipality	LIM472	2016	Coloured	508
municipality	LIM472	2016	Indian or Asian	229
municipality	LIM472	2016	White	5700
municipality	LIM473	2016	Black African	283830
municipality	LIM473	2016	Coloured	221
municipality	LIM473	2016	Indian or Asian	232
municipality	LIM473	2016	White	152
municipality	LIM476	2016	Black African	483490
municipality	LIM476	2016	Coloured	1243
municipality	LIM476	2016	Indian or Asian	229
municipality	LIM476	2016	White	4940
country	ZA	2016	Black African	44891603
country	ZA	2016	Coloured	4869526
country	ZA	2016	Indian or Asian	1375834
country	ZA	2016	White	4516691
\.


--
-- Name: populationgroup_2016 pk_populationgroup_2016; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY populationgroup_2016
    ADD CONSTRAINT pk_populationgroup_2016 PRIMARY KEY (geo_level, geo_code, geo_version, "population group");


--
-- PostgreSQL database dump complete
--

