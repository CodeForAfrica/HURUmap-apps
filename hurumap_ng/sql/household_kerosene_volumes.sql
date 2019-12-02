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

DROP TABLE IF EXISTS public.household_kerosene_volumes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: household_kerosene_volumes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.household_kerosene_volumes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    quarter character varying(128) NOT NULL,
    year character varying(16),
    total double precision
);


--
-- Data for Name: household_kerosene_volumes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.household_kerosene_volumes (geo_level, geo_code, geo_version, quarter, year, total) FROM stdin;
country	NG	2016	Q1	2018	201.493859
country	NG	2016	Q2	2018	168.826073
country	NG	2016	Q3	2018	168.42428
country	NG	2016	Q4	2018	81.115538
country	NG	2016	Q1	2019	102.329172
country	NG	2016	Q2	2019	131.423611
state	1	2016	Q1	2018	7.252343
state	1	2016	Q2	2018	6.502224
state	1	2016	Q3	2018	7.649811
state	1	2016	Q4	2018	5.198773
state	1	2016	Q1	2019	4.3
state	1	2016	Q2	2019	5.8753
state	2	2016	Q1	2018	2.65
state	2	2016	Q2	2018	1.845397
state	2	2016	Q3	2018	0.474
state	2	2016	Q4	2018	0.65
state	2	2016	Q1	2019	0.408991
state	2	2016	Q2	2019	0.751
state	3	2016	Q1	2018	2.941919
state	3	2016	Q2	2018	4.620392
state	3	2016	Q3	2018	4.879007
state	3	2016	Q4	2018	3.2105
state	3	2016	Q1	2019	3.2025
state	3	2016	Q2	2019	4.4371
state	4	2016	Q1	2018	5.39402
state	4	2016	Q2	2018	2.635335
state	4	2016	Q3	2018	9.038535
state	4	2016	Q4	2018	4.883329
state	4	2016	Q1	2019	1.7638
state	4	2016	Q2	2019	6.569091
state	5	2016	Q1	2018	1.269363
state	5	2016	Q2	2018	0.475
state	5	2016	Q3	2018	1.509063
state	5	2016	Q4	2018	0.934443
state	5	2016	Q1	2019	0.6834
state	5	2016	Q2	2019	0.884
state	6	2016	Q1	2018	0.529005
state	6	2016	Q2	2018	0.363011
state	6	2016	Q3	2018	0.09925
state	6	2016	Q4	2018	0
state	6	2016	Q1	2019	0.132
state	6	2016	Q2	2019	0
state	7	2016	Q1	2018	4.021882
state	7	2016	Q2	2018	1.990208
state	7	2016	Q3	2018	2.079501
state	7	2016	Q4	2018	1.144495
state	7	2016	Q1	2019	0.4
state	7	2016	Q2	2019	1.744
state	8	2016	Q1	2018	0.953631
state	8	2016	Q2	2018	0.161
state	8	2016	Q3	2018	0.682
state	8	2016	Q4	2018	0.833495
state	8	2016	Q1	2019	0.376
state	8	2016	Q2	2019	0.603
state	9	2016	Q1	2018	2.384167
state	9	2016	Q2	2018	2.644129
state	9	2016	Q3	2018	3.227233
state	9	2016	Q4	2018	2.394989
state	9	2016	Q1	2019	2.170104
state	9	2016	Q2	2019	2.20678
state	10	2016	Q1	2018	26.820649
state	10	2016	Q2	2018	38.927681
state	10	2016	Q3	2018	23.98814
state	10	2016	Q4	2018	10.749894
state	10	2016	Q1	2019	27.068334
state	10	2016	Q2	2019	15.223119
state	11	2016	Q1	2018	2.506094
state	11	2016	Q2	2018	0.507353
state	11	2016	Q3	2018	1.496361
state	11	2016	Q4	2018	0.4395
state	11	2016	Q1	2019	0.388
state	11	2016	Q2	2019	1.404461
state	12	2016	Q1	2018	2.321001
state	12	2016	Q2	2018	3.446498
state	12	2016	Q3	2018	4.675883
state	12	2016	Q4	2018	2.237794
state	12	2016	Q1	2019	3.254333
state	12	2016	Q2	2019	2.56715
state	13	2016	Q1	2018	0.4545
state	13	2016	Q2	2018	0.146
state	13	2016	Q3	2018	0.919
state	13	2016	Q4	2018	0.278993
state	13	2016	Q1	2019	0.224993
state	13	2016	Q2	2019	1.098991
state	14	2016	Q1	2018	3.709278
state	14	2016	Q2	2018	3.274723
state	14	2016	Q3	2018	4.91261
state	14	2016	Q4	2018	2.410994
state	14	2016	Q1	2019	1.885497
state	14	2016	Q2	2019	3.545997
state	15	2016	Q1	2018	5.836447
state	15	2016	Q2	2018	8.817701
state	15	2016	Q3	2018	10.173877
state	15	2016	Q4	2018	9.166562
state	15	2016	Q1	2019	0.308
state	15	2016	Q2	2019	8.39555
state	16	2016	Q1	2018	4.111348
state	16	2016	Q2	2018	2.214
state	16	2016	Q3	2018	0.2931
state	16	2016	Q4	2018	0.211
state	16	2016	Q1	2019	2.053
state	16	2016	Q2	2019	0.294
state	17	2016	Q1	2018	4.033111
state	17	2016	Q2	2018	2.921881
state	17	2016	Q3	2018	2.578334
state	17	2016	Q4	2018	2.234511
state	17	2016	Q1	2019	0
state	17	2016	Q2	2019	3.0265
state	18	2016	Q1	2018	0.12624
state	18	2016	Q2	2018	0.033
state	18	2016	Q3	2018	0.3472
state	18	2016	Q4	2018	0.574515
state	18	2016	Q1	2019	2.784005
state	18	2016	Q2	2019	0.098992
state	19	2016	Q1	2018	13.808948
state	19	2016	Q2	2018	7.492124
state	19	2016	Q3	2018	4.500343
state	19	2016	Q4	2018	3.407963
state	19	2016	Q1	2019	3.475981
state	19	2016	Q2	2019	4.617594
state	20	2016	Q1	2018	5.742268
state	20	2016	Q2	2018	6.365457
state	20	2016	Q3	2018	6.843236
state	20	2016	Q4	2018	2.944394
state	20	2016	Q1	2019	0.135
state	20	2016	Q2	2019	4.444839
state	21	2016	Q1	2018	2.245136
state	21	2016	Q2	2018	1.101321
state	21	2016	Q3	2018	1.799
state	21	2016	Q4	2018	1.745992
state	21	2016	Q1	2019	0.246
state	21	2016	Q2	2019	0.415
state	22	2016	Q1	2018	1.08274
state	22	2016	Q2	2018	0.149
state	22	2016	Q3	2018	1.7485
state	22	2016	Q4	2018	0.363
state	22	2016	Q1	2019	0.451
state	22	2016	Q2	2019	0.078
state	23	2016	Q1	2018	5.423791
state	23	2016	Q2	2018	0.695652
state	23	2016	Q3	2018	1.3232
state	23	2016	Q4	2018	1.534
state	23	2016	Q1	2019	1.332961
state	23	2016	Q2	2019	1.25699
state	24	2016	Q1	2018	1.503
state	24	2016	Q2	2018	1.024202
state	24	2016	Q3	2018	4.270547
state	24	2016	Q4	2018	1.32901
state	24	2016	Q1	2019	15.402972
state	24	2016	Q2	2019	2.926454
state	25	2016	Q1	2018	20.611738
state	25	2016	Q2	2018	13.790856
state	25	2016	Q3	2018	31.4219
state	25	2016	Q4	2018	5.239341
state	25	2016	Q1	2019	0.309
state	25	2016	Q2	2019	25.388415
state	26	2016	Q1	2018	2.911277
state	26	2016	Q2	2018	0.10362
state	26	2016	Q3	2018	1.389
state	26	2016	Q4	2018	0.353
state	26	2016	Q1	2019	2.258698
state	26	2016	Q2	2019	0.482
state	27	2016	Q1	2018	3.435764
state	27	2016	Q2	2018	4.59976
state	27	2016	Q3	2018	2.344938
state	27	2016	Q4	2018	2.019492
state	27	2016	Q1	2019	4.730012
state	27	2016	Q2	2019	4.293995
state	28	2016	Q1	2018	5.355955
state	28	2016	Q2	2018	3.193059
state	28	2016	Q3	2018	7.192904
state	28	2016	Q4	2018	5.983404
state	28	2016	Q1	2019	1.60994
state	28	2016	Q2	2019	8.917442
state	29	2016	Q1	2018	1.229918
state	29	2016	Q2	2018	2.0144
state	29	2016	Q3	2018	2.787
state	29	2016	Q4	2018	0.562
state	29	2016	Q1	2019	1.223476
state	29	2016	Q2	2019	3.077016
state	30	2016	Q1	2018	0.4945
state	30	2016	Q2	2018	0.298993
state	30	2016	Q3	2018	1.490809
state	30	2016	Q4	2018	1.293003
state	30	2016	Q1	2019	4.068341
state	30	2016	Q2	2019	2.504466
state	31	2016	Q1	2018	2.639002
state	31	2016	Q2	2018	1.166977
state	31	2016	Q3	2018	5.636
state	31	2016	Q4	2018	2.385032
state	31	2016	Q1	2019	1.339992
state	31	2016	Q2	2019	7.137869
state	32	2016	Q1	2018	1.185066
state	32	2016	Q2	2018	1.299999
state	32	2016	Q3	2018	1.448
state	32	2016	Q4	2018	1.241487
state	32	2016	Q1	2019	1.525845
state	32	2016	Q2	2019	3.225498
state	33	2016	Q1	2018	54.736757
state	33	2016	Q2	2018	42.085568
state	33	2016	Q3	2018	13.729498
state	33	2016	Q4	2018	1.627134
state	33	2016	Q1	2019	0.432
state	33	2016	Q2	2019	2.815998
state	34	2016	Q1	2018	0.404
state	34	2016	Q2	2018	0.311
state	34	2016	Q3	2018	0.5745
state	34	2016	Q4	2018	0.739001
state	34	2016	Q1	2019	0.161
state	34	2016	Q2	2019	0.606004
state	35	2016	Q1	2018	0.536
state	35	2016	Q2	2018	0.147
state	35	2016	Q3	2018	0.066
state	35	2016	Q4	2018	0.311
state	35	2016	Q1	2019	0
state	35	2016	Q2	2019	0.311
state	36	2016	Q1	2018	0
state	36	2016	Q2	2018	0
state	36	2016	Q3	2018	0.156
state	36	2016	Q4	2018	0
state	36	2016	Q1	2019	0.215
state	36	2016	Q2	2019	0.04
state	37	2016	Q1	2018	0.833001
state	37	2016	Q2	2018	1.461552
state	37	2016	Q3	2018	0.68
state	37	2016	Q4	2018	0.483498
state	37	2016	Q1	2019	12.008997
state	37	2016	Q2	2019	0.16
\.


--
-- Name: household_kerosene_volumes household_kerosene_volumes_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.household_kerosene_volumes
    ADD CONSTRAINT household_kerosene_volumes_pkey PRIMARY KEY (geo_level, geo_code, geo_version, quarter, year);


--
-- PostgreSQL database dump complete
--
