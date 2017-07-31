--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 11:02:21 EAT

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
-- TOC entry 229 (class 1259 OID 17890)
-- Name: schoolattendance_sex; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE schoolattendance_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE schoolattendance_sex OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17890)
-- Dependencies: 229
-- Data for Name: schoolattendance_sex; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY schoolattendance_sex (geo_level, geo_code, "school attendance", sex, total) FROM stdin;
country	KE	at school	male	14579976
country	KE	left school	male	14149928
country	KE	never attended	male	5317852
country	KE	unspecified	male	774668
country	KE	at school	female	13646608
country	KE	left school	female	14315758
country	KE	never attended	female	6798986
country	KE	unspecified	female	587326
county	2	at school	male	121867
county	2	left school	male	94236
county	2	never attended	male	59303
county	2	unspecified	male	5619
county	3	at school	male	223846
county	3	left school	male	166620
county	3	never attended	male	75632
county	3	unspecified	male	11678
county	5	at school	male	18413
county	5	left school	male	20403
county	5	never attended	male	8152
county	5	unspecified	male	1411
county	7	at school	male	84871
county	7	left school	male	29944
county	7	never attended	male	184831
county	7	unspecified	male	9350
county	9	at school	male	191251
county	9	left school	male	39629
county	9	never attended	male	284712
county	9	unspecified	male	7371
county	10	at school	male	40742
county	10	left school	male	15698
county	10	never attended	male	78596
county	10	unspecified	male	2730
county	11	at school	male	23221
county	11	left school	male	16982
county	11	never attended	male	24643
county	11	unspecified	male	1835
county	12	at school	male	270391
county	12	left school	male	346260
county	12	never attended	male	86133
county	12	unspecified	male	17947
county	14	at school	male	90118
county	14	left school	male	120224
county	14	never attended	male	19457
county	14	unspecified	male	5114
county	15	at school	male	214922
county	15	left school	male	148151
county	15	never attended	male	61923
county	15	unspecified	male	7734
county	16	at school	male	212080
county	16	left school	male	243109
county	16	never attended	male	35574
county	16	unspecified	male	8508
county	17	at school	male	187877
county	17	left school	male	161764
county	17	never attended	male	37005
county	17	unspecified	male	6320
county	18	at school	male	123517
county	18	left school	male	125212
county	18	never attended	male	15650
county	18	unspecified	male	3653
county	20	at school	male	85265
county	20	left school	male	140821
county	20	never attended	male	13709
county	20	unspecified	male	3608
county	40	at school	male	156476
county	40	left school	male	116293
county	40	never attended	male	35187
county	40	unspecified	male	8596
county	21	at school	male	163644
county	21	left school	male	206083
county	21	never attended	male	25445
county	21	unspecified	male	6179
county	22	at school	male	286280
county	22	left school	male	436421
county	22	never attended	male	31046
county	22	unspecified	male	10298
county	28	at school	male	82359
county	28	left school	male	63332
county	28	never attended	male	16867
county	28	unspecified	male	2774
county	29	at school	male	159912
county	29	left school	male	147090
county	29	never attended	male	25949
county	29	unspecified	male	6296
county	30	at school	male	111827
county	30	left school	male	71451
county	30	never attended	male	64688
county	30	unspecified	male	3808
county	31	at school	male	75202
county	31	left school	male	78029
county	31	never attended	male	23345
county	31	unspecified	male	4817
county	32	at school	male	318392
county	32	left school	male	345560
county	32	never attended	male	51628
county	32	unspecified	male	15948
county	33	at school	male	157552
county	33	left school	male	114296
county	33	never attended	male	94955
county	33	unspecified	male	10761
county	34	at school	male	119125
county	34	left school	male	127006
county	34	never attended	male	57831
county	34	unspecified	male	7413
county	35	at school	male	124769
county	35	left school	male	120947
county	35	never attended	male	18477
county	35	unspecified	male	6290
county	36	at school	male	195328
county	36	left school	male	164091
county	36	never attended	male	29742
county	36	unspecified	male	8706
county	37	at school	male	333524
county	37	left school	male	284668
county	37	never attended	male	77912
county	37	unspecified	male	17310
county	39	at school	male	298735
county	39	left school	male	230738
county	39	never attended	male	55238
county	39	unspecified	male	11858
county	42	at school	male	203863
county	42	left school	male	185579
county	42	never attended	male	22354
county	42	unspecified	male	13580
county	43	at school	male	225500
county	43	left school	male	150338
county	43	never attended	male	24705
county	43	unspecified	male	8574
county	44	at school	male	209890
county	44	left school	male	142722
county	44	never attended	male	28076
county	44	unspecified	male	9238
county	45	at school	male	278075
county	45	left school	male	213054
county	45	never attended	male	35868
county	45	unspecified	male	12197
county	46	at school	male	104631
county	46	left school	male	89613
county	46	never attended	male	13706
county	46	unspecified	male	3152
county	47	at school	male	484427
county	47	left school	male	898849
county	47	never attended	male	58191
county	47	unspecified	male	38858
county	3	at school	female	207161
county	3	left school	female	139580
county	3	never attended	female	160240
county	3	unspecified	female	10035
county	4	at school	male	36950
county	4	left school	male	24632
county	4	never attended	male	41606
county	4	unspecified	male	1874
county	5	at school	female	16424
county	5	left school	female	16398
county	5	never attended	female	10275
county	5	unspecified	female	910
county	6	at school	male	51013
county	6	left school	male	64912
county	6	never attended	male	11038
county	6	unspecified	male	6933
county	7	at school	female	57967
county	7	left school	female	18269
county	7	never attended	female	181825
county	7	unspecified	female	6721
county	8	at school	male	99266
county	8	left school	male	29665
county	8	never attended	male	203669
county	8	unspecified	male	6481
county	11	at school	female	20948
county	11	left school	female	12996
county	11	never attended	female	28452
county	11	unspecified	female	781
county	13	at school	male	25395
county	13	left school	male	22532
county	13	never attended	male	7848
county	13	unspecified	male	775
county	14	at school	female	89150
county	14	left school	female	118331
county	14	never attended	female	31447
county	14	unspecified	female	3895
county	15	at school	female	207249
county	15	left school	female	171827
county	15	never attended	female	99252
county	16	at school	female	199404
county	16	left school	female	250784
county	16	never attended	female	55578
county	16	unspecified	female	6301
county	17	at school	female	177951
county	19	at school	male	125874
county	19	left school	male	172081
county	19	never attended	male	13014
county	19	unspecified	male	5916
county	20	at school	female	82572
county	20	left school	female	137731
county	20	never attended	female	27844
county	20	unspecified	female	2330
county	25	at school	male	31103
county	25	left school	male	13646
county	25	never attended	male	52707
county	25	unspecified	male	2116
county	40	at school	female	148301
county	40	left school	female	132907
county	40	never attended	female	59575
county	40	unspecified	female	7312
county	22	at school	female	283008
county	22	left school	female	436749
county	22	never attended	female	53833
county	22	unspecified	female	9288
county	23	at school	male	74742
county	23	left school	male	23498
county	23	never attended	male	305995
county	23	unspecified	male	10031
county	24	at school	male	82804
county	24	left school	male	39942
county	24	never attended	male	98870
county	24	unspecified	male	3995
county	26	at school	male	168612
county	26	left school	male	148491
county	26	never attended	male	39269
county	26	unspecified	male	8003
county	27	at school	male	186421
county	27	left school	male	180459
county	27	never attended	male	27666
county	27	unspecified	male	13308
county	28	at school	female	79688
county	28	left school	female	63509
county	28	never attended	female	22608
county	28	unspecified	female	2575
county	30	at school	female	105437
county	30	left school	female	70993
county	30	never attended	female	71016
county	30	unspecified	female	2967
county	31	at school	female	70751
county	31	left school	female	76011
county	31	never attended	female	34000
county	31	unspecified	female	2901
county	34	at school	female	110961
county	34	left school	female	113589
county	34	never attended	female	80594
county	35	at school	female	116375
county	35	left school	female	116015
county	35	never attended	female	27234
county	35	unspecified	female	4817
county	36	at school	female	183299
county	36	left school	female	170290
county	36	never attended	female	44822
county	36	unspecified	female	8193
county	37	at school	female	325039
county	37	left school	female	321980
county	37	never attended	female	110074
county	37	unspecified	female	14562
county	38	at school	male	113537
county	38	left school	male	97565
county	38	never attended	male	21596
county	38	unspecified	male	4129
county	39	at school	female	284434
county	39	left school	female	263111
county	39	never attended	female	70870
county	39	unspecified	female	10888
county	41	at school	male	171257
county	41	left school	male	145636
county	41	never attended	male	30181
county	41	unspecified	male	8267
county	42	at school	female	192916
county	42	left school	female	202528
county	42	never attended	female	42216
county	42	unspecified	female	7958
county	43	at school	female	202153
county	43	left school	female	188355
county	43	never attended	female	49350
county	43	unspecified	female	8702
county	45	at school	female	261919
county	45	left school	female	259422
county	45	never attended	female	64583
county	45	unspecified	female	11741
county	1	at school	male	145122
county	1	left school	male	256692
county	1	never attended	male	28937
county	1	unspecified	male	15975
county	1	at school	female	140747
county	1	left school	female	217170
county	1	never attended	female	46086
county	1	unspecified	female	9433
county	2	at school	female	112517
county	2	left school	female	78655
county	2	never attended	female	103738
county	2	unspecified	female	4536
county	4	at school	female	30439
county	4	left school	female	19622
county	4	never attended	female	54593
county	4	unspecified	female	1438
county	6	at school	female	48372
county	6	left school	female	59282
county	6	never attended	female	17187
county	6	unspecified	female	3256
county	8	at school	female	66236
county	8	left school	female	16005
county	8	never attended	female	189056
county	8	unspecified	female	3802
county	9	at school	female	135154
county	9	left school	female	23368
county	9	never attended	female	265814
county	9	unspecified	female	5085
county	10	at school	female	33918
county	10	left school	female	9586
county	10	never attended	female	82752
county	10	unspecified	female	1384
county	12	at school	female	270674
county	12	left school	female	338970
county	12	never attended	female	117716
county	12	unspecified	female	13754
county	13	at school	female	25098
county	13	left school	female	23094
county	13	never attended	female	12256
county	13	unspecified	female	729
county	15	unspecified	female	5277
county	17	left school	female	177543
county	17	never attended	female	57343
county	17	unspecified	female	4009
county	18	at school	female	118192
county	18	left school	female	133197
county	18	never attended	female	26387
county	18	unspecified	female	3222
county	19	at school	female	120154
county	19	left school	female	183327
county	19	never attended	female	24983
county	19	unspecified	female	3409
county	25	at school	female	25014
county	25	left school	female	9974
county	25	never attended	female	63516
county	25	unspecified	female	1092
county	21	at school	female	155549
county	21	left school	female	221178
county	21	never attended	female	46992
county	21	unspecified	female	5019
county	23	at school	female	58804
county	23	left school	female	17211
county	23	never attended	female	297540
county	23	unspecified	female	7564
county	24	at school	female	75523
county	24	left school	female	35690
county	24	never attended	female	114560
county	24	unspecified	female	3617
county	26	at school	female	161152
county	26	left school	female	153592
county	26	never attended	female	49323
county	26	unspecified	female	5851
county	27	at school	female	181150
county	27	left school	female	177522
county	27	never attended	female	36404
county	27	unspecified	female	9694
county	29	at school	female	152881
county	29	left school	female	147118
county	29	never attended	female	34849
county	29	unspecified	female	5465
county	32	at school	female	300742
county	32	left school	female	343244
county	32	never attended	female	72949
county	32	unspecified	female	10846
county	33	at school	female	138785
county	33	left school	female	101282
county	33	never attended	female	124728
county	33	unspecified	female	7677
county	34	unspecified	female	4204
county	38	at school	female	112411
county	38	left school	female	119387
county	38	never attended	female	30446
county	38	unspecified	female	4078
county	41	at school	female	159208
county	41	left school	female	173592
county	41	never attended	female	60846
county	41	unspecified	female	7182
county	44	at school	female	190347
county	44	left school	female	170717
county	44	never attended	female	48939
county	44	unspecified	female	8557
county	46	at school	female	99258
county	46	left school	female	104435
county	46	never attended	female	22252
county	46	unspecified	female	3304
county	47	at school	female	487872
county	47	left school	female	821743
county	47	never attended	female	72550
county	47	unspecified	female	27302
\.


--
-- TOC entry 3062 (class 2606 OID 18027)
-- Name: schoolattendance_sex schoolattendance_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY schoolattendance_sex
    ADD CONSTRAINT schoolattendance_sex_pkey PRIMARY KEY (geo_level, geo_code, "school attendance", sex);


-- Completed on 2017-07-31 11:02:38 EAT

--
-- PostgreSQL database dump complete
--

