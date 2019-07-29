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

ALTER TABLE IF EXISTS ONLY public.cases_of_corruption DROP CONSTRAINT IF EXISTS cases_of_corruption_pkey;
DROP TABLE IF EXISTS public.cases_of_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cases_of_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cases_of_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: cases_of_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cases_of_corruption (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NG	2016	2015	1513
country	NG	2016	2016	1564
state	1	2016	2015	10
state	1	2016	2016	17
state	2	2016	2015	15
state	2	2016	2016	11
state	3	2016	2015	35
state	3	2016	2016	44
state	4	2016	2015	27
state	4	2016	2016	17
state	5	2016	2015	36
state	5	2016	2016	32
state	6	2016	2015	10
state	6	2016	2016	4
state	7	2016	2015	21
state	7	2016	2016	23
state	8	2016	2015	4
state	8	2016	2016	12
state	9	2016	2015	16
state	9	2016	2016	22
state	10	2016	2015	54
state	10	2016	2016	52
state	11	2016	2015	15
state	11	2016	2016	8
state	12	2016	2015	44
state	12	2016	2016	39
state	13	2016	2015	4
state	13	2016	2016	7
state	14	2016	2015	65
state	14	2016	2016	32
state	15	2016	2015	591
state	15	2016	2016	657
state	16	2016	2015	0
state	16	2016	2016	1
state	17	2016	2015	44
state	17	2016	2016	27
state	18	2016	2015	2
state	18	2016	2016	0
state	19	2016	2015	71
state	19	2016	2016	75
state	20	2016	2015	19
state	20	2016	2016	21
state	21	2016	2015	7
state	21	2016	2016	3
state	22	2016	2015	5
state	22	2016	2016	3
state	23	2016	2015	22
state	23	2016	2016	22
state	24	2016	2015	10
state	24	2016	2016	21
state	25	2016	2015	126
state	25	2016	2016	141
state	26	2016	2015	20
state	26	2016	2016	28
state	27	2016	2015	15
state	27	2016	2016	15
state	28	2016	2015	16
state	28	2016	2016	22
state	29	2016	2015	13
state	29	2016	2016	12
state	30	2016	2015	32
state	30	2016	2016	56
state	31	2016	2015	57
state	31	2016	2016	59
state	32	2016	2015	8
state	32	2016	2016	19
state	33	2016	2015	81
state	33	2016	2016	40
state	34	2016	2015	5
state	34	2016	2016	8
state	35	2016	2015	9
state	35	2016	2016	4
state	36	2016	2015	1
state	36	2016	2016	0
state	37	2016	2015	3
state	37	2016	2016	10
\.


--
-- Name: cases_of_corruption cases_of_corruption_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cases_of_corruption
    ADD CONSTRAINT cases_of_corruption_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
