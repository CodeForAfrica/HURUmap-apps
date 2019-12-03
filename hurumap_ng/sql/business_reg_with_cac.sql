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

ALTER TABLE IF EXISTS ONLY public.business_reg_with_cac DROP CONSTRAINT IF EXISTS business_reg_with_cac_pkey;
DROP TABLE IF EXISTS public.business_reg_with_cac;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: business_reg_with_cac; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.business_reg_with_cac (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: business_reg_with_cac; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.business_reg_with_cac (geo_level, geo_code, geo_version, type, total) FROM stdin;
country	NG	2016	Number	52517
state	1	2016	Number	1932
state	2	2016	Number	713
state	3	2016	Number	1320
state	4	2016	Number	1194
state	5	2016	Number	1134
state	6	2016	Number	213
state	7	2016	Number	1153
state	8	2016	Number	442
state	9	2016	Number	1070
state	10	2016	Number	838
state	11	2016	Number	1823
state	12	2016	Number	1439
state	13	2016	Number	510
state	14	2016	Number	1283
state	15	2016	Number	2685
state	16	2016	Number	480
state	17	2016	Number	1760
state	18	2016	Number	2341
state	19	2016	Number	2377
state	20	2016	Number	1740
state	21	2016	Number	705
state	22	2016	Number	490
state	23	2016	Number	774
state	24	2016	Number	1415
state	25	2016	Number	6364
state	26	2016	Number	1979
state	27	2016	Number	1365
state	28	2016	Number	1418
state	29	2016	Number	1294
state	30	2016	Number	1581
state	31	2016	Number	4038
state	32	2016	Number	1385
state	33	2016	Number	1030
state	34	2016	Number	691
state	35	2016	Number	794
state	36	2016	Number	77
state	37	2016	Number	670
country	NG	2016	Total Number of Establishments	73081
state	1	2016	Total Number of Establishments	2343
state	2	2016	Total Number of Establishments	734
state	3	2016	Total Number of Establishments	1887
state	4	2016	Total Number of Establishments	1504
state	5	2016	Total Number of Establishments	2241
state	6	2016	Total Number of Establishments	300
state	7	2016	Total Number of Establishments	1811
state	8	2016	Total Number of Establishments	538
state	9	2016	Total Number of Establishments	1456
state	10	2016	Total Number of Establishments	1524
state	11	2016	Total Number of Establishments	2433
state	12	2016	Total Number of Establishments	2677
state	13	2016	Total Number of Establishments	928
state	14	2016	Total Number of Establishments	1432
state	15	2016	Total Number of Establishments	2825
state	16	2016	Total Number of Establishments	904
state	17	2016	Total Number of Establishments	2020
state	18	2016	Total Number of Establishments	2370
state	19	2016	Total Number of Establishments	2650
state	20	2016	Total Number of Establishments	2441
state	21	2016	Total Number of Establishments	1367
state	22	2016	Total Number of Establishments	815
state	23	2016	Total Number of Establishments	1027
state	24	2016	Total Number of Establishments	1416
state	25	2016	Total Number of Establishments	8395
state	26	2016	Total Number of Establishments	2604
state	27	2016	Total Number of Establishments	2121
state	28	2016	Total Number of Establishments	2465
state	29	2016	Total Number of Establishments	2363
state	30	2016	Total Number of Establishments	3007
state	31	2016	Total Number of Establishments	6131
state	32	2016	Total Number of Establishments	1574
state	33	2016	Total Number of Establishments	1658
state	34	2016	Total Number of Establishments	852
state	35	2016	Total Number of Establishments	930
state	36	2016	Total Number of Establishments	102
state	37	2016	Total Number of Establishments	1236
\.


--
-- Name: business_reg_with_cac business_reg_with_cac_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.business_reg_with_cac
    ADD CONSTRAINT business_reg_with_cac_pkey PRIMARY KEY (geo_level, geo_code, geo_version, type);


--
-- PostgreSQL database dump complete
--
