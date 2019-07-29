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

ALTER TABLE IF EXISTS ONLY public.immunization_coverage DROP CONSTRAINT IF EXISTS immunization_coverage_pkey;
DROP TABLE IF EXISTS public.immunization_coverage;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: immunization_coverage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.immunization_coverage (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    immunization character varying(128) NOT NULL,
    method character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: immunization_coverage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.immunization_coverage (geo_level, geo_code, geo_version, immunization, method, total) FROM stdin;
state	1	2016	Measles Vaccine	By Card	42.4
state	1	2016	Measles Vaccine	By Recall	43.9
state	1	2016	Penta Vaccine	By Card	53
state	1	2016	Penta Vaccine	By Recall	42.4
state	2	2016	Measles Vaccine	By Card	30.8
state	2	2016	Measles Vaccine	By Recall	37.6
state	2	2016	Penta Vaccine	By Card	28.6
state	2	2016	Penta Vaccine	By Recall	41.4
state	3	2016	Measles Vaccine	By Card	38.8
state	3	2016	Measles Vaccine	By Recall	24.7
state	3	2016	Penta Vaccine	By Card	48.2
state	3	2016	Penta Vaccine	By Recall	32.9
state	4	2016	Measles Vaccine	By Card	44.3
state	4	2016	Measles Vaccine	By Recall	32.9
state	4	2016	Penta Vaccine	By Card	57
state	4	2016	Penta Vaccine	By Recall	34.2
state	5	2016	Measles Vaccine	By Card	13.6
state	5	2016	Measles Vaccine	By Recall	40.9
state	5	2016	Penta Vaccine	By Card	17.6
state	5	2016	Penta Vaccine	By Recall	37.5
state	6	2016	Measles Vaccine	By Card	26.7
state	6	2016	Measles Vaccine	By Recall	25
state	6	2016	Penta Vaccine	By Card	31.7
state	6	2016	Penta Vaccine	By Recall	28.3
state	7	2016	Measles Vaccine	By Card	28.1
state	7	2016	Measles Vaccine	By Recall	32.3
state	7	2016	Penta Vaccine	By Card	36.5
state	7	2016	Penta Vaccine	By Recall	26
state	8	2016	Measles Vaccine	By Card	22.7
state	8	2016	Measles Vaccine	By Recall	31.9
state	8	2016	Penta Vaccine	By Card	26.1
state	8	2016	Penta Vaccine	By Recall	34.5
state	9	2016	Measles Vaccine	By Card	55.3
state	9	2016	Measles Vaccine	By Recall	20
state	9	2016	Penta Vaccine	By Card	63.5
state	9	2016	Penta Vaccine	By Recall	25.9
state	10	2016	Measles Vaccine	By Card	32.8
state	10	2016	Measles Vaccine	By Recall	46.9
state	10	2016	Penta Vaccine	By Card	34.4
state	10	2016	Penta Vaccine	By Recall	50
state	11	2016	Measles Vaccine	By Card	56.7
state	11	2016	Measles Vaccine	By Recall	17.9
state	11	2016	Penta Vaccine	By Card	73.1
state	11	2016	Penta Vaccine	By Recall	17.9
state	12	2016	Measles Vaccine	By Card	50
state	12	2016	Measles Vaccine	By Recall	37.5
state	12	2016	Penta Vaccine	By Card	54.7
state	12	2016	Penta Vaccine	By Recall	39.1
state	13	2016	Measles Vaccine	By Card	38.5
state	13	2016	Measles Vaccine	By Recall	53.8
state	13	2016	Penta Vaccine	By Card	43.1
state	13	2016	Penta Vaccine	By Recall	53.8
state	14	2016	Measles Vaccine	By Card	54.2
state	14	2016	Measles Vaccine	By Recall	25.4
state	14	2016	Penta Vaccine	By Card	61
state	14	2016	Penta Vaccine	By Recall	27.1
state	15	2016	Measles Vaccine	By Card	63.4
state	15	2016	Measles Vaccine	By Recall	22
state	15	2016	Penta Vaccine	By Card	68.3
state	15	2016	Penta Vaccine	By Recall	19.5
state	16	2016	Measles Vaccine	By Card	26.7
state	16	2016	Measles Vaccine	By Recall	36.4
state	16	2016	Penta Vaccine	By Card	29.1
state	16	2016	Penta Vaccine	By Recall	35.8
state	17	2016	Measles Vaccine	By Card	56.6
state	17	2016	Measles Vaccine	By Recall	30.2
state	17	2016	Penta Vaccine	By Card	60.4
state	17	2016	Penta Vaccine	By Recall	35.8
state	18	2016	Measles Vaccine	By Card	19
state	18	2016	Measles Vaccine	By Recall	43.1
state	18	2016	Penta Vaccine	By Card	22.2
state	18	2016	Penta Vaccine	By Recall	31.5
state	19	2016	Measles Vaccine	By Card	21.3
state	19	2016	Measles Vaccine	By Recall	46.7
state	19	2016	Penta Vaccine	By Card	24.6
state	19	2016	Penta Vaccine	By Recall	29.5
state	20	2016	Measles Vaccine	By Card	19
state	20	2016	Measles Vaccine	By Recall	29.9
state	20	2016	Penta Vaccine	By Card	22.4
state	20	2016	Penta Vaccine	By Recall	34.7
state	21	2016	Measles Vaccine	By Card	6.7
state	21	2016	Measles Vaccine	By Recall	9.1
state	21	2016	Penta Vaccine	By Card	9.1
state	21	2016	Penta Vaccine	By Recall	18.2
state	22	2016	Measles Vaccine	By Card	9.9
state	22	2016	Measles Vaccine	By Recall	8.9
state	22	2016	Penta Vaccine	By Card	16.1
state	22	2016	Penta Vaccine	By Recall	19.3
state	23	2016	Measles Vaccine	By Card	29.8
state	23	2016	Measles Vaccine	By Recall	33.3
state	23	2016	Penta Vaccine	By Card	33.3
state	23	2016	Penta Vaccine	By Recall	23.8
state	24	2016	Measles Vaccine	By Card	29.8
state	24	2016	Measles Vaccine	By Recall	33.3
state	24	2016	Penta Vaccine	By Card	33.3
state	24	2016	Penta Vaccine	By Recall	23.8
state	25	2016	Measles Vaccine	By Card	66.2
state	25	2016	Measles Vaccine	By Recall	29.4
state	25	2016	Penta Vaccine	By Card	64.7
state	25	2016	Penta Vaccine	By Recall	29.4
state	26	2016	Measles Vaccine	By Card	36.5
state	26	2016	Measles Vaccine	By Recall	30.6
state	26	2016	Penta Vaccine	By Card	44.7
state	26	2016	Penta Vaccine	By Recall	37.6
state	27	2016	Measles Vaccine	By Card	28.4
state	27	2016	Measles Vaccine	By Recall	41
state	27	2016	Penta Vaccine	By Card	24
state	27	2016	Penta Vaccine	By Recall	25.7
country	NG	2016	Measles Vaccine	By Card	33.4
country	NG	2016	Measles Vaccine	By Recall	31.3
country	NG	2016	Penta Vaccine	By Card	38
country	NG	2016	Penta Vaccine	By Recall	31.9
state	28	2016	Measles Vaccine	By Card	36.3
state	28	2016	Measles Vaccine	By Recall	33.8
state	28	2016	Penta Vaccine	By Card	32.5
state	28	2016	Penta Vaccine	By Recall	43.8
state	29	2016	Measles Vaccine	By Card	50
state	29	2016	Measles Vaccine	By Recall	35.2
state	29	2016	Penta Vaccine	By Card	55.6
state	29	2016	Penta Vaccine	By Recall	31.5
state	30	2016	Measles Vaccine	By Card	21.6
state	30	2016	Measles Vaccine	By Recall	49
state	30	2016	Penta Vaccine	By Card	47.1
state	30	2016	Penta Vaccine	By Recall	51
state	31	2016	Measles Vaccine	By Card	38.9
state	31	2016	Measles Vaccine	By Recall	20.8
state	31	2016	Penta Vaccine	By Card	45.8
state	31	2016	Penta Vaccine	By Recall	25
state	32	2016	Measles Vaccine	By Card	37.2
state	32	2016	Measles Vaccine	By Recall	33.9
state	32	2016	Penta Vaccine	By Card	42.1
state	32	2016	Penta Vaccine	By Recall	38.8
state	33	2016	Measles Vaccine	By Card	44.9
state	33	2016	Measles Vaccine	By Recall	30.4
state	33	2016	Penta Vaccine	By Card	52.2
state	33	2016	Penta Vaccine	By Recall	37.7
state	34	2016	Measles Vaccine	By Card	15.4
state	34	2016	Measles Vaccine	By Recall	8.3
state	34	2016	Penta Vaccine	By Card	17.9
state	34	2016	Penta Vaccine	By Recall	15.4
state	35	2016	Measles Vaccine	By Card	21.1
state	35	2016	Measles Vaccine	By Recall	45
state	35	2016	Penta Vaccine	By Card	29.4
state	35	2016	Penta Vaccine	By Recall	47.7
state	36	2016	Measles Vaccine	By Card	32.9
state	36	2016	Measles Vaccine	By Recall	31.6
state	36	2016	Penta Vaccine	By Card	34.9
state	36	2016	Penta Vaccine	By Recall	32.9
state	37	2016	Measles Vaccine	By Card	10.2
state	37	2016	Measles Vaccine	By Recall	10.2
state	37	2016	Penta Vaccine	By Card	10.2
state	37	2016	Penta Vaccine	By Recall	10.6
\.


--
-- Name: immunization_coverage immunization_coverage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.immunization_coverage
    ADD CONSTRAINT immunization_coverage_pkey PRIMARY KEY (geo_level, geo_code, geo_version, immunization, method);


--
-- PostgreSQL database dump complete
--
