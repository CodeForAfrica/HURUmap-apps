--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.postal_data_services DROP CONSTRAINT IF EXISTS postal_data_services_pkey;
DROP TABLE IF EXISTS public.postal_data_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: postal_data_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.postal_data_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: postal_data_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.postal_data_services (geo_level, geo_code, geo_version, services, total) FROM stdin;
country	NG	2016	Available Post Office Boxes	800714
country	NG	2016	Available Private Message Boxes	23995
country	NG	2016	Not Renewed Private Message Boxes	17678
country	NG	2016	Number not Rented	361164
country	NG	2016	Renewed Private Message Boxes	4941
country	NG	2016	Rented Boxes Business	171839
country	NG	2016	Rented Boxes Private	352282
state	1	2016	Available Post Office Boxes	30686
state	1	2016	Available Private Message Boxes	905
state	1	2016	Not Renewed Private Message Boxes	757
state	1	2016	Number not Rented	19563
state	1	2016	Renewed Private Message Boxes	148
state	1	2016	Rented Boxes Business	3330
state	1	2016	Rented Boxes Private	16793
state	2	2016	Available Post Office Boxes	11538
state	2	2016	Available Private Message Boxes	442
state	2	2016	Not Renewed Private Message Boxes	362
state	2	2016	Number not Rented	6009
state	2	2016	Renewed Private Message Boxes	80
state	2	2016	Rented Boxes Business	1591
state	2	2016	Rented Boxes Private	3929
state	3	2016	Available Post Office Boxes	18218
state	3	2016	Available Private Message Boxes	731
state	3	2016	Not Renewed Private Message Boxes	635
state	3	2016	Number not Rented	6393
state	3	2016	Renewed Private Message Boxes	96
state	3	2016	Rented Boxes Business	1808
state	3	2016	Rented Boxes Private	10015
state	4	2016	Available Post Office Boxes	60947
state	4	2016	Available Private Message Boxes	2247
state	4	2016	Not Renewed Private Message Boxes	1805
state	4	2016	Number not Rented	14648
state	4	2016	Renewed Private Message Boxes	442
state	4	2016	Rented Boxes Business	6593
state	4	2016	Rented Boxes Private	39706
state	5	2016	Available Post Office Boxes	18200
state	5	2016	Available Private Message Boxes	635
state	5	2016	Not Renewed Private Message Boxes	129
state	5	2016	Number not Rented	14707
state	5	2016	Renewed Private Message Boxes	506
state	5	2016	Rented Boxes Business	764
state	5	2016	Rented Boxes Private	2729
state	6	2016	Available Post Office Boxes	2805
state	6	2016	Available Private Message Boxes	195
state	6	2016	Not Renewed Private Message Boxes	155
state	6	2016	Number not Rented	2733
state	6	2016	Renewed Private Message Boxes	40
state	6	2016	Rented Boxes Business	613
state	6	2016	Rented Boxes Private	2159
state	7	2016	Available Post Office Boxes	14790
state	7	2016	Available Private Message Boxes	339
state	7	2016	Not Renewed Private Message Boxes	210
state	7	2016	Number not Rented	7840
state	7	2016	Renewed Private Message Boxes	130
state	7	2016	Rented Boxes Business	77129
state	7	2016	Rented Boxes Private	4762
state	8	2016	Available Post Office Boxes	16800
state	8	2016	Available Private Message Boxes	426
state	8	2016	Not Renewed Private Message Boxes	317
state	8	2016	Number not Rented	12271
state	8	2016	Renewed Private Message Boxes	109
state	8	2016	Rented Boxes Business	2966
state	8	2016	Rented Boxes Private	1257
state	9	2016	Available Post Office Boxes	14192
state	9	2016	Available Private Message Boxes	583
state	9	2016	Not Renewed Private Message Boxes	494
state	9	2016	Number not Rented	7644
state	9	2016	Renewed Private Message Boxes	77
state	9	2016	Rented Boxes Business	1886
state	9	2016	Rented Boxes Private	4661
state	10	2016	Available Post Office Boxes	32188
state	10	2016	Available Private Message Boxes	712
state	10	2016	Not Renewed Private Message Boxes	332
state	10	2016	Number not Rented	20259
state	10	2016	Renewed Private Message Boxes	118
state	10	2016	Rented Boxes Business	2329
state	10	2016	Rented Boxes Private	9600
state	11	2016	Available Post Office Boxes	13210
state	11	2016	Available Private Message Boxes	584
state	11	2016	Not Renewed Private Message Boxes	472
state	11	2016	Number not Rented	8322
state	11	2016	Renewed Private Message Boxes	112
state	11	2016	Rented Boxes Business	1303
state	11	2016	Rented Boxes Private	3585
state	12	2016	Available Post Office Boxes	24391
state	12	2016	Available Private Message Boxes	526
state	12	2016	Not Renewed Private Message Boxes	409
state	12	2016	Number not Rented	10672
state	12	2016	Renewed Private Message Boxes	116
state	12	2016	Rented Boxes Business	1879
state	12	2016	Rented Boxes Private	11859
state	13	2016	Available Post Office Boxes	12224
state	13	2016	Available Private Message Boxes	321
state	13	2016	Not Renewed Private Message Boxes	133
state	13	2016	Number not Rented	10416
state	13	2016	Renewed Private Message Boxes	108
state	13	2016	Rented Boxes Business	335
state	13	2016	Rented Boxes Private	1473
state	14	2016	Available Post Office Boxes	29493
state	14	2016	Available Private Message Boxes	823
state	14	2016	Not Renewed Private Message Boxes	747
state	14	2016	Number not Rented	12059
state	14	2016	Renewed Private Message Boxes	76
state	14	2016	Rented Boxes Business	5326
state	14	2016	Rented Boxes Private	10167
state	15	2016	Available Post Office Boxes	15372
state	15	2016	Available Private Message Boxes	421
state	15	2016	Not Renewed Private Message Boxes	382
state	15	2016	Number not Rented	9674
state	15	2016	Renewed Private Message Boxes	139
state	15	2016	Rented Boxes Business	1168
state	15	2016	Rented Boxes Private	4530
state	16	2016	Available Post Office Boxes	4532
state	16	2016	Available Private Message Boxes	394
state	16	2016	Not Renewed Private Message Boxes	167
state	16	2016	Number not Rented	2850
state	16	2016	Renewed Private Message Boxes	227
state	16	2016	Rented Boxes Business	459
state	16	2016	Rented Boxes Private	1223
state	17	2016	Available Post Office Boxes	37310
state	17	2016	Available Private Message Boxes	480
state	17	2016	Not Renewed Private Message Boxes	403
state	17	2016	Number not Rented	21886
state	17	2016	Renewed Private Message Boxes	79
state	17	2016	Rented Boxes Business	2939
state	17	2016	Rented Boxes Private	17331
state	18	2016	Available Post Office Boxes	3496
state	18	2016	Available Private Message Boxes	257
state	18	2016	Not Renewed Private Message Boxes	158
state	18	2016	Number not Rented	3082
state	18	2016	Renewed Private Message Boxes	91
state	18	2016	Rented Boxes Business	152
state	18	2016	Rented Boxes Private	262
state	19	2016	Available Post Office Boxes	29925
state	19	2016	Available Private Message Boxes	845
state	19	2016	Not Renewed Private Message Boxes	605
state	19	2016	Number not Rented	14031
state	19	2016	Renewed Private Message Boxes	240
state	19	2016	Rented Boxes Business	4218
state	19	2016	Rented Boxes Private	11676
state	20	2016	Available Post Office Boxes	18400
state	20	2016	Available Private Message Boxes	583
state	20	2016	Not Renewed Private Message Boxes	516
state	20	2016	Number not Rented	6154
state	20	2016	Renewed Private Message Boxes	69
state	20	2016	Rented Boxes Business	1345
state	20	2016	Rented Boxes Private	10904
state	21	2016	Available Post Office Boxes	4532
state	21	2016	Available Private Message Boxes	428
state	21	2016	Not Renewed Private Message Boxes	369
state	21	2016	Number not Rented	1507
state	21	2016	Renewed Private Message Boxes	155
state	21	2016	Rented Boxes Business	639
state	21	2016	Rented Boxes Private	1896
state	22	2016	Available Post Office Boxes	7348
state	22	2016	Available Private Message Boxes	405
state	22	2016	Not Renewed Private Message Boxes	395
state	22	2016	Number not Rented	1961
state	22	2016	Renewed Private Message Boxes	10
state	22	2016	Rented Boxes Business	482
state	22	2016	Rented Boxes Private	1289
state	23	2016	Available Post Office Boxes	14532
state	23	2016	Available Private Message Boxes	741
state	23	2016	Not Renewed Private Message Boxes	559
state	23	2016	Number not Rented	14483
state	23	2016	Renewed Private Message Boxes	181
state	23	2016	Rented Boxes Business	19
state	23	2016	Rented Boxes Private	30
state	24	2016	Available Post Office Boxes	16428
state	24	2016	Available Private Message Boxes	412
state	24	2016	Not Renewed Private Message Boxes	91
state	24	2016	Number not Rented	13937
state	24	2016	Renewed Private Message Boxes	157
state	24	2016	Rented Boxes Business	463
state	24	2016	Rented Boxes Private	2033
state	25	2016	Available Post Office Boxes	142888
state	25	2016	Available Private Message Boxes	2615
state	25	2016	Not Renewed Private Message Boxes	2237
state	25	2016	Number not Rented	21360
state	25	2016	Renewed Private Message Boxes	378
state	25	2016	Rented Boxes Business	27808
state	25	2016	Rented Boxes Private	93715
state	26	2016	Available Post Office Boxes	1024
state	26	2016	Available Private Message Boxes	23
state	26	2016	Not Renewed Private Message Boxes	19
state	26	2016	Number not Rented	841
state	26	2016	Renewed Private Message Boxes	4
state	26	2016	Rented Boxes Business	25
state	26	2016	Rented Boxes Private	158
state	27	2016	Available Post Office Boxes	14548
state	27	2016	Available Private Message Boxes	398
state	27	2016	Not Renewed Private Message Boxes	365
state	27	2016	Number not Rented	9023
state	27	2016	Renewed Private Message Boxes	33
state	27	2016	Rented Boxes Business	1145
state	27	2016	Rented Boxes Private	4372
state	28	2016	Available Post Office Boxes	24064
state	28	2016	Available Private Message Boxes	439
state	28	2016	Not Renewed Private Message Boxes	150
state	28	2016	Number not Rented	8943
state	28	2016	Renewed Private Message Boxes	129
state	28	2016	Rented Boxes Business	2456
state	28	2016	Rented Boxes Private	12607
state	29	2016	Available Post Office Boxes	19719
state	29	2016	Available Private Message Boxes	499
state	29	2016	Not Renewed Private Message Boxes	196
state	29	2016	Number not Rented	16389
state	29	2016	Renewed Private Message Boxes	72
state	29	2016	Rented Boxes Business	568
state	29	2016	Rented Boxes Private	2762
state	30	2016	Available Post Office Boxes	27474
state	30	2016	Available Private Message Boxes	480
state	30	2016	Not Renewed Private Message Boxes	369
state	30	2016	Number not Rented	13143
state	30	2016	Renewed Private Message Boxes	111
state	30	2016	Rented Boxes Business	3628
state	30	2016	Rented Boxes Private	10364
state	31	2016	Available Post Office Boxes	49498
state	31	2016	Available Private Message Boxes	1169
state	31	2016	Not Renewed Private Message Boxes	329
state	31	2016	Number not Rented	15025
state	31	2016	Renewed Private Message Boxes	192
state	31	2016	Rented Boxes Business	5939
state	31	2016	Rented Boxes Private	28366
state	32	2016	Available Post Office Boxes	19855
state	32	2016	Available Private Message Boxes	483
state	32	2016	Not Renewed Private Message Boxes	329
state	32	2016	Number not Rented	10167
state	32	2016	Renewed Private Message Boxes	144
state	32	2016	Rented Boxes Business	3276
state	32	2016	Rented Boxes Private	6412
state	33	2016	Available Post Office Boxes	28323
state	33	2016	Available Private Message Boxes	2282
state	33	2016	Not Renewed Private Message Boxes	2036
state	33	2016	Number not Rented	8391
state	33	2016	Renewed Private Message Boxes	246
state	33	2016	Rented Boxes Business	4620
state	33	2016	Rented Boxes Private	15312
state	34	2016	Available Post Office Boxes	8900
state	34	2016	Available Private Message Boxes	339
state	34	2016	Not Renewed Private Message Boxes	318
state	34	2016	Number not Rented	7315
state	34	2016	Renewed Private Message Boxes	21
state	34	2016	Rented Boxes Business	277
state	34	2016	Rented Boxes Private	1308
state	35	2016	Available Post Office Boxes	5378
state	35	2016	Available Private Message Boxes	313
state	35	2016	Not Renewed Private Message Boxes	310
state	35	2016	Number not Rented	2986
state	35	2016	Renewed Private Message Boxes	3
state	35	2016	Rented Boxes Business	942
state	35	2016	Rented Boxes Private	1450
state	36	2016	Available Post Office Boxes	3686
state	36	2016	Available Private Message Boxes	290
state	36	2016	Not Renewed Private Message Boxes	230
state	36	2016	Number not Rented	1955
state	36	2016	Renewed Private Message Boxes	60
state	36	2016	Rented Boxes Business	975
state	36	2016	Rented Boxes Private	756
state	37	2016	Available Post Office Boxes	3800
state	37	2016	Available Private Message Boxes	230
state	37	2016	Not Renewed Private Message Boxes	188
state	37	2016	Number not Rented	2525
state	37	2016	Renewed Private Message Boxes	42
state	37	2016	Rented Boxes Business	444
state	37	2016	Rented Boxes Private	831
\.


--
-- Name: postal_data_services postal_data_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.postal_data_services
    ADD CONSTRAINT postal_data_services_pkey PRIMARY KEY (geo_level, geo_code, geo_version, services);


--
-- PostgreSQL database dump complete
--
