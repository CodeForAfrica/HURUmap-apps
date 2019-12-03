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

DROP TABLE IF EXISTS public.external_domestic_debt;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: external_domestic_debt; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.external_domestic_debt (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    debt_type character varying(128) NOT NULL,
    year character varying(16),
    total double precision
);


--
-- Data for Name: external_domestic_debt; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.external_domestic_debt (geo_level, geo_code, geo_version, debt_type, year, total) FROM stdin;
state	1	2016	External	2011	33.264962
state	1	2016	External	2012	33.264962
state	1	2016	External	2013	34.180112
state	1	2016	External	2014	33.791421
state	1	2016	External	2015	41.502309
state	1	2016	External	2016	41.290439
state	1	2016	External	2017	101
state	1	2016	External	Jun-18	100
state	2	2016	External	2011	29.107435
state	2	2016	External	2012	29.107435
state	2	2016	External	2013	30.556441
state	2	2016	External	2014	46.775206
state	2	2016	External	2015	49.056441
state	2	2016	External	2016	83.731531
state	2	2016	External	2017	53.771281
state	2	2016	External	Jun-18	57.860542
state	3	2016	External	2011	62.648075
state	3	2016	External	2012	62.648075
state	3	2016	External	2013	61.84181
state	3	2016	External	2014	58.886641
state	3	2016	External	2015	52.717441
state	3	2016	External	2016	50.555649
state	3	2016	External	2017	51.109045
state	3	2016	External	Jun-18	48.385867
state	4	2016	External	2011	24.44647
state	4	2016	External	2012	24.44647
state	4	2016	External	2013	30.323574
state	4	2016	External	2014	45.154626
state	4	2016	External	2015	60.781526
state	4	2016	External	2016	62.883387
state	4	2016	External	2017	85.417944
state	4	2016	External	Jun-18	107
state	5	2016	External	2011	63.428016
state	5	2016	External	2012	63.428016
state	5	2016	External	2013	70.582915
state	5	2016	External	2014	87.572429
state	5	2016	External	2015	85.335689
state	5	2016	External	2016	97.174751
state	5	2016	External	2017	107
state	5	2016	External	Jun-18	135
state	6	2016	External	2011	27.447347
state	6	2016	External	2012	27.447347
state	6	2016	External	2013	28.66216
state	6	2016	External	2014	34.832195
state	6	2016	External	2015	37.602856
state	6	2016	External	2016	39.252788
state	6	2016	External	2017	47.756176
state	6	2016	External	Jun-18	57.256211
state	7	2016	External	2011	26.580525
state	7	2016	External	2012	26.580525
state	7	2016	External	2013	30.722988
state	7	2016	External	2014	33.074189
state	7	2016	External	2015	35.700601
state	7	2016	External	2016	34.683474
state	7	2016	External	2017	35.249649
state	7	2016	External	Jun-18	34.750363
state	8	2016	External	2011	12.95725
state	8	2016	External	2012	12.95725
state	8	2016	External	2013	15.585332
state	8	2016	External	2014	23.067549
state	8	2016	External	2015	23.189858
state	8	2016	External	2016	22.068385
state	8	2016	External	2017	22.398373
state	8	2016	External	Jun-18	22.292486
state	9	2016	External	2011	108
state	9	2016	External	2012	108
state	9	2016	External	2013	122
state	9	2016	External	2014	141
state	9	2016	External	2015	136
state	9	2016	External	2016	115
state	9	2016	External	2017	169
state	9	2016	External	Jun-18	194
state	10	2016	External	2011	15.404872
state	10	2016	External	2012	15.404872
state	10	2016	External	2013	19.6658
state	10	2016	External	2014	24.23364
state	10	2016	External	2015	38.792422
state	10	2016	External	2016	42.318066
state	10	2016	External	2017	54.54137
state	10	2016	External	Jun-18	63.825839
state	11	2016	External	2011	41.193846
state	11	2016	External	2012	41.193846
state	11	2016	External	2013	43.314886
state	11	2016	External	2014	45.410518
state	11	2016	External	2015	47.1666
state	11	2016	External	2016	46.383284
state	11	2016	External	2017	62.496481
state	11	2016	External	Jun-18	67.901721
state	12	2016	External	2011	42.514651
state	12	2016	External	2012	42.514651
state	12	2016	External	2013	44.292718
state	12	2016	External	2014	123
state	12	2016	External	2015	168
state	12	2016	External	2016	184
state	12	2016	External	2017	214
state	12	2016	External	Jun-18	279
state	13	2016	External	2011	34.399022
state	13	2016	External	2012	34.399022
state	13	2016	External	2013	37.237967
state	13	2016	External	2014	46.452932
state	13	2016	External	2015	54.982558
state	13	2016	External	2016	56.877231
state	13	2016	External	2017	67.257881
state	13	2016	External	Jun-18	97.994771
state	14	2016	External	2011	44.895365
state	14	2016	External	2012	44.895365
state	14	2016	External	2013	53.166643
state	14	2016	External	2014	68.928599
state	14	2016	External	2015	71.828841
state	14	2016	External	2016	73.588934
state	14	2016	External	2017	116
state	14	2016	External	Jun-18	128
state	15	2016	External	2011	36.842711
state	15	2016	External	2012	36.842711
state	15	2016	External	2013	39.218574
state	15	2016	External	2014	36.636549
state	15	2016	External	2015	35.044756
state	15	2016	External	2016	32.810349
state	15	2016	External	2017	33.553731
state	15	2016	External	Jun-18	32.83343
state	16	2016	External	2011	28.372667
state	16	2016	External	2012	28.372667
state	16	2016	External	2013	33.652016
state	16	2016	External	2014	39.545599
state	16	2016	External	2015	39.822769
state	16	2016	External	2016	37.841651
state	16	2016	External	2017	38.754108
state	16	2016	External	Jun-18	38.500292
state	17	2016	External	2011	50.277216
state	17	2016	External	2012	50.277216
state	17	2016	External	2013	52.712924
state	17	2016	External	2014	52.949586
state	17	2016	External	2015	59.163843
state	17	2016	External	2016	60.217191
state	17	2016	External	2017	61.735029
state	17	2016	External	Jun-18	61.277994
state	18	2016	External	2011	27.7523
state	18	2016	External	2012	27.7523
state	18	2016	External	2013	35.846252
state	18	2016	External	2014	35.717806
state	18	2016	External	2015	34.085705
state	18	2016	External	2016	32.415951
state	18	2016	External	2017	33.198134
state	18	2016	External	Jun-18	32.800038
state	19	2016	External	2011	182
state	19	2016	External	2012	182
state	19	2016	External	2013	241
state	19	2016	External	2014	234
state	19	2016	External	2015	226
state	19	2016	External	2016	223
state	19	2016	External	2017	232
state	19	2016	External	Jun-18	233
state	20	2016	External	2011	59.777795
state	20	2016	External	2012	59.777795
state	20	2016	External	2013	63.897444
state	20	2016	External	2014	59.796931
state	20	2016	External	2015	57.612299
state	20	2016	External	2016	58.247339
state	20	2016	External	2017	65.971489
state	20	2016	External	Jun-18	65.047427
state	21	2016	External	2011	74.138586
state	21	2016	External	2012	74.138586
state	21	2016	External	2013	73.725663
state	21	2016	External	2014	78.925362
state	21	2016	External	2015	72.153818
state	21	2016	External	2016	68.060335
state	21	2016	External	2017	67.938633
state	21	2016	External	Jun-18	64.757964
state	22	2016	External	2011	48.308817
state	22	2016	External	2012	48.308817
state	22	2016	External	2013	46.855525
state	22	2016	External	2014	43.786054
state	22	2016	External	2015	45.275904
state	22	2016	External	2016	46.101478
state	22	2016	External	2017	47.332467
state	22	2016	External	Jun-18	46.75978
state	23	2016	External	2011	34.303342
state	23	2016	External	2012	34.303342
state	23	2016	External	2013	33.960974
state	23	2016	External	2014	35.787836
state	23	2016	External	2015	33.632107
state	23	2016	External	2016	31.94742
state	23	2016	External	2017	32.719348
state	23	2016	External	Jun-18	32.371906
state	24	2016	External	2011	43.98932
state	24	2016	External	2012	43.98932
state	24	2016	External	2013	45.871785
state	24	2016	External	2014	52.722199
state	24	2016	External	2015	51.032663
state	24	2016	External	2016	48.975899
state	24	2016	External	2017	50.202211
state	24	2016	External	Jun-18	49.871457
state	25	2016	External	2011	492
state	25	2016	External	2012	492
state	25	2016	External	2013	938
state	25	2016	External	2014	1170
state	25	2016	External	2015	1210
state	25	2016	External	2016	1380
state	25	2016	External	2017	1450
state	25	2016	External	Jun-18	1450
state	100	2016	External	2011	37.062759
state	100	2016	External	2012	37.062759
state	100	2016	External	2013	47.64808
state	100	2016	External	2014	49.942697
state	100	2016	External	2015	53.066147
state	100	2016	External	2016	56.021853
state	100	2016	External	2017	36.274714
state	100	2016	External	Jun-18	61.495066
state	27	2016	External	2011	28.142519
state	27	2016	External	2012	28.142519
state	27	2016	External	2013	31.750343
state	27	2016	External	2014	44.750438
state	27	2016	External	2015	44.780718
state	27	2016	External	2016	45.34953
state	27	2016	External	2017	46.021892
state	27	2016	External	Jun-18	55.747996
state	28	2016	External	2011	94.57513
state	28	2016	External	2012	94.57513
state	28	2016	External	2013	117
state	28	2016	External	2014	109
state	28	2016	External	2015	103
state	28	2016	External	2016	103
state	28	2016	External	2017	106
state	28	2016	External	Jun-18	105
state	29	2016	External	2011	50.022173
state	29	2016	External	2012	50.022173
state	29	2016	External	2013	52.134727
state	29	2016	External	2014	52.688524
state	29	2016	External	2015	52.089561
state	29	2016	External	2016	49.527401
state	29	2016	External	2017	50.192398
state	29	2016	External	Jun-18	81.417459
state	30	2016	External	2011	61.489569
state	30	2016	External	2012	61.489569
state	30	2016	External	2013	61.838048
state	30	2016	External	2014	74.053294
state	30	2016	External	2015	76.896131
state	30	2016	External	2016	70.533846
state	30	2016	External	2017	96.347433
state	30	2016	External	Jun-18	102
state	31	2016	External	2011	78.08538
state	31	2016	External	2012	78.08538
state	31	2016	External	2013	80.201551
state	31	2016	External	2014	72.35059
state	31	2016	External	2015	66.754605
state	31	2016	External	2016	71.913438
state	31	2016	External	2017	84.969189
state	31	2016	External	Jun-18	106
state	32	2016	External	2011	20.433976
state	32	2016	External	2012	20.433976
state	32	2016	External	2013	22.674217
state	32	2016	External	2014	30.94758
state	32	2016	External	2015	30.474422
state	32	2016	External	2016	29.139067
state	32	2016	External	2017	29.731684
state	32	2016	External	Jun-18	29.696386
state	33	2016	External	2011	33.859588
state	33	2016	External	2012	33.859588
state	33	2016	External	2013	42.690634
state	33	2016	External	2014	44.725096
state	33	2016	External	2015	46.922404
state	33	2016	External	2016	48.256594
state	33	2016	External	2017	66.444317
state	33	2016	External	Jun-18	79.520401
state	34	2016	External	2011	40.093826
state	34	2016	External	2012	40.093826
state	34	2016	External	2013	44.11199
state	34	2016	External	2014	44.864819
state	34	2016	External	2015	41.946527
state	34	2016	External	2016	39.78568
state	34	2016	External	2017	40.787146
state	34	2016	External	Jun-18	40.225936
state	35	2016	External	2011	20.396408
state	35	2016	External	2012	20.396408
state	35	2016	External	2013	23.554327
state	35	2016	External	2014	22.780064
state	35	2016	External	2015	22.934478
state	35	2016	External	2016	21.926983
state	35	2016	External	2017	22.394567
state	35	2016	External	Jun-18	22.113312
state	36	2016	External	2011	31.188905
state	36	2016	External	2012	31.188905
state	36	2016	External	2013	33.03373
state	36	2016	External	2014	31.237619
state	36	2016	External	2015	30.45612
state	36	2016	External	2016	28.536279
state	36	2016	External	2017	29.229644
state	36	2016	External	Jun-18	28.496976
state	37	2016	External	2011	26.305193
state	37	2016	External	2012	26.305193
state	37	2016	External	2013	32.292717
state	37	2016	External	2014	35.547562
state	37	2016	External	2015	34.919653
state	37	2016	External	2016	33.614368
state	37	2016	External	2017	34.453628
state	37	2016	External	Jun-18	34.24494
state	1	2016	Domestic	2011	24200
state	1	2016	Domestic	2012	8660
state	1	2016	Domestic	2013	31700
state	1	2016	Domestic	2014	25.126071
state	1	2016	Domestic	2015	33500
state	1	2016	Domestic	2016	53500
state	1	2016	Domestic	2017	53500
state	1	2016	Domestic	Jun-18	57500
state	2	2016	Domestic	2011	26000
state	2	2016	Domestic	2012	24300
state	2	2016	Domestic	2013	16000
state	2	2016	Domestic	2014	26400
state	2	2016	Domestic	2015	47200
state	2	2016	Domestic	2016	62200
state	2	2016	Domestic	2017	62200
state	2	2016	Domestic	Jun-18	67500
state	3	2016	Domestic	2011	41300
state	3	2016	Domestic	2012	109000
state	3	2016	Domestic	2013	125000
state	3	2016	Domestic	2014	81800
state	3	2016	Domestic	2015	148000
state	3	2016	Domestic	2016	155000
state	3	2016	Domestic	2017	155000
state	3	2016	Domestic	Jun-18	180000
state	4	2016	Domestic	2011	6400
state	4	2016	Domestic	2012	14300
state	4	2016	Domestic	2013	3030
state	4	2016	Domestic	2014	2880
state	4	2016	Domestic	2015	3580
state	4	2016	Domestic	2016	3990
state	4	2016	Domestic	2017	3990
state	4	2016	Domestic	Jun-18	2610
state	5	2016	Domestic	2011	18300
state	5	2016	Domestic	2012	18800
state	5	2016	Domestic	2013	16800
state	5	2016	Domestic	2014	28000
state	5	2016	Domestic	2015	57700
state	5	2016	Domestic	2016	70000
state	5	2016	Domestic	2017	70000
state	5	2016	Domestic	Jun-18	78100
state	6	2016	Domestic	2011	163000
state	6	2016	Domestic	2012	222000
state	6	2016	Domestic	2013	69500
state	6	2016	Domestic	2014	91700
state	6	2016	Domestic	2015	103000
state	6	2016	Domestic	2016	140000
state	6	2016	Domestic	2017	140000
state	6	2016	Domestic	Jun-18	123000
state	7	2016	Domestic	2011	16600
state	7	2016	Domestic	2012	24400
state	7	2016	Domestic	2013	25000
state	7	2016	Domestic	2014	17800
state	7	2016	Domestic	2015	39900
state	7	2016	Domestic	2016	63500
state	7	2016	Domestic	2017	63500
state	7	2016	Domestic	Jun-18	92900
state	8	2016	Domestic	2011	1680
state	8	2016	Domestic	2012	24400
state	8	2016	Domestic	2013	23900
state	8	2016	Domestic	2014	22300
state	8	2016	Domestic	2015	22300
state	8	2016	Domestic	2016	30900
state	8	2016	Domestic	2017	30900
state	8	2016	Domestic	Jun-18	77500
state	9	2016	Domestic	2011	90800
state	9	2016	Domestic	2012	90900
state	9	2016	Domestic	2013	116000
state	9	2016	Domestic	2014	107000
state	9	2016	Domestic	2015	116000
state	9	2016	Domestic	2016	128000
state	9	2016	Domestic	2017	128000
state	9	2016	Domestic	Jun-18	125000
state	10	2016	Domestic	2011	90800
state	10	2016	Domestic	2012	83700
state	10	2016	Domestic	2013	102000
state	10	2016	Domestic	2014	212000
state	10	2016	Domestic	2015	321000
state	10	2016	Domestic	2016	241000
state	10	2016	Domestic	2017	241000
state	10	2016	Domestic	Jun-18	223000
state	11	2016	Domestic	2011	40200
state	11	2016	Domestic	2012	28900
state	11	2016	Domestic	2013	13200
state	11	2016	Domestic	2014	6950
state	11	2016	Domestic	2015	34200
state	11	2016	Domestic	2016	28100
state	11	2016	Domestic	2017	28100
state	11	2016	Domestic	Jun-18	34500
state	12	2016	Domestic	2011	39000
state	12	2016	Domestic	2012	62300
state	12	2016	Domestic	2013	48200
state	12	2016	Domestic	2014	40000
state	12	2016	Domestic	2015	46300
state	12	2016	Domestic	2016	45100
state	12	2016	Domestic	2017	45100
state	12	2016	Domestic	Jun-18	69000
state	13	2016	Domestic	2011	23700
state	13	2016	Domestic	2012	39600
state	13	2016	Domestic	2013	22400
state	13	2016	Domestic	2014	30500
state	13	2016	Domestic	2015	52600
state	13	2016	Domestic	2016	85000
state	13	2016	Domestic	2017	85000
state	13	2016	Domestic	Jun-18	118000
state	14	2016	Domestic	2011	10900
state	14	2016	Domestic	2012	17400
state	14	2016	Domestic	2013	12100
state	14	2016	Domestic	2014	22600
state	14	2016	Domestic	2015	37600
state	14	2016	Domestic	2016	48400
state	14	2016	Domestic	2017	48400
state	14	2016	Domestic	Jun-18	61200
state	15	2016	Domestic	2011	85600
state	15	2016	Domestic	2012	124000
state	15	2016	Domestic	2013	84300
state	15	2016	Domestic	2014	110000
state	15	2016	Domestic	2015	134000
state	15	2016	Domestic	2016	153000
state	15	2016	Domestic	2017	153000
state	15	2016	Domestic	Jun-18	94100
state	16	2016	Domestic	2011	7170
state	16	2016	Domestic	2012	30200
state	16	2016	Domestic	2013	28000
state	16	2016	Domestic	2014	29600
state	16	2016	Domestic	2015	53500
state	16	2016	Domestic	2016	48300
state	16	2016	Domestic	2017	48300
state	16	2016	Domestic	Jun-18	41900
state	17	2016	Domestic	2011	25400
state	17	2016	Domestic	2012	16700
state	17	2016	Domestic	2013	12600
state	17	2016	Domestic	2014	28900
state	17	2016	Domestic	2015	71700
state	17	2016	Domestic	2016	93300
state	17	2016	Domestic	2017	93300
state	17	2016	Domestic	Jun-18	85400
state	18	2016	Domestic	2011	1590
state	18	2016	Domestic	2012	2080
state	18	2016	Domestic	2013	1610
state	18	2016	Domestic	2014	1570
state	18	2016	Domestic	2015	22200
state	18	2016	Domestic	2016	19000
state	18	2016	Domestic	2017	23100
state	18	2016	Domestic	Jun-18	34500
state	19	2016	Domestic	2011	34800
state	19	2016	Domestic	2012	22900
state	19	2016	Domestic	2013	9830
state	19	2016	Domestic	2014	16700
state	19	2016	Domestic	2015	49800
state	19	2016	Domestic	2016	63300
state	19	2016	Domestic	2017	63300
state	19	2016	Domestic	Jun-18	75600
state	20	2016	Domestic	2011	5870
state	20	2016	Domestic	2012	5870
state	20	2016	Domestic	2013	32200
state	20	2016	Domestic	2014	31400
state	20	2016	Domestic	2015	65000
state	20	2016	Domestic	2016	93700
state	20	2016	Domestic	2017	93700
state	20	2016	Domestic	Jun-18	95400
state	21	2016	Domestic	2011	2060
state	21	2016	Domestic	2012	919
state	21	2016	Domestic	2013	270
state	21	2016	Domestic	2014	587
state	21	2016	Domestic	2015	11500
state	21	2016	Domestic	2016	21400
state	21	2016	Domestic	2017	22300
state	21	2016	Domestic	Jun-18	30900
state	22	2016	Domestic	2011	7290
state	22	2016	Domestic	2012	2720
state	22	2016	Domestic	2013	854
state	22	2016	Domestic	2014	17300
state	22	2016	Domestic	2015	63800
state	22	2016	Domestic	2016	20700
state	22	2016	Domestic	2017	57900
state	22	2016	Domestic	Jun-18	53900
state	23	2016	Domestic	2011	34100
state	23	2016	Domestic	2012	15000
state	23	2016	Domestic	2013	7110
state	23	2016	Domestic	2014	10300
state	23	2016	Domestic	2015	42000
state	23	2016	Domestic	2016	71400
state	23	2016	Domestic	2017	71400
state	23	2016	Domestic	Jun-18	114000
state	24	2016	Domestic	2011	25300
state	24	2016	Domestic	2012	29800
state	24	2016	Domestic	2013	22400
state	24	2016	Domestic	2014	22100
state	24	2016	Domestic	2015	32000
state	24	2016	Domestic	2016	38100
state	24	2016	Domestic	2017	38100
state	24	2016	Domestic	Jun-18	40500
state	25	2016	Domestic	2011	158000
state	25	2016	Domestic	2012	230000
state	25	2016	Domestic	2013	279000
state	25	2016	Domestic	2014	268000
state	25	2016	Domestic	2015	219000
state	25	2016	Domestic	2016	312000
state	25	2016	Domestic	2017	312000
state	25	2016	Domestic	Jun-18	517000
state	100	2016	Domestic	2011	5340
state	100	2016	Domestic	2012	7100
state	100	2016	Domestic	2013	28800
state	100	2016	Domestic	2014	34500
state	100	2016	Domestic	2015	40600
state	100	2016	Domestic	2016	59000
state	100	2016	Domestic	2017	59000
state	100	2016	Domestic	Jun-18	70300
state	27	2016	Domestic	2011	17000
state	27	2016	Domestic	2012	17800
state	27	2016	Domestic	2013	24700
state	27	2016	Domestic	2014	23500
state	27	2016	Domestic	2015	21500
state	27	2016	Domestic	2016	32000
state	27	2016	Domestic	2017	32000
state	27	2016	Domestic	Jun-18	40300
state	28	2016	Domestic	2011	30100
state	28	2016	Domestic	2012	45700
state	28	2016	Domestic	2013	58400
state	28	2016	Domestic	2014	70200
state	28	2016	Domestic	2015	75900
state	28	2016	Domestic	2016	75900
state	28	2016	Domestic	2017	75900
state	28	2016	Domestic	Jun-18	105000
state	29	2016	Domestic	2011	48400
state	29	2016	Domestic	2012	36500
state	29	2016	Domestic	2013	30900
state	29	2016	Domestic	2014	19300
state	29	2016	Domestic	2015	26600
state	29	2016	Domestic	2016	53200
state	29	2016	Domestic	2017	53200
state	29	2016	Domestic	Jun-18	50600
state	30	2016	Domestic	2011	5460
state	30	2016	Domestic	2012	38600
state	30	2016	Domestic	2013	41400
state	30	2016	Domestic	2014	37800
state	30	2016	Domestic	2015	145000
state	30	2016	Domestic	2016	147000
state	30	2016	Domestic	2017	147000
state	30	2016	Domestic	Jun-18	136000
state	31	2016	Domestic	2011	4810
state	31	2016	Domestic	2012	11700
state	31	2016	Domestic	2013	19100
state	31	2016	Domestic	2014	12900
state	31	2016	Domestic	2015	47400
state	31	2016	Domestic	2016	116000
state	31	2016	Domestic	2017	116000
state	31	2016	Domestic	Jun-18	88000
state	32	2016	Domestic	2011	20900
state	32	2016	Domestic	2012	24100
state	32	2016	Domestic	2013	52400
state	32	2016	Domestic	2014	78400
state	32	2016	Domestic	2015	96200
state	32	2016	Domestic	2016	110000
state	32	2016	Domestic	2017	110000
state	32	2016	Domestic	Jun-18	122000
state	33	2016	Domestic	2011	84000
state	33	2016	Domestic	2012	81500
state	33	2016	Domestic	2013	130000
state	33	2016	Domestic	2014	91800
state	33	2016	Domestic	2015	135000
state	33	2016	Domestic	2016	142000
state	33	2016	Domestic	2017	142000
state	33	2016	Domestic	Jun-18	191000
state	34	2016	Domestic	2011	4900
state	34	2016	Domestic	2012	3000
state	34	2016	Domestic	2013	5740
state	34	2016	Domestic	2014	7650
state	34	2016	Domestic	2015	11700
state	34	2016	Domestic	2016	22500
state	34	2016	Domestic	2017	22500
state	34	2016	Domestic	Jun-18	24900
state	35	2016	Domestic	2011	18000
state	35	2016	Domestic	2012	16700
state	35	2016	Domestic	2013	13900
state	35	2016	Domestic	2014	14400
state	35	2016	Domestic	2015	27600
state	35	2016	Domestic	2016	38900
state	35	2016	Domestic	2017	38900
state	35	2016	Domestic	Jun-18	59600
state	36	2016	Domestic	2011	2090
state	36	2016	Domestic	2012	3990
state	36	2016	Domestic	2013	1120
state	36	2016	Domestic	2014	1640
state	36	2016	Domestic	2015	3870
state	36	2016	Domestic	2016	13600
state	36	2016	Domestic	2017	13600
state	36	2016	Domestic	Jun-18	27300
state	37	2016	Domestic	2011	13000
state	37	2016	Domestic	2012	15500
state	37	2016	Domestic	2013	28200
state	37	2016	Domestic	2014	11100
state	37	2016	Domestic	2015	46300
state	37	2016	Domestic	2016	58300
state	37	2016	Domestic	2017	58300
state	37	2016	Domestic	Jun-18	69900
country	NG	2016	Domestic	Q1 - 2019	3972784.37134
state	1	2016	Domestic	Q1 - 2019	62849.59963
state	2	2016	Domestic	Q1 - 2019	97153.96507
state	3	2016	Domestic	Q1 - 2019	199768.69881
state	4	2016	Domestic	Q1 - 2019	33490.66854
state	5	2016	Domestic	Q1 - 2019	93319.62705
state	6	2016	Domestic	Q1 - 2019	133339.37559
state	7	2016	Domestic	Q1 - 2019	96905.50259
state	8	2016	Domestic	Q1 - 2019	78259.33491
state	9	2016	Domestic	Q1 - 2019	167252.34114
state	10	2016	Domestic	Q1 - 2019	223442.25710
state	11	2016	Domestic	Q1 - 2019	55597.35231
state	12	2016	Domestic	Q1 - 2019	86367.40598
state	13	2016	Domestic	Q1 - 2019	118011.41481
state	14	2016	Domestic	Q1 - 2019	55882.99759
state	15	2016	Domestic	Q1 - 2019	163518.71491
state	16	2016	Domestic	Q1 - 2019	76894.51484
state	17	2016	Domestic	Q1 - 2019	97851.14917
state	18	2016	Domestic	Q1 - 2019	38227.15746
state	19	2016	Domestic	Q1 - 2019	93203.94796
state	20	2016	Domestic	Q1 - 2019	121305.20111
state	21	2016	Domestic	Q1 - 2019	67098.00867
state	22	2016	Domestic	Q1 - 2019	67037.45684
state	23	2016	Domestic	Q1 - 2019	96677.06621
state	24	2016	Domestic	Q1 - 2019	59576.71257
state	25	2016	Domestic	Q1 - 2019	542231.17476
state	26	2016	Domestic	Q1 - 2019	89953.61968
state	27	2016	Domestic	Q1 - 2019	43414.65354
state	28	2016	Domestic	Q1 - 2019	97090.11933
state	29	2016	Domestic	Q1 - 2019	56959.97071
state	30	2016	Domestic	Q1 - 2019	147702.86538
state	31	2016	Domestic	Q1 - 2019	94140.26174
state	32	2016	Domestic	Q1 - 2019	98585.86656
state	33	2016	Domestic	Q1 - 2019	225592.46915
state	34	2016	Domestic	Q1 - 2019	36571.74240
state	35	2016	Domestic	Q1 - 2019	68569.69998
state	36	2016	Domestic	Q1 - 2019	26990.63742
state	37	2016	Domestic	Q1 - 2019	61950.81982
\.


--
-- PostgreSQL database dump complete
--
