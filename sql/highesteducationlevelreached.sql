--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:57:56 EAT

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
-- TOC entry 213 (class 1259 OID 17843)
-- Name: highesteducationlevelreached; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE highesteducationlevelreached (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "highest education level reached" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE highesteducationlevelreached OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17843)
-- Dependencies: 213
-- Data for Name: highesteducationlevelreached; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY highesteducationlevelreached (geo_level, geo_code, "highest education level reached", total) FROM stdin;
county	22	basic literacy	4525
county	22	madrassa	344
county	22	none	97649
county	22	pre-primary	95423
county	22	primary	740539
county	22	secondary	437294
county	22	tertiary	112740
county	22	university	45680
county	22	youth polytechnic	8262
county	28	basic literacy	419
county	28	madrassa	17
county	28	none	43642
county	28	pre-primary	26192
county	28	primary	201577
county	28	secondary	49082
county	28	tertiary	8409
county	28	university	2197
county	28	youth polytechnic	1505
county	30	basic literacy	551
county	30	madrassa	52
county	30	none	140043
county	30	pre-primary	38957
county	30	primary	237325
county	30	secondary	63547
county	30	tertiary	14654
county	30	university	3896
county	30	youth polytechnic	1233
county	34	basic literacy	1205
county	34	madrassa	504
county	34	none	144098
county	34	pre-primary	45718
county	34	primary	253654
county	34	secondary	116920
county	34	tertiary	31561
county	34	university	19186
county	34	youth polytechnic	2772
county	35	basic literacy	647
county	35	madrassa	80
county	35	none	52661
county	35	pre-primary	38252
county	35	primary	322587
county	35	secondary	92317
county	35	tertiary	17826
county	35	university	5298
county	35	youth polytechnic	2104
county	36	basic literacy	1015
county	36	madrassa	79
county	36	none	87597
county	36	pre-primary	54658
county	36	primary	503574
county	36	secondary	126073
county	36	tertiary	20942
county	36	university	5388
county	36	youth polytechnic	2921
county	37	basic literacy	1599
county	37	madrassa	230
county	37	none	211448
county	37	pre-primary	108891
county	37	primary	883557
county	37	secondary	224519
county	37	tertiary	32942
county	7	basic literacy	423
county	7	madrassa	39662
county	7	none	379051
county	7	pre-primary	8775
county	7	primary	112347
county	7	secondary	24421
county	7	tertiary	3095
county	7	university	2461
county	11	basic literacy	125
county	11	madrassa	1076
county	11	none	54105
county	11	pre-primary	9751
county	11	primary	45724
county	11	secondary	13589
county	11	tertiary	2672
county	11	university	931
county	11	youth polytechnic	346
county	14	basic literacy	1542
county	14	madrassa	49
county	14	none	56517
county	14	pre-primary	18718
county	14	primary	281293
county	14	secondary	90932
county	14	tertiary	17140
county	14	university	5031
county	14	youth polytechnic	3784
county	15	basic literacy	2185
county	15	madrassa	234
county	15	none	168726
county	15	pre-primary	57502
county	15	primary	555091
county	15	secondary	94245
county	15	tertiary	17251
county	20	basic literacy	1627
county	20	madrassa	118
county	20	none	45033
county	20	pre-primary	21983
county	20	primary	288571
county	20	secondary	112656
county	20	tertiary	15505
county	20	university	4706
county	40	basic literacy	640
county	40	madrassa	120
county	40	none	105650
county	40	pre-primary	51408
county	40	primary	400807
county	40	secondary	85031
county	40	tertiary	11784
county	40	university	3753
county	40	youth polytechnic	1661
county	37	university	13329
county	37	youth polytechnic	3156
county	39	basic literacy	1333
county	39	madrassa	114
county	39	none	143688
county	39	pre-primary	86555
county	39	primary	731968
county	39	secondary	217310
county	39	tertiary	30024
county	39	university	9351
county	39	youth polytechnic	2641
county	42	basic literacy	1491
county	42	madrassa	164
county	42	none	75700
county	42	pre-primary	83062
county	42	primary	481966
county	42	secondary	167723
county	42	tertiary	32808
county	42	university	16264
county	42	youth polytechnic	3004
county	43	basic literacy	774
county	43	madrassa	42
county	43	none	87603
county	43	pre-primary	91107
county	43	primary	527361
county	43	secondary	125211
county	43	tertiary	16259
county	43	university	5845
county	43	youth polytechnic	1704
county	45	basic literacy	1179
county	45	madrassa	65
county	45	none	118497
county	45	pre-primary	86681
county	45	primary	610717
county	45	secondary	270662
county	45	tertiary	30346
county	45	university	10923
county	45	youth polytechnic	4269
county	21	basic literacy	3154
county	21	madrassa	82
county	21	none	80762
county	21	pre-primary	33452
county	21	primary	504390
county	21	secondary	172117
county	21	tertiary	24308
county	21	university	6684
county	21	youth polytechnic	3557
county	29	basic literacy	814
county	29	madrassa	93
county	29	none	70364
county	29	pre-primary	61589
county	29	primary	419103
county	29	secondary	100002
county	29	tertiary	18298
county	29	university	6194
county	29	youth polytechnic	2010
county	31	basic literacy	861
county	31	madrassa	66
county	31	none	61541
county	31	pre-primary	27328
county	31	primary	186821
county	31	secondary	69127
county	31	tertiary	11054
county	31	university	3948
county	31	youth polytechnic	1283
county	32	basic literacy	2828
county	32	madrassa	256
county	32	none	139539
county	32	pre-primary	116217
county	32	primary	780918
county	32	secondary	320381
county	32	tertiary	61662
county	32	university	23976
county	32	youth polytechnic	3844
county	33	basic literacy	572
county	33	madrassa	84
county	33	none	231573
county	33	pre-primary	55205
county	33	primary	376147
county	33	secondary	66146
county	33	tertiary	10601
county	33	university	3052
county	33	youth polytechnic	1070
county	44	basic literacy	708
county	44	madrassa	247
county	44	none	90415
county	44	pre-primary	81616
county	44	primary	508578
county	44	secondary	102617
county	44	tertiary	14584
county	44	university	5458
county	44	youth polytechnic	1524
county	46	basic literacy	455
county	46	madrassa	13
county	46	none	41178
county	46	pre-primary	33258
county	46	primary	233911
county	46	secondary	113806
county	46	tertiary	12102
county	46	university	3656
county	46	youth polytechnic	1483
county	47	basic literacy	8300
county	47	madrassa	9065
county	47	none	162504
county	47	pre-primary	162520
county	47	primary	1074033
county	47	secondary	944148
county	47	tertiary	287649
county	47	university	192337
county	47	youth polytechnic	21803
county	2	basic literacy	844
county	2	madrassa	2446
county	2	none	168879
county	2	pre-primary	53274
county	2	primary	290116
county	2	secondary	49182
county	2	tertiary	8370
county	2	university	1992
county	2	youth polytechnic	1503
county	5	basic literacy	152
county	5	madrassa	3004
county	5	none	19460
county	5	pre-primary	7812
county	5	primary	48223
county	5	secondary	10587
county	5	tertiary	1480
county	5	university	415
county	5	youth polytechnic	131
county	9	basic literacy	480
county	9	madrassa	98975
county	9	none	560334
county	9	pre-primary	10411
county	9	primary	235580
county	9	secondary	40413
county	9	tertiary	2519
county	9	university	1424
county	9	youth polytechnic	202
county	10	basic literacy	468
county	10	madrassa	3119
county	10	none	163550
county	10	pre-primary	12989
county	10	primary	67450
county	10	secondary	12665
county	10	tertiary	2135
county	10	university	956
county	10	youth polytechnic	308
county	12	basic literacy	4144
county	12	madrassa	225
county	12	none	226905
county	12	pre-primary	71376
county	12	primary	881763
county	12	secondary	209839
county	12	tertiary	39147
county	12	university	11930
county	15	university	4469
county	15	youth polytechnic	12216
county	16	basic literacy	4649
county	16	madrassa	317
county	16	none	99498
county	16	pre-primary	51475
county	16	primary	578689
county	16	secondary	203414
county	16	tertiary	37277
county	16	university	12437
county	16	youth polytechnic	18698
county	17	basic literacy	2637
county	17	madrassa	187
county	17	none	99661
county	17	pre-primary	39584
county	17	primary	496042
county	17	secondary	131811
county	17	tertiary	19235
county	17	university	4683
county	18	basic literacy	1658
county	18	madrassa	50
county	18	none	47332
county	18	pre-primary	40067
county	18	primary	336716
county	18	secondary	104653
county	18	tertiary	12800
county	18	university	3610
county	18	youth polytechnic	1360
county	19	basic literacy	2531
county	19	madrassa	118
county	19	none	42333
county	19	pre-primary	36274
county	23	basic literacy	840
county	23	madrassa	424
county	23	none	614643
county	23	pre-primary	24486
county	23	primary	121093
county	23	secondary	22393
county	23	tertiary	3776
county	23	university	1489
county	23	youth polytechnic	351
county	24	basic literacy	153
county	24	madrassa	23
county	24	none	219742
county	24	pre-primary	33514
county	24	primary	172096
county	24	secondary	22097
county	24	tertiary	4564
county	24	university	1407
county	24	youth polytechnic	582
county	26	basic literacy	774
county	26	madrassa	110
county	26	none	98644
county	26	pre-primary	55557
county	26	primary	425993
county	26	secondary	126449
county	26	tertiary	16326
county	26	university	6412
county	26	youth polytechnic	1173
county	27	basic literacy	1428
county	27	madrassa	182
county	27	none	78641
county	27	pre-primary	63490
county	27	primary	422770
county	27	secondary	174412
county	27	tertiary	36479
county	27	university	26454
county	27	youth polytechnic	2778
county	38	basic literacy	1328
county	38	madrassa	60
county	38	none	58485
county	38	pre-primary	32971
county	38	primary	309369
county	38	secondary	82617
county	38	tertiary	11985
county	38	university	3907
county	38	youth polytechnic	1481
county	41	basic literacy	948
county	41	madrassa	90
county	41	none	102506
county	41	pre-primary	59001
county	41	primary	471530
county	1	basic literacy	2705
county	1	madrassa	4431
county	1	none	84459
county	1	pre-primary	59153
county	1	primary	384904
county	1	secondary	226497
county	1	tertiary	56992
county	1	university	20239
county	1	youth polytechnic	6844
county	3	basic literacy	1638
county	3	madrassa	1606
county	3	none	249459
county	3	pre-primary	106855
county	3	primary	505502
county	3	secondary	96901
county	3	tertiary	17830
county	3	university	5475
county	3	youth polytechnic	2978
county	4	basic literacy	316
county	4	madrassa	4046
county	4	none	98600
county	4	pre-primary	16129
county	4	primary	77008
county	4	secondary	11941
county	4	tertiary	1773
county	4	university	336
county	4	youth polytechnic	261
county	6	basic literacy	1004
county	6	madrassa	293
county	6	none	30876
county	6	pre-primary	16611
county	6	primary	151123
county	6	secondary	40858
county	6	tertiary	8478
county	6	university	1776
county	6	youth polytechnic	3917
county	7	youth polytechnic	238
county	8	basic literacy	213
county	8	madrassa	62342
county	8	none	399405
county	8	pre-primary	6177
county	8	primary	118167
county	8	secondary	20917
county	8	tertiary	2174
county	8	university	1311
county	8	youth polytechnic	164
county	12	youth polytechnic	10256
county	13	basic literacy	145
county	13	madrassa	7
county	13	none	21263
county	13	pre-primary	6519
county	13	primary	74126
county	13	secondary	11148
county	13	tertiary	2290
county	13	university	522
county	13	youth polytechnic	1482
county	17	youth polytechnic	11600
county	19	primary	345189
county	19	secondary	175626
county	19	tertiary	28956
county	19	university	9881
county	19	youth polytechnic	3896
county	20	youth polytechnic	1691
county	25	basic literacy	303
county	25	madrassa	10
county	25	none	117716
county	25	pre-primary	16489
county	25	primary	50422
county	25	secondary	9428
county	25	tertiary	2270
county	25	university	666
county	25	youth polytechnic	291
county	41	secondary	100596
county	41	tertiary	12358
county	41	university	4967
county	41	youth polytechnic	1367
country	KE	basic literacy	136660
country	KE	madrassa	469842
country	KE	none	12983950
country	KE	pre-primary	4630064
country	KE	primary	35652860
country	KE	secondary	12168640
country	KE	tertiary	2370860
country	KE	university	1052604
country	KE	youth polytechnic	323408
\.


--
-- TOC entry 3062 (class 2606 OID 17995)
-- Name: highesteducationlevelreached highesteducationlevelreached_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY highesteducationlevelreached
    ADD CONSTRAINT highesteducationlevelreached_pkey PRIMARY KEY (geo_level, geo_code, "highest education level reached");


-- Completed on 2017-07-31 10:58:13 EAT

--
-- PostgreSQL database dump complete
--

