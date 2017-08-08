--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:56:13 EAT

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
-- TOC entry 207 (class 1259 OID 17825)
-- Name: employmentactivitystatus_sex; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE employmentactivitystatus_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "employment activity status" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE employmentactivitystatus_sex OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17825)
-- Dependencies: 207
-- Data for Name: employmentactivitystatus_sex; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY employmentactivitystatus_sex (geo_level, geo_code, "employment activity status", sex, total) FROM stdin;
county	7	economically inactive	female	91650
county	7	economically inactive	male	60952
county	7	employed	female	45518
county	7	employed	male	87187
county	7	employment unclassified	female	31600
county	7	employment unclassified	male	35682
county	7	seeking work / no work available	female	75506
county	11	economically inactive	female	29580
county	11	economically inactive	male	19773
county	11	employed	female	21966
county	11	employed	male	32430
county	11	employment unclassified	female	2469
county	11	employment unclassified	male	2995
county	11	seeking work / no work available	female	4011
county	11	seeking work / no work available	male	5232
county	14	economically inactive	female	75339
county	14	economically inactive	male	60169
county	14	employed	female	135987
county	14	employed	male	141061
county	14	employment unclassified	female	7865
county	14	employment unclassified	male	7962
county	14	seeking work / no work available	female	9240
county	20	economically inactive	female	77475
county	20	economically inactive	male	70180
county	20	employed	female	149981
county	20	employed	male	148860
county	20	employment unclassified	female	5775
county	20	employment unclassified	male	5414
county	20	seeking work / no work available	female	5059
county	20	seeking work / no work available	male	5318
county	40	economically inactive	female	107984
county	40	economically inactive	male	95308
county	40	employed	female	181388
county	40	employed	male	162143
county	40	employment unclassified	female	18700
county	40	employment unclassified	male	18340
county	40	seeking work / no work available	female	12672
county	40	seeking work / no work available	male	11805
county	22	economically inactive	female	346243
county	22	economically inactive	male	249589
county	22	employed	female	334977
county	22	employed	male	409108
county	22	employment unclassified	female	19188
county	22	employment unclassified	male	17438
county	22	seeking work / no work available	female	38958
county	28	economically inactive	female	79831
county	28	economically inactive	male	61120
county	28	employed	female	62897
county	28	employed	male	75895
county	28	employment unclassified	female	7927
county	28	employment unclassified	male	8073
county	28	seeking work / no work available	female	5095
county	28	seeking work / no work available	male	7481
county	30	economically inactive	female	121166
county	30	economically inactive	male	89656
county	30	employed	female	84223
county	30	employed	male	106126
county	30	employment unclassified	female	12437
county	30	employment unclassified	male	18154
county	30	seeking work / no work available	female	13576
county	34	economically inactive	female	156840
county	34	economically inactive	male	105132
county	34	employed	female	100033
county	34	employed	male	148926
county	34	employment unclassified	female	10263
county	34	employment unclassified	male	9936
county	34	seeking work / no work available	female	19257
county	34	seeking work / no work available	male	21042
county	35	economically inactive	female	100699
county	35	economically inactive	male	91281
county	35	employed	female	127056
county	35	employed	male	139723
county	35	employment unclassified	female	9770
county	35	employment unclassified	male	9790
county	35	seeking work / no work available	female	7534
county	36	economically inactive	female	151105
county	36	economically inactive	male	144033
county	36	employed	female	202342
county	36	employed	male	197820
county	36	employment unclassified	female	16505
county	36	employment unclassified	male	16581
county	36	seeking work / no work available	female	6207
county	36	seeking work / no work available	male	7605
county	37	economically inactive	female	281467
county	37	economically inactive	male	242050
county	37	employed	female	359333
county	37	employed	male	338187
county	37	employment unclassified	female	35149
county	37	employment unclassified	male	34657
county	37	seeking work / no work available	female	36492
county	37	seeking work / no work available	male	37125
county	39	economically inactive	female	209865
county	39	economically inactive	male	191291
county	39	employed	female	323073
county	39	employed	male	308149
county	39	employment unclassified	female	27697
county	39	employment unclassified	male	27236
county	39	seeking work / no work available	female	18116
county	43	economically inactive	female	161767
county	43	economically inactive	male	147037
county	43	employed	female	207466
county	43	employed	male	185908
county	43	employment unclassified	female	20433
county	43	employment unclassified	male	19889
county	43	seeking work / no work available	female	23429
county	43	seeking work / no work available	male	20313
county	45	economically inactive	female	209595
county	45	economically inactive	male	205434
county	45	employed	female	306267
county	45	employed	male	251369
county	2	economically inactive	female	156110
county	2	economically inactive	male	111685
county	2	employed	female	93362
county	2	employed	male	113403
county	2	employment unclassified	female	7525
county	2	employment unclassified	male	7314
county	2	seeking work / no work available	female	17473
county	2	seeking work / no work available	male	22630
county	5	economically inactive	female	18395
county	5	economically inactive	male	10593
county	5	employed	female	17711
county	5	employed	male	28331
county	5	employment unclassified	female	2887
county	5	employment unclassified	male	3212
county	5	seeking work / no work available	female	1476
county	9	economically inactive	female	178676
county	9	economically inactive	male	154258
county	9	employed	female	112641
county	9	employed	male	194734
county	9	employment unclassified	female	30135
county	9	employment unclassified	male	35942
county	9	seeking work / no work available	female	72459
county	9	seeking work / no work available	male	99972
county	10	economically inactive	female	56360
county	10	economically inactive	male	30986
county	10	employed	female	42275
county	10	employed	male	71951
county	10	employment unclassified	female	10221
county	10	employment unclassified	male	11437
county	10	seeking work / no work available	female	8610
county	12	economically inactive	female	272712
county	12	economically inactive	male	219699
county	12	employed	female	372542
county	12	employed	male	397306
county	12	employment unclassified	female	26531
county	12	employment unclassified	male	26720
county	12	seeking work / no work available	female	22672
county	12	seeking work / no work available	male	26730
county	15	economically inactive	female	225825
county	15	economically inactive	male	174380
county	15	employed	female	177456
county	15	employed	male	174406
county	15	employment unclassified	female	20681
county	15	employment unclassified	male	19888
county	15	seeking work / no work available	female	26241
county	16	economically inactive	female	259330
county	16	economically inactive	male	187415
county	16	employed	female	182069
county	16	employed	male	230980
county	16	employment unclassified	female	21186
county	16	employment unclassified	male	21008
county	16	seeking work / no work available	female	19147
county	16	seeking work / no work available	male	26349
county	17	economically inactive	female	243658
county	17	economically inactive	male	186066
county	17	employed	female	124015
county	17	employed	male	148453
county	17	employment unclassified	female	10524
county	17	employment unclassified	male	10316
county	17	seeking work / no work available	female	12096
county	17	seeking work / no work available	male	18700
county	21	economically inactive	female	168660
county	21	economically inactive	male	143205
county	21	employed	female	221099
county	21	employed	male	213306
county	21	employment unclassified	female	7661
county	21	employment unclassified	male	7893
county	21	seeking work / no work available	female	9009
county	31	economically inactive	female	78306
county	31	economically inactive	male	59632
county	31	employed	female	73805
county	31	employed	male	85723
county	31	employment unclassified	female	8081
county	31	employment unclassified	male	8277
county	31	seeking work / no work available	female	10838
county	31	seeking work / no work available	male	12970
county	32	economically inactive	female	298773
county	32	economically inactive	male	240432
county	32	employed	female	310256
county	32	employed	male	365594
county	32	employment unclassified	female	26367
county	32	employment unclassified	male	25615
county	32	seeking work / no work available	female	41244
county	42	economically inactive	female	205790
county	42	economically inactive	male	167986
county	42	employed	female	165899
county	42	employed	male	181313
county	42	employment unclassified	female	16431
county	42	employment unclassified	male	15601
county	42	seeking work / no work available	female	24337
county	44	economically inactive	female	143345
county	44	economically inactive	male	135462
county	44	employed	female	208282
county	44	employed	male	189157
county	44	employment unclassified	female	16780
county	44	employment unclassified	male	16268
county	44	seeking work / no work available	female	14664
county	44	seeking work / no work available	male	12405
county	45	employment unclassified	female	25394
county	45	employment unclassified	male	24462
county	45	seeking work / no work available	female	12455
county	45	seeking work / no work available	male	12387
county	47	economically inactive	female	552949
county	47	economically inactive	male	357700
county	47	employed	female	562550
county	47	employed	male	848679
county	47	employment unclassified	female	80281
county	47	employment unclassified	male	68295
county	47	seeking work / no work available	female	131955
county	6	economically inactive	female	58149
county	6	economically inactive	male	41810
county	6	employed	female	51973
county	6	employed	male	67920
county	6	employment unclassified	female	3931
county	6	employment unclassified	male	4228
county	6	seeking work / no work available	female	4905
county	6	seeking work / no work available	male	6927
county	8	economically inactive	female	92518
county	8	economically inactive	male	74270
county	8	employed	female	73429
county	8	employed	male	122893
county	8	employment unclassified	female	27004
county	8	employment unclassified	male	32387
county	8	seeking work / no work available	female	59853
county	13	economically inactive	female	17968
county	13	economically inactive	male	15543
county	13	employed	female	35735
county	13	employed	male	33639
county	13	employment unclassified	female	1657
county	13	employment unclassified	male	1600
county	13	seeking work / no work available	female	1578
county	13	seeking work / no work available	male	1475
county	18	economically inactive	female	109293
county	18	economically inactive	male	100673
county	18	employed	female	141447
county	18	employed	male	134559
county	18	employment unclassified	female	6878
county	18	employment unclassified	male	6975
county	18	seeking work / no work available	female	5230
county	19	economically inactive	female	133645
county	19	economically inactive	male	108726
county	19	employed	female	167919
county	19	employed	male	173014
county	19	employment unclassified	female	5903
county	19	employment unclassified	male	5824
county	19	seeking work / no work available	female	8319
county	19	seeking work / no work available	male	9914
county	25	economically inactive	female	30840
county	25	economically inactive	male	20012
county	25	employed	female	38202
county	25	employed	male	46446
county	25	employment unclassified	female	12747
county	25	employment unclassified	male	13693
county	25	seeking work / no work available	female	8660
county	23	economically inactive	female	88634
county	23	economically inactive	male	55721
county	23	employed	female	161343
county	23	employed	male	203342
county	23	employment unclassified	female	60866
county	23	employment unclassified	male	72985
county	23	seeking work / no work available	female	43415
county	23	seeking work / no work available	male	51665
county	24	economically inactive	female	87619
county	24	economically inactive	male	66029
county	26	economically inactive	female	171479
county	26	economically inactive	male	139081
county	26	employed	female	139432
county	26	employed	male	163549
county	26	employment unclassified	female	10524
county	26	employment unclassified	male	10213
county	26	seeking work / no work available	female	19892
county	26	seeking work / no work available	male	20468
county	27	economically inactive	female	198922
county	27	economically inactive	male	144024
county	27	employed	female	121173
county	27	employed	male	173910
county	27	employment unclassified	female	31220
county	27	employment unclassified	male	29314
county	27	seeking work / no work available	female	24978
county	29	economically inactive	female	157441
county	29	economically inactive	male	124631
county	29	employed	female	133650
county	29	employed	male	162599
county	29	employment unclassified	female	15095
county	29	employment unclassified	male	15403
county	29	seeking work / no work available	female	8771
county	29	seeking work / no work available	male	10505
county	32	seeking work / no work available	male	42395
county	33	economically inactive	female	137235
county	33	economically inactive	male	104109
county	33	employed	female	162664
county	33	employed	male	194267
county	33	employment unclassified	female	24818
county	33	employment unclassified	male	27378
county	33	seeking work / no work available	female	13179
county	38	economically inactive	female	114550
county	38	economically inactive	male	94385
county	38	employed	female	106219
county	38	employed	male	95604
county	38	employment unclassified	female	10870
county	38	employment unclassified	male	10658
county	38	seeking work / no work available	female	17025
county	38	seeking work / no work available	male	17996
county	41	economically inactive	female	141486
county	41	economically inactive	male	123269
county	41	employed	female	198561
county	41	employed	male	172400
county	41	employment unclassified	female	16947
county	41	employment unclassified	male	16195
county	41	seeking work / no work available	female	15002
county	46	economically inactive	female	86652
county	46	economically inactive	male	85942
county	46	employed	female	116913
county	46	employed	male	98750
county	46	employment unclassified	female	6047
county	46	employment unclassified	male	5902
county	46	seeking work / no work available	female	3675
county	46	seeking work / no work available	male	3852
county	1	economically inactive	female	207767
county	1	economically inactive	male	122080
county	1	employed	female	121216
county	1	employed	male	231152
county	1	employment unclassified	female	17087
county	1	employment unclassified	male	14812
county	1	seeking work / no work available	female	39565
county	1	seeking work / no work available	male	44482
county	3	economically inactive	female	249565
county	3	economically inactive	male	180864
county	3	employed	female	172688
county	3	employed	male	196490
county	3	employment unclassified	female	24889
county	3	employment unclassified	male	23518
county	3	seeking work / no work available	female	28974
county	3	seeking work / no work available	male	33962
county	4	economically inactive	female	44495
county	4	economically inactive	male	23198
county	4	employed	female	34930
county	4	employed	male	51451
county	4	employment unclassified	female	7382
county	4	employment unclassified	male	7858
county	4	seeking work / no work available	female	9621
county	4	seeking work / no work available	male	12217
county	5	seeking work / no work available	male	2096
county	7	seeking work / no work available	male	100900
county	8	seeking work / no work available	male	83840
county	10	seeking work / no work available	male	11929
county	14	seeking work / no work available	male	10148
county	15	seeking work / no work available	male	27913
county	18	seeking work / no work available	male	6827
county	25	seeking work / no work available	male	9465
county	21	seeking work / no work available	male	12905
county	22	seeking work / no work available	male	42702
county	24	employed	female	95502
county	24	employed	male	108653
county	24	employment unclassified	female	12896
county	24	employment unclassified	male	14171
county	24	seeking work / no work available	female	13453
county	24	seeking work / no work available	male	16001
county	27	seeking work / no work available	male	28399
county	30	seeking work / no work available	male	16772
county	33	seeking work / no work available	male	14017
county	35	seeking work / no work available	male	8223
county	39	seeking work / no work available	male	17991
county	41	seeking work / no work available	male	13483
county	42	seeking work / no work available	male	22109
county	47	seeking work / no work available	male	111317
country	KE	economically inactive	female	7187753
country	KE	economically inactive	male	5636871
country	KE	employed	female	7379465
country	KE	employed	male	8406866
country	KE	employment unclassified	female	833224
country	KE	employment unclassified	male	847509
country	KE	seeking work / no work available	female	1025923
country	KE	seeking work / no work available	male	1160959
\.


--
-- TOC entry 3062 (class 2606 OID 17983)
-- Name: employmentactivitystatus_sex employmentactivitystatus_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY employmentactivitystatus_sex
    ADD CONSTRAINT employmentactivitystatus_sex_pkey PRIMARY KEY (geo_level, geo_code, "employment activity status", sex);


-- Completed on 2017-07-31 10:56:31 EAT

--
-- PostgreSQL database dump complete
--

