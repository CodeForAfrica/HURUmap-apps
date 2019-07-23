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

ALTER TABLE IF EXISTS ONLY public.bribery_prevalence DROP CONSTRAINT IF EXISTS bribery_prevalence_pkey;
DROP TABLE IF EXISTS public.bribery_prevalence;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bribery_prevalence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bribery_prevalence (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: bribery_prevalence; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bribery_prevalence (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2016	0.36
state	2	2016	2016	0.45
state	3	2016	2016	0.18
state	4	2016	2016	0.27
state	5	2016	2016	0.20
state	6	2016	2016	0.35
state	7	2016	2016	0.37
state	8	2016	2016	0.52
state	9	2016	2016	0.40
state	10	2016	2016	0.34
state	11	2016	2016	0.19
state	12	2016	2016	0.38
state	13	2016	2016	0.26
state	14	2016	2016	0.22
state	15	2016	2016	0.29
state	16	2016	2016	0.31
state	17	2016	2016	0.21
state	18	2016	2016	0.27
state	19	2016	2016	0.36
state	20	2016	2016	0.31
state	21	2016	2016	0.27
state	22	2016	2016	0.52
state	23	2016	2016	0.32
state	24	2016	2016	0.13
state	25	2016	2016	0.35
state	26	2016	2016	0.46
state	27	2016	2016	0.20
state	28	2016	2016	0.33
state	29	2016	2016	0.42
state	30	2016	2016	0.17
state	31	2016	2016	0.40
state	32	2016	2016	0.29
state	33	2016	2016	0.40
state	34	2016	2016	0.38
state	35	2016	2016	0.51
state	36	2016	2016	0.19
state	37	2016	2016	0.50
\.


--
-- Name: bribery_prevalence bribery_prevalence_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bribery_prevalence
    ADD CONSTRAINT bribery_prevalence_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
