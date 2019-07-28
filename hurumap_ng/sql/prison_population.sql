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

ALTER TABLE IF EXISTS ONLY public.prison_population DROP CONSTRAINT IF EXISTS prison_population_pkey;
DROP TABLE IF EXISTS public.prison_population;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: prison_population; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.prison_population (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: prison_population; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.prison_population (geo_level, geo_code, geo_version, year, gender, total) FROM stdin;
country	NG	2016	2012	Female	975
country	NG	2016	2012	Male	51161
country	NG	2016	2013	Female	869
country	NG	2016	2013	Male	54151
country	NG	2016	2014	Female	1103
country	NG	2016	2014	Male	54955
country	NG	2016	2015	Female	1365
country	NG	2016	2015	Male	63668
country	NG	2016	2016	Female	1357
country	NG	2016	2016	Male	67329
state	1	2016	2012	Female	53
state	1	2016	2012	Male	1232
state	1	2016	2013	Female	59
state	1	2016	2013	Male	1221
state	1	2016	2014	Female	86
state	1	2016	2014	Male	1167
state	1	2016	2015	Female	92
state	1	2016	2015	Male	1444
state	1	2016	2016	Female	73
state	1	2016	2016	Male	1550
state	2	2016	2012	Female	27
state	2	2016	2012	Male	871
state	2	2016	2013	Female	17
state	2	2016	2013	Male	2163
state	2	2016	2014	Female	10
state	2	2016	2014	Male	1536
state	2	2016	2015	Female	16
state	2	2016	2015	Male	2261
state	2	2016	2016	Female	24
state	2	2016	2016	Male	2028
state	3	2016	2012	Female	30
state	3	2016	2012	Male	2004
state	3	2016	2013	Female	59
state	3	2016	2013	Male	1442
state	3	2016	2014	Female	97
state	3	2016	2014	Male	1575
state	3	2016	2015	Female	102
state	3	2016	2015	Male	1546
state	3	2016	2016	Female	103
state	3	2016	2016	Male	1749
state	4	2016	2012	Female	49
state	4	2016	2012	Male	1293
state	4	2016	2013	Female	27
state	4	2016	2013	Male	1336
state	4	2016	2014	Female	42
state	4	2016	2014	Male	1404
state	4	2016	2015	Female	37
state	4	2016	2015	Male	1487
state	4	2016	2016	Female	37
state	4	2016	2016	Male	1579
state	5	2016	2012	Female	28
state	5	2016	2012	Male	1271
state	5	2016	2013	Female	16
state	5	2016	2013	Male	1549
state	5	2016	2014	Female	16
state	5	2016	2014	Male	2088
state	5	2016	2015	Female	17
state	5	2016	2015	Male	1935
state	5	2016	2016	Female	20
state	5	2016	2016	Male	1956
state	6	2016	2013	Female	4
state	6	2016	2013	Male	360
state	6	2016	2014	Male	410
state	6	2016	2015	Male	450
state	6	2016	2016	Female	12
state	6	2016	2016	Male	573
state	7	2016	2012	Female	12
state	7	2016	2012	Male	1281
state	7	2016	2013	Female	18
state	7	2016	2013	Male	1158
state	7	2016	2014	Female	17
state	7	2016	2014	Male	1034
state	7	2016	2015	Female	18
state	7	2016	2015	Male	1189
state	7	2016	2016	Female	37
state	7	2016	2016	Male	1294
state	8	2016	2012	Female	10
state	8	2016	2012	Male	873
state	8	2016	2013	Female	8
state	8	2016	2013	Male	541
state	8	2016	2014	Female	6
state	8	2016	2014	Male	515
state	8	2016	2015	Female	6
state	8	2016	2015	Male	514
state	8	2016	2016	Female	29
state	8	2016	2016	Male	1447
state	9	2016	2012	Female	3
state	9	2016	2012	Male	1297
state	9	2016	2013	Female	14
state	9	2016	2013	Male	945
state	9	2016	2014	Female	21
state	9	2016	2014	Male	1035
state	9	2016	2015	Female	22
state	9	2016	2015	Male	1163
state	9	2016	2016	Female	28
state	9	2016	2016	Male	1158
state	10	2016	2012	Female	17
state	10	2016	2012	Male	956
state	10	2016	2013	Female	46
state	10	2016	2013	Male	2269
state	10	2016	2014	Female	50
state	10	2016	2014	Male	2448
state	10	2016	2015	Female	60
state	10	2016	2015	Male	2774
state	10	2016	2016	Female	52
state	10	2016	2016	Male	3184
state	11	2016	2012	Female	57
state	11	2016	2012	Male	2105
state	11	2016	2013	Female	3
state	11	2016	2013	Male	820
state	11	2016	2014	Female	33
state	11	2016	2014	Male	911
state	11	2016	2015	Female	34
state	11	2016	2015	Male	1072
state	11	2016	2016	Female	30
state	11	2016	2016	Male	1075
state	12	2016	2012	Female	14
state	12	2016	2012	Male	907
state	12	2016	2013	Female	60
state	12	2016	2013	Male	2352
state	12	2016	2014	Female	53
state	12	2016	2014	Male	2388
state	12	2016	2015	Female	58
state	12	2016	2015	Male	2764
state	12	2016	2016	Female	46
state	12	2016	2016	Male	2707
state	13	2016	2012	Female	43
state	13	2016	2012	Male	2008
state	13	2016	2013	Female	6
state	13	2016	2013	Male	381
state	13	2016	2014	Female	4
state	13	2016	2014	Male	215
state	13	2016	2015	Female	6
state	13	2016	2015	Male	429
state	13	2016	2016	Female	5
state	13	2016	2016	Male	439
state	14	2016	2012	Female	9
state	14	2016	2012	Male	333
state	14	2016	2013	Female	36
state	14	2016	2013	Male	1891
state	14	2016	2014	Female	50
state	14	2016	2014	Male	2069
state	14	2016	2015	Female	57
state	14	2016	2015	Male	2143
state	14	2016	2016	Female	77
state	14	2016	2016	Male	2273
state	15	2016	2012	Female	5
state	15	2016	2012	Male	781
state	15	2016	2013	Female	18
state	15	2016	2013	Male	1055
state	15	2016	2014	Female	27
state	15	2016	2014	Male	1269
state	15	2016	2015	Female	34
state	15	2016	2015	Male	1271
state	15	2016	2016	Female	38
state	15	2016	2016	Male	1345
state	16	2016	2012	Female	47
state	16	2016	2012	Male	1945
state	16	2016	2013	Female	16
state	16	2016	2013	Male	1671
state	16	2016	2014	Female	13
state	16	2016	2014	Male	1319
state	16	2016	2015	Female	21
state	16	2016	2015	Male	1528
state	16	2016	2016	Female	11
state	16	2016	2016	Male	1451
state	17	2016	2012	Female	10
state	17	2016	2012	Male	978
state	17	2016	2013	Female	49
state	17	2016	2013	Male	2093
state	17	2016	2014	Female	46
state	17	2016	2014	Male	2128
state	17	2016	2015	Female	50
state	17	2016	2015	Male	2435
state	17	2016	2016	Female	50
state	17	2016	2016	Male	2577
state	18	2016	2012	Female	46
state	18	2016	2012	Male	1973
state	18	2016	2013	Female	10
state	18	2016	2013	Male	814
state	18	2016	2014	Female	16
state	18	2016	2014	Male	780
state	18	2016	2015	Female	12
state	18	2016	2015	Male	991
state	18	2016	2016	Female	8
state	18	2016	2016	Male	1129
state	19	2016	2012	Female	12
state	19	2016	2012	Male	770
state	19	2016	2013	Female	16
state	19	2016	2013	Male	2380
state	19	2016	2014	Female	23
state	19	2016	2014	Male	2345
state	19	2016	2015	Female	18
state	19	2016	2015	Male	2702
state	19	2016	2016	Female	18
state	19	2016	2016	Male	2606
state	20	2016	2012	Female	26
state	20	2016	2012	Male	2438
state	20	2016	2013	Female	41
state	20	2016	2013	Male	3092
state	20	2016	2014	Female	32
state	20	2016	2014	Male	2935
state	20	2016	2015	Female	65
state	20	2016	2015	Male	4133
state	20	2016	2016	Female	58
state	20	2016	2016	Male	4125
state	21	2016	2012	Female	48
state	21	2016	2012	Male	3013
state	21	2016	2013	Female	19
state	21	2016	2013	Male	1482
state	21	2016	2014	Female	23
state	21	2016	2014	Male	1559
state	21	2016	2015	Female	21
state	21	2016	2015	Male	1646
state	21	2016	2016	Female	26
state	21	2016	2016	Male	2041
state	22	2016	2012	Female	26
state	22	2016	2012	Male	1371
state	22	2016	2013	Female	17
state	22	2016	2013	Male	1161
state	22	2016	2014	Female	16
state	22	2016	2014	Male	1185
state	22	2016	2015	Female	21
state	22	2016	2015	Male	1340
state	22	2016	2016	Female	9
state	22	2016	2016	Male	1431
state	23	2016	2012	Female	24
state	23	2016	2012	Male	948
state	23	2016	2013	Female	3
state	23	2016	2013	Male	487
state	23	2016	2014	Male	410
state	23	2016	2015	Female	1
state	23	2016	2015	Male	534
state	23	2016	2016	Female	2
state	23	2016	2016	Male	661
state	24	2016	2012	Female	4
state	24	2016	2012	Male	357
state	24	2016	2013	Female	5
state	24	2016	2013	Male	850
state	24	2016	2014	Female	10
state	24	2016	2014	Male	778
state	24	2016	2015	Female	10
state	24	2016	2015	Male	902
state	24	2016	2016	Female	7
state	24	2016	2016	Male	877
state	25	2016	2012	Female	3
state	25	2016	2012	Male	523
state	25	2016	2013	Female	235
state	25	2016	2013	Male	5063
state	25	2016	2014	Female	200
state	25	2016	2014	Male	5086
state	25	2016	2015	Female	321
state	25	2016	2015	Male	5967
state	25	2016	2016	Female	267
state	25	2016	2016	Male	7129
state	26	2016	2012	Female	169
state	26	2016	2012	Male	5141
state	26	2016	2013	Female	4
state	26	2016	2013	Male	1190
state	26	2016	2014	Female	20
state	26	2016	2014	Male	1301
state	26	2016	2015	Female	20
state	26	2016	2015	Male	1393
state	26	2016	2016	Female	22
state	26	2016	2016	Male	1668
state	27	2016	2012	Female	8
state	27	2016	2012	Male	1203
state	27	2016	2013	Female	7
state	27	2016	2013	Male	1085
state	27	2016	2014	Female	10
state	27	2016	2014	Male	1315
state	27	2016	2015	Female	11
state	27	2016	2015	Male	1425
state	27	2016	2016	Female	17
state	27	2016	2016	Male	1319
state	28	2016	2012	Female	2
state	28	2016	2012	Male	992
state	28	2016	2013	Female	32
state	28	2016	2013	Male	2273
state	28	2016	2014	Female	30
state	28	2016	2014	Male	2555
state	28	2016	2015	Female	51
state	28	2016	2015	Male	2985
state	28	2016	2016	Female	61
state	28	2016	2016	Male	2904
state	29	2016	2012	Female	36
state	29	2016	2012	Male	2156
state	29	2016	2013	Female	22
state	29	2016	2013	Male	908
state	29	2016	2014	Female	26
state	29	2016	2014	Male	1014
state	29	2016	2015	Female	26
state	29	2016	2015	Male	1024
state	29	2016	2016	Female	29
state	29	2016	2016	Male	1255
state	30	2016	2012	Female	17
state	30	2016	2012	Male	999
state	30	2016	2013	Female	12
state	30	2016	2013	Male	723
state	30	2016	2014	Female	14
state	30	2016	2014	Male	696
state	30	2016	2015	Female	12
state	30	2016	2015	Male	639
state	30	2016	2016	Female	11
state	30	2016	2016	Male	850
state	31	2016	2012	Female	13
state	31	2016	2012	Male	643
state	31	2016	2013	Female	25
state	31	2016	2013	Male	1340
state	31	2016	2014	Female	20
state	31	2016	2014	Male	1348
state	31	2016	2015	Female	22
state	31	2016	2015	Male	1463
state	31	2016	2016	Female	16
state	31	2016	2016	Male	1460
state	32	2016	2012	Female	17
state	32	2016	2012	Male	1192
state	32	2016	2013	Female	10
state	32	2016	2013	Male	1045
state	32	2016	2014	Female	7
state	32	2016	2014	Male	1080
state	32	2016	2015	Female	5
state	32	2016	2015	Male	1192
state	32	2016	2016	Female	12
state	32	2016	2016	Male	1487
state	33	2016	2012	Female	6
state	33	2016	2012	Male	1007
state	33	2016	2013	Female	55
state	33	2016	2013	Male	3325
state	33	2016	2014	Female	54
state	33	2016	2014	Male	3426
state	33	2016	2015	Female	72
state	33	2016	2015	Male	4833
state	33	2016	2016	Female	78
state	33	2016	2016	Male	4346
state	34	2016	2012	Female	63
state	34	2016	2012	Male	3537
state	34	2016	2013	Female	25
state	34	2016	2013	Male	960
state	34	2016	2014	Female	8
state	34	2016	2014	Male	953
state	34	2016	2015	Female	20
state	34	2016	2015	Male	956
state	34	2016	2016	Female	19
state	34	2016	2016	Male	885
state	35	2016	2012	Female	19
state	35	2016	2012	Male	957
state	35	2016	2013	Female	18
state	35	2016	2013	Male	1225
state	35	2016	2014	Female	10
state	35	2016	2014	Male	1239
state	35	2016	2015	Female	13
state	35	2016	2015	Male	1462
state	35	2016	2016	Female	15
state	35	2016	2016	Male	1192
state	36	2016	2012	Female	16
state	36	2016	2012	Male	1297
state	36	2016	2013	Female	4
state	36	2016	2013	Male	475
state	36	2016	2014	Female	6
state	36	2016	2014	Male	486
state	36	2016	2015	Female	7
state	36	2016	2015	Male	513
state	36	2016	2016	Female	1
state	36	2016	2016	Male	590
state	37	2016	2012	Female	6
state	37	2016	2012	Male	509
state	37	2016	2013	Female	6
state	37	2016	2013	Male	1026
state	37	2016	2014	Female	7
state	37	2016	2014	Male	953
state	37	2016	2015	Female	7
state	37	2016	2015	Male	1104
state	37	2016	2016	Female	9
state	37	2016	2016	Male	989
\.


--
-- Name: prison_population prison_population_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prison_population
    ADD CONSTRAINT prison_population_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, gender);


--
-- PostgreSQL database dump complete
--
