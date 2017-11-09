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
-- Name: disability; Type: TABLE; Schema: public; Owner: hurumap_ug
--

CREATE TABLE disability (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT '2009'::character varying NOT NULL,
    disability character varying(128) NOT NULL,
    total integer
);


ALTER TABLE disability OWNER TO hurumap_ug;

--
-- Data for Name: disability; Type: TABLE DATA; Schema: public; Owner: hurumap_ug
--

COPY disability (geo_level, geo_code, geo_version, disability, total) FROM stdin;
district	80	2014	seeing disability	24071
district	80	2014	hearing disability	11655
district	80	2014	remembering disability	19421
district	80	2014	walking disability	21233
district	16	2014	seeing disability	9828
district	16	2014	hearing disability	4738
district	16	2014	remembering disability	6793
district	16	2014	walking disability	7326
district	67	2014	seeing disability	3406
district	67	2014	hearing disability	1703
district	67	2014	remembering disability	1927
district	67	2014	walking disability	2397
district	74	2014	seeing disability	6858
district	74	2014	hearing disability	3401
district	74	2014	remembering disability	10449
district	74	2014	walking disability	5550
district	19	2014	seeing disability	10219
district	19	2014	hearing disability	5335
district	19	2014	remembering disability	8092
district	19	2014	walking disability	8284
district	1	2014	seeing disability	3520
district	1	2014	hearing disability	1464
district	1	2014	remembering disability	3265
district	1	2014	walking disability	2571
district	85	2014	seeing disability	12546
district	85	2014	hearing disability	5786
district	85	2014	remembering disability	9719
district	85	2014	walking disability	10480
district	20	2014	seeing disability	59067
district	20	2014	hearing disability	15191
district	20	2014	remembering disability	21567
district	20	2014	walking disability	26207
district	26	2014	seeing disability	21633
district	26	2014	hearing disability	10853
district	26	2014	remembering disability	16223
district	26	2014	walking disability	16935
district	109	2014	seeing disability	10545
district	109	2014	hearing disability	5224
district	109	2014	remembering disability	9705
district	109	2014	walking disability	8975
district	108	2014	seeing disability	13524
district	108	2014	hearing disability	6842
district	108	2014	remembering disability	13807
district	108	2014	walking disability	10132
district	21	2014	seeing disability	26428
district	21	2014	hearing disability	11559
district	21	2014	remembering disability	20944
district	21	2014	walking disability	19219
district	17	2014	seeing disability	15688
district	17	2014	hearing disability	8234
district	17	2014	remembering disability	14927
district	17	2014	walking disability	13044
district	28	2014	seeing disability	5628
district	28	2014	hearing disability	2776
district	28	2014	remembering disability	4321
district	28	2014	walking disability	3656
district	18	2014	seeing disability	14226
district	18	2014	hearing disability	6184
district	18	2014	remembering disability	10713
district	18	2014	walking disability	11726
district	29	2014	seeing disability	21479
district	29	2014	hearing disability	9482
district	29	2014	remembering disability	16489
district	29	2014	walking disability	17175
district	68	2014	seeing disability	13648
district	68	2014	hearing disability	6079
district	68	2014	remembering disability	8009
district	68	2014	walking disability	9702
district	22	2014	seeing disability	39628
district	22	2014	hearing disability	20871
district	22	2014	remembering disability	38068
district	22	2014	walking disability	31240
district	79	2014	seeing disability	32500
district	79	2014	hearing disability	13567
district	79	2014	remembering disability	25092
district	79	2014	walking disability	23724
district	30	2014	seeing disability	10351
district	30	2014	hearing disability	4764
district	30	2014	remembering disability	7088
district	30	2014	walking disability	7263
district	23	2014	seeing disability	13554
district	23	2014	hearing disability	6278
district	23	2014	remembering disability	12879
district	23	2014	walking disability	10499
district	24	2014	seeing disability	23986
district	24	2014	hearing disability	13354
district	24	2014	remembering disability	18951
district	24	2014	walking disability	17687
district	25	2014	seeing disability	14871
district	25	2014	hearing disability	8134
district	25	2014	remembering disability	13927
district	25	2014	walking disability	11218
district	27	2014	seeing disability	74378
district	27	2014	hearing disability	26254
district	27	2014	remembering disability	36683
district	27	2014	walking disability	43795
district	396	2014	seeing disability	20815
district	396	2014	hearing disability	11109
district	396	2014	remembering disability	27724
district	396	2014	walking disability	16394
district	319	2014	seeing disability	10102
district	319	2014	hearing disability	6086
district	319	2014	remembering disability	10878
district	319	2014	walking disability	7474
district	37	2014	seeing disability	13909
district	37	2014	hearing disability	8341
district	37	2014	remembering disability	13969
district	37	2014	walking disability	10680
district	81	2014	seeing disability	25388
district	81	2014	hearing disability	13977
district	81	2014	remembering disability	22599
district	81	2014	walking disability	18574
district	38	2014	seeing disability	10069
district	38	2014	hearing disability	4983
district	38	2014	remembering disability	8835
district	38	2014	walking disability	7089
district	39	2014	seeing disability	4190
district	39	2014	hearing disability	2542
district	39	2014	remembering disability	3220
district	39	2014	walking disability	4067
district	382	2014	seeing disability	14767
district	382	2014	hearing disability	8808
district	382	2014	remembering disability	17397
district	382	2014	walking disability	12389
district	83	2014	seeing disability	17402
district	83	2014	hearing disability	8897
district	83	2014	remembering disability	12388
district	83	2014	walking disability	11853
district	40	2014	seeing disability	16280
district	40	2014	hearing disability	10414
district	40	2014	remembering disability	23311
district	40	2014	walking disability	12412
district	78	2014	seeing disability	23482
district	78	2014	hearing disability	11756
district	78	2014	remembering disability	23514
district	78	2014	walking disability	16820
district	72	2014	seeing disability	32867
district	72	2014	hearing disability	16394
district	72	2014	remembering disability	27992
district	72	2014	walking disability	28097
district	31	2014	seeing disability	27320
district	31	2014	hearing disability	11872
district	31	2014	remembering disability	22327
district	31	2014	walking disability	20600
district	383	2014	seeing disability	17815
district	383	2014	hearing disability	9782
district	383	2014	remembering disability	17865
district	383	2014	walking disability	11457
district	41	2014	seeing disability	16349
district	41	2014	hearing disability	8407
district	41	2014	remembering disability	14322
district	41	2014	walking disability	11506
district	77	2014	seeing disability	31884
district	77	2014	hearing disability	16664
district	77	2014	remembering disability	24470
district	77	2014	walking disability	24914
district	90	2014	seeing disability	7175
district	90	2014	hearing disability	4131
district	90	2014	remembering disability	8981
district	90	2014	walking disability	7137
district	32	2014	seeing disability	13162
district	32	2014	hearing disability	8011
district	32	2014	remembering disability	16010
district	32	2014	walking disability	10874
district	75	2014	seeing disability	10398
district	75	2014	hearing disability	6464
district	75	2014	remembering disability	11797
district	75	2014	walking disability	7433
district	323	2014	seeing disability	13839
district	323	2014	hearing disability	6204
district	323	2014	remembering disability	11323
district	323	2014	walking disability	10545
district	91	2014	seeing disability	3916
district	91	2014	hearing disability	1901
district	91	2014	remembering disability	1734
district	91	2014	walking disability	3380
district	345	2014	seeing disability	14192
district	345	2014	hearing disability	6492
district	345	2014	remembering disability	8928
district	345	2014	walking disability	8928
district	42	2014	seeing disability	31794
district	42	2014	hearing disability	18442
district	42	2014	remembering disability	46589
district	42	2014	walking disability	26820
district	73	2014	seeing disability	22722
district	73	2014	hearing disability	9578
district	73	2014	remembering disability	12429
district	73	2014	walking disability	12739
district	33	2014	seeing disability	27428
district	33	2014	hearing disability	10554
district	33	2014	remembering disability	11915
district	33	2014	walking disability	16162
district	82	2014	seeing disability	14955
district	82	2014	hearing disability	7776
district	82	2014	remembering disability	15351
district	82	2014	walking disability	10682
district	43	2014	seeing disability	16330
district	43	2014	hearing disability	9135
district	43	2014	remembering disability	14705
district	43	2014	walking disability	12139
district	84	2014	seeing disability	10353
district	84	2014	hearing disability	4294
district	84	2014	remembering disability	7714
district	84	2014	walking disability	6885
district	76	2014	seeing disability	24123
district	76	2014	hearing disability	12708
district	76	2014	remembering disability	23066
district	76	2014	walking disability	17261
district	87	2014	seeing disability	19464
district	87	2014	hearing disability	9028
district	87	2014	remembering disability	18286
district	87	2014	walking disability	14048
district	89	2014	seeing disability	26561
district	89	2014	hearing disability	13094
district	89	2014	remembering disability	26993
district	89	2014	walking disability	24881
district	88	2014	seeing disability	20072
district	88	2014	hearing disability	9441
district	88	2014	remembering disability	17172
district	88	2014	walking disability	13413
district	34	2014	seeing disability	36134
district	34	2014	hearing disability	20960
district	34	2014	remembering disability	32270
district	34	2014	walking disability	24117
district	49	2014	seeing disability	7395
district	49	2014	hearing disability	6069
district	49	2014	remembering disability	7543
district	49	2014	walking disability	6357
district	44	2014	seeing disability	9663
district	44	2014	hearing disability	6171
district	44	2014	remembering disability	7789
district	44	2014	walking disability	7448
district	10	2014	seeing disability	15049
district	10	2014	hearing disability	11163
district	10	2014	remembering disability	13872
district	10	2014	walking disability	10997
district	7	2014	seeing disability	17861
district	7	2014	hearing disability	11369
district	107	2014	seeing disability	15737
district	7	2014	remembering disability	17088
district	7	2014	walking disability	11882
district	50	2014	seeing disability	16302
district	50	2014	hearing disability	8578
district	50	2014	remembering disability	11649
district	50	2014	walking disability	9063
district	110	2014	seeing disability	3093
district	110	2014	hearing disability	2861
district	110	2014	remembering disability	1415
district	110	2014	walking disability	2291
district	9	2014	seeing disability	10865
district	9	2014	hearing disability	7123
district	9	2014	remembering disability	11430
district	9	2014	walking disability	8182
district	12	2014	seeing disability	39642
district	12	2014	hearing disability	23725
district	12	2014	remembering disability	36150
district	12	2014	walking disability	21248
district	104	2014	seeing disability	47539
district	104	2014	hearing disability	23290
district	104	2014	remembering disability	28226
district	104	2014	walking disability	28970
district	51	2014	seeing disability	17421
district	51	2014	hearing disability	8991
district	51	2014	remembering disability	13811
district	51	2014	walking disability	8974
district	45	2014	seeing disability	26621
district	45	2014	hearing disability	15114
district	45	2014	remembering disability	19330
district	45	2014	walking disability	17218
district	52	2014	seeing disability	9376
district	52	2014	hearing disability	6824
district	52	2014	remembering disability	6688
district	52	2014	walking disability	8303
district	14	2014	seeing disability	14451
district	14	2014	hearing disability	9001
district	14	2014	remembering disability	11994
district	14	2014	walking disability	10160
district	53	2014	seeing disability	10687
district	53	2014	hearing disability	5874
district	53	2014	remembering disability	7736
district	53	2014	walking disability	8422
district	300	2014	seeing disability	20915
district	300	2014	hearing disability	12950
district	300	2014	remembering disability	16068
district	300	2014	walking disability	12560
district	46	2014	seeing disability	5893
district	46	2014	hearing disability	5187
district	46	2014	remembering disability	4049
district	46	2014	walking disability	5117
district	343	2014	seeing disability	10275
district	343	2014	hearing disability	6786
district	343	2014	remembering disability	11481
district	343	2014	walking disability	8541
district	6	2014	seeing disability	33888
district	6	2014	hearing disability	17615
district	6	2014	remembering disability	25600
district	6	2014	walking disability	18955
district	348	2014	seeing disability	13885
district	348	2014	hearing disability	7020
district	348	2014	remembering disability	9325
district	348	2014	walking disability	9220
district	93	2014	seeing disability	3684
district	93	2014	hearing disability	2459
district	93	2014	remembering disability	2315
district	93	2014	walking disability	2898
district	47	2014	seeing disability	7247
district	47	2014	hearing disability	4680
district	47	2014	remembering disability	4688
district	47	2014	walking disability	5101
district	111	2014	seeing disability	5697
district	111	2014	hearing disability	4706
district	111	2014	remembering disability	3797
district	111	2014	walking disability	4617
district	94	2014	seeing disability	6031
district	94	2014	hearing disability	4229
district	94	2014	remembering disability	2776
district	94	2014	walking disability	4668
district	95	2014	seeing disability	31629
district	95	2014	hearing disability	16434
district	95	2014	remembering disability	22598
district	95	2014	walking disability	22756
district	8	2014	seeing disability	11807
district	8	2014	hearing disability	7754
district	8	2014	remembering disability	13843
district	8	2014	walking disability	8342
district	438	2014	seeing disability	10135
district	438	2014	hearing disability	7116
district	438	2014	remembering disability	11335
district	438	2014	walking disability	7282
district	54	2014	seeing disability	31511
district	54	2014	hearing disability	19147
district	54	2014	remembering disability	24245
district	54	2014	walking disability	18094
district	11	2014	seeing disability	15046
district	11	2014	hearing disability	9680
district	11	2014	remembering disability	14743
district	11	2014	walking disability	11006
district	48	2014	seeing disability	15887
district	48	2014	hearing disability	11090
district	48	2014	remembering disability	8885
district	48	2014	walking disability	13189
district	96	2014	seeing disability	22226
district	96	2014	hearing disability	9785
district	96	2014	remembering disability	12885
district	96	2014	walking disability	16285
district	100	2014	seeing disability	6292
district	100	2014	hearing disability	3379
district	100	2014	remembering disability	6878
district	100	2014	walking disability	4235
district	66	2014	seeing disability	11987
district	66	2014	hearing disability	5249
district	66	2014	remembering disability	8255
district	66	2014	walking disability	7496
district	107	2014	hearing disability	6568
district	107	2014	remembering disability	21103
district	107	2014	walking disability	12234
district	103	2014	seeing disability	14450
district	103	2014	hearing disability	6050
district	103	2014	remembering disability	11362
district	103	2014	walking disability	8677
district	55	2014	seeing disability	35088
district	55	2014	hearing disability	17021
district	55	2014	remembering disability	29303
district	55	2014	walking disability	20685
district	366	2014	seeing disability	16003
district	366	2014	hearing disability	7535
district	366	2014	remembering disability	13582
district	366	2014	walking disability	9222
district	3	2014	seeing disability	31525
district	3	2014	hearing disability	15814
district	3	2014	remembering disability	25922
district	3	2014	walking disability	18011
district	56	2014	seeing disability	42224
district	56	2014	hearing disability	22601
district	56	2014	remembering disability	40547
district	56	2014	walking disability	36197
district	57	2014	seeing disability	31139
district	57	2014	hearing disability	14422
district	57	2014	remembering disability	27555
district	57	2014	walking disability	20783
district	64	2014	seeing disability	26236
district	64	2014	hearing disability	13439
district	64	2014	remembering disability	21037
district	64	2014	walking disability	14978
district	65	2014	seeing disability	18607
district	65	2014	hearing disability	8324
district	65	2014	remembering disability	13383
district	65	2014	walking disability	11535
district	58	2014	seeing disability	32946
district	58	2014	hearing disability	15128
district	58	2014	remembering disability	29409
district	58	2014	walking disability	19910
district	59	2014	seeing disability	41534
district	59	2014	hearing disability	21567
district	59	2014	remembering disability	41049
district	59	2014	walking disability	26695
district	4	2014	seeing disability	23129
district	4	2014	hearing disability	11737
district	4	2014	remembering disability	24390
district	4	2014	walking disability	18496
district	98	2014	seeing disability	17494
district	98	2014	hearing disability	8826
district	98	2014	remembering disability	10864
district	98	2014	walking disability	9972
district	60	2014	seeing disability	18923
district	60	2014	hearing disability	10476
district	60	2014	remembering disability	16964
district	60	2014	walking disability	13951
district	70	2014	seeing disability	17042
district	70	2014	hearing disability	9373
district	70	2014	remembering disability	16074
district	70	2014	walking disability	10954
district	69	2014	seeing disability	24123
district	69	2014	hearing disability	14316
district	69	2014	remembering disability	23708
district	69	2014	walking disability	18289
district	97	2014	seeing disability	20333
district	97	2014	hearing disability	8645
district	97	2014	remembering disability	14724
district	97	2014	walking disability	11996
district	61	2014	seeing disability	23838
district	61	2014	hearing disability	10483
district	61	2014	remembering disability	17126
district	61	2014	walking disability	14116
district	102	2014	seeing disability	15382
district	102	2014	hearing disability	6708
district	102	2014	remembering disability	13517
district	102	2014	walking disability	9593
district	436	2014	seeing disability	3736
district	436	2014	hearing disability	1766
district	436	2014	remembering disability	3621
district	436	2014	walking disability	2985
district	62	2014	seeing disability	28315
district	62	2014	hearing disability	13821
district	62	2014	remembering disability	22252
district	62	2014	walking disability	17124
district	101	2014	seeing disability	9638
district	101	2014	hearing disability	4485
district	101	2014	remembering disability	8824
district	101	2014	walking disability	6710
district	63	2014	seeing disability	22343
district	63	2014	hearing disability	9611
district	63	2014	remembering disability	16675
district	63	2014	walking disability	14518
district	456	2014	seeing disability	12655
district	456	2014	hearing disability	5541
district	456	2014	remembering disability	10300
district	456	2014	walking disability	7643
region	116	2014	walking disability	311184
region	117	2014	walking disability	327245
region	114	2014	walking disability	359948
region	115	2014	walking disability	353942
region	116	2014	remembering disability	359945
region	116	2014	hearing disability	273528
region	115	2014	hearing disability	245155
region	114	2014	hearing disability	224856
region	117	2014	hearing disability	242915
region	117	2014	remembering disability	431512
region	114	2014	remembering disability	378468
region	114	2014	seeing disability	514528
region	117	2014	seeing disability	495379
region	116	2014	seeing disability	464550
region	115	2014	seeing disability	475688
region	115	2014	remembering disability	437159
country	UG	2014	hearing disability	986454
country	UG	2014	remembering disability	1607084
country	UG	2014	seeing disability	1950145
country	UG	2014	walking disability	1352319
\.


--
-- Name: disability pk_disability; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY disability
    ADD CONSTRAINT pk_disability PRIMARY KEY (geo_level, geo_code, geo_version, disability);


--
-- PostgreSQL database dump complete
--

