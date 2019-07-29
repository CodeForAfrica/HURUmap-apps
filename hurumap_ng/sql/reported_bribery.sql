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

ALTER TABLE IF EXISTS ONLY public.bribery_report_rate DROP CONSTRAINT IF EXISTS bribery_report_rate_pkey;
DROP TABLE IF EXISTS public.bribery_report_rate;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bribery_report_rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bribery_report_rate (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    status character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: bribery_report_rate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bribery_report_rate (geo_level, geo_code, geo_version, status, total) FROM stdin;
state	1	2016	Did not report	0.93
state	1	2016	Reported to official authority or non-official institution	0.06
state	2	2016	Did not report	0.82
state	2	2016	Reported to official authority or non-official institution	0.14
state	3	2016	Did not report	0.87
state	3	2016	Reported to official authority or non-official institution	0.04
state	4	2016	Reported to official authority or non-official institution	0.03
state	4	2016	Did not report	0.94
state	5	2016	Did not report	0.98
state	5	2016	Reported to official authority or non-official institution	0.01
state	6	2016	Did not report	0.93
state	6	2016	Reported to official authority or non-official institution	0.03
state	7	2016	Did not report	0.97
state	7	2016	Reported to official authority or non-official institution	0.02
state	8	2016	Reported to official authority or non-official institution	0.02
state	8	2016	Did not report	0.97
state	9	2016	Did not report	0.90
state	9	2016	Reported to official authority or non-official institution	0.08
state	10	2016	Reported to official authority or non-official institution	0.01
state	10	2016	Did not report	0.99
state	11	2016	Did not report	0.91
state	11	2016	Reported to official authority or non-official institution	0.03
state	12	2016	Did not report	0.75
state	12	2016	Reported to official authority or non-official institution	0.19
state	13	2016	Did not report	0.97
state	13	2016	Reported to official authority or non-official institution	0.02
state	14	2016	Did not report	0.92
state	14	2016	Reported to official authority or non-official institution	0.05
state	15	2016	Did not report	0.84
state	15	2016	Reported to official authority or non-official institution	0.12
state	16	2016	Reported to official authority or non-official institution	0.03
state	16	2016	Did not report	0.94
state	17	2016	Did not report	0.88
state	17	2016	Reported to official authority or non-official institution	0.06
state	18	2016	Did not report	0.93
state	18	2016	Reported to official authority or non-official institution	0.06
state	19	2016	Did not report	0.95
state	19	2016	Reported to official authority or non-official institution	0.03
state	20	2016	Reported to official authority or non-official institution	0.02
state	20	2016	Did not report	0.95
state	21	2016	Reported to official authority or non-official institution	0.13
state	21	2016	Did not report	0.74
state	22	2016	Did not report	0.96
state	22	2016	Reported to official authority or non-official institution	0.02
state	23	2016	Did not report	0.98
state	23	2016	Reported to official authority or non-official institution	0.04
state	24	2016	Reported to official authority or non-official institution	0.02
state	24	2016	Did not report	0.98
state	25	2016	Did not report	0.97
state	25	2016	Reported to official authority or non-official institution	0.02
state	26	2016	Did not report	0.96
state	26	2016	Reported to official authority or non-official institution	0.02
state	27	2016	Did not report	0.97
state	27	2016	Reported to official authority or non-official institution	0.01
state	28	2016	Did not report	0.98
state	28	2016	Reported to official authority or non-official institution	0.02
state	29	2016	Did not report	0.93
state	29	2016	Reported to official authority or non-official institution	0.04
state	30	2016	Did not report	0.89
state	30	2016	Reported to official authority or non-official institution	0.05
state	31	2016	Did not report	0.94
state	31	2016	Reported to official authority or non-official institution	0.05
state	32	2016	Reported to official authority or non-official institution	0.02
state	32	2016	Did not report	0.98
state	33	2016	Reported to official authority or non-official institution	0.02
state	33	2016	Did not report	0.96
state	34	2016	Reported to official authority or non-official institution	0.03
state	34	2016	Did not report	0.96
state	35	2016	Did not report	0.87
state	35	2016	Reported to official authority or non-official institution	0.11
state	36	2016	Reported to official authority or non-official institution	0.05
state	36	2016	Did not report	0.91
state	37	2016	Did not report	0.97
state	37	2016	Reported to official authority or non-official institution	0.01
\.


--
-- Name: bribery_report_rate bribery_report_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bribery_report_rate
    ADD CONSTRAINT bribery_report_rate_pkey PRIMARY KEY (geo_level, geo_code, geo_version, status);


--
-- PostgreSQL database dump complete
--
