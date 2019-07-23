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

ALTER TABLE IF EXISTS ONLY public.drug_arrests DROP CONSTRAINT IF EXISTS drug_arrests_pkey;
DROP TABLE IF EXISTS public.drug_arrests;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: drug_arrests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.drug_arrests (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: drug_arrests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.drug_arrests (geo_level, geo_code, geo_version, gender, total) FROM stdin;
country	NG	2016	Female	652
country	NG	2016	Male	8926
state	1	2016	Female	51
state	1	2016	Male	404
state	2	2016	Female	11
state	2	2016	Male	242
state	3	2016	Female	48
state	3	2016	Male	370
state	4	2016	Female	7
state	4	2016	Male	189
state	5	2016	Female	26
state	5	2016	Male	473
state	6	2016	Female	83
state	6	2016	Male	269
state	7	2016	Female	11
state	7	2016	Male	147
state	8	2016	Female	10
state	8	2016	Male	612
state	9	2016	Female	22
state	9	2016	Male	178
state	10	2016	Female	46
state	10	2016	Male	164
state	11	2016	Female	11
state	11	2016	Male	150
state	12	2016	Female	68
state	12	2016	Male	260
state	13	2016	Female	8
state	13	2016	Male	41
state	14	2016	Female	1
state	14	2016	Male	91
state	15	2016	Female	8
state	15	2016	Male	240
state	16	2016	Female	0
state	16	2016	Male	59
state	17	2016	Female	7
state	17	2016	Male	56
state	18	2016	Female	3
state	18	2016	Male	634
state	19	2016	Female	10
state	19	2016	Male	249
state	20	2016	Female	7
state	20	2016	Male	533
state	21	2016	Female	16
state	21	2016	Male	803
state	22	2016	Female	3
state	22	2016	Male	198
state	23	2016	Female	7
state	23	2016	Male	106
state	24	2016	Female	10
state	24	2016	Male	93
state	25	2016	Female	3
state	25	2016	Male	158
state	26	2016	Female	0
state	26	2016	Male	62
state	27	2016	Female	7
state	27	2016	Male	166
state	28	2016	Female	25
state	28	2016	Male	140
state	29	2016	Female	31
state	29	2016	Male	232
state	30	2016	Female	16
state	30	2016	Male	192
state	31	2016	Female	20
state	31	2016	Male	182
state	32	2016	Female	19
state	32	2016	Male	419
state	33	2016	Female	38
state	33	2016	Male	194
state	34	2016	Female	4
state	34	2016	Male	133
state	35	2016	Female	2
state	35	2016	Male	106
state	36	2016	Female	0
state	36	2016	Male	111
state	37	2016	Female	13
state	37	2016	Male	270
\.


--
-- Name: drug_arrests drug_arrests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drug_arrests
    ADD CONSTRAINT drug_arrests_pkey PRIMARY KEY (geo_level, geo_code, geo_version, gender);


--
-- PostgreSQL database dump complete
--
