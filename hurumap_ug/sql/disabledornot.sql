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

ALTER TABLE IF EXISTS ONLY public.disabledornot DROP CONSTRAINT IF EXISTS pk_disabledornot;
DROP TABLE IF EXISTS public.disabledornot;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: disabledornot; Type: TABLE; Schema: public; Owner: hurumap_ug
--

CREATE TABLE disabledornot (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT '2009'::character varying NOT NULL,
    "disabled or not" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE disabledornot OWNER TO hurumap_ug;

--
-- Data for Name: disabledornot; Type: TABLE DATA; Schema: public; Owner: hurumap_ug
--

COPY disabledornot (geo_level, geo_code, geo_version, "disabled or not", total) FROM stdin;
district	80	2014	without disability	350347
district	80	2014	with disability	46583
district	16	2014	without disability	126904
district	16	2014	with disability	16976
district	67	2014	without disability	89472
district	67	2014	with disability	5943
district	74	2014	without disability	64018
district	74	2014	with disability	17117
district	19	2014	without disability	131481
district	19	2014	with disability	19089
district	1	2014	without disability	40011
district	1	2014	with disability	7447
district	85	2014	without disability	148174
district	85	2014	with disability	22331
district	20	2014	without disability	1336173
district	20	2014	with disability	91781
district	26	2014	without disability	309780
district	26	2014	with disability	39783
district	109	2014	without disability	116457
district	109	2014	with disability	20277
district	108	2014	without disability	172792
district	108	2014	with disability	27872
district	21	2014	without disability	380298
district	21	2014	with disability	49382
district	17	2014	without disability	229978
district	17	2014	with disability	30879
district	28	2014	without disability	78185
district	28	2014	with disability	10303
district	18	2014	without disability	247594
district	18	2014	with disability	27023
district	29	2014	without disability	270615
district	29	2014	with disability	38500
district	68	2014	without disability	210160
district	68	2014	with disability	22763
district	22	2014	without disability	555323
district	22	2014	with disability	76753
district	79	2014	without disability	501644
district	79	2014	with disability	59650
district	30	2014	without disability	156497
district	30	2014	with disability	18241
district	23	2014	without disability	141006
district	23	2014	with disability	27491
district	24	2014	without disability	439740
district	24	2014	with disability	45725
district	25	2014	without disability	209198
district	25	2014	with disability	28996
district	27	2014	without disability	1752736
district	27	2014	with disability	124893
district	396	2014	without disability	204606
district	396	2014	with disability	49398
district	319	2014	without disability	174707
district	319	2014	with disability	22083
district	37	2014	without disability	170675
district	37	2014	with disability	28396
district	81	2014	without disability	313954
district	81	2014	with disability	50439
district	38	2014	without disability	170976
district	38	2014	with disability	20306
district	39	2014	without disability	74631
district	39	2014	with disability	9437
district	382	2014	without disability	135647
district	382	2014	with disability	31134
district	83	2014	without disability	273243
district	83	2014	with disability	33662
district	40	2014	without disability	189705
district	40	2014	with disability	40366
district	78	2014	without disability	255238
district	78	2014	with disability	47330
district	72	2014	without disability	419124
district	72	2014	with disability	62772
district	31	2014	without disability	392913
district	31	2014	with disability	51768
district	383	2014	without disability	165661
district	383	2014	with disability	36446
district	41	2014	without disability	192220
district	41	2014	with disability	30285
district	77	2014	without disability	403479
district	77	2014	with disability	59522
district	90	2014	without disability	84231
district	90	2014	with disability	17138
district	32	2014	without disability	125872
district	32	2014	with disability	30296
district	75	2014	without disability	167877
district	75	2014	with disability	22781
district	323	2014	without disability	199152
district	323	2014	with disability	26608
district	91	2014	without disability	81963
district	91	2014	with disability	7364
district	345	2014	without disability	203499
district	345	2014	with disability	24404
district	42	2014	without disability	258550
district	42	2014	with disability	78497
district	73	2014	without disability	413243
district	73	2014	with disability	37771
district	33	2014	without disability	419411
district	33	2014	with disability	44440
district	82	2014	without disability	171483
district	82	2014	with disability	32183
district	43	2014	without disability	207208
district	43	2014	with disability	31507
district	84	2014	without disability	114010
district	84	2014	with disability	19072
district	76	2014	without disability	316281
district	76	2014	with disability	47519
district	87	2014	without disability	228854
district	87	2014	with disability	38567
district	89	2014	without disability	180426
district	89	2014	with disability	51807
district	88	2014	without disability	236052
district	88	2014	with disability	39482
district	34	2014	without disability	416532
district	34	2014	with disability	73011
district	49	2014	without disability	85335
district	49	2014	with disability	17678
district	44	2014	without disability	189124
district	44	2014	with disability	21627
district	10	2014	without disability	181478
district	10	2014	with disability	34996
district	7	2014	without disability	179305
district	7	2014	with disability	37534
district	50	2014	without disability	109600
district	50	2014	with disability	29502
district	110	2014	without disability	87456
district	110	2014	with disability	6778
district	9	2014	without disability	151138
district	9	2014	with disability	25534
district	12	2014	without disability	273392
district	12	2014	with disability	76371
district	104	2014	without disability	653758
district	104	2014	with disability	86982
district	51	2014	without disability	142126
district	51	2014	with disability	31615
district	45	2014	without disability	354966
district	45	2014	with disability	53791
district	52	2014	without disability	144669
district	52	2014	with disability	18555
district	14	2014	without disability	165068
district	14	2014	with disability	29805
district	53	2014	without disability	171739
district	53	2014	with disability	22343
district	300	2014	without disability	186817
district	300	2014	with disability	40020
district	46	2014	without disability	152499
district	46	2014	with disability	12612
district	343	2014	without disability	104986
district	343	2014	with disability	23620
district	6	2014	without disability	321729
district	6	2014	with disability	63636
district	348	2014	without disability	151598
district	348	2014	with disability	26559
district	93	2014	without disability	88176
district	93	2014	with disability	7401
district	47	2014	without disability	117634
district	47	2014	with disability	15117
district	111	2014	without disability	132441
district	111	2014	with disability	12527
district	94	2014	without disability	126830
district	94	2014	with disability	11258
district	95	2014	without disability	311360
district	95	2014	with disability	63327
district	8	2014	without disability	97568
district	8	2014	with disability	27433
district	438	2014	without disability	75551
district	438	2014	with disability	22773
district	54	2014	without disability	302060
district	54	2014	with disability	60248
district	11	2014	without disability	136688
district	11	2014	with disability	33063
district	48	2014	without disability	423929
district	48	2014	with disability	33923
district	96	2014	without disability	188441
district	96	2014	with disability	39696
district	100	2014	without disability	101832
district	100	2014	with disability	13127
district	66	2014	without disability	80773
district	66	2014	with disability	21782
district	107	2014	without disability	179167
district	107	2014	with disability	34787
district	103	2014	without disability	199707
district	103	2014	with disability	24598
district	55	2014	without disability	465460
district	55	2014	with disability	68358
district	366	2014	without disability	209936
district	366	2014	with disability	27350
district	3	2014	without disability	408421
district	3	2014	with disability	55646
district	56	2014	without disability	425553
district	56	2014	with disability	77130
district	57	2014	without disability	389021
district	57	2014	with disability	55139
district	64	2014	without disability	345373
district	64	2014	with disability	47580
district	65	2014	without disability	212593
district	65	2014	with disability	30747
district	58	2014	without disability	598484
district	58	2014	with disability	62415
district	59	2014	without disability	647247
district	59	2014	with disability	84896
district	4	2014	without disability	266081
district	4	2014	with disability	46564
district	98	2014	without disability	217052
district	98	2014	with disability	32630
district	60	2014	without disability	242515
district	60	2014	with disability	34394
district	70	2014	without disability	229719
district	70	2014	with disability	34348
district	69	2014	without disability	352581
district	69	2014	with disability	47141
district	97	2014	without disability	231169
district	97	2014	with disability	37198
district	61	2014	without disability	406028
district	61	2014	with disability	41179
district	102	2014	without disability	153394
district	102	2014	with disability	26808
district	436	2014	without disability	55719
district	436	2014	with disability	7518
district	62	2014	without disability	412883
district	62	2014	with disability	50060
district	101	2014	without disability	107094
district	101	2014	with disability	17888
district	63	2014	without disability	267529
district	63	2014	with disability	36731
district	456	2014	without disability	177442
district	456	2014	with disability	22550
region	114	2014	with disability	938213
region	115	2014	with disability	950835
region	116	2014	with disability	928235
region	117	2014	with disability	918731
region	115	2014	without disability	5879907
region	114	2014	without disability	8657067
region	117	2014	without disability	6341192
region	116	2014	without disability	5686753
country	UG	2014	with disability	3736014
country	UG	2014	without disability	26564919
\.


--
-- Name: disabledornot pk_disabledornot; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY disabledornot
    ADD CONSTRAINT pk_disabledornot PRIMARY KEY (geo_level, geo_code, geo_version, "disabled or not");


--
-- PostgreSQL database dump complete
--

