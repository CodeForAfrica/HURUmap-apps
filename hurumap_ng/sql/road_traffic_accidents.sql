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

ALTER TABLE IF EXISTS ONLY public.road_traffic_accidents DROP CONSTRAINT IF EXISTS road_traffic_accidents_pkey;
DROP TABLE IF EXISTS public.road_traffic_accidents;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: road_traffic_accidents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.road_traffic_accidents (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(12) NOT NULL,
    gender character varying(12) NOT NULL,
    total integer
);


--
-- Data for Name: road_traffic_accidents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.road_traffic_accidents (geo_level, geo_code, geo_version, year, gender, total) FROM stdin;
country	NG	2016	2014	Female	8249
country	NG	2016	2014	Male	23701
country	NG	2016	2015	Female	8566
country	NG	2016	2015	Male	21923
country	NG	2016	2016	Female	7852
country	NG	2016	2016	Male	22217
state	1	2016	2014	Female	99
state	1	2016	2014	Male	185
state	1	2016	2015	Female	114
state	1	2016	2015	Male	178
state	1	2016	2016	Female	139
state	1	2016	2016	Male	232
state	2	2016	2014	Female	191
state	2	2016	2014	Male	615
state	2	2016	2015	Female	92
state	2	2016	2015	Male	336
state	2	2016	2016	Female	143
state	2	2016	2016	Male	319
state	3	2016	2014	Female	32
state	3	2016	2014	Male	79
state	3	2016	2015	Female	32
state	3	2016	2015	Male	63
state	3	2016	2016	Female	48
state	3	2016	2016	Male	150
state	4	2016	2014	Female	200
state	4	2016	2014	Male	440
state	4	2016	2015	Female	241
state	4	2016	2015	Male	446
state	4	2016	2016	Female	200
state	4	2016	2016	Male	378
state	5	2016	2014	Female	385
state	5	2016	2014	Male	1388
state	5	2016	2015	Female	247
state	5	2016	2015	Male	717
state	5	2016	2016	Female	296
state	5	2016	2016	Male	936
state	6	2016	2014	Female	56
state	6	2016	2014	Male	96
state	6	2016	2015	Female	31
state	6	2016	2015	Male	99
state	6	2016	2016	Female	25
state	6	2016	2016	Male	55
state	7	2016	2014	Female	247
state	7	2016	2014	Male	726
state	7	2016	2015	Female	266
state	7	2016	2015	Male	816
state	7	2016	2016	Female	277
state	7	2016	2016	Male	669
state	8	2016	2014	Female	4
state	8	2016	2014	Male	47
state	8	2016	2015	Female	13
state	8	2016	2015	Male	42
state	8	2016	2016	Female	22
state	8	2016	2016	Male	80
state	9	2016	2014	Female	132
state	9	2016	2014	Male	283
state	9	2016	2015	Female	130
state	9	2016	2015	Male	220
state	9	2016	2016	Female	81
state	9	2016	2016	Male	174
state	10	2016	2014	Female	372
state	10	2016	2014	Male	674
state	10	2016	2015	Female	259
state	10	2016	2015	Male	502
state	10	2016	2016	Female	155
state	10	2016	2016	Male	297
state	11	2016	2014	Female	183
state	11	2016	2014	Male	318
state	11	2016	2015	Female	197
state	11	2016	2015	Male	359
state	11	2016	2016	Female	111
state	11	2016	2016	Male	347
state	12	2016	2014	Female	214
state	12	2016	2014	Male	494
state	12	2016	2015	Female	348
state	12	2016	2015	Male	644
state	12	2016	2016	Female	232
state	12	2016	2016	Male	588
state	13	2016	2014	Female	40
state	13	2016	2014	Male	125
state	13	2016	2015	Female	86
state	13	2016	2015	Male	94
state	13	2016	2016	Female	27
state	13	2016	2016	Male	85
state	14	2016	2014	Female	238
state	14	2016	2014	Male	579
state	14	2016	2015	Female	268
state	14	2016	2015	Male	588
state	14	2016	2016	Female	209
state	14	2016	2016	Male	506
state	15	2016	2014	Female	620
state	15	2016	2014	Male	2200
state	15	2016	2015	Female	639
state	15	2016	2015	Male	2181
state	15	2016	2016	Female	671
state	15	2016	2016	Male	2029
state	16	2016	2014	Female	173
state	16	2016	2014	Male	606
state	16	2016	2015	Female	162
state	16	2016	2015	Male	539
state	16	2016	2016	Female	161
state	16	2016	2016	Male	417
state	17	2016	2014	Female	231
state	17	2016	2014	Male	441
state	17	2016	2015	Female	144
state	17	2016	2015	Male	364
state	17	2016	2016	Female	138
state	17	2016	2016	Male	263
state	18	2016	2014	Female	88
state	18	2016	2014	Male	392
state	18	2016	2015	Female	67
state	18	2016	2015	Male	438
state	18	2016	2016	Female	139
state	18	2016	2016	Male	488
state	19	2016	2014	Female	508
state	19	2016	2014	Male	1734
state	19	2016	2015	Female	500
state	19	2016	2015	Male	1525
state	19	2016	2016	Female	544
state	19	2016	2016	Male	2305
state	20	2016	2014	Female	361
state	20	2016	2014	Male	1121
state	20	2016	2015	Female	316
state	20	2016	2015	Male	919
state	20	2016	2016	Female	345
state	20	2016	2016	Male	1328
state	21	2016	2014	Female	136
state	21	2016	2014	Male	678
state	21	2016	2015	Female	197
state	21	2016	2015	Male	741
state	21	2016	2016	Female	218
state	21	2016	2016	Male	717
state	22	2016	2014	Female	113
state	22	2016	2014	Male	325
state	22	2016	2015	Female	35
state	22	2016	2015	Male	538
state	22	2016	2016	Female	61
state	22	2016	2016	Male	306
state	23	2016	2014	Female	252
state	23	2016	2014	Male	843
state	23	2016	2015	Female	347
state	23	2016	2015	Male	1103
state	23	2016	2016	Female	213
state	23	2016	2016	Male	791
state	24	2016	2014	Female	169
state	24	2016	2014	Male	506
state	24	2016	2015	Female	179
state	24	2016	2015	Male	503
state	24	2016	2016	Female	169
state	24	2016	2016	Male	489
state	25	2016	2014	Female	234
state	25	2016	2014	Male	497
state	25	2016	2015	Female	252
state	25	2016	2015	Male	614
state	25	2016	2016	Female	290
state	25	2016	2016	Male	681
state	26	2016	2014	Female	579
state	26	2016	2014	Male	1883
state	26	2016	2015	Female	476
state	26	2016	2015	Male	1593
state	26	2016	2016	Female	371
state	26	2016	2016	Male	1058
state	27	2016	2014	Female	320
state	27	2016	2014	Male	1391
state	27	2016	2015	Female	217
state	27	2016	2015	Male	1170
state	27	2016	2016	Female	173
state	27	2016	2016	Male	1243
state	28	2016	2014	Female	331
state	28	2016	2014	Male	652
state	28	2016	2015	Female	501
state	28	2016	2015	Male	998
state	28	2016	2016	Female	427
state	28	2016	2016	Male	966
state	29	2016	2014	Female	296
state	29	2016	2014	Male	591
state	29	2016	2015	Female	227
state	29	2016	2015	Male	431
state	29	2016	2016	Female	253
state	29	2016	2016	Male	648
state	30	2016	2014	Female	511
state	30	2016	2014	Male	680
state	30	2016	2015	Female	349
state	30	2016	2015	Male	694
state	30	2016	2016	Female	323
state	30	2016	2016	Male	626
state	31	2016	2014	Female	352
state	31	2016	2014	Male	785
state	31	2016	2015	Female	418
state	31	2016	2015	Male	811
state	31	2016	2016	Female	347
state	31	2016	2016	Male	920
state	32	2016	2014	Female	235
state	32	2016	2014	Male	589
state	32	2016	2015	Female	250
state	32	2016	2015	Male	573
state	32	2016	2016	Female	149
state	32	2016	2016	Male	525
state	33	2016	2014	Female	112
state	33	2016	2014	Male	241
state	33	2016	2015	Female	104
state	33	2016	2015	Male	157
state	33	2016	2016	Female	61
state	33	2016	2016	Male	166
state	34	2016	2014	Female	28
state	34	2016	2014	Male	313
state	34	2016	2015	Female	46
state	34	2016	2015	Male	335
state	34	2016	2016	Female	35
state	34	2016	2016	Male	429
state	35	2016	2014	Female	84
state	35	2016	2014	Male	229
state	35	2016	2015	Female	56
state	35	2016	2015	Male	236
state	35	2016	2016	Female	118
state	35	2016	2016	Male	381
state	36	2016	2014	Female	123
state	36	2016	2014	Male	259
state	36	2016	2015	Female	89
state	36	2016	2015	Male	243
state	36	2016	2016	Female	91
state	36	2016	2016	Male	523
state	37	2016	2014	Female	102
state	37	2016	2014	Male
state	37	2016	2015	Female	696
state	37	2016	2015	Male	113
state	37	2016	2016	Female	590
state	37	2016	2016	Male	671
\.


--
-- Name: road_traffic_accidents road_traffic_accidents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.road_traffic_accidents
    ADD CONSTRAINT road_traffic_accidents_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, gender);


--
-- PostgreSQL database dump complete
--
