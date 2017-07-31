--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 11:00:50 EAT

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
-- TOC entry 224 (class 1259 OID 17875)
-- Name: maintypeoflightingfuel; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE maintypeoflightingfuel (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of lighting fuel" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE maintypeoflightingfuel OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17875)
-- Dependencies: 224
-- Data for Name: maintypeoflightingfuel; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY maintypeoflightingfuel (geo_level, geo_code, "main type of lighting fuel", total) FROM stdin;
county	3	electricity	33423
county	3	gas lamps	911
county	3	lanterns	33735
county	3	other	665
county	3	pressure lamps	1433
county	3	solar	3471
county	3	tin lamps	125005
county	3	wood	1121
county	5	electricity	3767
county	5	gas lamps	158
county	5	lanterns	7211
county	5	other	428
county	5	pressure lamps	135
county	5	solar	560
county	7	electricity	11405
county	7	gas lamps	17277
county	7	lanterns	20272
county	7	other	6827
county	7	pressure lamps	552
county	7	solar	10251
county	7	tin lamps	31642
county	7	wood	364
county	11	electricity	5800
county	11	gas lamps	781
county	11	lanterns	9751
county	11	other	1015
county	11	pressure lamps	154
county	11	solar	7283
county	11	tin lamps	6113
county	14	electricity	19611
county	14	gas lamps	778
county	14	lanterns	46512
county	14	other	626
county	14	pressure lamps	992
county	14	solar	1114
county	14	tin lamps	57535
county	14	wood	4515
county	15	electricity	9850
county	15	gas lamps	1372
county	15	lanterns	111037
county	15	other	1277
county	15	pressure lamps	1192
county	15	solar	10311
county	15	tin lamps	64450
county	20	electricity	25353
county	20	gas lamps	1005
county	20	lanterns	51589
county	20	other	367
county	20	pressure lamps	1028
county	20	solar	413
county	20	tin lamps	69116
county	20	wood	5349
county	40	electricity	9253
county	40	gas lamps	709
county	40	lanterns	33283
county	40	other	338
county	40	pressure lamps	494
county	40	solar	566
county	40	tin lamps	108949
county	22	electricity	255704
county	22	gas lamps	1428
county	22	lanterns	125860
county	22	other	1866
county	22	pressure lamps	3345
county	22	solar	735
county	22	tin lamps	89701
county	28	electricity	5547
county	28	gas lamps	449
county	28	lanterns	36321
county	28	other	228
county	28	pressure lamps	220
county	28	solar	11744
county	28	tin lamps	21891
county	28	wood	1155
county	30	electricity	10583
county	30	gas lamps	796
county	30	lanterns	43488
county	30	other	471
county	30	pressure lamps	437
county	30	solar	30734
county	30	tin lamps	22238
county	31	electricity	18222
county	31	gas lamps	740
county	31	lanterns	36366
county	31	other	428
county	31	pressure lamps	542
county	31	solar	5276
county	31	tin lamps	35413
county	31	wood	6127
county	34	electricity	69098
county	34	gas lamps	706
county	34	lanterns	32788
county	34	other	1780
county	34	pressure lamps	1430
county	34	solar	3804
county	34	tin lamps	62031
county	35	electricity	15005
county	35	gas lamps	587
county	35	lanterns	58865
county	35	other	212
county	35	pressure lamps	505
county	35	solar	361
county	35	tin lamps	49875
county	35	wood	2171
county	36	electricity	7552
county	36	gas lamps	1135
county	36	lanterns	113311
county	36	other	499
county	36	pressure lamps	581
county	36	solar	1444
county	36	tin lamps	45434
county	37	electricity	19959
county	37	gas lamps	2718
county	37	lanterns	100156
county	37	other	483
county	37	pressure lamps	1791
county	37	solar	1367
county	37	tin lamps	226650
county	37	wood	2555
county	39	electricity	12219
county	39	gas lamps	1704
county	39	lanterns	72256
county	39	other	458
county	39	pressure lamps	1351
county	39	solar	1493
county	4	electricity	1184
county	4	gas lamps	604
county	4	lanterns	9590
county	4	other	1279
county	4	pressure lamps	86
county	4	solar	2785
county	4	tin lamps	31438
county	4	wood	448
county	5	tin lamps	8752
county	5	wood	1173
county	6	electricity	10653
county	6	gas lamps	257
county	6	lanterns	32595
county	6	other	450
county	6	pressure lamps	353
county	6	solar	412
county	6	tin lamps	24732
county	6	wood	1638
county	9	electricity	3198
county	9	gas lamps	13845
county	9	lanterns	41321
county	9	other	4340
county	9	pressure lamps	271
county	9	solar	45240
county	9	tin lamps	16989
county	9	wood	293
county	10	electricity	4258
county	10	gas lamps	1665
county	10	lanterns	13084
county	10	other	2879
county	10	pressure lamps	69
county	10	solar	27355
county	10	tin lamps	6953
county	12	electricity	50004
county	12	gas lamps	3018
county	12	lanterns	112946
county	12	other	1519
county	12	pressure lamps	2388
county	12	solar	7015
county	12	tin lamps	183198
county	12	wood	20938
county	13	electricity	826
county	13	gas lamps	154
county	13	lanterns	3801
county	13	other	366
county	13	pressure lamps	93
county	13	solar	1652
county	13	tin lamps	18194
county	16	electricity	45067
county	16	gas lamps	1355
county	16	lanterns	143523
county	16	other	1172
county	16	pressure lamps	1846
county	16	solar	565
county	16	tin lamps	63999
county	16	wood	6973
county	17	electricity	10912
county	17	gas lamps	859
county	17	lanterns	117991
county	17	other	517
county	17	pressure lamps	816
county	17	solar	1136
county	17	tin lamps	47245
county	18	electricity	15086
county	18	gas lamps	911
county	18	lanterns	79351
county	18	other	387
county	18	pressure lamps	875
county	18	solar	391
county	18	tin lamps	38225
county	19	electricity	53086
county	19	gas lamps	1038
county	19	lanterns	69517
county	19	other	486
county	19	pressure lamps	1641
county	19	solar	1004
county	19	tin lamps	66305
county	19	wood	8626
county	25	electricity	2949
county	25	gas lamps	444
county	25	lanterns	5074
county	25	other	374
county	25	pressure lamps	165
county	25	solar	28451
county	25	tin lamps	9239
county	21	electricity	33847
county	21	gas lamps	1296
county	21	lanterns	95784
county	21	other	386
county	21	pressure lamps	1306
county	21	solar	555
county	21	tin lamps	103722
county	21	wood	5594
county	26	electricity	15121
county	26	gas lamps	1088
county	26	lanterns	65971
county	26	other	489
county	29	electricity	9788
county	29	gas lamps	796
county	29	lanterns	64865
county	29	other	246
county	29	pressure lamps	504
county	29	solar	316
county	29	tin lamps	75638
county	32	electricity	139430
county	32	gas lamps	1994
county	32	lanterns	147950
county	32	other	1927
county	32	pressure lamps	2271
county	32	solar	3398
county	32	tin lamps	103605
county	32	wood	9261
county	33	electricity	9903
county	33	gas lamps	861
county	33	lanterns	49009
county	33	other	1921
county	33	pressure lamps	826
county	33	solar	12977
county	33	tin lamps	91422
county	41	electricity	8615
county	41	gas lamps	885
county	41	lanterns	41128
county	41	other	270
county	41	pressure lamps	858
county	41	solar	440
county	1	electricity	158588
county	1	gas lamps	512
county	1	lanterns	43057
county	1	other	1644
county	1	pressure lamps	2748
county	1	solar	530
county	1	tin lamps	61236
county	1	wood	385
county	2	electricity	12888
county	2	gas lamps	419
county	2	lanterns	16063
county	2	other	326
county	2	pressure lamps	713
county	2	solar	1522
county	2	tin lamps	89118
county	2	wood	998
county	8	electricity	3039
county	8	gas lamps	9767
county	8	lanterns	27923
county	8	other	6348
county	8	pressure lamps	98
county	8	solar	26296
county	8	tin lamps	14948
county	8	wood	155
county	10	wood	678
county	11	wood	429
county	13	wood	2307
county	15	wood	6002
county	17	wood	7002
county	18	wood	8653
county	25	wood	658
county	40	wood	633
county	22	wood	3811
county	23	electricity	3017
county	23	gas lamps	694
county	23	lanterns	10571
county	23	other	4322
county	23	pressure lamps	224
county	23	solar	89894
county	23	tin lamps	13523
county	23	wood	946
county	24	electricity	2456
county	24	gas lamps	467
county	24	lanterns	20880
county	24	other	400
county	24	pressure lamps	104
county	24	solar	46980
county	24	tin lamps	22021
county	24	wood	469
county	26	pressure lamps	977
county	26	solar	994
county	26	tin lamps	84035
county	26	wood	1442
county	27	electricity	56534
county	27	gas lamps	782
county	27	lanterns	89231
county	27	other	1035
county	27	pressure lamps	1218
county	27	solar	628
county	27	tin lamps	50506
county	27	wood	2357
county	29	wood	1920
county	30	wood	1902
county	33	wood	2301
county	34	wood	1827
county	36	wood	4958
county	38	electricity	8678
county	38	gas lamps	1038
county	38	lanterns	35132
county	38	other	129
county	38	pressure lamps	547
county	38	solar	582
county	38	tin lamps	76480
county	38	wood	761
county	39	tin lamps	180120
county	39	wood	1223
county	41	tin lamps	145066
county	41	wood	1772
county	42	electricity	41551
county	42	gas lamps	921
county	42	lanterns	52543
county	42	other	392
county	42	pressure lamps	1256
county	42	solar	513
county	42	tin lamps	127278
county	42	wood	2265
county	43	electricity	6850
county	43	gas lamps	1067
county	43	lanterns	43788
county	43	other	226
county	43	pressure lamps	980
county	43	solar	823
county	43	tin lamps	150440
county	43	wood	2081
county	44	electricity	9551
county	44	gas lamps	1057
county	44	lanterns	46080
county	44	other	297
county	44	pressure lamps	1015
county	44	solar	1051
county	44	tin lamps	119675
county	44	wood	1485
county	45	electricity	20965
county	45	gas lamps	1490
county	45	lanterns	87971
county	45	other	345
county	45	pressure lamps	1033
county	45	solar	711
county	45	tin lamps	154632
county	45	wood	2536
county	46	electricity	6486
county	46	gas lamps	586
county	46	lanterns	42674
county	46	other	67
county	46	pressure lamps	453
county	46	solar	297
county	46	tin lamps	54798
county	46	wood	1024
county	47	electricity	712859
county	47	gas lamps	1251
county	47	lanterns	128173
county	47	other	7244
county	47	pressure lamps	10324
county	47	solar	622
county	47	tin lamps	123551
county	47	wood	992
country	KE	electricity	1989740
country	KE	gas lamps	84375
country	KE	lanterns	2670387
country	KE	other	59751
country	KE	pressure lamps	52240
country	KE	solar	396062
country	KE	tin lamps	3373126
country	KE	wood	142273
\.


--
-- TOC entry 3062 (class 2606 OID 18017)
-- Name: maintypeoflightingfuel maintypeoflightingfuel_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY maintypeoflightingfuel
    ADD CONSTRAINT maintypeoflightingfuel_pkey PRIMARY KEY (geo_level, geo_code, "main type of lighting fuel");


-- Completed on 2017-07-31 11:01:07 EAT

--
-- PostgreSQL database dump complete
--

