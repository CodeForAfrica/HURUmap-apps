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

ALTER TABLE IF EXISTS ONLY public.number_of_plates DROP CONSTRAINT IF EXISTS number_of_plates_pkey;
DROP TABLE IF EXISTS public.number_of_plates;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: number_of_plates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.number_of_plates (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    vehicle_type character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: number_of_plates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.number_of_plates (geo_level, geo_code, geo_version, year, vehicle_type, total) FROM stdin;
state	1	2016	2013	Motor Cycle	6460
state	1	2016	2013	Motor Vehicle	14541
state	1	2016	2014	Motor Cycle	16851
state	1	2016	2014	Motor Vehicle	16993
state	1	2016	2015	Motor Cycle	4318
state	1	2016	2015	Motor Vehicle	1157
state	2	2016	2013	Motor Cycle	6433
state	2	2016	2013	Motor Vehicle	13345
state	2	2016	2014	Motor Cycle	15874
state	2	2016	2014	Motor Vehicle	11434
state	2	2016	2015	Motor Cycle	9003
state	2	2016	2015	Motor Vehicle	9766
state	3	2016	2013	Motor Cycle	15488
state	3	2016	2013	Motor Vehicle	6721
state	3	2016	2014	Motor Cycle	10193
state	3	2016	2014	Motor Vehicle	10435
state	3	2016	2015	Motor Cycle	9800
state	3	2016	2015	Motor Vehicle	6222
state	4	2016	2013	Motor Cycle	12976
state	4	2016	2013	Motor Vehicle	31077
state	4	2016	2014	Motor Cycle	40541
state	4	2016	2014	Motor Vehicle	40322
state	4	2016	2015	Motor Cycle	16696
state	4	2016	2015	Motor Vehicle	6130
state	5	2016	2013	Motor Cycle	8818
state	5	2016	2013	Motor Vehicle	13308
state	5	2016	2014	Motor Cycle	5976
state	5	2016	2014	Motor Vehicle	6286
state	5	2016	2015	Motor Cycle	3666
state	5	2016	2015	Motor Vehicle	3972
state	6	2016	2013	Motor Cycle	1601
state	6	2016	2013	Motor Vehicle	9396
state	6	2016	2014	Motor Cycle	1223
state	6	2016	2014	Motor Vehicle	9373
state	6	2016	2015	Motor Cycle	1714
state	6	2016	2015	Motor Vehicle	4516
state	7	2016	2013	Motor Cycle	11119
state	7	2016	2013	Motor Vehicle	12168
state	7	2016	2014	Motor Cycle	6172
state	7	2016	2014	Motor Vehicle	7854
state	7	2016	2015	Motor Cycle	9190
state	7	2016	2015	Motor Vehicle	1668
state	8	2016	2013	Motor Cycle	5950
state	8	2016	2013	Motor Vehicle	9876
state	8	2016	2014	Motor Cycle	2
state	8	2016	2014	Motor Vehicle	5204
state	8	2016	2015	Motor Cycle	8850
state	8	2016	2015	Motor Vehicle	2039
state	9	2016	2013	Motor Cycle	1012
state	9	2016	2013	Motor Vehicle	11284
state	9	2016	2014	Motor Cycle	18495
state	9	2016	2014	Motor Vehicle	10022
state	9	2016	2015	Motor Cycle	2701
state	9	2016	2015	Motor Vehicle	4511
state	10	2016	2013	Motor Cycle	10611
state	10	2016	2013	Motor Vehicle	32491
state	10	2016	2014	Motor Cycle	9243
state	10	2016	2014	Motor Vehicle	41249
state	10	2016	2015	Motor Cycle	3708
state	10	2016	2015	Motor Vehicle	28045
state	11	2016	2013	Motor Cycle	4003
state	11	2016	2013	Motor Vehicle	8400
state	11	2016	2014	Motor Cycle	6034
state	11	2016	2014	Motor Vehicle	13557
state	11	2016	2015	Motor Cycle	4233
state	11	2016	2015	Motor Vehicle	2413
state	12	2016	2013	Motor Cycle	6612
state	12	2016	2013	Motor Vehicle	37671
state	12	2016	2014	Motor Cycle	2253
state	12	2016	2014	Motor Vehicle	22177
state	12	2016	2015	Motor Cycle	2000
state	12	2016	2015	Motor Vehicle	18010
state	13	2016	2013	Motor Cycle	3355
state	13	2016	2013	Motor Vehicle	451
state	13	2016	2014	Motor Cycle	14503
state	13	2016	2014	Motor Vehicle	10904
state	13	2016	2015	Motor Cycle	5777
state	13	2016	2015	Motor Vehicle	8437
state	14	2016	2013	Motor Cycle	8
state	14	2016	2013	Motor Vehicle	8999
state	14	2016	2014	Motor Cycle	7205
state	14	2016	2014	Motor Vehicle	11284
state	14	2016	2015	Motor Cycle	4722
state	14	2016	2015	Motor Vehicle	13343
state	15	2016	2013	Motor Cycle	13
state	15	2016	2013	Motor Vehicle	106104
state	15	2016	2014	Motor Cycle	52460
state	15	2016	2014	Motor Vehicle	85155
state	15	2016	2015	Motor Cycle	0
state	15	2016	2015	Motor Vehicle	76399
state	16	2016	2013	Motor Cycle	350
state	16	2016	2013	Motor Vehicle	6075
state	16	2016	2014	Motor Cycle	12456
state	16	2016	2014	Motor Vehicle	28441
state	16	2016	2015	Motor Cycle	12651
state	16	2016	2015	Motor Vehicle	3915
state	17	2016	2013	Motor Cycle	7037
state	17	2016	2013	Motor Vehicle	6441
state	17	2016	2014	Motor Cycle	6617
state	17	2016	2014	Motor Vehicle	13527
state	17	2016	2015	Motor Cycle	8909
state	17	2016	2015	Motor Vehicle	11966
state	18	2016	2013	Motor Cycle	5855
state	18	2016	2013	Motor Vehicle	11088
state	18	2016	2014	Motor Cycle	3724
state	18	2016	2014	Motor Vehicle	4699
state	18	2016	2015	Motor Cycle	2096
state	18	2016	2015	Motor Vehicle	3511
state	19	2016	2013	Motor Cycle	7204
state	19	2016	2013	Motor Vehicle	16658
state	19	2016	2014	Motor Cycle	7914
state	19	2016	2014	Motor Vehicle	24728
state	19	2016	2015	Motor Cycle	16200
state	19	2016	2015	Motor Vehicle	3334
state	20	2016	2013	Motor Cycle	24878
state	20	2016	2013	Motor Vehicle	37160
state	20	2016	2014	Motor Cycle	7125
state	20	2016	2014	Motor Vehicle	22384
state	20	2016	2015	Motor Cycle	14245
state	20	2016	2015	Motor Vehicle	18973
state	21	2016	2013	Motor Cycle	12121
state	21	2016	2013	Motor Vehicle	30748
state	21	2016	2014	Motor Cycle	1835
state	21	2016	2014	Motor Vehicle	4722
state	21	2016	2015	Motor Cycle	2873
state	21	2016	2015	Motor Vehicle	15581
state	22	2016	2013	Motor Cycle	7195
state	22	2016	2013	Motor Vehicle	9306
state	22	2016	2014	Motor Cycle	5683
state	22	2016	2014	Motor Vehicle	1508
state	22	2016	2015	Motor Cycle	15791
state	22	2016	2015	Motor Vehicle	3877
state	23	2016	2013	Motor Cycle	1624
state	23	2016	2013	Motor Vehicle	6208
state	23	2016	2014	Motor Cycle	9482
state	23	2016	2014	Motor Vehicle	6822
state	23	2016	2015	Motor Cycle	13419
state	23	2016	2015	Motor Vehicle	2839
state	24	2016	2013	Motor Cycle	3151
state	24	2016	2013	Motor Vehicle	10128
state	24	2016	2014	Motor Cycle	8563
state	24	2016	2014	Motor Vehicle	12520
state	24	2016	2015	Motor Cycle	13343
state	24	2016	2015	Motor Vehicle	4613
state	25	2016	2013	Motor Cycle	5020
state	25	2016	2013	Motor Vehicle	369071
state	25	2016	2014	Motor Cycle	0
state	25	2016	2014	Motor Vehicle	0
state	25	2016	2015	Motor Cycle	0
state	25	2016	2015	Motor Vehicle	0
state	26	2016	2013	Motor Cycle	5519
state	26	2016	2013	Motor Vehicle	7704
state	26	2016	2014	Motor Cycle	2450
state	26	2016	2014	Motor Vehicle	10521
state	26	2016	2015	Motor Cycle	14344
state	26	2016	2015	Motor Vehicle	2775
state	27	2016	2013	Motor Cycle	3960
state	27	2016	2013	Motor Vehicle	200
state	27	2016	2014	Motor Cycle	6026
state	27	2016	2014	Motor Vehicle	3861
state	27	2016	2015	Motor Cycle	3019
state	27	2016	2015	Motor Vehicle	102
country	NG	2016	2013	Motor Cycle	254877
country	NG	2016	2013	Motor Vehicle	1018005
country	NG	2016	2014	Motor Cycle	420138
country	NG	2016	2014	Motor Vehicle	568281
country	NG	2016	2015	Motor Cycle	270069
country	NG	2016	2015	Motor Vehicle	308567
state	28	2016	2013	Motor Cycle	45521
state	28	2016	2013	Motor Vehicle	16165
state	28	2016	2014	Motor Cycle	51180
state	28	2016	2014	Motor Vehicle	18620
state	28	2016	2015	Motor Cycle	14954
state	28	2016	2015	Motor Vehicle	6913
state	29	2016	2013	Motor Cycle	5283
state	29	2016	2013	Motor Vehicle	78445
state	29	2016	2014	Motor Cycle	22335
state	29	2016	2014	Motor Vehicle	11673
state	29	2016	2015	Motor Cycle	10181
state	29	2016	2015	Motor Vehicle	3495
state	30	2016	2013	Motor Cycle	11201
state	30	2016	2013	Motor Vehicle	8
state	30	2016	2014	Motor Cycle	0
state	30	2016	2014	Motor Vehicle	0
state	30	2016	2015	Motor Cycle	70
state	30	2016	2015	Motor Vehicle	532
state	31	2016	2013	Motor Cycle	40
state	31	2016	2013	Motor Vehicle	18891
state	31	2016	2014	Motor Cycle	19771
state	31	2016	2014	Motor Vehicle	16742
state	31	2016	2015	Motor Cycle	11114
state	31	2016	2015	Motor Vehicle	1821
state	32	2016	2013	Motor Cycle	4700
state	32	2016	2013	Motor Vehicle	19113
state	32	2016	2014	Motor Cycle	13230
state	32	2016	2014	Motor Vehicle	13752
state	32	2016	2015	Motor Cycle	3500
state	32	2016	2015	Motor Vehicle	11524
state	33	2016	2013	Motor Cycle	1150
state	33	2016	2013	Motor Vehicle	6662
state	33	2016	2014	Motor Cycle	6248
state	33	2016	2014	Motor Vehicle	42803
state	33	2016	2015	Motor Cycle	7
state	33	2016	2015	Motor Vehicle	140
state	34	2016	2013	Motor Cycle	1369
state	34	2016	2013	Motor Vehicle	10002
state	34	2016	2014	Motor Cycle	7405
state	34	2016	2014	Motor Vehicle	2035
state	34	2016	2015	Motor Cycle	1900
state	34	2016	2015	Motor Vehicle	4348
state	35	2016	2013	Motor Cycle	2600
state	35	2016	2013	Motor Vehicle	2322
state	35	2016	2014	Motor Cycle	13618
state	35	2016	2014	Motor Vehicle	7439
state	35	2016	2015	Motor Cycle	18061
state	35	2016	2015	Motor Vehicle	6215
state	36	2016	2013	Motor Cycle	2008
state	36	2016	2013	Motor Vehicle	3410
state	36	2016	2014	Motor Cycle	581
state	36	2016	2014	Motor Vehicle	2052
state	36	2016	2015	Motor Cycle	3373
state	36	2016	2015	Motor Vehicle	1430
state	37	2016	2013	Motor Cycle	2405
state	37	2016	2013	Motor Vehicle	9897
state	37	2016	2014	Motor Cycle	3428
state	37	2016	2014	Motor Vehicle	2595
state	37	2016	2015	Motor Cycle	2900
state	37	2016	2015	Motor Vehicle	2848
\.


--
-- Name: number_of_plates number_of_plates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.number_of_plates
    ADD CONSTRAINT number_of_plates_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, vehicle_type);


--
-- PostgreSQL database dump complete
--
