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
-- Name: ruralorurban; Type: TABLE; Schema: public; Owner: hurumap_ug
--

CREATE TABLE ruralorurban (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT '2009'::character varying NOT NULL,
    "rural or urban" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE ruralorurban OWNER TO hurumap_ug;

--
-- Data for Name: ruralorurban; Type: TABLE DATA; Schema: public; Owner: hurumap_ug
--

COPY ruralorurban (geo_level, geo_code, geo_version, "rural or urban", total) FROM stdin;
district	80	2014	rural	214149
district	80	2014	urban	208622
district	16	2014	rural	138588
district	16	2014	urban	12825
district	67	2014	rural	85603
district	67	2014	urban	15237
district	74	2014	rural	79954
district	74	2014	urban	9936
district	19	2014	rural	147483
district	19	2014	urban	12439
district	1	2014	rural	49313
district	1	2014	urban	4980
district	85	2014	rural	151095
district	85	2014	urban	32137
district	20	2014	rural	0
district	20	2014	urban	1507080
district	26	2014	rural	340974
district	26	2014	urban	27088
district	109	2014	rural	114698
district	109	2014	urban	33520
district	108	2014	rural	190200
district	108	2014	urban	24493
district	21	2014	rural	361284
district	21	2014	urban	95674
district	17	2014	rural	232011
district	17	2014	urban	42942
district	28	2014	rural	79930
district	28	2014	urban	13823
district	18	2014	rural	193711
district	18	2014	urban	103293
district	29	2014	rural	221328
district	29	2014	urban	107636
district	68	2014	rural	207242
district	68	2014	urban	43306
district	22	2014	rural	572023
district	22	2014	urban	112314
district	79	2014	rural	434062
district	79	2014	urban	162742
district	30	2014	rural	157969
district	30	2014	urban	39400
district	23	2014	rural	157059
district	23	2014	urban	24740
district	24	2014	rural	482248
district	24	2014	urban	34061
district	25	2014	rural	235568
district	25	2014	urban	17029
district	27	2014	rural	814517
district	27	2014	urban	1182901
district	396	2014	rural	253543
district	396	2014	urban	17385
district	319	2014	rural	183720
district	319	2014	urban	23877
district	37	2014	rural	196400
district	37	2014	urban	13773
district	81	2014	rural	318681
district	81	2014	urban	64232
district	38	2014	rural	192691
district	38	2014	urban	10909
district	39	2014	rural	77262
district	39	2014	urban	12094
district	382	2014	rural	157643
district	382	2014	urban	16865
district	83	2014	rural	268844
district	83	2014	urban	54818
district	40	2014	rural	210952
district	40	2014	urban	33201
district	78	2014	rural	299836
district	78	2014	urban	23231
district	72	2014	rural	411460
district	72	2014	urban	92737
district	31	2014	rural	298858
district	31	2014	urban	172384
district	383	2014	rural	210994
district	383	2014	urban	4032
district	41	2014	rural	219438
district	41	2014	urban	16761
district	77	2014	rural	426958
district	77	2014	urban	59361
district	90	2014	rural	91762
district	90	2014	urban	13424
district	32	2014	rural	156943
district	32	2014	urban	9288
district	75	2014	rural	184597
district	75	2014	urban	17436
district	323	2014	rural	202774
district	323	2014	urban	36494
district	91	2014	rural	87210
district	91	2014	urban	6457
district	345	2014	rural	227749
district	345	2014	urban	10271
district	42	2014	rural	302541
district	42	2014	urban	51284
district	73	2014	rural	439692
district	73	2014	urban	33547
district	33	2014	rural	365869
district	33	2014	urban	123091
district	82	2014	rural	199717
district	82	2014	urban	15725
district	43	2014	rural	233943
district	43	2014	urban	18619
district	84	2014	rural	126748
district	84	2014	urban	15171
district	76	2014	rural	348951
district	76	2014	urban	37939
district	87	2014	rural	273701
district	87	2014	urban	12202
district	89	2014	rural	208173
district	89	2014	urban	34249
district	88	2014	rural	247187
district	88	2014	urban	49646
district	34	2014	rural	444937
district	34	2014	urban	72145
district	49	2014	rural	90790
district	49	2014	urban	17176
district	44	2014	rural	184864
district	44	2014	urban	40387
district	10	2014	rural	198799
district	10	2014	urban	28993
district	7	2014	rural	220835
district	7	2014	urban	6706
district	50	2014	rural	125562
district	50	2014	urban	21604
district	110	2014	rural	93982
district	110	2014	urban	11785
district	9	2014	rural	177395
district	9	2014	urban	9301
district	12	2014	rural	346032
district	12	2014	urban	22594
district	104	2014	rural	720131
district	104	2014	urban	61946
district	51	2014	rural	162974
district	51	2014	urban	20119
district	45	2014	rural	286545
district	45	2014	urban	149800
district	52	2014	rural	156319
district	52	2014	urban	11560
district	14	2014	rural	128455
district	14	2014	urban	75593
district	53	2014	rural	148585
district	53	2014	urban	57910
district	300	2014	rural	230479
district	300	2014	urban	8848
district	46	2014	rural	167198
district	46	2014	urban	13852
district	343	2014	rural	112637
district	343	2014	urban	21742
district	6	2014	rural	306770
district	6	2014	urban	101273
district	348	2014	rural	176834
district	348	2014	urban	9300
district	93	2014	rural	89219
district	93	2014	urban	14213
district	47	2014	rural	128432
district	47	2014	urban	10580
district	111	2014	rural	152961
district	111	2014	urban	3729
district	94	2014	rural	137499
district	94	2014	urban	4725
district	95	2014	rural	338665
district	95	2014	urban	58129
district	8	2014	rural	119913
district	8	2014	urban	13593
district	438	2014	rural	98041
district	438	2014	urban	6213
district	54	2014	rural	365209
district	54	2014	urban	18435
district	11	2014	rural	164602
district	11	2014	urban	13402
district	48	2014	rural	449819
district	48	2014	urban	35003
district	96	2014	rural	195497
district	96	2014	urban	44585
district	100	2014	rural	117768
district	100	2014	urban	2952
district	66	2014	rural	105923
district	66	2014	urban	7238
district	107	2014	rural	188726
district	107	2014	urban	35661
district	103	2014	rural	186655
district	103	2014	urban	47785
district	55	2014	rural	467021
district	55	2014	urban	105965
district	366	2014	rural	184860
district	366	2014	urban	64765
district	3	2014	rural	430982
district	3	2014	urban	55378
district	56	2014	rural	452093
district	56	2014	urban	76138
district	57	2014	rural	347082
district	57	2014	urban	122154
district	64	2014	rural	391546
district	64	2014	urban	22908
district	65	2014	rural	201006
district	65	2014	urban	51138
district	58	2014	rural	574011
district	58	2014	urban	120981
district	59	2014	rural	723308
district	59	2014	urban	61780
district	4	2014	rural	296822
district	4	2014	urban	31255
district	98	2014	rural	210594
district	98	2014	urban	55603
district	60	2014	rural	256251
district	60	2014	urban	25454
district	70	2014	rural	255337
district	70	2014	urban	26300
district	69	2014	rural	357391
district	69	2014	urban	64813
district	97	2014	rural	196675
district	97	2014	urban	94438
district	61	2014	rural	277471
district	61	2014	urban	195158
district	102	2014	rural	172048
district	102	2014	urban	11396
district	436	2014	rural	43216
district	436	2014	urban	23789
district	62	2014	rural	423211
district	62	2014	urban	60630
district	101	2014	rural	111912
district	101	2014	urban	17237
district	63	2014	rural	271088
district	63	2014	urban	43606
district	456	2014	rural	159963
district	456	2014	urban	47380
country	UG	2014	rural	27208786
country	UG	2014	urban	7425864
region	114	2014	rural	6235020
region	115	2014	rural	6197190
region	116	2014	rural	6093213
region	117	2014	rural	6440910
region	114	2014	urban	3989199
region	115	2014	urban	1019328
region	116	2014	urban	911389
region	117	2014	urban	1214987
\.


--
-- Name: ruralorurban pk_ruralorurban; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY ruralorurban
    ADD CONSTRAINT pk_ruralorurban PRIMARY KEY (geo_level, geo_code, geo_version, "rural or urban");


--
-- PostgreSQL database dump complete
--

