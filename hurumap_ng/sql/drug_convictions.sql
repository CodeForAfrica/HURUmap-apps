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

ALTER TABLE IF EXISTS ONLY public.drug_convictions DROP CONSTRAINT IF EXISTS drug_convictions_pkey;
DROP TABLE IF EXISTS public.drug_convictions;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: drug_convictions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.drug_convictions (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: drug_convictions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.drug_convictions (geo_level, geo_code, geo_version, gender, total) FROM stdin;
country	NG	2016	Female	17
country	NG	2016	Male	1167
state	1	2016	Female	1
state	1	2016	Male	38
state	2	2016	Female	0
state	2	2016	Male	47
state	3	2016	Female	0
state	3	2016	Male	3
state	4	2016	Female	0
state	4	2016	Male	20
state	5	2016	Female	0
state	5	2016	Male	25
state	6	2016	Female	0
state	6	2016	Male	0
state	7	2016	Female	0
state	7	2016	Male	0
state	8	2016	Female	0
state	8	2016	Male	4
state	9	2016	Female	1
state	9	2016	Male	44
state	10	2016	Female	2
state	10	2016	Male	20
state	11	2016	Female	2
state	11	2016	Male	43
state	12	2016	Female	2
state	12	2016	Male	24
state	13	2016	Female	0
state	13	2016	Male	3
state	14	2016	Female	0
state	14	2016	Male	24
state	15	2016	Female	3
state	15	2016	Male	87
state	16	2016	Female	0
state	16	2016	Male	20
state	17	2016	Female	0
state	17	2016	Male	1
state	18	2016	Female	0
state	18	2016	Male	102
state	19	2016	Female	0
state	19	2016	Male	22
state	20	2016	Female	0
state	20	2016	Male	62
state	21	2016	Female	0
state	21	2016	Male	93
state	22	2016	Female	0
state	22	2016	Male	35
state	23	2016	Female	0
state	23	2016	Male	7
state	24	2016	Female	0
state	24	2016	Male	9
state	25	2016	Female	1
state	25	2016	Male	108
state	26	2016	Female	2
state	26	2016	Male	25
state	27	2016	Female	0
state	27	2016	Male	17
state	28	2016	Female	0
state	28	2016	Male	7
state	29	2016	Female	0
state	29	2016	Male	31
state	30	2016	Female	1
state	30	2016	Male	23
state	31	2016	Female	0
state	31	2016	Male	40
state	32	2016	Female	1
state	32	2016	Male	58
state	33	2016	Female	1
state	33	2016	Male	26
state	34	2016	Female	0
state	34	2016	Male	30
state	35	2016	Female	0
state	35	2016	Male	13
state	36	2016	Female	0
state	36	2016	Male	34
state	37	2016	Female	0
state	37	2016	Male	22
\.


--
-- Name: drug_convictions drug_convictions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drug_convictions
    ADD CONSTRAINT drug_convictions_pkey PRIMARY KEY (geo_level, geo_code, geo_version, gender);


--
-- PostgreSQL database dump complete
--
