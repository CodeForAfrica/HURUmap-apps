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

ALTER TABLE IF EXISTS ONLY public.access_to_bank DROP CONSTRAINT IF EXISTS access_to_bank_pkey;
DROP TABLE IF EXISTS public.access_to_bank;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: access_to_bank; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.access_to_bank (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: access_to_bank; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.access_to_bank (geo_level, geo_code, geo_version, type, total) FROM stdin;
country	NG	2016	Number	23765
state	1	2016	Number	771
state	2	2016	Number	203
state	3	2016	Number	701
state	4	2016	Number	592
state	5	2016	Number	708
state	6	2016	Number	77
state	7	2016	Number	323
state	8	2016	Number	193
state	9	2016	Number	228
state	10	2016	Number	464
state	11	2016	Number	939
state	12	2016	Number	582
state	13	2016	Number	381
state	14	2016	Number	408
state	15	2016	Number	1300
state	16	2016	Number	355
state	17	2016	Number	785
state	18	2016	Number	2143
state	19	2016	Number	680
state	20	2016	Number	1367
state	21	2016	Number	846
state	22	2016	Number	220
state	23	2016	Number	274
state	24	2016	Number	99
state	25	2016	Number	2065
state	26	2016	Number	183
state	27	2016	Number	429
state	28	2016	Number	733
state	29	2016	Number	483
state	30	2016	Number	803
state	31	2016	Number	2794
state	32	2016	Number	141
state	33	2016	Number	623
state	34	2016	Number	205
state	35	2016	Number	43493
state	36	2016	Number	33
state	37	2016	Number	353
country	NG	2016	Total Number of Sole Propietorship	47986
state	1	2016	Total Number of Sole Propietorship	1650
state	2	2016	Total Number of Sole Propietorship	367
state	3	2016	Total Number of Sole Propietorship	1416
state	4	2016	Total Number of Sole Propietorship	904
state	5	2016	Total Number of Sole Propietorship	1694
state	6	2016	Total Number of Sole Propietorship	253
state	7	2016	Total Number of Sole Propietorship	1183
state	8	2016	Total Number of Sole Propietorship	193
state	9	2016	Total Number of Sole Propietorship	737
state	10	2016	Total Number of Sole Propietorship	1049
state	11	2016	Total Number of Sole Propietorship	2028
state	12	2016	Total Number of Sole Propietorship	1710
state	13	2016	Total Number of Sole Propietorship	921
state	14	2016	Total Number of Sole Propietorship	519
state	15	2016	Total Number of Sole Propietorship	1787
state	16	2016	Total Number of Sole Propietorship	532
state	17	2016	Total Number of Sole Propietorship	883
state	18	2016	Total Number of Sole Propietorship	2241
state	19	2016	Total Number of Sole Propietorship	1353
state	20	2016	Total Number of Sole Propietorship	1818
state	21	2016	Total Number of Sole Propietorship	1069
state	22	2016	Total Number of Sole Propietorship	591
state	23	2016	Total Number of Sole Propietorship	590
state	24	2016	Total Number of Sole Propietorship	263
state	25	2016	Total Number of Sole Propietorship	5725
state	26	2016	Total Number of Sole Propietorship	747
state	27	2016	Total Number of Sole Propietorship	1639
state	28	2016	Total Number of Sole Propietorship	1777
state	29	2016	Total Number of Sole Propietorship	1413
state	30	2016	Total Number of Sole Propietorship	2528
state	31	2016	Total Number of Sole Propietorship	4417
state	32	2016	Total Number of Sole Propietorship	491
state	33	2016	Total Number of Sole Propietorship	1179
state	34	2016	Total Number of Sole Propietorship	640
state	35	2016	Total Number of Sole Propietorship	533
state	36	2016	Total Number of Sole Propietorship	68
state	37	2016	Total Number of Sole Propietorship	1078
\.


--
-- Name: access_to_bank access_to_bank_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.access_to_bank
    ADD CONSTRAINT access_to_bank_pkey PRIMARY KEY (geo_level, geo_code, geo_version, type);


--
-- PostgreSQL database dump complete
--
