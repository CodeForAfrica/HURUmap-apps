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

DROP TABLE IF EXISTS public.automative_gas_oil_volumes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: automative_gas_oil_volumes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.automative_gas_oil_volumes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    quarter character varying(128) NOT NULL,
    year character varying(16),
    total double precision
);


--
-- Data for Name: automative_gas_oil_volumes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.automative_gas_oil_volumes (geo_level, geo_code, geo_version, quarter, year, total) FROM stdin;
country	NG	2016	Q1	2018	1235.203922
country	NG	2016	Q2	2018	1168.589553
country	NG	2016	Q3	2018	1019.402538
country	NG	2016	Q4	2018	1160.094737
country	NG	2016	Q1	2019	1265.592499
country	NG	2016	Q2	2019	1283.873625
state	1	2016	Q1	2018	22.43841
state	1	2016	Q2	2018	12.342905
state	1	2016	Q3	2018	15.341786
state	1	2016	Q4	2018	16.064453
state	1	2016	Q1	2019	17.573223
state	1	2016	Q2	2019	14.74134
state	2	2016	Q1	2018	11.297266
state	2	2016	Q2	2018	13.696864
state	2	2016	Q3	2018	7.402294
state	2	2016	Q4	2018	12.105997
state	2	2016	Q1	2019	13.043935
state	2	2016	Q2	2019	15.723132
state	3	2016	Q1	2018	17.731824
state	3	2016	Q2	2018	10.016328
state	3	2016	Q3	2018	21.600519
state	3	2016	Q4	2018	21.949972
state	3	2016	Q1	2019	21.62037
state	3	2016	Q2	2019	24.380926
state	4	2016	Q1	2018	15.797398
state	4	2016	Q2	2018	8.005805
state	4	2016	Q3	2018	15.84984
state	4	2016	Q4	2018	22.474027
state	4	2016	Q1	2019	20.115517
state	4	2016	Q2	2019	26.590306
state	5	2016	Q1	2018	7.209215
state	5	2016	Q2	2018	8.44068
state	5	2016	Q3	2018	4.351712
state	5	2016	Q4	2018	3.622957
state	5	2016	Q1	2019	6.347838
state	5	2016	Q2	2019	9.98647
state	6	2016	Q1	2018	5.503432
state	6	2016	Q2	2018	3.532041
state	6	2016	Q3	2018	4.323591
state	6	2016	Q4	2018	2.87659
state	6	2016	Q1	2019	2.932011
state	6	2016	Q2	2019	2.957456
state	7	2016	Q1	2018	14.018143
state	7	2016	Q2	2018	17.410748
state	7	2016	Q3	2018	19.098649
state	7	2016	Q4	2018	19.442226
state	7	2016	Q1	2019	12.904523
state	7	2016	Q2	2019	11.996511
state	8	2016	Q1	2018	10.012282
state	8	2016	Q2	2018	8.924534
state	8	2016	Q3	2018	7.134577
state	8	2016	Q4	2018	11.601184
state	8	2016	Q1	2019	13.397291
state	8	2016	Q2	2019	13.426824
state	9	2016	Q1	2018	15.410982
state	9	2016	Q2	2018	12.936415
state	9	2016	Q3	2018	12.75008
state	9	2016	Q4	2018	14.200165
state	9	2016	Q1	2019	20.160053
state	9	2016	Q2	2019	13.566906
state	10	2016	Q1	2018	55.5189
state	10	2016	Q2	2018	77.479122
state	10	2016	Q3	2018	49.869878
state	10	2016	Q4	2018	39.540371
state	10	2016	Q1	2019	88.282093
state	10	2016	Q2	2019	55.693975
state	11	2016	Q1	2018	8.047851
state	11	2016	Q2	2018	3.506451
state	11	2016	Q3	2018	4.757584
state	11	2016	Q4	2018	6.487895
state	11	2016	Q1	2019	5.535133
state	11	2016	Q2	2019	8.585653
state	12	2016	Q1	2018	39.343726
state	12	2016	Q2	2018	31.413584
state	12	2016	Q3	2018	33.953312
state	12	2016	Q4	2018	41.847899
state	12	2016	Q1	2019	47.528136
state	12	2016	Q2	2019	54.993644
state	13	2016	Q1	2018	3.729305
state	13	2016	Q2	2018	2.044128
state	13	2016	Q3	2018	2.470142
state	13	2016	Q4	2018	3.303299
state	13	2016	Q1	2019	3.959045
state	13	2016	Q2	2019	3.436571
state	14	2016	Q1	2018	16.518926
state	14	2016	Q2	2018	15.329667
state	14	2016	Q3	2018	20.79597
state	14	2016	Q4	2018	22.538896
state	14	2016	Q1	2019	18.925894
state	14	2016	Q2	2019	23.694098
state	15	2016	Q1	2018	41.779865
state	15	2016	Q2	2018	43.232921
state	15	2016	Q3	2018	28.00099
state	15	2016	Q4	2018	29.896292
state	15	2016	Q1	2019	10.295633
state	15	2016	Q2	2019	50.723179
state	16	2016	Q1	2018	9.221167
state	16	2016	Q2	2018	9.185967
state	16	2016	Q3	2018	5.016959
state	16	2016	Q4	2018	7.815466
state	16	2016	Q1	2019	11.388121
state	16	2016	Q2	2019	10.648904
state	17	2016	Q1	2018	16.024654
state	17	2016	Q2	2018	9.694111
state	17	2016	Q3	2018	11.343053
state	17	2016	Q4	2018	12.951139
state	17	2016	Q1	2019	2.1305
state	17	2016	Q2	2019	15.48285
state	18	2016	Q1	2018	2.682
state	18	2016	Q2	2018	1.0058
state	18	2016	Q3	2018	1.4395
state	18	2016	Q4	2018	1.597883
state	18	2016	Q1	2019	36.686537
state	18	2016	Q2	2019	1.135788
state	19	2016	Q1	2018	52.690852
state	19	2016	Q2	2018	39.051481
state	19	2016	Q3	2018	26.014154
state	19	2016	Q4	2018	29.250693
state	19	2016	Q1	2019	69.488656
state	19	2016	Q2	2019	37.489842
state	20	2016	Q1	2018	66.157124
state	20	2016	Q2	2018	45.714029
state	20	2016	Q3	2018	34.587793
state	20	2016	Q4	2018	54.921653
state	20	2016	Q1	2019	8.599079
state	20	2016	Q2	2019	63.641808
state	21	2016	Q1	2018	9.235812
state	21	2016	Q2	2018	5.595979
state	21	2016	Q3	2018	3.513962
state	21	2016	Q4	2018	6.681033
state	21	2016	Q1	2019	10.943219
state	21	2016	Q2	2019	7.556779
state	22	2016	Q1	2018	7.69377
state	22	2016	Q2	2018	5.988443
state	22	2016	Q3	2018	6.260504
state	22	2016	Q4	2018	15.148206
state	22	2016	Q1	2019	39.947702
state	22	2016	Q2	2019	11.057595
state	23	2016	Q1	2018	45.271234
state	23	2016	Q2	2018	43.604316
state	23	2016	Q3	2018	27.841997
state	23	2016	Q4	2018	38.182044
state	23	2016	Q1	2019	33.047117
state	23	2016	Q2	2019	33.909554
state	24	2016	Q1	2018	19.050573
state	24	2016	Q2	2018	27.134431
state	24	2016	Q3	2018	21.862812
state	24	2016	Q4	2018	23.713085
state	24	2016	Q1	2019	327.623143
state	24	2016	Q2	2019	33.622286
state	25	2016	Q1	2018	335.311694
state	25	2016	Q2	2018	330.888493
state	25	2016	Q3	2018	313.460834
state	25	2016	Q4	2018	336.967275
state	25	2016	Q1	2019	9.294997
state	25	2016	Q2	2019	354.521156
state	26	2016	Q1	2018	5.717423
state	26	2016	Q2	2018	3.164164
state	26	2016	Q3	2018	4.466778
state	26	2016	Q4	2018	4.619991
state	26	2016	Q1	2019	38.302453
state	26	2016	Q2	2019	9.302498
state	27	2016	Q1	2018	47.068922
state	27	2016	Q2	2018	47.435207
state	27	2016	Q3	2018	41.931189
state	27	2016	Q4	2018	50.106878
state	27	2016	Q1	2019	115.993886
state	27	2016	Q2	2019	40.957363
state	28	2016	Q1	2018	118.341519
state	28	2016	Q2	2018	112.114898
state	28	2016	Q3	2018	103.27305
state	28	2016	Q4	2018	112.268589
state	28	2016	Q1	2019	13.576448
state	28	2016	Q2	2019	101.992514
state	29	2016	Q1	2018	14.599754
state	29	2016	Q2	2018	12.316635
state	29	2016	Q3	2018	11.927443
state	29	2016	Q4	2018	11.538185
state	29	2016	Q1	2019	9.127003
state	29	2016	Q2	2019	15.429859
state	30	2016	Q1	2018	7.525062
state	30	2016	Q2	2018	6.897025
state	30	2016	Q3	2018	6.402586
state	30	2016	Q4	2018	9.2717
state	30	2016	Q1	2019	47.778644
state	30	2016	Q2	2019	11.476515
state	31	2016	Q1	2018	45.693344
state	31	2016	Q2	2018	47.951182
state	31	2016	Q3	2018	33.935497
state	31	2016	Q4	2018	45.233611
state	31	2016	Q1	2019	12.984115
state	31	2016	Q2	2019	52.471343
state	32	2016	Q1	2018	11.024326
state	32	2016	Q2	2018	10.318545
state	32	2016	Q3	2018	8.847977
state	32	2016	Q4	2018	14.100815
state	32	2016	Q1	2019	85.79825
state	32	2016	Q2	2019	16.114322
state	33	2016	Q1	2018	104.141445
state	33	2016	Q2	2018	104.624044
state	33	2016	Q3	2018	83.244551
state	33	2016	Q4	2018	87.879353
state	33	2016	Q1	2019	18.685557
state	33	2016	Q2	2019	96.71489
state	34	2016	Q1	2018	11.033891
state	34	2016	Q2	2018	19.523038
state	34	2016	Q3	2018	11.926343
state	34	2016	Q4	2018	13.075002
state	34	2016	Q1	2019	3.692469
state	34	2016	Q2	2019	18.56409
state	35	2016	Q1	2018	5.123241
state	35	2016	Q2	2018	1.850492
state	35	2016	Q3	2018	2.125999
state	35	2016	Q4	2018	2.579981
state	35	2016	Q1	2019	1.147
state	35	2016	Q2	2019	4.79682
state	36	2016	Q1	2018	1.274812
state	36	2016	Q2	2018	1.851712
state	36	2016	Q3	2018	1.292886
state	36	2016	Q4	2018	1.951999
state	36	2016	Q1	2019	16.464177
state	36	2016	Q2	2019	2.55085
state	37	2016	Q1	2018	15.963778
state	37	2016	Q2	2018	14.367368
state	37	2016	Q3	2018	10.985747
state	37	2016	Q4	2018	12.287933
state	37	2016	Q1	2019	50.272731
state	37	2016	Q2	2019	13.939008
\.


--
-- Name: automative_gas_oil_volumes automative_gas_oil_volumes_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.automative_gas_oil_volumes
    ADD CONSTRAINT automative_gas_oil_volumes_pkey PRIMARY KEY (geo_level, geo_code, geo_version, quarter, year);


--
-- PostgreSQL database dump complete
--
