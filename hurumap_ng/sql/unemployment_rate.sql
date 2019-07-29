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

ALTER TABLE IF EXISTS ONLY public.unemployment_rate DROP CONSTRAINT IF EXISTS unemployment_rate_pkey;
DROP TABLE IF EXISTS public.unemployment_rate;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: unemployment_rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.unemployment_rate (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    period character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: unemployment_rate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.unemployment_rate (geo_level, geo_code, geo_version, year, period, total) FROM stdin;
country	NG	2016	2017	Q1	14.4
country	NG	2016	2017	Q2	16.2
country	NG	2016	2017	Q3	18.8
country	NG	2016	2017	Q4	20.4
country	NG	2016	2018	Q1	21.8
country	NG	2016	2018	Q2	22.7
country	NG	2016	2018	Q3	23.1
state	1	2016	2017	Q1	21.8
state	1	2016	2017	Q2	24.5
state	1	2016	2017	Q3	28.6
state	1	2016	2017	Q4	27.9
state	1	2016	2018	Q1	29.9
state	1	2016	2018	Q2	31.2
state	1	2016	2018	Q3	31.6
state	2	2016	2017	Q1	5.3
state	2	2016	2017	Q2	6
state	2	2016	2017	Q3	6.9
state	2	2016	2017	Q4	18.3
state	2	2016	2018	Q1	19.6
state	2	2016	2018	Q2	20.5
state	2	2016	2018	Q3	20.8
state	3	2016	2017	Q1	28.1
state	3	2016	2017	Q2	31.9
state	3	2016	2017	Q3	37.9
state	3	2016	2017	Q4	34.9
state	3	2016	2018	Q1	35.3
state	3	2016	2018	Q2	36.5
state	3	2016	2018	Q3	37.7
state	4	2016	2017	Q1	10.5
state	4	2016	2017	Q2	12.1
state	4	2016	2017	Q3	13.8
state	4	2016	2017	Q4	15.3
state	4	2016	2018	Q1	16.4
state	4	2016	2018	Q2	17.1
state	4	2016	2018	Q3	17.5
state	5	2016	2017	Q1	7
state	5	2016	2017	Q2	8
state	5	2016	2017	Q3	9.3
state	5	2016	2017	Q4	21.1
state	5	2016	2018	Q1	22.5
state	5	2016	2018	Q2	22.5
state	5	2016	2018	Q3	23.5
state	6	2016	2017	Q1	23.3
state	6	2016	2017	Q2	25.8
state	6	2016	2017	Q3	30
state	6	2016	2017	Q4	29
state	6	2016	2018	Q1	30.8
state	6	2016	2018	Q2	32
state	6	2016	2018	Q3	32.6
state	7	2016	2017	Q1	8.2
state	7	2016	2017	Q2	9.1
state	7	2016	2017	Q3	10.4
state	7	2016	2017	Q4	17.4
state	7	2016	2018	Q1	18.8
state	7	2016	2018	Q2	19.8
state	7	2016	2018	Q3	20.1
state	8	2016	2017	Q1	18
state	8	2016	2017	Q2	20.7
state	8	2016	2017	Q3	24.6
state	8	2016	2017	Q4	27.1
state	8	2016	2018	Q1	29.6
state	8	2016	2018	Q2	31.1
state	8	2016	2018	Q3	31.4
state	9	2016	2017	Q1	15.6
state	9	2016	2017	Q2	17.7
state	9	2016	2017	Q3	20.8
state	9	2016	2017	Q4	27.6
state	9	2016	2018	Q1	29.2
state	9	2016	2018	Q2	30.1
state	9	2016	2018	Q3	30.6
state	10	2016	2017	Q1	13.8
state	10	2016	2017	Q2	15.4
state	10	2016	2017	Q3	18.1
state	10	2016	2017	Q4	22.4
state	10	2016	2018	Q1	24.7
state	10	2016	2018	Q2	25.1
state	10	2016	2018	Q3	25.4
state	11	2016	2017	Q1	14.2
state	11	2016	2017	Q2	16.3
state	11	2016	2017	Q3	18.9
state	11	2016	2017	Q4	18.5
state	11	2016	2018	Q1	19.9
state	11	2016	2018	Q2	20.7
state	11	2016	2018	Q3	21.1
state	12	2016	2017	Q1	15.3
state	12	2016	2017	Q2	17
state	12	2016	2017	Q3	19.6
state	12	2016	2017	Q4	22.2
state	12	2016	2018	Q1	23.7
state	12	2016	2018	Q2	24.7
state	12	2016	2018	Q3	25.1
state	13	2016	2017	Q1	11.2
state	13	2016	2017	Q2	12.5
state	13	2016	2017	Q3	14.6
state	13	2016	2017	Q4	17.7
state	13	2016	2018	Q1	19
state	13	2016	2018	Q2	19.8
state	13	2016	2018	Q3	20.2
state	14	2016	2017	Q1	15.5
state	14	2016	2017	Q2	17.8
state	14	2016	2017	Q3	20.5
state	14	2016	2017	Q4	16.2
state	14	2016	2018	Q1	17.5
state	14	2016	2018	Q2	18.4
state	14	2016	2018	Q3	18.7
state	15	2016	2017	Q1	11.9
state	15	2016	2017	Q2	13.4
state	15	2016	2017	Q3	15.7
state	15	2016	2017	Q4	21.7
state	15	2016	2018	Q1	23.1
state	15	2016	2018	Q2	24
state	15	2016	2018	Q3	24.4
state	16	2016	2017	Q1	8.4
state	16	2016	2017	Q2	9.3
state	16	2016	2017	Q3	10.7
state	16	2016	2017	Q4	24
state	16	2016	2018	Q1	25.6
state	16	2016	2018	Q2	26.6
state	16	2016	2018	Q3	27
state	17	2016	2017	Q1	22.6
state	17	2016	2017	Q2	25.5
state	17	2016	2017	Q3	29.4
state	17	2016	2017	Q4	25.2
state	17	2016	2018	Q1	26.7
state	17	2016	2018	Q2	27.7
state	17	2016	2018	Q3	28.2
state	18	2016	2017	Q1	14.9
state	18	2016	2017	Q2	17.1
state	18	2016	2017	Q3	19.5
state	18	2016	2017	Q4	24.2
state	18	2016	2018	Q1	25.8
state	18	2016	2018	Q2	25.1
state	18	2016	2018	Q3	26.5
state	19	2016	2017	Q1	22.2
state	19	2016	2017	Q2	24.3
state	19	2016	2017	Q3	28
state	19	2016	2017	Q4	23.8
state	19	2016	2018	Q1	25.4
state	19	2016	2018	Q2	26.4
state	19	2016	2018	Q3	26.8
state	20	2016	2017	Q1	15.1
state	20	2016	2017	Q2	16.9
state	20	2016	2017	Q3	19.5
state	20	2016	2017	Q4	28.1
state	20	2016	2018	Q1	29.7
state	20	2016	2018	Q2	30.7
state	20	2016	2018	Q3	31.3
state	21	2016	2017	Q1	2.5
state	21	2016	2017	Q2	2.7
state	21	2016	2017	Q3	3.1
state	21	2016	2017	Q4	12.4
state	21	2016	2018	Q1	13.4
state	21	2016	2018	Q2	14.9
state	21	2016	2018	Q3	14.3
state	22	2016	2017	Q1	6.2
state	22	2016	2017	Q2	7
state	22	2016	2017	Q3	8.2
state	22	2016	2017	Q4	17.8
state	22	2016	2018	Q1	19
state	22	2016	2018	Q2	19.7
state	22	2016	2018	Q3	20.1
state	23	2016	2017	Q1	16.5
state	23	2016	2017	Q2	18
state	23	2016	2017	Q3	20.6
state	23	2016	2017	Q4	17.6
state	23	2016	2018	Q1	18.7
state	23	2016	2018	Q2	19.4
state	23	2016	2018	Q3	19.7
state	24	2016	2017	Q1	10.2
state	24	2016	2017	Q2	11.4
state	24	2016	2017	Q3	13.2
state	24	2016	2017	Q4	18.7
state	24	2016	2018	Q1	20
state	24	2016	2018	Q2	20.8
state	24	2016	2018	Q3	21.1
state	25	2016	2017	Q1	13.6
state	25	2016	2017	Q2	15.5
state	25	2016	2017	Q3	18.3
state	25	2016	2017	Q4	13
state	25	2016	2018	Q1	13.7
state	25	2016	2018	Q2	14.2
state	25	2016	2018	Q3	14.6
state	26	2016	2017	Q1	22.2
state	26	2016	2017	Q2	25.5
state	26	2016	2017	Q3	28.9
state	26	2016	2017	Q4	24.6
state	26	2016	2018	Q1	26
state	26	2016	2018	Q2	26.9
state	26	2016	2018	Q3	27.4
state	27	2016	2017	Q1	8.1
state	27	2016	2017	Q2	9.3
state	27	2016	2017	Q3	10.8
state	27	2016	2017	Q4	18.4
state	27	2016	2018	Q1	19.7
state	27	2016	2018	Q2	20.5
state	27	2016	2018	Q3	20.9
state	28	2016	2017	Q1	7.4
state	28	2016	2017	Q2	8.5
state	28	2016	2017	Q3	9.6
state	28	2016	2017	Q4	14.1
state	28	2016	2018	Q1	15.2
state	28	2016	2018	Q2	16.5
state	28	2016	2018	Q3	16.4
state	29	2016	2017	Q1	11.9
state	29	2016	2017	Q2	13.3
state	29	2016	2017	Q3	15.4
state	29	2016	2017	Q4	12.4
state	29	2016	2018	Q1	13.4
state	29	2016	2018	Q2	14
state	29	2016	2018	Q3	14.2
state	30	2016	2017	Q1	4.1
state	30	2016	2017	Q2	4.5
state	30	2016	2017	Q3	5.3
state	30	2016	2017	Q4	8.7
state	30	2016	2018	Q1	9.4
state	30	2016	2018	Q2	9.9
state	30	2016	2018	Q3	10.1
state	31	2016	2017	Q1	7
state	31	2016	2017	Q2	7.9
state	31	2016	2017	Q3	9.1
state	31	2016	2017	Q4	8.9
state	31	2016	2018	Q1	10.1
state	31	2016	2018	Q2	10.1
state	31	2016	2018	Q3	10.3
state	32	2016	2017	Q1	19.6
state	32	2016	2017	Q2	21.5
state	32	2016	2017	Q3	24.1
state	32	2016	2017	Q4	26.6
state	32	2016	2018	Q1	27.5
state	32	2016	2018	Q2	29
state	32	2016	2018	Q3	29.8
state	33	2016	2017	Q1	32.1
state	33	2016	2017	Q2	35.1
state	33	2016	2017	Q3	41.3
state	33	2016	2017	Q4	33
state	33	2016	2018	Q1	35
state	33	2016	2018	Q2	35.6
state	33	2016	2018	Q3	36.4
state	34	2016	2017	Q1	14.3
state	34	2016	2017	Q2	15.8
state	34	2016	2017	Q3	18.5
state	34	2016	2017	Q4	22.9
state	34	2016	2018	Q1	24.6
state	34	2016	2018	Q2	25.7
state	34	2016	2018	Q3	26
state	35	2016	2017	Q1	5.5
state	35	2016	2017	Q2	6.2
state	35	2016	2017	Q3	7.3
state	35	2016	2017	Q4	16.3
state	35	2016	2018	Q1	18.3
state	35	2016	2018	Q2	19.7
state	35	2016	2018	Q3	19
state	36	2016	2017	Q1	16.4
state	36	2016	2017	Q2	18.7
state	36	2016	2017	Q3	21.2
state	36	2016	2017	Q4	25.6
state	36	2016	2018	Q1	27.4
state	36	2016	2018	Q2	28.5
state	36	2016	2018	Q3	29
state	37	2016	2017	Q1	5.8
state	37	2016	2017	Q2	6.5
state	37	2016	2017	Q3	7.5
state	37	2016	2017	Q4	15.1
state	37	2016	2018	Q1	16.3
state	37	2016	2018	Q2	19.8
state	37	2016	2018	Q3	18
\.


--
-- Name: unemployment_rate unemployment_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.unemployment_rate
    ADD CONSTRAINT unemployment_rate_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, period);


--
-- PostgreSQL database dump complete
--
