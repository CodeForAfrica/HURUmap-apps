--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 11:00:16 EAT

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
-- TOC entry 222 (class 1259 OID 17869)
-- Name: mainsourceofwater; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE mainsourceofwater (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main source of water" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE mainsourceofwater OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17869)
-- Dependencies: 222
-- Data for Name: mainsourceofwater; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
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
-- TOC entry 3062 (class 2606 OID 18013)
-- Name: mainsourceofwater mainsourceofwater_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY mainsourceofwater
    ADD CONSTRAINT mainsourceofwater_pkey PRIMARY KEY (geo_level, geo_code, "main source of water");


-- Completed on 2017-07-31 11:00:33 EAT

--
-- PostgreSQL database dump complete
--

