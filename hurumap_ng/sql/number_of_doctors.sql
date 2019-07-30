--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.number_of_doctors_year_sex DROP CONSTRAINT IF EXISTS pk_number_of_doctors_year_sex;
DROP TABLE IF EXISTS public.number_of_doctors_year_sex;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: number_of_doctors_year_sex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.number_of_doctors_year_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    number_of_doctors_sex character varying(10) NOT NULL,
    number_of_doctors_year character varying(10) NOT NULL,
    total integer
);


--
-- Data for Name: number_of_doctors_year_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.number_of_doctors_year_sex (geo_level, geo_code, geo_version, number_of_doctors_sex, number_of_doctors_year, total) FROM stdin;
country	NG	2016	Female	2015	11943
country	NG	2016	Male	2015	23061
country	NG	2016	Female	2016	13450
country	NG	2016	Male	2016	25938
country	NG	2016	Female	2017	13791
country	NG	2016	Male	2017	26121
state	1	2016	Female	2015	104
state	1	2016	Male	2015	214
state	1	2016	Female	2016	226
state	1	2016	Male	2016	679
state	1	2016	Female	2017	229
state	1	2016	Male	2017	688
state	2	2016	Female	2015	34
state	2	2016	Male	2015	175
state	2	2016	Female	2016	25
state	2	2016	Male	2016	136
state	2	2016	Female	2017	24
state	2	2016	Male	2017	136
state	3	2016	Female	2015	158
state	3	2016	Male	2015	596
state	3	2016	Female	2016	346
state	3	2016	Male	2016	348
state	3	2016	Female	2017	359
state	3	2016	Male	2017	359
state	4	2016	Female	2015	106
state	4	2016	Male	2015	378
state	4	2016	Female	2016	340
state	4	2016	Male	2016	682
state	4	2016	Female	2017	352
state	4	2016	Male	2017	685
state	5	2016	Female	2015	62
state	5	2016	Male	2015	264
state	5	2016	Female	2016	15
state	5	2016	Male	2016	173
state	5	2016	Female	2017	16
state	5	2016	Male	2017	184
state	6	2016	Female	2015	79
state	6	2016	Male	2015	269
state	6	2016	Female	2016	248
state	6	2016	Male	2016	263
state	6	2016	Female	2017	254
state	6	2016	Male	2017	264
state	7	2016	Female	2015	72
state	7	2016	Male	2015	293
state	7	2016	Female	2016	212
state	7	2016	Male	2016	371
state	7	2016	Female	2017	221
state	7	2016	Male	2017	377
state	8	2016	Female	2015	111
state	8	2016	Male	2015	361
state	8	2016	Female	2016	149
state	8	2016	Male	2016	327
state	8	2016	Female	2017	153
state	8	2016	Male	2017	325
state	9	2016	Female	2015	132
state	9	2016	Male	2015	474
state	9	2016	Female	2016	235
state	9	2016	Male	2016	470
state	9	2016	Female	2017	224
state	9	2016	Male	2017	473
state	10	2016	Female	2015	214
state	10	2016	Male	2015	1106
state	10	2016	Female	2016	317
state	10	2016	Male	2016	888
state	10	2016	Female	2017	333
state	10	2016	Male	2017	903
state	11	2016	Female	2015	89
state	11	2016	Male	2015	250
state	11	2016	Female	2016	122
state	11	2016	Male	2016	356
state	11	2016	Female	2017	124
state	11	2016	Male	2017	354
state	12	2016	Female	2015	796
state	12	2016	Male	2015	1526
state	12	2016	Female	2016	894
state	12	2016	Male	2016	2052
state	12	2016	Female	2017	927
state	12	2016	Male	2017	2065
state	13	2016	Female	2015	89
state	13	2016	Male	2015	406
state	13	2016	Female	2016	105
state	13	2016	Male	2016	424
state	13	2016	Female	2017	103
state	13	2016	Male	2017	415
state	14	2016	Female	2015	232
state	14	2016	Male	2015	788
state	14	2016	Female	2016	1117
state	14	2016	Male	2016	1303
state	14	2016	Female	2017	1144
state	14	2016	Male	2017	1290
state	15	2016	Female	2015	60
state	15	2016	Male	2015	298
state	15	2016	Female	2016	1368
state	15	2016	Male	2016	1521
state	15	2016	Female	2017	1398
state	15	2016	Male	2017	1416
state	16	2016	Female	2015	704
state	16	2016	Male	2015	1368
state	16	2016	Female	2016	23
state	16	2016	Male	2016	200
state	16	2016	Female	2017	26
state	16	2016	Male	2017	212
state	17	2016	Female	2015	24
state	17	2016	Male	2015	27
state	17	2016	Female	2016	150
state	17	2016	Male	2016	311
state	17	2016	Female	2017	158
state	17	2016	Male	2017	320
state	18	2016	Female	2015	46
state	18	2016	Male	2015	212
state	18	2016	Female	2016	8
state	18	2016	Male	2016	186
state	18	2016	Female	2017	10
state	18	2016	Male	2017	192
state	19	2016	Female	2015	445
state	19	2016	Male	2015	903
state	19	2016	Female	2016	404
state	19	2016	Male	2016	1399
state	19	2016	Female	2017	422
state	19	2016	Male	2017	1413
state	20	2016	Female	2015	375
state	20	2016	Male	2015	812
state	20	2016	Female	2016	311
state	20	2016	Male	2016	625
state	20	2016	Female	2017	325
state	20	2016	Male	2017	632
state	21	2016	Female	2015	69
state	21	2016	Male	2015	136
state	21	2016	Female	2016	25
state	21	2016	Male	2016	124
state	21	2016	Female	2017	25
state	21	2016	Male	2017	122
state	22	2016	Female	2015	41
state	22	2016	Male	2015	139
state	22	2016	Female	2016	19
state	22	2016	Male	2016	136
state	22	2016	Female	2017	20
state	22	2016	Male	2017	135
state	23	2016	Female	2015	50
state	23	2016	Male	2015	137
state	23	2016	Female	2016	57
state	23	2016	Male	2016	302
state	23	2016	Female	2017	57
state	23	2016	Male	2017	301
state	24	2016	Female	2015	229
state	24	2016	Male	2015	372
state	24	2016	Female	2016	300
state	24	2016	Male	2016	766
state	24	2016	Female	2017	312
state	24	2016	Male	2017	765
state	25	2016	Female	2015	3744
state	25	2016	Male	2015	4120
state	25	2016	Female	2016	2711
state	25	2016	Male	2016	4517
state	25	2016	Female	2017	2790
state	25	2016	Male	2017	4553
state	26	2016	Female	2015	63
state	26	2016	Male	2015	152
state	26	2016	Female	2016	45
state	26	2016	Male	2016	170
state	26	2016	Female	2017	42
state	26	2016	Male	2017	158
state	27	2016	Female	2015	149
state	27	2016	Male	2015	224
state	27	2016	Female	2016	59
state	27	2016	Male	2016	331
state	27	2016	Female	2017	63
state	27	2016	Male	2017	335
state	28	2016	Female	2015	279
state	28	2016	Male	2015	1067
state	28	2016	Female	2016	280
state	28	2016	Male	2016	645
state	28	2016	Female	2017	284
state	28	2016	Male	2017	633
state	29	2016	Female	2015	308
state	29	2016	Male	2015	639
state	29	2016	Female	2016	132
state	29	2016	Male	2016	535
state	29	2016	Female	2017	135
state	29	2016	Male	2017	542
state	30	2016	Female	2015	855
state	30	2016	Male	2015	1093
state	30	2016	Female	2016	480
state	30	2016	Male	2016	639
state	30	2016	Female	2017	480
state	30	2016	Male	2017	637
state	31	2016	Female	2015	885
state	31	2016	Male	2015	1516
state	31	2016	Female	2016	1100
state	31	2016	Male	2016	1755
state	31	2016	Female	2017	1120
state	31	2016	Male	2017	1753
state	32	2016	Female	2015	199
state	32	2016	Male	2015	572
state	32	2016	Female	2016	339
state	32	2016	Male	2016	777
state	32	2016	Female	2017	346
state	32	2016	Male	2017	771
state	33	2016	Female	2015	796
state	33	2016	Male	2015	1017
state	33	2016	Female	2016	747
state	33	2016	Male	2016	1235
state	33	2016	Female	2017	758
state	33	2016	Male	2017	1237
state	34	2016	Female	2015	82
state	34	2016	Male	2015	235
state	34	2016	Female	2016	156
state	34	2016	Male	2016	450
state	34	2016	Female	2017	155
state	34	2016	Male	2017	443
state	35	2016	Female	2015	53
state	35	2016	Male	2015	356
state	35	2016	Female	2016	37
state	35	2016	Male	2016	153
state	35	2016	Female	2017	40
state	35	2016	Male	2017	160
state	36	2016	Female	2015	38
state	36	2016	Male	2015	39
state	36	2016	Female	2016	3
state	36	2016	Male	2016	63
state	36	2016	Female	2017	13
state	36	2016	Male	2017	265
state	37	2016	Female	2015	39
state	37	2016	Male	2015	127
state	37	2016	Female	2016	15
state	37	2016	Male	2016	119
state	37	2016	Female	2017	14
state	37	2016	Male	2017	105
\.


--
-- Name: number_of_doctors_year_sex pk_number_of_doctors_year_sex; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.number_of_doctors_year_sex
    ADD CONSTRAINT pk_number_of_doctors_year_sex PRIMARY KEY (geo_level, geo_code, geo_version, number_of_doctors_sex, number_of_doctors_year);


--
-- PostgreSQL database dump complete
--
