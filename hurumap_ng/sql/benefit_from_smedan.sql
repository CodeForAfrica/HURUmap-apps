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

ALTER TABLE IF EXISTS ONLY public.benefit_from_smedan DROP CONSTRAINT IF EXISTS benefit_from_smedan_pkey;
DROP TABLE IF EXISTS public.benefit_from_smedan;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: benefit_from_smedan; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.benefit_from_smedan (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: benefit_from_smedan; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.benefit_from_smedan (geo_level, geo_code, geo_version, type, total) FROM stdin;
country	NG	2016	Benefitted Number	43410
state	1	2016	Benefitted Number	1042
state	2	2016	Benefitted Number	443
state	3	2016	Benefitted Number	1425
state	4	2016	Benefitted Number	974
state	5	2016	Benefitted Number	1200
state	6	2016	Benefitted Number	175
state	7	2016	Benefitted Number	1455
state	8	2016	Benefitted Number	350
state	9	2016	Benefitted Number	745
state	10	2016	Benefitted Number	582
state	11	2016	Benefitted Number	1908
state	12	2016	Benefitted Number	1734
state	13	2016	Benefitted Number	682
state	14	2016	Benefitted Number	629
state	15	2016	Benefitted Number	1648
state	16	2016	Benefitted Number	631
state	17	2016	Benefitted Number	1047
state	18	2016	Benefitted Number	1973
state	19	2016	Benefitted Number	1546
state	20	2016	Benefitted Number	1379
state	21	2016	Benefitted Number	1175
state	22	2016	Benefitted Number	502
state	23	2016	Benefitted Number	723
state	24	2016	Benefitted Number	1056
state	25	2016	Benefitted Number	5384
state	26	2016	Benefitted Number	1317
state	27	2016	Benefitted Number	937
state	28	2016	Benefitted Number	1321
state	29	2016	Benefitted Number	1489
state	30	2016	Benefitted Number	1501
state	31	2016	Benefitted Number	2311
state	32	2016	Benefitted Number	945
state	33	2016	Benefitted Number	1085
state	34	2016	Benefitted Number	639
state	35	2016	Benefitted Number	574
state	36	2016	Benefitted Number	74
state	37	2016	Benefitted Number	811
country	NG	2016	Total Number of Enterprises	73081
state	1	2016	Total Number of Enterprises	2343
state	2	2016	Total Number of Enterprises	734
state	3	2016	Total Number of Enterprises	1887
state	4	2016	Total Number of Enterprises	1504
state	5	2016	Total Number of Enterprises	2241
state	6	2016	Total Number of Enterprises	300
state	7	2016	Total Number of Enterprises	1811
state	8	2016	Total Number of Enterprises	538
state	9	2016	Total Number of Enterprises	1456
state	10	2016	Total Number of Enterprises	1524
state	11	2016	Total Number of Enterprises	2433
state	12	2016	Total Number of Enterprises	2677
state	13	2016	Total Number of Enterprises	928
state	14	2016	Total Number of Enterprises	1432
state	15	2016	Total Number of Enterprises	2825
state	16	2016	Total Number of Enterprises	904
state	17	2016	Total Number of Enterprises	2020
state	18	2016	Total Number of Enterprises	2370
state	19	2016	Total Number of Enterprises	2650
state	20	2016	Total Number of Enterprises	2441
state	21	2016	Total Number of Enterprises	1367
state	22	2016	Total Number of Enterprises	815
state	23	2016	Total Number of Enterprises	1027
state	24	2016	Total Number of Enterprises	1416
state	25	2016	Total Number of Enterprises	8395
state	26	2016	Total Number of Enterprises	2604
state	27	2016	Total Number of Enterprises	2121
state	28	2016	Total Number of Enterprises	2465
state	29	2016	Total Number of Enterprises	2363
state	30	2016	Total Number of Enterprises	3007
state	31	2016	Total Number of Enterprises	6131
state	32	2016	Total Number of Enterprises	1574
state	33	2016	Total Number of Enterprises	1658
state	34	2016	Total Number of Enterprises	852
state	35	2016	Total Number of Enterprises	930
state	36	2016	Total Number of Enterprises	102
state	37	2016	Total Number of Enterprises	1236
\.


--
-- Name: benefit_from_smedan benefit_from_smedan_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.benefit_from_smedan
    ADD CONSTRAINT benefit_from_smedan_pkey PRIMARY KEY (geo_level, geo_code, geo_version, type);


--
-- PostgreSQL database dump complete
--
