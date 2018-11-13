--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.countrys_present_economic_condition DROP CONSTRAINT IF EXISTS pk_countrys_present_economic_condition;
DROP TABLE IF EXISTS public.countrys_present_economic_condition;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: countrys_present_economic_condition; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countrys_present_economic_condition (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    countrys_present_economic_condition character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: countrys_present_economic_condition; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countrys_present_economic_condition (geo_level, geo_code, geo_version, countrys_present_economic_condition, total) FROM stdin;
county	39	2009	Don't know	1
county	34	2009	Don't know	1
county	42	2009	Don't know	1
county	2	2009	Don't know	1
county	47	2009	Don't know	1
county	4	2009	Don't know	1
county	26	2009	Don't know	1
county	30	2009	Fairly Good	12
county	36	2009	Fairly Good	17
county	39	2009	Fairly Good	12
county	40	2009	Fairly Good	2
county	28	2009	Fairly Good	3
county	14	2009	Fairly Good	13
county	7	2009	Fairly Good	4
county	43	2009	Fairly Good	4
county	11	2009	Fairly Good	3
county	34	2009	Fairly Good	17
county	37	2009	Fairly Good	1
county	35	2009	Fairly Good	14
county	22	2009	Fairly Good	70
county	3	2009	Fairly Good	3
county	20	2009	Fairly Good	17
county	45	2009	Fairly Good	7
county	42	2009	Fairly Good	4
county	15	2009	Fairly Good	7
county	2	2009	Fairly Good	6
county	31	2009	Fairly Good	6
county	5	2009	Fairly Good	2
county	16	2009	Fairly Good	23
county	17	2009	Fairly Good	11
county	9	2009	Fairly Good	11
county	10	2009	Fairly Good	4
county	12	2009	Fairly Good	27
county	44	2009	Fairly Good	3
county	1	2009	Fairly Good	13
county	21	2009	Fairly Good	28
county	47	2009	Fairly Good	70
county	32	2009	Fairly Good	30
county	29	2009	Fairly Good	21
county	33	2009	Fairly Good	15
county	46	2009	Fairly Good	4
county	18	2009	Fairly Good	21
county	19	2009	Fairly Good	22
county	25	2009	Fairly Good	1
county	41	2009	Fairly Good	6
county	6	2009	Fairly Good	6
county	13	2009	Fairly Good	8
county	26	2009	Fairly Good	8
county	23	2009	Fairly Good	3
county	27	2009	Fairly Good	11
county	38	2009	Fairly Good	3
county	8	2009	Fairly Good	6
county	24	2009	Fairly Good	3
county	30	2009	Fairly bad	12
county	36	2009	Fairly bad	13
county	39	2009	Fairly bad	20
county	40	2009	Fairly bad	15
county	28	2009	Fairly bad	10
county	14	2009	Fairly bad	12
county	7	2009	Fairly bad	8
county	43	2009	Fairly bad	15
county	34	2009	Fairly bad	15
county	37	2009	Fairly bad	37
county	35	2009	Fairly bad	13
county	22	2009	Fairly bad	14
county	3	2009	Fairly bad	20
county	20	2009	Fairly bad	6
county	45	2009	Fairly bad	21
county	42	2009	Fairly bad	13
county	15	2009	Fairly bad	25
county	2	2009	Fairly bad	13
county	31	2009	Fairly bad	6
county	5	2009	Fairly bad	3
county	16	2009	Fairly bad	25
county	17	2009	Fairly bad	13
county	9	2009	Fairly bad	13
county	10	2009	Fairly bad	2
county	12	2009	Fairly bad	22
county	44	2009	Fairly bad	21
county	1	2009	Fairly bad	15
county	21	2009	Fairly bad	12
county	47	2009	Fairly bad	67
county	32	2009	Fairly bad	37
county	29	2009	Fairly bad	15
county	33	2009	Fairly bad	14
county	46	2009	Fairly bad	19
county	18	2009	Fairly bad	6
county	19	2009	Fairly bad	6
county	25	2009	Fairly bad	1
county	41	2009	Fairly bad	20
county	6	2009	Fairly bad	3
county	4	2009	Fairly bad	2
county	13	2009	Fairly bad	5
county	26	2009	Fairly bad	15
county	23	2009	Fairly bad	23
county	27	2009	Fairly bad	24
county	38	2009	Fairly bad	11
county	8	2009	Fairly bad	4
county	24	2009	Fairly bad	13
county	47	2009	Missing	1
county	30	2009	Neither good nor bad	3
county	36	2009	Neither good nor bad	10
county	39	2009	Neither good nor bad	14
county	40	2009	Neither good nor bad	5
county	28	2009	Neither good nor bad	2
county	14	2009	Neither good nor bad	11
county	7	2009	Neither good nor bad	5
county	43	2009	Neither good nor bad	3
county	11	2009	Neither good nor bad	1
county	34	2009	Neither good nor bad	3
county	37	2009	Neither good nor bad	9
county	35	2009	Neither good nor bad	6
county	22	2009	Neither good nor bad	23
county	3	2009	Neither good nor bad	1
county	20	2009	Neither good nor bad	11
county	45	2009	Neither good nor bad	8
county	42	2009	Neither good nor bad	2
county	15	2009	Neither good nor bad	7
county	2	2009	Neither good nor bad	3
county	31	2009	Neither good nor bad	5
county	5	2009	Neither good nor bad	1
county	16	2009	Neither good nor bad	4
county	17	2009	Neither good nor bad	10
county	10	2009	Neither good nor bad	1
county	12	2009	Neither good nor bad	18
county	44	2009	Neither good nor bad	7
county	1	2009	Neither good nor bad	6
county	21	2009	Neither good nor bad	14
county	47	2009	Neither good nor bad	34
county	32	2009	Neither good nor bad	15
county	29	2009	Neither good nor bad	5
county	33	2009	Neither good nor bad	5
county	46	2009	Neither good nor bad	6
county	18	2009	Neither good nor bad	9
county	19	2009	Neither good nor bad	14
county	41	2009	Neither good nor bad	4
county	6	2009	Neither good nor bad	2
county	13	2009	Neither good nor bad	6
county	26	2009	Neither good nor bad	7
county	23	2009	Neither good nor bad	2
county	27	2009	Neither good nor bad	9
county	38	2009	Neither good nor bad	3
county	8	2009	Neither good nor bad	4
county	24	2009	Neither good nor bad	1
county	30	2009	Very bad	5
county	36	2009	Very bad	4
county	39	2009	Very bad	31
county	40	2009	Very bad	18
county	28	2009	Very bad	1
county	14	2009	Very bad	2
county	7	2009	Very bad	15
county	43	2009	Very bad	34
county	11	2009	Very bad	4
county	34	2009	Very bad	12
county	37	2009	Very bad	48
county	35	2009	Very bad	6
county	22	2009	Very bad	7
county	3	2009	Very bad	40
county	20	2009	Very bad	5
county	45	2009	Very bad	36
county	42	2009	Very bad	36
county	15	2009	Very bad	17
county	2	2009	Very bad	17
county	31	2009	Very bad	7
county	5	2009	Very bad	2
county	16	2009	Very bad	18
county	17	2009	Very bad	20
county	9	2009	Very bad	24
county	10	2009	Very bad	9
county	12	2009	Very bad	16
county	44	2009	Very bad	17
county	1	2009	Very bad	37
county	21	2009	Very bad	7
county	47	2009	Very bad	73
county	32	2009	Very bad	16
county	29	2009	Very bad	6
county	33	2009	Very bad	8
county	46	2009	Very bad	11
county	18	2009	Very bad	3
county	19	2009	Very bad	5
county	25	2009	Very bad	6
county	41	2009	Very bad	18
county	6	2009	Very bad	5
county	4	2009	Very bad	5
county	13	2009	Very bad	3
county	26	2009	Very bad	15
county	23	2009	Very bad	20
county	27	2009	Very bad	11
county	38	2009	Very bad	15
county	8	2009	Very bad	18
county	24	2009	Very bad	6
county	36	2009	Very good	4
county	39	2009	Very good	2
county	14	2009	Very good	2
county	37	2009	Very good	1
county	35	2009	Very good	1
county	22	2009	Very good	6
county	20	2009	Very good	1
county	16	2009	Very good	2
county	17	2009	Very good	2
county	12	2009	Very good	2
county	1	2009	Very good	1
county	21	2009	Very good	3
county	47	2009	Very good	2
county	32	2009	Very good	6
county	29	2009	Very good	1
county	33	2009	Very good	6
county	18	2009	Very good	1
county	19	2009	Very good	1
county	13	2009	Very good	2
county	26	2009	Very good	2
county	27	2009	Very good	1
county	24	2009	Very good	1
\.


--
-- Name: countrys_present_economic_condition pk_countrys_present_economic_condition; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countrys_present_economic_condition
    ADD CONSTRAINT pk_countrys_present_economic_condition PRIMARY KEY (geo_level, geo_code, geo_version, countrys_present_economic_condition);


--
-- PostgreSQL database dump complete
--

