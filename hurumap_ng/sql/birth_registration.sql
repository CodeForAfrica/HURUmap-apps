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

ALTER TABLE IF EXISTS ONLY public.birth_registration DROP CONSTRAINT IF EXISTS birth_registration_pkey;
DROP TABLE IF EXISTS public.birth_registration;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: birth_registration; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.birth_registration (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    age character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: birth_registration; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.birth_registration (geo_level, geo_code, geo_version, age, total) FROM stdin;
state	1	2016	1 to 4	32.87
state	1	2016	Above 5	40.01
state	1	2016	Under 1	27
state	2	2016	1 to 4	42.88
state	2	2016	Above 5	32.13
state	2	2016	Under 1	25
state	3	2016	1 to 4	29.64
state	3	2016	Above 5	43
state	3	2016	Under 1	27.36
state	4	2016	1 to 4	21.94
state	4	2016	Above 5	58.24
state	4	2016	Under 1	20
state	5	2016	1 to 4	30.74
state	5	2016	Above 5	35.89
state	5	2016	Under 1	33.36
state	6	2016	1 to 4	30.67
state	6	2016	Above 5	46.96
state	6	2016	Under 1	22
state	7	2016	1 to 4	26.5
state	7	2016	Above 5	33.77
state	7	2016	Under 1	40
state	8	2016	1 to 4	26.28
state	8	2016	Above 5	44.72
state	8	2016	Under 1	29
state	9	2016	1 to 4	29.96
state	9	2016	Above 5	42.52
state	9	2016	Under 1	28
state	10	2016	1 to 4	28.81
state	10	2016	Above 5	30.74
state	10	2016	Under 1	40
state	11	2016	1 to 4	36.41
state	11	2016	Above 5	28.87
state	11	2016	Under 1	34.72
state	12	2016	1 to 4	22.37
state	12	2016	Above 5	37.11
state	12	2016	Under 1	40.52
state	13	2016	1 to 4	28.44
state	13	2016	Above 5	36.85
state	13	2016	Under 1	35
state	14	2016	1 to 4	28.48
state	14	2016	Above 5	37.26
state	14	2016	Under 1	34
state	15	2016	1 to 4	20.76
state	15	2016	Above 5	33.03
state	15	2016	Under 1	46
state	16	2016	1 to 4	26.89
state	16	2016	Above 5	32.21
state	16	2016	Under 1	41
state	17	2016	1 to 4	24.78
state	17	2016	Above 5	43.81
state	17	2016	Under 1	31.41
state	18	2016	1 to 4	29.17
state	18	2016	Above 5	33.54
state	18	2016	Under 1	37.28
state	19	2016	1 to 4	28.57
state	19	2016	Above 5	41.11
state	19	2016	Under 1	30
state	20	2016	1 to 4	27.58
state	20	2016	Above 5	33.73
state	20	2016	Under 1	39
state	21	2016	1 to 4	27.62
state	21	2016	Above 5	37.46
state	21	2016	Under 1	34.91
state	22	2016	1 to 4	45.27
state	22	2016	Above 5	29.03
state	22	2016	Under 1	26
state	23	2016	1 to 4	19.98
state	23	2016	Above 5	25.13
state	23	2016	Under 1	55
state	24	2016	1 to 4	26.4
state	24	2016	Above 5	25.52
state	24	2016	Under 1	48
state	25	2016	1 to 4	25.82
state	25	2016	Above 5	32.79
state	25	2016	Under 1	41
state	26	2016	1 to 4	25.05
state	26	2016	Above 5	42.42
state	26	2016	Under 1	32.53
state	27	2016	1 to 4	25.61
state	27	2016	Above 5	39.78
state	27	2016	Under 1	35
country	NG	2016	1 to 4	31.19
country	NG	2016	Above 5	35.72
country	NG	2016	Under 1	33
state	28	2016	1 to 4	30.86
state	28	2016	Above 5	31.39
state	28	2016	Under 1	38
state	29	2016	1 to 4	28.44
state	29	2016	Above 5	39.88
state	29	2016	Under 1	32
state	30	2016	1 to 4	39.9
state	30	2016	Above 5	27.92
state	30	2016	Under 1	32
state	31	2016	1 to 4	27.57
state	31	2016	Above 5	35.01
state	31	2016	Under 1	37.41
state	32	2016	1 to 4	22.98
state	32	2016	Above 5	39.38
state	32	2016	Under 1	37.64
state	33	2016	1 to 4	27.53
state	33	2016	Above 5	35.08
state	33	2016	Under 1	37.39
state	34	2016	1 to 4	34.97
state	34	2016	Above 5	36.33
state	34	2016	Under 1	28.7
state	35	2016	1 to 4	19.95
state	35	2016	Above 5	34.25
state	35	2016	Under 1	46
state	36	2016	1 to 4	39.91
state	36	2016	Above 5	32.2
state	36	2016	Under 1	27.89
state	37	2016	1 to 4	33.9
state	37	2016	Above 5	30.32
state	37	2016	Under 1	36
\.


--
-- Name: birth_registration birth_registration_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.birth_registration
    ADD CONSTRAINT birth_registration_pkey PRIMARY KEY (geo_level, geo_code, geo_version, age);


--
-- PostgreSQL database dump complete
--
