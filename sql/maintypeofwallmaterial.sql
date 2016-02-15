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

ALTER TABLE IF EXISTS ONLY public.maintypeofwallmaterial DROP CONSTRAINT IF EXISTS maintypeofwallmaterial_pkey;
DROP TABLE IF EXISTS public.maintypeofwallmaterial;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeofwallmaterial; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE maintypeofwallmaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of wall material" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: maintypeofwallmaterial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY maintypeofwallmaterial (geo_level, geo_code, "main type of wall material", total) FROM stdin;
country	KE	brick/block	1470779
country	KE	corrugated iron sheets	577500
country	KE	grass/reeds	264557
country	KE	mud/cement	673636
country	KE	mud/wood	3208268
country	KE	other	78803
country	KE	tin	26411
country	KE	wood only	970089
country	KE	stone	1450487
county	30	brick/block	4037
county	30	corrugated iron sheets	7048
county	30	grass/reeds	1675
county	30	mud/cement	6952
county	30	mud/wood	55881
county	30	other	611
county	30	tin	87
county	30	wood only	28489
county	36	brick/block	15688
county	36	corrugated iron sheets	1430
county	36	grass/reeds	159
county	36	mud/cement	13147
county	36	mud/wood	113528
county	36	other	1834
county	36	tin	81
county	36	wood only	21166
county	39	brick/block	38862
county	39	corrugated iron sheets	493
county	39	grass/reeds	210
county	39	mud/cement	33668
county	39	mud/wood	190042
county	39	other	2246
county	39	tin	85
county	39	wood only	982
county	40	brick/block	26034
county	40	corrugated iron sheets	464
county	40	grass/reeds	476
county	40	mud/cement	16284
county	40	mud/wood	104454
county	40	other	3086
county	40	tin	96
county	40	wood only	312
county	28	brick/block	5037
county	28	corrugated iron sheets	1558
county	28	grass/reeds	235
county	28	mud/cement	5200
county	28	mud/wood	41805
county	28	other	409
county	28	tin	62
county	28	wood only	15919
county	14	brick/block	28030
county	14	corrugated iron sheets	2544
county	14	grass/reeds	458
county	14	mud/cement	3860
county	14	mud/wood	37605
county	14	other	3379
county	14	tin	89
county	14	wood only	33149
county	7	brick/block	12771
county	7	corrugated iron sheets	923
county	7	grass/reeds	42429
county	7	mud/cement	9217
county	7	mud/wood	19218
county	7	other	693
county	7	tin	307
county	7	wood only	8106
county	43	brick/block	17676
county	43	corrugated iron sheets	11533
county	43	grass/reeds	359
county	43	mud/cement	33897
county	43	mud/wood	135139
county	43	other	1318
county	43	tin	279
county	43	wood only	576
county	11	brick/block	2090
county	11	corrugated iron sheets	380
county	11	grass/reeds	5491
county	11	mud/cement	1144
county	11	mud/wood	9850
county	11	other	642
county	11	tin	1518
county	11	wood only	6970
county	34	brick/block	13104
county	34	corrugated iron sheets	45926
county	34	grass/reeds	3587
county	34	mud/cement	5763
county	34	mud/wood	39264
county	34	other	2402
county	34	tin	863
county	34	wood only	14315
county	37	brick/block	48365
county	37	corrugated iron sheets	941
county	37	grass/reeds	264
county	37	mud/cement	36471
county	37	mud/wood	264801
county	37	other	989
county	37	tin	78
county	37	wood only	708
county	35	brick/block	17026
county	35	corrugated iron sheets	7600
county	35	grass/reeds	91
county	35	mud/cement	9746
county	35	mud/wood	62362
county	35	other	1011
county	35	tin	132
county	35	wood only	15786
county	22	brick/block	29659
county	22	corrugated iron sheets	118797
county	22	grass/reeds	158
county	22	mud/cement	6421
county	22	mud/wood	23682
county	22	other	712
county	22	tin	3034
county	22	wood only	68284
county	3	brick/block	45805
county	3	corrugated iron sheets	645
county	3	grass/reeds	2645
county	3	mud/cement	16157
county	3	mud/wood	106284
county	3	other	535
county	3	tin	157
county	3	wood only	4281
county	20	brick/block	25880
county	20	corrugated iron sheets	2626
county	20	grass/reeds	957
county	20	mud/cement	4617
county	20	mud/wood	28517
county	20	other	757
county	20	tin	156
county	20	wood only	53075
county	45	brick/block	51676
county	45	corrugated iron sheets	1860
county	45	grass/reeds	187
county	45	mud/cement	21297
county	45	mud/wood	189596
county	45	other	1440
county	45	tin	85
county	45	wood only	857
county	42	brick/block	47969
county	42	corrugated iron sheets	6935
county	42	grass/reeds	146
county	42	mud/cement	48071
county	42	mud/wood	112223
county	42	other	2516
county	42	tin	382
county	42	wood only	482
county	15	brick/block	131432
county	15	corrugated iron sheets	343
county	15	grass/reeds	881
county	15	mud/cement	12953
county	15	mud/wood	52452
county	15	other	368
county	15	tin	79
county	15	wood only	2000
county	2	brick/block	17675
county	2	corrugated iron sheets	373
county	2	grass/reeds	2699
county	2	mud/cement	11944
county	2	mud/wood	69208
county	2	other	667
county	2	tin	76
county	2	wood only	483
county	31	brick/block	2933
county	31	corrugated iron sheets	2928
county	31	grass/reeds	464
county	31	mud/cement	3186
county	31	mud/wood	30105
county	31	other	1049
county	31	tin	111
county	31	wood only	47459
county	5	brick/block	4158
county	5	corrugated iron sheets	84
county	5	grass/reeds	1476
county	5	mud/cement	3069
county	5	mud/wood	10332
county	5	other	323
county	5	tin	28
county	5	wood only	150
county	16	brick/block	161931
county	16	corrugated iron sheets	18602
county	16	grass/reeds	298
county	16	mud/cement	4811
county	16	mud/wood	11002
county	16	other	350
county	16	tin	339
county	16	wood only	1235
county	17	brick/block	135293
county	17	corrugated iron sheets	960
county	17	grass/reeds	400
county	17	mud/cement	7158
county	17	mud/wood	36850
county	17	other	118
county	17	tin	61
county	17	wood only	668
county	9	brick/block	5745
county	9	corrugated iron sheets	309
county	9	grass/reeds	79903
county	9	mud/cement	2403
county	9	mud/wood	7494
county	9	other	3054
county	9	tin	124
county	9	wood only	22898
county	10	brick/block	2821
county	10	corrugated iron sheets	589
county	10	grass/reeds	6847
county	10	mud/cement	6067
county	10	mud/wood	17019
county	10	other	15948
county	10	tin	1919
county	10	wood only	4611
county	12	brick/block	13443
county	12	corrugated iron sheets	1512
county	12	grass/reeds	2404
county	12	mud/cement	6760
county	12	mud/wood	76884
county	12	other	2459
county	12	tin	236
county	12	wood only	227889
county	44	brick/block	30770
county	44	corrugated iron sheets	2923
county	44	grass/reeds	228
county	44	mud/cement	27323
county	44	mud/wood	116088
county	44	other	276
county	44	tin	78
county	44	wood only	484
county	1	brick/block	109233
county	1	corrugated iron sheets	1724
county	1	grass/reeds	401
county	1	mud/cement	35229
county	1	mud/wood	27720
county	1	other	226
county	1	tin	262
county	1	wood only	582
county	21	brick/block	27457
county	21	corrugated iron sheets	35815
county	21	grass/reeds	180
county	21	mud/cement	6745
county	21	mud/wood	58882
county	21	other	1036
county	21	tin	5127
county	21	wood only	37132
county	47	brick/block	137375
county	47	corrugated iron sheets	264413
county	47	grass/reeds	431
county	47	mud/cement	52330
county	47	mud/wood	36809
county	47	other	955
county	47	tin	5850
county	47	wood only	18592
county	32	brick/block	23136
county	32	corrugated iron sheets	11816
county	32	grass/reeds	428
county	32	mud/cement	42592
county	32	mud/wood	137687
county	32	other	2693
county	32	tin	500
county	32	wood only	55420
county	29	brick/block	23211
county	29	corrugated iron sheets	1429
county	29	grass/reeds	92
county	29	mud/cement	22231
county	29	mud/wood	97633
county	29	other	720
county	29	tin	44
county	29	wood only	5525
county	33	brick/block	6607
county	33	corrugated iron sheets	4896
county	33	grass/reeds	1319
county	33	mud/cement	11923
county	33	mud/wood	115444
county	33	other	2339
county	33	tin	606
county	33	wood only	16479
county	46	brick/block	21176
county	46	corrugated iron sheets	282
county	46	grass/reeds	201
county	46	mud/cement	6697
county	46	mud/wood	76135
county	46	other	24
county	46	tin	26
county	46	wood only	671
county	18	brick/block	3763
county	18	corrugated iron sheets	4386
county	18	grass/reeds	51
county	18	mud/cement	4252
county	18	mud/wood	47580
county	18	other	1951
county	18	tin	134
county	15	stone	4904
county	18	wood only	61182
county	19	brick/block	9510
county	19	corrugated iron sheets	3001
county	19	grass/reeds	267
county	19	mud/cement	2602
county	19	mud/wood	20485
county	19	other	274
county	19	tin	405
county	19	wood only	121347
county	25	brick/block	1359
county	25	corrugated iron sheets	262
county	25	grass/reeds	2448
county	25	mud/cement	6197
county	25	mud/wood	28057
county	25	other	2569
county	25	tin	1202
county	25	wood only	3520
county	41	brick/block	26766
county	41	corrugated iron sheets	811
county	41	grass/reeds	260
county	41	mud/cement	38390
county	41	mud/wood	126728
county	41	other	1903
county	41	tin	116
county	41	wood only	343
county	6	brick/block	30474
county	6	corrugated iron sheets	616
county	6	grass/reeds	354
county	6	mud/cement	6177
county	6	mud/wood	27940
county	6	other	376
county	6	tin	76
county	6	wood only	888
county	4	brick/block	2705
county	4	corrugated iron sheets	330
county	4	grass/reeds	13961
county	4	mud/cement	3896
county	4	mud/wood	19429
county	4	other	280
county	4	tin	56
county	4	wood only	5722
county	13	brick/block	3316
county	13	corrugated iron sheets	70
county	13	grass/reeds	105
county	13	mud/cement	1993
county	13	mud/wood	19839
county	13	other	84
county	13	tin	6
county	13	wood only	580
county	26	brick/block	26728
county	26	corrugated iron sheets	748
county	26	grass/reeds	179
county	26	mud/cement	21857
county	26	mud/wood	115572
county	26	other	987
county	26	tin	76
county	26	wood only	1109
county	23	brick/block	4969
county	23	corrugated iron sheets	773
county	23	grass/reeds	33318
county	23	mud/cement	4858
county	23	mud/wood	30909
county	23	other	9775
county	23	tin	1003
county	23	wood only	36611
county	27	brick/block	51138
county	27	corrugated iron sheets	5244
county	27	grass/reeds	221
county	27	mud/cement	24850
county	27	mud/wood	91857
county	27	other	2764
county	27	tin	254
county	27	wood only	13632
county	38	brick/block	18807
county	38	corrugated iron sheets	141
county	38	grass/reeds	32
county	38	mud/cement	12403
county	38	mud/wood	90495
county	38	other	225
county	38	tin	28
county	38	wood only	156
county	8	brick/block	2370
county	8	corrugated iron sheets	155
county	8	grass/reeds	54588
county	8	mud/cement	981
county	8	mud/wood	2567
county	8	other	164
county	8	tin	49
county	8	wood only	6477
county	24	brick/block	4769
county	24	corrugated iron sheets	262
county	24	grass/reeds	594
county	24	mud/cement	9847
county	24	mud/wood	74815
county	24	other	266
county	24	tin	49
county	24	wood only	2787
county	30	stone	5646
county	36	stone	7261
county	39	stone	4013
county	40	stone	2874
county	28	stone	7313
county	14	stone	22084
county	7	stone	4606
county	43	stone	5331
county	11	stone	3220
county	34	stone	47839
county	37	stone	2758
county	35	stone	13471
county	22	stone	231040
county	3	stone	21342
county	20	stone	37396
county	45	stone	2456
county	42	stone	7413
county	2	stone	18566
county	31	stone	14846
county	5	stone	2393
county	16	stone	65774
county	17	stone	4772
county	9	stone	3541
county	10	stone	890
county	12	stone	48918
county	44	stone	1800
county	1	stone	81877
county	21	stone	69958
county	47	stone	466360
county	32	stone	134825
county	29	stone	2004
county	33	stone	9454
county	46	stone	853
county	18	stone	19194
county	19	stone	43462
county	25	stone	1617
county	41	stone	3347
county	6	stone	3138
county	4	stone	895
county	13	stone	1396
county	26	stone	2376
county	23	stone	719
county	27	stone	11656
county	38	stone	954
county	8	stone	3575
county	24	stone	360
\.


--
-- Name: maintypeofwallmaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY maintypeofwallmaterial
    ADD CONSTRAINT maintypeofwallmaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of wall material");


--
-- PostgreSQL database dump complete
--

