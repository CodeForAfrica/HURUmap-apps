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

ALTER TABLE IF EXISTS ONLY public.drug_use DROP CONSTRAINT IF EXISTS drug_use_pkey;
DROP TABLE IF EXISTS public.drug_use;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: drug_use; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.drug_use (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    drug character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: drug_use; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.drug_use (geo_level, geo_code, geo_version, drug, total) FROM stdin;
country	NG	2016	Female	44
country	NG	2016	Male	958
state	1	2016	Female	0
state	1	2016	Male	7
state	2	2016	Female	0
state	2	2016	Male	0
state	3	2016	Female	0
state	3	2016	Male	43
state	4	2016	Female	1
state	4	2016	Male	77
state	5	2016	Female	0
state	5	2016	Male	4
state	6	2016	Female	9
state	6	2016	Male	46
state	7	2016	Female	4
state	7	2016	Male	43
state	8	2016	Female	0
state	8	2016	Male	9
state	9	2016	Female	4
state	9	2016	Male	21
state	10	2016	Female	1
state	10	2016	Male	13
state	11	2016	Female	0
state	11	2016	Male	11
state	12	2016	Female	8
state	12	2016	Male	40
state	13	2016	Female	1
state	13	2016	Male	80
state	14	2016	Female	0
state	14	2016	Male	0
state	15	2016	Female	0
state	15	2016	Male	6
state	16	2016	Female	0
state	16	2016	Male	1
state	17	2016	Female	0
state	17	2016	Male	8
state	18	2016	Female	0
state	18	2016	Male	43
state	19	2016	Female	0
state	19	2016	Male	0
state	20	2016	Female	0
state	20	2016	Male	88
state	21	2016	Female	0
state	21	2016	Male	52
state	22	2016	Female	0
state	22	2016	Male	22
state	23	2016	Female	0
state	23	2016	Male	0
state	24	2016	Female	3
state	24	2016	Male	10
state	25	2016	Female	1
state	25	2016	Male	23
state	26	2016	Female	3
state	26	2016	Male	17
state	27	2016	Female	2
state	27	2016	Male	21
state	28	2016	Female	0
state	28	2016	Male	0
state	29	2016	Female	0
state	29	2016	Male	0
state	30	2016	Female	0
state	30	2016	Male	59
state	31	2016	Female	1
state	31	2016	Male	13
state	32	2016	Female	0
state	32	2016	Male	21
state	33	2016	Female	4
state	33	2016	Male	26
state	34	2016	Female	0
state	34	2016	Male	30
state	35	2016	Female	0
state	35	2016	Male	7
state	36	2016	Female	0
state	36	2016	Male	67
state	37	2016	Female	2
state	37	2016	Male	50
\.


--
-- Name: drug_use drug_use_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drug_use
    ADD CONSTRAINT drug_use_pkey PRIMARY KEY (geo_level, geo_code, geo_version, drug);


--
-- PostgreSQL database dump complete
--
