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

ALTER TABLE IF EXISTS ONLY public.household DROP CONSTRAINT IF EXISTS pk_household;
DROP TABLE IF EXISTS public.household;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: household; Type: TABLE; Schema: public; Owner: hurumap_ug
--

CREATE TABLE household (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT '2009'::character varying NOT NULL,
    household character varying(128) NOT NULL,
    total integer
);


ALTER TABLE household OWNER TO hurumap_ug;

--
-- Data for Name: household; Type: TABLE DATA; Schema: public; Owner: hurumap_ug
--

COPY household (geo_level, geo_code, geo_version, household, total) FROM stdin;
district	80	2014	household	410659
district	80	2014	non-household	12112
district	16	2014	household	150417
district	16	2014	non-household	996
district	67	2014	household	99528
district	67	2014	non-household	1312
district	74	2014	household	86231
district	74	2014	non-household	3659
district	19	2014	household	158665
district	19	2014	non-household	1257
district	1	2014	household	50178
district	1	2014	non-household	4115
district	85	2014	household	177936
district	85	2014	non-household	5296
district	20	2014	household	1469625
district	20	2014	non-household	37455
district	26	2014	household	363994
district	26	2014	non-household	4068
district	109	2014	household	143910
district	109	2014	non-household	4308
district	108	2014	household	212681
district	108	2014	non-household	2012
district	21	2014	household	447713
district	21	2014	non-household	9245
district	17	2014	household	272095
district	17	2014	non-household	2858
district	28	2014	household	92770
district	28	2014	non-household	983
district	18	2014	household	286374
district	18	2014	non-household	10630
district	29	2014	household	322982
district	29	2014	non-household	5982
district	68	2014	household	243767
district	68	2014	non-household	6781
district	22	2014	household	668307
district	22	2014	non-household	16030
district	79	2014	household	580016
district	79	2014	non-household	16788
district	30	2014	household	182923
district	30	2014	non-household	14446
district	23	2014	household	176951
district	23	2014	non-household	4848
district	24	2014	household	508526
district	24	2014	non-household	7783
district	25	2014	household	250523
district	25	2014	non-household	2074
district	27	2014	household	1959725
district	27	2014	non-household	37693
district	396	2014	household	269753
district	396	2014	non-household	1175
district	319	2014	household	206662
district	319	2014	non-household	935
district	37	2014	household	208752
district	37	2014	non-household	1421
district	81	2014	household	381783
district	81	2014	non-household	1130
district	38	2014	household	202757
district	38	2014	non-household	843
district	39	2014	household	88671
district	39	2014	non-household	685
district	382	2014	household	173560
district	382	2014	non-household	948
district	83	2014	household	320516
district	83	2014	non-household	3146
district	40	2014	household	243441
district	40	2014	non-household	712
district	78	2014	household	322145
district	78	2014	non-household	922
district	72	2014	household	500524
district	72	2014	non-household	3673
district	31	2014	household	460653
district	31	2014	non-household	10589
district	383	2014	household	213848
district	383	2014	non-household	1178
district	41	2014	household	234445
district	41	2014	non-household	1754
district	77	2014	household	481617
district	77	2014	non-household	4702
district	90	2014	household	104130
district	90	2014	non-household	1056
district	32	2014	household	164005
district	32	2014	non-household	2226
district	75	2014	household	201215
district	75	2014	non-household	818
district	323	2014	household	237788
district	323	2014	non-household	1480
district	91	2014	household	92869
district	91	2014	non-household	798
district	345	2014	household	237387
district	345	2014	non-household	633
district	42	2014	household	352818
district	42	2014	non-household	1007
district	73	2014	household	470775
district	73	2014	non-household	2464
district	33	2014	household	481562
district	33	2014	non-household	7398
district	82	2014	household	213253
district	82	2014	non-household	2189
district	43	2014	household	251833
district	43	2014	non-household	729
district	84	2014	household	140457
district	84	2014	non-household	1462
district	76	2014	household	384279
district	76	2014	non-household	2611
district	87	2014	household	283228
district	87	2014	non-household	2675
district	89	2014	household	241473
district	89	2014	non-household	949
district	88	2014	household	290928
district	88	2014	non-household	5905
district	34	2014	household	512474
district	34	2014	non-household	4608
district	49	2014	household	106996
district	49	2014	non-household	970
district	44	2014	household	223196
district	44	2014	non-household	2055
district	10	2014	household	226356
district	10	2014	non-household	1436
district	7	2014	household	227037
district	7	2014	non-household	504
district	50	2014	household	145209
district	50	2014	non-household	1957
district	110	2014	household	96601
district	110	2014	non-household	9166
district	9	2014	household	184976
district	9	2014	non-household	1720
district	12	2014	household	365632
district	12	2014	non-household	2994
district	104	2014	household	775080
district	104	2014	non-household	6997
district	51	2014	household	181885
district	51	2014	non-household	1208
district	45	2014	household	425094
district	45	2014	non-household	11251
district	52	2014	household	165859
district	52	2014	non-household	2020
district	14	2014	household	202625
district	14	2014	non-household	1423
district	53	2014	household	204969
district	53	2014	non-household	1526
district	300	2014	household	238059
district	300	2014	non-household	1268
district	46	2014	household	168907
district	46	2014	non-household	12143
district	343	2014	household	134077
district	343	2014	non-household	302
district	6	2014	household	400462
district	6	2014	non-household	7581
district	348	2014	household	185468
district	348	2014	non-household	666
district	93	2014	household	97431
district	93	2014	non-household	6001
district	47	2014	household	137594
district	47	2014	non-household	1418
district	111	2014	household	147439
district	111	2014	non-household	9251
district	94	2014	household	141216
district	94	2014	non-household	1008
district	95	2014	household	392764
district	95	2014	non-household	4030
district	8	2014	household	132026
district	8	2014	non-household	1480
district	438	2014	household	103806
district	438	2014	non-household	448
district	54	2014	household	381563
district	54	2014	non-household	2081
district	11	2014	household	176647
district	11	2014	non-household	1357
district	48	2014	household	478407
district	48	2014	non-household	6415
district	96	2014	household	238968
district	96	2014	non-household	1114
district	100	2014	household	120209
district	100	2014	non-household	511
district	66	2014	household	108038
district	66	2014	non-household	5123
district	107	2014	household	223055
district	107	2014	non-household	1332
district	103	2014	household	228974
district	103	2014	non-household	5466
district	55	2014	household	564468
district	55	2014	non-household	8518
district	366	2014	household	244692
district	366	2014	non-household	4933
district	3	2014	household	483362
district	3	2014	non-household	2998
district	56	2014	household	517476
district	56	2014	non-household	10755
district	57	2014	household	463744
district	57	2014	non-household	5492
district	64	2014	household	412021
district	64	2014	non-household	2433
district	65	2014	household	250224
district	65	2014	non-household	1920
district	58	2014	household	688770
district	58	2014	non-household	6222
district	59	2014	household	780403
district	59	2014	non-household	4685
district	4	2014	household	325325
district	4	2014	non-household	2752
district	98	2014	household	263597
district	98	2014	non-household	2600
district	60	2014	household	280304
district	60	2014	non-household	1401
district	70	2014	household	280703
district	70	2014	non-household	934
district	69	2014	household	421387
district	69	2014	non-household	817
district	97	2014	household	281753
district	97	2014	non-household	9360
district	61	2014	household	460748
district	61	2014	non-household	11881
district	102	2014	household	182867
district	102	2014	non-household	577
district	436	2014	household	66267
district	436	2014	non-household	738
district	62	2014	household	478726
district	62	2014	non-household	5115
district	101	2014	household	128062
district	101	2014	non-household	1087
district	63	2014	household	310454
district	63	2014	non-household	4240
district	456	2014	household	203278
district	456	2014	non-household	4065
\.


--
-- Name: household pk_household; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY household
    ADD CONSTRAINT pk_household PRIMARY KEY (geo_level, geo_code, geo_version, household);


--
-- PostgreSQL database dump complete
--

