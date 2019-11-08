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

ALTER TABLE IF EXISTS ONLY public.enterprise_registered DROP CONSTRAINT IF EXISTS enterprise_registered_pkey;
DROP TABLE IF EXISTS public.enterprise_registered;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: enterprise_registered; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.enterprise_registered (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: enterprise_registered; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.enterprise_registered (geo_level, geo_code, geo_version, type, year, total) FROM stdin;
country	NG	2016	Medium	2010	1654
country	NG	2016	Medium	2013	4670
country	NG	2016	Medium	2017	1793
state	1	2016	Medium	2010	7
state	1	2016	Medium	2013	40
state	1	2016	Medium	2017	53
state	2	2016	Medium	2010	11
state	2	2016	Medium	2017	8
state	3	2016	Medium	2010	39
state	3	2016	Medium	2013	195
state	3	2016	Medium	2017	5
state	4	2016	Medium	2010	81
state	4	2016	Medium	2013	117
state	4	2016	Medium	2017	49
state	5	2016	Medium	2010	49
state	5	2016	Medium	2013	27
state	5	2016	Medium	2017	32
state	6	2016	Medium	2013	72
state	6	2016	Medium	2017	3
state	7	2016	Medium	2010	16
state	7	2016	Medium	2013	22
state	7	2016	Medium	2017	28
state	8	2016	Medium	2010	37
state	8	2016	Medium	2017	40
state	9	2016	Medium	2010	47
state	9	2016	Medium	2013	168
state	9	2016	Medium	2017	39
state	10	2016	Medium	2010	33
state	10	2016	Medium	2017	54
state	11	2016	Medium	2010	12
state	11	2016	Medium	2013	4
state	11	2016	Medium	2017	29
state	12	2016	Medium	2010	29
state	12	2016	Medium	2013	118
state	12	2016	Medium	2017	44
state	13	2016	Medium	2010	5
state	13	2016	Medium	2013	126
state	13	2016	Medium	2017	2
state	14	2016	Medium	2010	30
state	14	2016	Medium	2013	99
state	14	2016	Medium	2017	28
state	15	2016	Medium	2010	80
state	15	2016	Medium	2013	446
state	15	2016	Medium	2017	75
state	16	2016	Medium	2010	31
state	16	2016	Medium	2013	65
state	16	2016	Medium	2017	28
state	17	2016	Medium	2010	40
state	17	2016	Medium	2013	135
state	17	2016	Medium	2017	44
state	18	2016	Medium	2010	14
state	18	2016	Medium	2013	75
state	18	2016	Medium	2017	10
state	19	2016	Medium	2010	145
state	19	2016	Medium	2013	170
state	19	2016	Medium	2017	76
state	20	2016	Medium	2010	69
state	20	2016	Medium	2013	496
state	20	2016	Medium	2017	143
state	21	2016	Medium	2010	70
state	21	2016	Medium	2013	99
state	21	2016	Medium	2017	32
state	22	2016	Medium	2010	11
state	22	2016	Medium	2013	91
state	22	2016	Medium	2017	6
state	23	2016	Medium	2010	11
state	23	2016	Medium	2013	17
state	23	2016	Medium	2017	16
state	24	2016	Medium	2010	28
state	24	2016	Medium	2013	62
state	24	2016	Medium	2017	18
state	25	2016	Medium	2010	389
state	25	2016	Medium	2013	619
state	25	2016	Medium	2017	354
state	26	2016	Medium	2010	32
state	26	2016	Medium	2013	22
state	26	2016	Medium	2017	18
state	27	2016	Medium	2010	46
state	27	2016	Medium	2013	100
state	27	2016	Medium	2017	47
state	28	2016	Medium	2010	40
state	28	2016	Medium	2013	104
state	28	2016	Medium	2017	71
state	29	2016	Medium	2010	18
state	29	2016	Medium	2013	194
state	29	2016	Medium	2017	39
state	30	2016	Medium	2013	25
state	30	2016	Medium	2017	12
state	31	2016	Medium	2010	94
state	31	2016	Medium	2013	519
state	31	2016	Medium	2017	92
state	32	2016	Medium	2010	49
state	32	2016	Medium	2013	110
state	32	2016	Medium	2017	41
state	33	2016	Medium	2010	60
state	33	2016	Medium	2013	41
state	33	2016	Medium	2017	65
state	34	2016	Medium	2010	19
state	34	2016	Medium	2013	210
state	34	2016	Medium	2017	161
state	35	2016	Medium	2010	5
state	35	2016	Medium	2013	69
state	35	2016	Medium	2017	14
state	36	2016	Medium	2010	5
state	36	2016	Medium	2017	3
state	37	2016	Medium	2013	16
state	37	2016	Medium	2017	14
country	NG	2016	Small	2010	21264
country	NG	2016	Small	2013	68168
country	NG	2016	Small	2017	71288
state	1	2016	Small	2010	526
state	1	2016	Small	2013	1769
state	1	2016	Small	2017	2289
state	2	2016	Small	2010	235
state	2	2016	Small	2017	726
state	3	2016	Small	2010	275
state	3	2016	Small	2013	898
state	3	2016	Small	2017	1882
state	4	2016	Small	2010	656
state	4	2016	Small	2013	1620
state	4	2016	Small	2017	1455
state	5	2016	Small	2010	497
state	5	2016	Small	2013	2039
state	5	2016	Small	2017	2209
state	6	2016	Small	2010	134
state	6	2016	Small	2013	354
state	6	2016	Small	2017	297
state	7	2016	Small	2010	357
state	7	2016	Small	2013	1146
state	7	2016	Small	2017	1783
state	8	2016	Small	2010	131
state	8	2016	Small	2017	498
state	9	2016	Small	2010	318
state	9	2016	Small	2013	1126
state	9	2016	Small	2017	1417
state	10	2016	Small	2010	576
state	10	2016	Small	2013	1444
state	10	2016	Small	2017	1470
state	11	2016	Small	2010	232
state	11	2016	Small	2013	1206
state	11	2016	Small	2017	2404
state	12	2016	Small	2010	899
state	12	2016	Small	2013	1879
state	12	2016	Small	2017	2633
state	13	2016	Small	2010	280
state	13	2016	Small	2013	903
state	13	2016	Small	2017	926
state	14	2016	Small	2010	402
state	14	2016	Small	2013	812
state	14	2016	Small	2017	1404
state	15	2016	Small	2010	427
state	15	2016	Small	2013	2244
state	15	2016	Small	2017	2750
state	16	2016	Small	2010	225
state	16	2016	Small	2013	1043
state	16	2016	Small	2017	876
state	17	2016	Small	2010	534
state	17	2016	Small	2013	1259
state	17	2016	Small	2017	1976
state	18	2016	Small	2010	217
state	18	2016	Small	2013	1022
state	18	2016	Small	2017	2360
state	19	2016	Small	2010	1137
state	19	2016	Small	2013	2712
state	19	2016	Small	2017	2574
state	20	2016	Small	2010	1740
state	20	2016	Small	2013	7790
state	20	2016	Small	2017	2298
state	21	2016	Small	2010	464
state	21	2016	Small	2013	1256
state	21	2016	Small	2017	1335
state	22	2016	Small	2010	221
state	22	2016	Small	2013	898
state	22	2016	Small	2017	809
state	23	2016	Small	2010	328
state	23	2016	Small	2013	827
state	23	2016	Small	2017	1011
state	24	2016	Small	2010	415
state	24	2016	Small	2013	164
state	24	2016	Small	2017	1398
state	25	2016	Small	2010	4146
state	25	2016	Small	2013	11044
state	25	2016	Small	2017	8042
state	26	2016	Small	2010	387
state	26	2016	Small	2013	1098
state	26	2016	Small	2017	2586
state	27	2016	Small	2010	433
state	27	2016	Small	2013	1258
state	27	2016	Small	2017	2074
state	28	2016	Small	2010	506
state	28	2016	Small	2013	1690
state	28	2016	Small	2017	2394
state	29	2016	Small	2010	596
state	29	2016	Small	2013	1805
state	29	2016	Small	2017	2324
state	30	2016	Small	2010	100
state	30	2016	Small	2013	2247
state	30	2016	Small	2017	2995
state	31	2016	Small	2010	1300
state	31	2016	Small	2013	7468
state	31	2016	Small	2017	6039
state	32	2016	Small	2010	613
state	32	2016	Small	2013	2070
state	32	2016	Small	2017	1533
state	33	2016	Small	2010	662
state	33	2016	Small	2013	2981
state	33	2016	Small	2017	1593
state	34	2016	Small	2010	562
state	34	2016	Small	2013	631
state	34	2016	Small	2017	691
state	35	2016	Small	2010	242
state	35	2016	Small	2013	891
state	35	2016	Small	2017	916
state	36	2016	Small	2010	150
state	36	2016	Small	2017	99
state	37	2016	Small	2010	341
state	37	2016	Small	2013	577
state	37	2016	Small	2017	1222
\.


--
-- Name: enterprise_registered enterprise_registered_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enterprise_registered
    ADD CONSTRAINT enterprise_registered_pkey PRIMARY KEY (geo_level, geo_code, geo_version, type, year);


--
-- PostgreSQL database dump complete
--
