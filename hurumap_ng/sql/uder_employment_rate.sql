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

ALTER TABLE IF EXISTS ONLY public.under_employment_rate DROP CONSTRAINT IF EXISTS under_employment_rate_pkey;
DROP TABLE IF EXISTS public.under_employment_rate;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: under_employment_rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.under_employment_rate (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    period character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: under_employment_rate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.under_employment_rate (geo_level, geo_code, geo_version, year, period, total) FROM stdin;
country	NG	2016	2017	Q1	20.4
country	NG	2016	2017	Q2	21.1
country	NG	2016	2017	Q3	21.2
country	NG	2016	2017	Q4	20.5
country	NG	2016	2018	Q1	20.2
country	NG	2016	2018	Q2	20.1
country	NG	2016	2018	Q3	20.1
state	1	2016	2017	Q1	16.3
state	1	2016	2017	Q2	16.8
state	1	2016	2017	Q3	16.8
state	1	2016	2017	Q4	16.9
state	1	2016	2018	Q1	16.5
state	1	2016	2018	Q2	16.4
state	1	2016	2018	Q3	16.4
state	2	2016	2017	Q1	26.7
state	2	2016	2017	Q2	28
state	2	2016	2017	Q3	27.8
state	2	2016	2017	Q4	25
state	2	2016	2018	Q1	24.7
state	2	2016	2018	Q2	24.7
state	2	2016	2018	Q3	24.8
state	3	2016	2017	Q1	17.5
state	3	2016	2017	Q2	18.3
state	3	2016	2017	Q3	18.8
state	3	2016	2017	Q4	20.9
state	3	2016	2018	Q1	20.8
state	3	2016	2018	Q2	20
state	3	2016	2018	Q3	20.1
state	4	2016	2017	Q1	15.2
state	4	2016	2017	Q2	15.5
state	4	2016	2017	Q3	15.7
state	4	2016	2017	Q4	17.6
state	4	2016	2018	Q1	17.5
state	4	2016	2018	Q2	17.5
state	4	2016	2018	Q3	17.6
state	5	2016	2017	Q1	28.6
state	5	2016	2017	Q2	29
state	5	2016	2017	Q3	29.4
state	5	2016	2017	Q4	24.2
state	5	2016	2018	Q1	24
state	5	2016	2018	Q2	24
state	5	2016	2018	Q3	23.6
state	6	2016	2017	Q1	16.8
state	6	2016	2017	Q2	17.4
state	6	2016	2017	Q3	17.6
state	6	2016	2017	Q4	17.6
state	6	2016	2018	Q1	17.3
state	6	2016	2018	Q2	17.2
state	6	2016	2018	Q3	17.2
state	7	2016	2017	Q1	23
state	7	2016	2017	Q2	24
state	7	2016	2017	Q3	23.8
state	7	2016	2017	Q4	25.4
state	7	2016	2018	Q1	25
state	7	2016	2018	Q2	24.9
state	7	2016	2018	Q3	25
state	8	2016	2017	Q1	26.6
state	8	2016	2017	Q2	27.9
state	8	2016	2017	Q3	27.8
state	8	2016	2017	Q4	26.2
state	8	2016	2018	Q1	25.5
state	8	2016	2018	Q2	25.5
state	8	2016	2018	Q3	25.5
state	9	2016	2017	Q1	19.5
state	9	2016	2017	Q2	19.8
state	9	2016	2017	Q3	20.1
state	9	2016	2017	Q4	20.3
state	9	2016	2018	Q1	20
state	9	2016	2018	Q2	19.9
state	9	2016	2018	Q3	19.9
state	10	2016	2017	Q1	19.2
state	10	2016	2017	Q2	19.6
state	10	2016	2017	Q3	19.7
state	10	2016	2017	Q4	18.4
state	10	2016	2018	Q1	17.9
state	10	2016	2018	Q2	18.1
state	10	2016	2018	Q3	17.9
state	11	2016	2017	Q1	16.4
state	11	2016	2017	Q2	17.1
state	11	2016	2017	Q3	17.3
state	11	2016	2017	Q4	20.1
state	11	2016	2018	Q1	19.9
state	11	2016	2018	Q2	19.7
state	11	2016	2018	Q3	19.7
state	12	2016	2017	Q1	19.3
state	12	2016	2017	Q2	19.6
state	12	2016	2017	Q3	19.5
state	12	2016	2017	Q4	18.8
state	12	2016	2018	Q1	18.5
state	12	2016	2018	Q2	18.4
state	12	2016	2018	Q3	18.4
state	13	2016	2017	Q1	13.2
state	13	2016	2017	Q2	13.5
state	13	2016	2017	Q3	13.5
state	13	2016	2017	Q4	14
state	13	2016	2018	Q1	13.9
state	13	2016	2018	Q2	13.9
state	13	2016	2018	Q3	14
state	14	2016	2017	Q1	16.7
state	14	2016	2017	Q2	17.5
state	14	2016	2017	Q3	18
state	14	2016	2017	Q4	17.7
state	14	2016	2018	Q1	17.6
state	14	2016	2018	Q2	17.6
state	14	2016	2018	Q3	17.7
state	15	2016	2017	Q1	16.4
state	15	2016	2017	Q2	17.2
state	15	2016	2017	Q3	17.2
state	15	2016	2017	Q4	16.3
state	15	2016	2018	Q1	16.1
state	15	2016	2018	Q2	16
state	15	2016	2018	Q3	16
state	16	2016	2017	Q1	36.9
state	16	2016	2017	Q2	37.4
state	16	2016	2017	Q3	37.4
state	16	2016	2017	Q4	24.2
state	16	2016	2018	Q1	23.8
state	16	2016	2018	Q2	23.7
state	16	2016	2018	Q3	23.7
state	17	2016	2017	Q1	16.4
state	17	2016	2017	Q2	16.8
state	17	2016	2017	Q3	16.8
state	17	2016	2017	Q4	15.5
state	17	2016	2018	Q1	15.2
state	17	2016	2018	Q2	15.1
state	17	2016	2018	Q3	15.1
state	18	2016	2017	Q1	41.4
state	18	2016	2017	Q2	43.3
state	18	2016	2017	Q3	43.4
state	18	2016	2017	Q4	40
state	18	2016	2018	Q1	39.4
state	18	2016	2018	Q2	39.8
state	18	2016	2018	Q3	38.1
state	19	2016	2017	Q1	28.5
state	19	2016	2017	Q2	29.7
state	19	2016	2017	Q3	29.7
state	19	2016	2017	Q4	31.8
state	19	2016	2018	Q1	31.2
state	19	2016	2018	Q2	31
state	19	2016	2018	Q3	31
state	20	2016	2017	Q1	30.3
state	20	2016	2017	Q2	31.3
state	20	2016	2017	Q3	32.4
state	20	2016	2017	Q4	24.9
state	20	2016	2018	Q1	24.4
state	20	2016	2018	Q2	24.3
state	20	2016	2018	Q3	24.3
state	21	2016	2017	Q1	44.4
state	21	2016	2017	Q2	46.6
state	21	2016	2017	Q3	46.5
state	21	2016	2017	Q4	38.9
state	21	2016	2018	Q1	38.8
state	21	2016	2018	Q2	38.4
state	21	2016	2018	Q3	39.5
state	22	2016	2017	Q1	22.6
state	22	2016	2017	Q2	23.1
state	22	2016	2017	Q3	22.9
state	22	2016	2017	Q4	16.9
state	22	2016	2018	Q1	16.8
state	22	2016	2018	Q2	16.8
state	22	2016	2018	Q3	16.9
state	23	2016	2017	Q1	20.7
state	23	2016	2017	Q2	21.1
state	23	2016	2017	Q3	21.4
state	23	2016	2017	Q4	25
state	23	2016	2018	Q1	24.8
state	23	2016	2018	Q2	24.8
state	23	2016	2018	Q3	24.8
state	24	2016	2017	Q1	17.3
state	24	2016	2017	Q2	18
state	24	2016	2017	Q3	18.4
state	24	2016	2017	Q4	21.5
state	24	2016	2018	Q1	21.3
state	24	2016	2018	Q2	21.3
state	24	2016	2018	Q3	21.4
state	25	2016	2017	Q1	14.4
state	25	2016	2017	Q2	15
state	25	2016	2017	Q3	15.4
state	25	2016	2017	Q4	12.3
state	25	2016	2018	Q1	12.2
state	25	2016	2018	Q2	12.3
state	25	2016	2018	Q3	12.4
state	26	2016	2017	Q1	23.5
state	26	2016	2017	Q2	24.6
state	26	2016	2017	Q3	24.5
state	26	2016	2017	Q4	25
state	26	2016	2018	Q1	24.5
state	26	2016	2018	Q2	24.4
state	26	2016	2018	Q3	24.3
state	27	2016	2017	Q1	28.7
state	27	2016	2017	Q2	29.5
state	27	2016	2017	Q3	29.8
state	27	2016	2017	Q4	27.4
state	27	2016	2018	Q1	27.1
state	27	2016	2018	Q2	27
state	27	2016	2018	Q3	26.9
state	28	2016	2017	Q1	10.9
state	28	2016	2017	Q2	11.1
state	28	2016	2017	Q3	11
state	28	2016	2017	Q4	10.9
state	28	2016	2018	Q1	10.8
state	28	2016	2018	Q2	10.7
state	28	2016	2018	Q3	10.9
state	29	2016	2017	Q1	18.3
state	29	2016	2017	Q2	19
state	29	2016	2017	Q3	19.1
state	29	2016	2017	Q4	17.7
state	29	2016	2018	Q1	17.5
state	29	2016	2018	Q2	17.5
state	29	2016	2018	Q3	17.5
state	30	2016	2017	Q1	13.1
state	30	2016	2017	Q2	13.7
state	30	2016	2017	Q3	13.8
state	30	2016	2017	Q4	14.7
state	30	2016	2018	Q1	14.6
state	30	2016	2018	Q2	14.6
state	30	2016	2018	Q3	14.6
state	31	2016	2017	Q1	13.3
state	31	2016	2017	Q2	13.8
state	31	2016	2017	Q3	13.6
state	31	2016	2017	Q4	14.3
state	31	2016	2018	Q1	14.2
state	31	2016	2018	Q2	14.3
state	31	2016	2018	Q3	14.3
state	32	2016	2017	Q1	21.8
state	32	2016	2017	Q2	22.2
state	32	2016	2017	Q3	22.4
state	32	2016	2017	Q4	22.6
state	32	2016	2018	Q1	22.3
state	32	2016	2018	Q2	21.6
state	32	2016	2018	Q3	21.8
state	33	2016	2017	Q1	18.8
state	33	2016	2017	Q2	19
state	33	2016	2017	Q3	18.8
state	33	2016	2017	Q4	22.9
state	33	2016	2018	Q1	22.3
state	33	2016	2018	Q2	22.2
state	33	2016	2018	Q3	21.7
state	34	2016	2017	Q1	27.7
state	34	2016	2017	Q2	28.9
state	34	2016	2017	Q3	28.7
state	34	2016	2017	Q4	27.6
state	34	2016	2018	Q1	27
state	34	2016	2018	Q2	26.8
state	34	2016	2018	Q3	26.6
state	35	2016	2017	Q1	6
state	35	2016	2017	Q2	6.2
state	35	2016	2017	Q3	6.2
state	35	2016	2017	Q4	8.9
state	35	2016	2018	Q1	8.7
state	35	2016	2018	Q2	8.8
state	35	2016	2018	Q3	9
state	36	2016	2017	Q1	35.3
state	36	2016	2017	Q2	36.8
state	36	2016	2017	Q3	36.9
state	36	2016	2017	Q4	31.1
state	36	2016	2018	Q1	30.4
state	36	2016	2018	Q2	30.1
state	36	2016	2018	Q3	30
state	37	2016	2017	Q1	25.4
state	37	2016	2017	Q2	26.4
state	37	2016	2017	Q3	27
state	37	2016	2017	Q4	22.6
state	37	2016	2018	Q1	22.3
state	37	2016	2018	Q2	21.5
state	37	2016	2018	Q3	23
\.


--
-- Name: under_employment_rate under_employment_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.under_employment_rate
    ADD CONSTRAINT under_employment_rate_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, period);


--
-- PostgreSQL database dump complete
--
