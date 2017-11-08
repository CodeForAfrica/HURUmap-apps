--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

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
-- Name: householddistributionbylightsource; Type: TABLE; Schema: public; Owner: hurumap_ug
--

CREATE TABLE householddistributionbylightsource (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT '2009'::character varying NOT NULL,
    "household distribution by light source" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE householddistributionbylightsource OWNER TO hurumap_ug;

--
-- Data for Name: householddistributionbylightsource; Type: TABLE DATA; Schema: public; Owner: hurumap_ug
--

COPY householddistributionbylightsource (geo_level, geo_code, geo_version, "household distribution by light source", total) FROM stdin;
district	7	2014	gas	210
district	80	2014	electricity	26984
district	80	2014	gas	383
district	80	2014	paraffin lantern	12170
district	80	2014	paraffin tadooba	49111
district	80	2014	candles	4424
district	80	2014	firewood	537
district	80	2014	others	4324
district	16	2014	electricity	5194
district	16	2014	gas	100
district	16	2014	paraffin lantern	4015
district	16	2014	paraffin tadooba	22539
district	16	2014	candles	537
district	16	2014	firewood	259
district	16	2014	others	1691
district	67	2014	electricity	4081
district	67	2014	gas	79
district	67	2014	paraffin lantern	3532
district	67	2014	paraffin tadooba	12468
district	67	2014	candles	814
district	67	2014	firewood	153
district	67	2014	others	474
district	74	2014	electricity	1825
district	74	2014	gas	76
district	74	2014	paraffin lantern	1356
district	74	2014	paraffin tadooba	14951
district	74	2014	candles	1063
district	74	2014	firewood	221
district	74	2014	others	5692
district	19	2014	electricity	4656
district	19	2014	gas	162
district	19	2014	paraffin lantern	2990
district	19	2014	paraffin tadooba	24041
district	19	2014	candles	772
district	19	2014	firewood	305
district	19	2014	others	2359
district	1	2014	electricity	2751
district	1	2014	gas	41
district	1	2014	paraffin lantern	2939
district	1	2014	paraffin tadooba	9172
district	1	2014	candles	1299
district	1	2014	firewood	103
district	1	2014	others	3795
district	85	2014	electricity	8166
district	85	2014	gas	203
district	85	2014	paraffin lantern	5233
district	85	2014	paraffin tadooba	25672
district	85	2014	candles	795
district	85	2014	firewood	274
district	85	2014	others	1094
district	20	2014	electricity	349178
district	20	2014	gas	1183
district	20	2014	paraffin lantern	19409
district	20	2014	paraffin tadooba	11511
district	20	2014	candles	29114
district	20	2014	firewood	95
district	20	2014	others	5604
district	26	2014	electricity	11395
district	26	2014	gas	250
district	26	2014	paraffin lantern	6675
district	26	2014	paraffin tadooba	51351
district	26	2014	candles	2090
district	26	2014	firewood	678
district	26	2014	others	3634
district	109	2014	electricity	5441
district	109	2014	gas	128
district	109	2014	paraffin lantern	3759
district	109	2014	paraffin tadooba	18551
district	109	2014	candles	1334
district	109	2014	firewood	361
district	109	2014	others	4498
district	108	2014	electricity	5192
district	108	2014	gas	223
district	108	2014	paraffin lantern	3946
district	108	2014	paraffin tadooba	28168
district	108	2014	candles	2897
district	108	2014	firewood	726
district	108	2014	others	6619
district	21	2014	electricity	28172
district	21	2014	gas	472
district	21	2014	paraffin lantern	15278
district	21	2014	paraffin tadooba	50894
district	21	2014	candles	4250
district	21	2014	firewood	614
district	21	2014	others	5666
district	17	2014	electricity	11184
district	17	2014	gas	240
district	17	2014	paraffin lantern	6702
district	17	2014	paraffin tadooba	39785
district	17	2014	candles	1545
district	17	2014	firewood	527
district	17	2014	others	1817
district	28	2014	electricity	4300
district	28	2014	gas	100
district	28	2014	paraffin lantern	3058
district	28	2014	paraffin tadooba	10565
district	28	2014	candles	833
district	28	2014	firewood	275
district	28	2014	others	1508
district	18	2014	electricity	28225
district	18	2014	gas	260
district	18	2014	paraffin lantern	9936
district	18	2014	paraffin tadooba	31791
district	18	2014	candles	2640
district	18	2014	firewood	304
district	18	2014	others	2609
district	29	2014	electricity	18414
district	29	2014	gas	396
district	29	2014	paraffin lantern	8071
district	29	2014	paraffin tadooba	45878
district	29	2014	candles	2600
district	29	2014	firewood	589
district	29	2014	others	4139
district	68	2014	electricity	13314
district	68	2014	gas	388
district	68	2014	paraffin lantern	9140
district	68	2014	paraffin tadooba	31103
district	68	2014	candles	2398
district	68	2014	firewood	590
district	68	2014	others	3588
district	22	2014	electricity	22071
district	22	2014	gas	772
district	22	2014	paraffin lantern	10581
district	22	2014	paraffin tadooba	100709
district	22	2014	candles	5452
district	22	2014	firewood	1767
district	22	2014	others	9925
district	79	2014	electricity	47918
district	79	2014	gas	852
district	79	2014	paraffin lantern	21597
district	79	2014	paraffin tadooba	59521
district	79	2014	candles	6290
district	79	2014	firewood	959
district	79	2014	others	7495
district	30	2014	electricity	8289
district	30	2014	gas	345
district	30	2014	paraffin lantern	6052
district	30	2014	paraffin tadooba	23811
district	30	2014	candles	1709
district	30	2014	firewood	414
district	30	2014	others	2695
district	23	2014	electricity	5747
district	23	2014	gas	215
district	23	2014	paraffin lantern	5057
district	23	2014	paraffin tadooba	15096
district	23	2014	candles	2052
district	23	2014	firewood	349
district	23	2014	others	7862
district	24	2014	electricity	17038
district	24	2014	gas	668
district	24	2014	paraffin lantern	10942
district	24	2014	paraffin tadooba	79472
district	24	2014	candles	3226
district	24	2014	firewood	1544
district	24	2014	others	3602
district	25	2014	electricity	7878
district	25	2014	gas	337
district	25	2014	paraffin lantern	6567
district	25	2014	paraffin tadooba	33631
district	25	2014	candles	1400
district	25	2014	firewood	766
district	25	2014	others	4606
district	27	2014	electricity	309133
district	27	2014	gas	4055
district	27	2014	paraffin lantern	63304
district	27	2014	paraffin tadooba	70528
district	27	2014	candles	33040
district	27	2014	firewood	1994
district	27	2014	others	20035
district	396	2014	electricity	3448
district	396	2014	gas	144
district	396	2014	paraffin lantern	2751
district	396	2014	paraffin tadooba	18140
district	396	2014	candles	893
district	396	2014	firewood	1985
district	396	2014	others	20956
district	319	2014	electricity	2176
district	319	2014	gas	72
district	319	2014	paraffin lantern	2486
district	319	2014	paraffin tadooba	29929
district	319	2014	candles	1410
district	319	2014	firewood	228
district	319	2014	others	821
district	37	2014	electricity	1545
district	37	2014	gas	198
district	37	2014	paraffin lantern	4246
district	37	2014	paraffin tadooba	27893
district	37	2014	candles	1792
district	37	2014	firewood	556
district	37	2014	others	594
district	81	2014	electricity	6213
district	81	2014	gas	279
district	81	2014	paraffin lantern	5817
district	81	2014	paraffin tadooba	55951
district	81	2014	candles	3533
district	81	2014	firewood	604
district	81	2014	others	2114
district	38	2014	electricity	2098
district	38	2014	gas	94
district	38	2014	paraffin lantern	3165
district	38	2014	paraffin tadooba	22814
district	38	2014	candles	947
district	38	2014	firewood	508
district	38	2014	others	6678
district	39	2014	electricity	846
district	39	2014	gas	108
district	39	2014	paraffin lantern	2697
district	39	2014	paraffin tadooba	11166
district	39	2014	candles	1242
district	39	2014	firewood	531
district	39	2014	others	48
district	382	2014	electricity	1849
district	382	2014	gas	153
district	382	2014	paraffin lantern	3432
district	382	2014	paraffin tadooba	26642
district	382	2014	candles	876
district	382	2014	firewood	581
district	382	2014	others	505
district	83	2014	electricity	7941
district	83	2014	gas	275
district	83	2014	paraffin lantern	8331
district	83	2014	paraffin tadooba	45370
district	83	2014	candles	1786
district	83	2014	firewood	350
district	83	2014	others	735
district	40	2014	electricity	2284
district	40	2014	gas	179
district	40	2014	paraffin lantern	2188
district	40	2014	paraffin tadooba	36723
district	40	2014	candles	1744
district	40	2014	firewood	443
district	40	2014	others	815
district	78	2014	electricity	4619
district	78	2014	gas	299
district	78	2014	paraffin lantern	2452
district	78	2014	paraffin tadooba	40818
district	78	2014	candles	5583
district	78	2014	firewood	1189
district	78	2014	others	6268
district	72	2014	electricity	17450
district	72	2014	gas	413
district	72	2014	paraffin lantern	9532
district	72	2014	paraffin tadooba	64430
district	72	2014	candles	6370
district	72	2014	firewood	596
district	72	2014	others	3881
district	31	2014	electricity	34172
district	31	2014	gas	655
district	31	2014	paraffin lantern	9039
district	31	2014	paraffin tadooba	52793
district	31	2014	candles	5370
district	31	2014	firewood	374
district	31	2014	others	3060
district	383	2014	electricity	2052
district	383	2014	gas	156
district	383	2014	paraffin lantern	1884
district	383	2014	paraffin tadooba	22830
district	383	2014	candles	803
district	383	2014	firewood	588
district	383	2014	others	10484
district	41	2014	electricity	3281
district	41	2014	gas	103
district	41	2014	paraffin lantern	1804
district	41	2014	paraffin tadooba	32023
district	41	2014	candles	2635
district	41	2014	firewood	406
district	41	2014	others	2683
district	77	2014	electricity	9950
district	77	2014	gas	371
district	77	2014	paraffin lantern	5614
district	77	2014	paraffin tadooba	66628
district	77	2014	candles	6286
district	77	2014	firewood	865
district	77	2014	others	4284
district	90	2014	electricity	1901
district	90	2014	gas	119
district	90	2014	paraffin lantern	3993
district	90	2014	paraffin tadooba	13437
district	90	2014	candles	2328
district	90	2014	firewood	305
district	90	2014	others	251
district	32	2014	electricity	1576
district	32	2014	gas	99
district	32	2014	paraffin lantern	2148
district	32	2014	paraffin tadooba	9989
district	32	2014	candles	982
district	32	2014	firewood	1326
district	32	2014	others	14646
district	75	2014	electricity	1797
district	75	2014	gas	80
district	75	2014	paraffin lantern	1598
district	75	2014	paraffin tadooba	27627
district	75	2014	candles	2371
district	75	2014	firewood	351
district	75	2014	others	1644
district	323	2014	electricity	3208
district	323	2014	gas	145
district	323	2014	paraffin lantern	4014
district	323	2014	paraffin tadooba	14319
district	323	2014	candles	1125
district	323	2014	firewood	644
district	323	2014	others	17349
district	91	2014	electricity	698
district	91	2014	gas	85
district	91	2014	paraffin lantern	2375
district	91	2014	paraffin tadooba	9634
district	91	2014	candles	3801
district	91	2014	firewood	661
district	91	2014	others	598
district	345	2014	electricity	3689
district	345	2014	gas	189
district	345	2014	paraffin lantern	1866
district	345	2014	paraffin tadooba	34818
district	345	2014	candles	1989
district	345	2014	firewood	408
district	345	2014	others	1412
district	42	2014	electricity	3392
district	42	2014	gas	347
district	42	2014	paraffin lantern	7920
district	42	2014	paraffin tadooba	56400
district	42	2014	candles	2820
district	42	2014	firewood	846
district	42	2014	others	1178
district	73	2014	electricity	9092
district	73	2014	gas	599
district	73	2014	paraffin lantern	5012
district	73	2014	paraffin tadooba	67036
district	73	2014	candles	5350
district	73	2014	firewood	1419
district	73	2014	others	6799
district	33	2014	electricity	25585
district	33	2014	gas	1564
district	33	2014	paraffin lantern	16061
district	33	2014	paraffin tadooba	55337
district	33	2014	candles	4575
district	33	2014	firewood	1486
district	33	2014	others	3930
district	82	2014	electricity	2095
district	82	2014	gas	285
district	82	2014	paraffin lantern	2944
district	82	2014	paraffin tadooba	32903
district	82	2014	candles	2262
district	82	2014	firewood	505
district	82	2014	others	1976
district	43	2014	electricity	2900
district	43	2014	gas	147
district	43	2014	paraffin lantern	2552
district	43	2014	paraffin tadooba	32785
district	43	2014	candles	3954
district	43	2014	firewood	420
district	43	2014	others	2565
district	84	2014	electricity	1516
district	84	2014	gas	67
district	84	2014	paraffin lantern	1333
district	84	2014	paraffin tadooba	6092
district	84	2014	candles	460
district	84	2014	firewood	446
district	84	2014	others	13734
district	76	2014	electricity	3810
district	76	2014	gas	222
district	76	2014	paraffin lantern	4498
district	76	2014	paraffin tadooba	42715
district	76	2014	candles	2639
district	76	2014	firewood	908
district	76	2014	others	10972
district	87	2014	electricity	3152
district	87	2014	gas	339
district	87	2014	paraffin lantern	3627
district	87	2014	paraffin tadooba	15546
district	87	2014	candles	2003
district	87	2014	firewood	1530
district	87	2014	others	21479
district	89	2014	electricity	4587
district	89	2014	gas	614
district	89	2014	paraffin lantern	8626
district	89	2014	paraffin tadooba	36862
district	89	2014	candles	1550
district	89	2014	firewood	682
district	89	2014	others	2105
district	88	2014	electricity	8123
district	88	2014	gas	297
district	88	2014	paraffin lantern	5663
district	88	2014	paraffin tadooba	23212
district	88	2014	candles	2408
district	88	2014	firewood	1476
district	88	2014	others	13767
district	34	2014	electricity	10863
district	34	2014	gas	834
district	34	2014	paraffin lantern	8229
district	34	2014	paraffin tadooba	73581
district	34	2014	candles	3327
district	34	2014	firewood	1370
district	34	2014	others	4430
district	49	2014	electricity	905
district	49	2014	gas	64
district	49	2014	paraffin lantern	2033
district	49	2014	paraffin tadooba	3145
district	49	2014	candles	1942
district	49	2014	firewood	2179
district	49	2014	others	7813
district	44	2014	electricity	3640
district	44	2014	gas	148
district	44	2014	paraffin lantern	3918
district	44	2014	paraffin tadooba	9800
district	44	2014	candles	1924
district	44	2014	firewood	2131
district	44	2014	others	19598
district	10	2014	electricity	2438
district	10	2014	gas	254
district	10	2014	paraffin lantern	10502
district	10	2014	paraffin tadooba	20478
district	10	2014	candles	969
district	10	2014	firewood	1814
district	10	2014	others	6899
district	7	2014	electricity	1862
district	7	2014	paraffin lantern	4885
district	7	2014	paraffin tadooba	28847
district	7	2014	candles	588
district	7	2014	firewood	809
district	7	2014	others	9057
district	50	2014	electricity	2583
district	50	2014	gas	91
district	50	2014	paraffin lantern	2968
district	50	2014	paraffin tadooba	10092
district	50	2014	candles	765
district	50	2014	firewood	490
district	50	2014	others	10994
district	110	2014	electricity	293
district	110	2014	gas	144
district	110	2014	paraffin lantern	2086
district	110	2014	paraffin tadooba	1372
district	110	2014	candles	655
district	110	2014	firewood	10082
district	110	2014	others	864
district	9	2014	electricity	2352
district	9	2014	gas	311
district	9	2014	paraffin lantern	7156
district	9	2014	paraffin tadooba	22281
district	9	2014	candles	1641
district	9	2014	firewood	1272
district	9	2014	others	1689
district	12	2014	electricity	4332
district	12	2014	gas	481
district	12	2014	paraffin lantern	9183
district	12	2014	paraffin tadooba	29046
district	12	2014	candles	1645
district	12	2014	firewood	1221
district	12	2014	others	25747
district	104	2014	electricity	15915
district	104	2014	gas	508
district	104	2014	paraffin lantern	39272
district	104	2014	paraffin tadooba	75451
district	104	2014	candles	1592
district	104	2014	firewood	3601
district	104	2014	others	10336
district	51	2014	electricity	2293
district	51	2014	gas	162
district	51	2014	paraffin lantern	5435
district	51	2014	paraffin tadooba	18280
district	51	2014	candles	644
district	51	2014	firewood	489
district	51	2014	others	7579
district	45	2014	electricity	13384
district	45	2014	gas	456
district	45	2014	paraffin lantern	16382
district	45	2014	paraffin tadooba	49511
district	45	2014	candles	3450
district	45	2014	firewood	1038
district	45	2014	others	2703
district	52	2014	electricity	777
district	52	2014	gas	85
district	52	2014	paraffin lantern	568
district	52	2014	paraffin tadooba	246
district	52	2014	candles	2477
district	52	2014	firewood	17994
district	52	2014	others	7063
district	14	2014	electricity	4579
district	14	2014	gas	169
district	14	2014	paraffin lantern	7810
district	14	2014	paraffin tadooba	16036
district	14	2014	candles	1670
district	14	2014	firewood	2197
district	14	2014	others	7227
district	53	2014	electricity	3892
district	53	2014	gas	126
district	53	2014	paraffin lantern	4246
district	53	2014	paraffin tadooba	7174
district	53	2014	candles	505
district	53	2014	firewood	518
district	53	2014	others	13829
district	300	2014	electricity	2817
district	300	2014	gas	332
district	300	2014	paraffin lantern	9202
district	300	2014	paraffin tadooba	26387
district	300	2014	candles	1160
district	300	2014	firewood	930
district	300	2014	others	7598
district	46	2014	electricity	2049
district	46	2014	gas	72
district	46	2014	paraffin lantern	735
district	46	2014	paraffin tadooba	425
district	46	2014	candles	1663
district	46	2014	firewood	10576
district	46	2014	others	10650
district	343	2014	electricity	1344
district	343	2014	gas	132
district	343	2014	paraffin lantern	5109
district	343	2014	paraffin tadooba	9093
district	343	2014	candles	645
district	343	2014	firewood	2495
district	343	2014	others	8433
district	6	2014	electricity	14047
district	6	2014	gas	557
district	6	2014	paraffin lantern	16947
district	6	2014	paraffin tadooba	39360
district	6	2014	candles	3357
district	6	2014	firewood	902
district	6	2014	others	13963
district	348	2014	electricity	2158
district	348	2014	gas	173
district	348	2014	paraffin lantern	7879
district	348	2014	paraffin tadooba	23558
district	348	2014	candles	381
district	348	2014	firewood	414
district	348	2014	others	1700
district	93	2014	electricity	1953
district	93	2014	gas	116
district	93	2014	paraffin lantern	574
district	93	2014	paraffin tadooba	619
district	93	2014	candles	1971
district	93	2014	firewood	15022
district	93	2014	others	1836
district	47	2014	electricity	2980
district	47	2014	gas	80
district	47	2014	paraffin lantern	4540
district	47	2014	paraffin tadooba	8423
district	47	2014	candles	803
district	47	2014	firewood	461
district	47	2014	others	8585
district	111	2014	electricity	726
district	111	2014	gas	102
district	111	2014	paraffin lantern	829
district	111	2014	paraffin tadooba	558
district	111	2014	candles	1421
district	111	2014	firewood	18901
district	111	2014	others	2863
district	94	2014	electricity	761
district	94	2014	gas	116
district	94	2014	paraffin lantern	678
district	94	2014	paraffin tadooba	1087
district	94	2014	candles	986
district	94	2014	firewood	19625
district	94	2014	others	3604
district	95	2014	electricity	4743
district	95	2014	gas	383
district	95	2014	paraffin lantern	11300
district	95	2014	paraffin tadooba	52543
district	95	2014	candles	1362
district	95	2014	firewood	1640
district	95	2014	others	5426
district	8	2014	electricity	1369
district	8	2014	gas	117
district	8	2014	paraffin lantern	2426
district	8	2014	paraffin tadooba	19746
district	8	2014	candles	432
district	8	2014	firewood	603
district	8	2014	others	1537
district	438	2014	electricity	991
district	438	2014	gas	109
district	438	2014	paraffin lantern	2426
district	438	2014	paraffin tadooba	10606
district	438	2014	candles	346
district	438	2014	firewood	610
district	438	2014	others	6867
district	54	2014	electricity	5268
district	54	2014	gas	621
district	54	2014	paraffin lantern	14572
district	54	2014	paraffin tadooba	41544
district	54	2014	candles	1742
district	54	2014	firewood	1806
district	54	2014	others	10940
district	11	2014	electricity	2574
district	11	2014	gas	183
district	11	2014	paraffin lantern	7496
district	11	2014	paraffin tadooba	16721
district	11	2014	candles	907
district	11	2014	firewood	1649
district	11	2014	others	4630
district	48	2014	electricity	3446
district	48	2014	gas	229
district	48	2014	paraffin lantern	8568
district	48	2014	paraffin tadooba	10674
district	48	2014	candles	1169
district	48	2014	firewood	2153
district	48	2014	others	37123
district	96	2014	electricity	2772
district	96	2014	gas	385
district	96	2014	paraffin lantern	5985
district	96	2014	paraffin tadooba	37057
district	96	2014	candles	655
district	96	2014	firewood	1011
district	96	2014	others	3004
district	100	2014	electricity	1917
district	100	2014	gas	188
district	100	2014	paraffin lantern	2142
district	100	2014	paraffin tadooba	17512
district	100	2014	candles	523
district	100	2014	firewood	518
district	100	2014	others	2045
district	66	2014	electricity	1641
district	66	2014	gas	125
district	66	2014	paraffin lantern	2761
district	66	2014	paraffin tadooba	13508
district	66	2014	candles	337
district	66	2014	firewood	241
district	66	2014	others	3039
district	107	2014	electricity	4995
district	107	2014	gas	447
district	107	2014	paraffin lantern	5670
district	107	2014	paraffin tadooba	25037
district	107	2014	candles	2822
district	107	2014	firewood	920
district	107	2014	others	4927
district	103	2014	electricity	10060
district	103	2014	gas	331
district	103	2014	paraffin lantern	12650
district	103	2014	paraffin tadooba	24187
district	103	2014	candles	1594
district	103	2014	firewood	365
district	103	2014	others	2191
district	55	2014	electricity	21074
district	55	2014	gas	566
district	55	2014	paraffin lantern	9274
district	55	2014	paraffin tadooba	73058
district	55	2014	candles	5267
district	55	2014	firewood	1967
district	55	2014	others	14348
district	366	2014	electricity	8289
district	366	2014	gas	473
district	366	2014	paraffin lantern	7622
district	366	2014	paraffin tadooba	33167
district	366	2014	candles	2066
district	366	2014	firewood	526
district	366	2014	others	2863
district	3	2014	electricity	11356
district	3	2014	gas	401
district	3	2014	paraffin lantern	10775
district	3	2014	paraffin tadooba	64319
district	3	2014	candles	3500
district	3	2014	firewood	2175
district	3	2014	others	9064
district	56	2014	electricity	13993
district	56	2014	gas	414
district	56	2014	paraffin lantern	15555
district	56	2014	paraffin tadooba	56135
district	56	2014	candles	12854
district	56	2014	firewood	3729
district	56	2014	others	15174
district	57	2014	electricity	19335
district	57	2014	gas	490
district	57	2014	paraffin lantern	9225
district	57	2014	paraffin tadooba	67141
district	57	2014	candles	3063
district	57	2014	firewood	1170
district	57	2014	others	6836
district	64	2014	electricity	8145
district	64	2014	gas	496
district	64	2014	paraffin lantern	6257
district	64	2014	paraffin tadooba	56333
district	64	2014	candles	2474
district	64	2014	firewood	2151
district	64	2014	others	12830
district	65	2014	electricity	6412
district	65	2014	gas	207
district	65	2014	paraffin lantern	8669
district	65	2014	paraffin tadooba	29188
district	65	2014	candles	2656
district	65	2014	firewood	790
district	65	2014	others	8053
district	58	2014	electricity	23650
district	58	2014	gas	538
district	58	2014	paraffin lantern	13156
district	58	2014	paraffin tadooba	92847
district	58	2014	candles	4525
district	58	2014	firewood	1300
district	58	2014	others	3050
district	59	2014	electricity	26367
district	59	2014	gas	691
district	59	2014	paraffin lantern	8490
district	59	2014	paraffin tadooba	100961
district	59	2014	candles	6556
district	59	2014	firewood	2108
district	59	2014	others	23149
district	4	2014	electricity	9900
district	4	2014	gas	441
district	4	2014	paraffin lantern	11400
district	4	2014	paraffin tadooba	30537
district	4	2014	candles	2772
district	4	2014	firewood	1251
district	4	2014	others	10923
district	98	2014	electricity	6517
district	98	2014	gas	241
district	98	2014	paraffin lantern	7986
district	98	2014	paraffin tadooba	29185
district	98	2014	candles	2655
district	98	2014	firewood	1389
district	98	2014	others	4185
district	60	2014	electricity	4710
district	60	2014	gas	269
district	60	2014	paraffin lantern	4116
district	60	2014	paraffin tadooba	40694
district	60	2014	candles	2292
district	60	2014	firewood	1797
district	60	2014	others	8369
district	70	2014	electricity	6973
district	70	2014	gas	372
district	70	2014	paraffin lantern	3694
district	70	2014	paraffin tadooba	37921
district	70	2014	candles	2004
district	70	2014	firewood	1008
district	70	2014	others	8089
district	69	2014	electricity	10266
district	69	2014	gas	392
district	69	2014	paraffin lantern	6036
district	69	2014	paraffin tadooba	59584
district	69	2014	candles	2787
district	69	2014	firewood	1715
district	69	2014	others	10754
district	97	2014	electricity	13247
district	97	2014	gas	338
district	97	2014	paraffin lantern	7113
district	97	2014	paraffin tadooba	36526
district	97	2014	candles	2397
district	97	2014	firewood	1069
district	97	2014	others	4245
district	61	2014	electricity	37516
district	61	2014	gas	622
district	61	2014	paraffin lantern	16448
district	61	2014	paraffin tadooba	46931
district	61	2014	candles	6137
district	61	2014	firewood	687
district	61	2014	others	4508
district	102	2014	electricity	4149
district	102	2014	gas	273
district	102	2014	paraffin lantern	6082
district	102	2014	paraffin tadooba	25928
district	102	2014	candles	785
district	102	2014	firewood	327
district	102	2014	others	2272
district	436	2014	electricity	1531
district	436	2014	gas	77
district	436	2014	paraffin lantern	1337
district	436	2014	paraffin tadooba	7255
district	436	2014	candles	707
district	436	2014	firewood	215
district	436	2014	others	2820
district	62	2014	electricity	12662
district	62	2014	gas	699
district	62	2014	paraffin lantern	12893
district	62	2014	paraffin tadooba	67088
district	62	2014	candles	2809
district	62	2014	firewood	886
district	62	2014	others	4759
district	101	2014	electricity	3280
district	101	2014	gas	161
district	101	2014	paraffin lantern	2789
district	101	2014	paraffin tadooba	20437
district	101	2014	candles	744
district	101	2014	firewood	231
district	101	2014	others	1147
district	63	2014	electricity	9840
district	63	2014	gas	485
district	63	2014	paraffin lantern	12133
district	63	2014	paraffin tadooba	39791
district	63	2014	candles	2646
district	63	2014	firewood	861
district	63	2014	others	3741
district	456	2014	electricity	8320
district	456	2014	gas	307
district	456	2014	paraffin lantern	9867
district	456	2014	paraffin tadooba	24307
district	456	2014	candles	1220
district	456	2014	firewood	266
district	456	2014	others	1763
country	UG	2014	candles	422480
country	UG	2014	electricity	819553
country	UG	2014	firewood	2560733
country	UG	2014	gas	1441188
country	UG	2014	other	733393
country	UG	2014	paraffin lantern	820056
country	UG	2014	paraffin tadooba	3676499
region	116	2014	paraffin lantern	197967
region	117	2014	paraffin lantern	182158
region	114	2014	paraffin lantern	255465
region	115	2014	paraffin lantern	124591
region	114	2014	candles	117099
region	115	2014	candles	71678
region	116	2014	candles	43375
region	117	2014	candles	69674
region	115	2014	gas	8365
region	114	2014	gas	12466
region	117	2014	gas	8649
region	116	2014	electricity	106441
region	116	2014	others	247129
region	117	2014	others	164648
region	114	2014	others	118381
region	115	2014	others	119664
region	114	2014	paraffin tadooba	953166
region	115	2014	paraffin tadooba	907416
region	116	2014	paraffin tadooba	572865
region	117	2014	paraffin tadooba	962001
region	116	2014	gas	6477
region	115	2014	electricity	166978
region	117	2014	firewood	27355
region	114	2014	firewood	15704
region	115	2014	firewood	18584
region	116	2014	firewood	121753
region	114	2014	electricity	970196
region	117	2014	electricity	244355
\.


--
-- Name: householddistributionbylightsource pk_householddistributionbylightsource; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY householddistributionbylightsource
    ADD CONSTRAINT pk_householddistributionbylightsource PRIMARY KEY (geo_level, geo_code, geo_version, "household distribution by light source");


--
-- PostgreSQL database dump complete
--

