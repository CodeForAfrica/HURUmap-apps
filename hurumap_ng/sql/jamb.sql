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

ALTER TABLE IF EXISTS ONLY public.jamb DROP CONSTRAINT IF EXISTS jamb_pkey;
DROP TABLE IF EXISTS public.jamb;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: jamb; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jamb (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: jamb; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jamb (geo_level, geo_code, geo_version, year, gender, total) FROM stdin;
state	1	2016	2017	Female	27351
state	1	2016	2018	Female	25487
state	2	2016	2017	Female	9187
state	2	2016	2018	Female	8636
state	3	2016	2017	Female	32081
state	3	2016	2018	Female	30120
state	4	2016	2017	Female	42764
state	4	2016	2018	Female	40242
state	5	2016	2017	Female	6681
state	5	2016	2018	Female	6615
state	6	2016	2017	Female	9416
state	6	2016	2018	Female	9676
state	7	2016	2017	Female	27239
state	7	2016	2018	Female	25514
state	8	2016	2017	Female	9547
state	8	2016	2018	Female	10482
state	9	2016	2017	Female	15948
state	9	2016	2018	Female	14437
state	10	2016	2017	Female	41554
state	10	2016	2018	Female	41373
state	11	2016	2017	Female	14962
state	11	2016	2018	Female	14418
state	12	2016	2017	Female	33260
state	12	2016	2018	Female	33826
state	13	2016	2017	Female	20250
state	13	2016	2018	Female	21161
state	14	2016	2017	Female	37086
state	14	2016	2018	Female	34877
state	15	2016	2017	Female	2192
state	15	2016	2018	Female	2411
state	16	2016	2017	Female	8288
state	16	2016	2018	Female	9021
state	17	2016	2017	Female	55593
state	17	2016	2018	Female	50866
state	18	2016	2017	Female	4056
state	18	2016	2018	Female	4109
state	19	2016	2017	Female	28272
state	19	2016	2018	Female	26854
state	20	2016	2017	Female	21517
state	20	2016	2018	Female	21066
state	21	2016	2017	Female	7098
state	21	2016	2018	Female	6985
state	22	2016	2017	Female	3499
state	22	2016	2018	Female	4053
state	23	2016	2017	Female	30889
state	23	2016	2018	Female	27688
state	24	2016	2017	Female	29263
state	24	2016	2018	Female	29718
state	25	2016	2017	Female	15180
state	25	2016	2018	Female	15375
state	26	2016	2017	Female	12785
state	26	2016	2018	Female	13298
state	27	2016	2017	Female	8349
state	27	2016	2018	Female	8827
state	28	2016	2017	Female	41190
state	28	2016	2018	Female	41006
state	29	2016	2017	Female	32060
state	29	2016	2018	Female	31342
state	30	2016	2017	Female	42600
state	30	2016	2018	Female	41893
state	31	2016	2017	Female	42772
state	31	2016	2018	Female	42910
state	32	2016	2017	Female	18581
state	32	2016	2018	Female	18451
state	33	2016	2017	Female	21838
state	33	2016	2018	Female	21006
state	34	2016	2017	Female	2691
state	34	2016	2018	Female	2926
state	35	2016	2017	Female	7593
state	35	2016	2018	Female	7530
state	36	2016	2017	Female	3825
state	36	2016	2018	Female	4315
state	37	2016	2017	Female	2209
state	37	2016	2018	Female	2279
state	1	2016	2017	Male	24299
state	1	2016	2018	Male	22361
state	2	2016	2017	Male	14056
state	2	2016	2018	Male	13587
state	3	2016	2017	Male	30260
state	3	2016	2018	Male	27737
state	4	2016	2017	Male	34688
state	4	2016	2018	Male	32629
state	5	2016	2017	Male	18427
state	5	2016	2018	Male	18287
state	6	2016	2017	Male	9831
state	6	2016	2018	Male	9775
state	7	2016	2017	Male	41731
state	7	2016	2018	Male	37602
state	8	2016	2017	Male	15351
state	8	2016	2018	Male	18054
state	9	2016	2017	Male	18838
state	9	2016	2018	Male	16147
state	10	2016	2017	Male	39924
state	10	2016	2018	Male	38758
state	11	2016	2017	Male	16412
state	11	2016	2018	Male	15424
state	12	2016	2017	Male	33001
state	12	2016	2018	Male	32726
state	13	2016	2017	Male	21845
state	13	2016	2018	Male	22119
state	14	2016	2017	Male	30569
state	14	2016	2018	Male	27762
state	15	2016	2017	Male	4078
state	15	2016	2018	Male	4027
state	16	2016	2017	Male	15623
state	16	2016	2018	Male	16274
state	17	2016	2017	Male	46595
state	17	2016	2018	Male	42182
state	18	2016	2017	Male	15217
state	18	2016	2018	Male	14256
state	19	2016	2017	Male	43947
state	19	2016	2018	Male	39138
state	20	2016	2017	Male	48981
state	20	2016	2018	Male	43752
state	21	2016	2017	Male	25241
state	21	2016	2018	Male	22597
state	22	2016	2017	Male	10428
state	22	2016	2018	Male	11288
state	23	2016	2017	Male	39308
state	23	2016	2018	Male	34287
state	24	2016	2017	Male	34718
state	24	2016	2018	Male	33779
state	25	2016	2017	Male	16263
state	25	2016	2018	Male	16062
state	26	2016	2017	Male	22968
state	26	2016	2018	Male	22927
state	27	2016	2017	Male	17894
state	27	2016	2018	Male	17381
state	28	2016	2017	Male	40346
state	28	2016	2018	Male	39447
state	29	2016	2017	Male	34851
state	29	2016	2018	Male	32608
state	30	2016	2017	Male	46203
state	30	2016	2018	Male	44172
state	31	2016	2017	Male	45055
state	31	2016	2018	Male	43777
state	32	2016	2017	Male	26052
state	32	2016	2018	Male	25150
state	33	2016	2017	Male	23386
state	33	2016	2018	Male	21554
state	34	2016	2017	Male	11787
state	34	2016	2018	Male	10567
state	35	2016	2017	Male	15824
state	35	2016	2018	Male	14824
state	36	2016	2017	Male	9942
state	36	2016	2018	Male	11221
state	37	2016	2017	Male	8313
state	37	2016	2018	Male	7811
country	NG	2016	2017	Female	769833
country	NG	2016	2017	Male	952436
country	NG	2016	2018	Male	902176
country	NG	2016	2018	Female	750951
\.


--
-- Name: jamb jamb_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jamb
    ADD CONSTRAINT jamb_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, gender);


--
-- PostgreSQL database dump complete
--
