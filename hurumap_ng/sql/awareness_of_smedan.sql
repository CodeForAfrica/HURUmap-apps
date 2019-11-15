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

ALTER TABLE IF EXISTS ONLY public.awareness_of_smedan DROP CONSTRAINT IF EXISTS awareness_of_smedan_pkey;
DROP TABLE IF EXISTS public.awareness_of_smedan;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: awareness_of_smedan; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.awareness_of_smedan (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: awareness_of_smedan; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.awareness_of_smedan (geo_level, geo_code, geo_version, type, total) FROM stdin;
country	NG	2016	Number	46259
state	1	2016	Number	1120
state	2	2016	Number	476
state	3	2016	Number	1532
state	4	2016	Number	1047
state	5	2016	Number	1238
state	6	2016	Number	188
state	7	2016	Number	1564
state	8	2016	Number	376
state	9	2016	Number	973
state	10	2016	Number	626
state	11	2016	Number	2052
state	12	2016	Number	1865
state	13	2016	Number	691
state	14	2016	Number	676
state	15	2016	Number	1679
state	16	2016	Number	678
state	17	2016	Number	1126
state	18	2016	Number	2122
state	19	2016	Number	1662
state	20	2016	Number	1483
state	21	2016	Number	1263
state	22	2016	Number	540
state	23	2016	Number	777
state	24	2016	Number	1136
state	25	2016	Number	5504
state	26	2016	Number	1376
state	27	2016	Number	1007
state	28	2016	Number	1351
state	29	2016	Number	1601
state	30	2016	Number	1605
state	31	2016	Number	2485
state	32	2016	Number	1016
state	33	2016	Number	1167
state	34	2016	Number	687
state	35	2016	Number	617
state	36	2016	Number	80
state	37	2016	Number	872
country	NG	2016	Total Number of Enterprise	73081
state	1	2016	Total Number of Enterprise	2343
state	2	2016	Total Number of Enterprise	734
state	3	2016	Total Number of Enterprise	1887
state	4	2016	Total Number of Enterprise	1504
state	5	2016	Total Number of Enterprise	2241
state	6	2016	Total Number of Enterprise	300
state	7	2016	Total Number of Enterprise	1811
state	8	2016	Total Number of Enterprise	538
state	9	2016	Total Number of Enterprise	1456
state	10	2016	Total Number of Enterprise	1524
state	11	2016	Total Number of Enterprise	2433
state	12	2016	Total Number of Enterprise	2677
state	13	2016	Total Number of Enterprise	928
state	14	2016	Total Number of Enterprise	1432
state	15	2016	Total Number of Enterprise	2825
state	16	2016	Total Number of Enterprise	904
state	17	2016	Total Number of Enterprise	2020
state	18	2016	Total Number of Enterprise	2370
state	19	2016	Total Number of Enterprise	2650
state	20	2016	Total Number of Enterprise	2441
state	21	2016	Total Number of Enterprise	1367
state	22	2016	Total Number of Enterprise	815
state	23	2016	Total Number of Enterprise	1027
state	24	2016	Total Number of Enterprise	1416
state	25	2016	Total Number of Enterprise	8395
state	26	2016	Total Number of Enterprise	2604
state	27	2016	Total Number of Enterprise	2121
state	28	2016	Total Number of Enterprise	2465
state	29	2016	Total Number of Enterprise	2363
state	30	2016	Total Number of Enterprise	3007
state	31	2016	Total Number of Enterprise	6131
state	32	2016	Total Number of Enterprise	1574
state	33	2016	Total Number of Enterprise	1658
state	34	2016	Total Number of Enterprise	852
state	35	2016	Total Number of Enterprise	930
state	36	2016	Total Number of Enterprise	102
state	37	2016	Total Number of Enterprise	1236
\.


--
-- Name: awareness_of_smedan awareness_of_smedan_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.awareness_of_smedan
    ADD CONSTRAINT awareness_of_smedan_pkey PRIMARY KEY (geo_level, geo_code, geo_version, type);


--
-- PostgreSQL database dump complete
--
