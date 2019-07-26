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

ALTER TABLE IF EXISTS ONLY public.governor_deputy_governor DROP CONSTRAINT IF EXISTS governor_deputy_governor_pkey;
DROP TABLE IF EXISTS public.governor_deputy_governor;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: governor_deputy_governor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.governor_deputy_governor (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    position character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: governor_deputy_governor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.governor_deputy_governor (geo_level, geo_code, geo_version, position, gender, total) FROM stdin;
state	1	2016	Deputy Governor	Female	0
state	1	2016	Deputy Governor	Male	1
state	1	2016	Governor	Female	0
state	1	2016	Governor	Male	1
state	2	2016	Deputy Governor	Female	0
state	2	2016	Deputy Governor	Male	1
state	2	2016	Governor	Female	0
state	2	2016	Governor	Male	1
state	3	2016	Deputy Governor	Female	0
state	3	2016	Deputy Governor	Male	1
state	3	2016	Governor	Female	0
state	3	2016	Governor	Male	1
state	4	2016	Deputy Governor	Female	0
state	4	2016	Deputy Governor	Male	1
state	4	2016	Governor	Female	0
state	4	2016	Governor	Male	1
state	5	2016	Deputy Governor	Female	0
state	5	2016	Deputy Governor	Male	1
state	5	2016	Governor	Female	0
state	5	2016	Governor	Male	1
state	6	2016	Deputy Governor	Female	0
state	6	2016	Deputy Governor	Male	1
state	6	2016	Governor	Female	0
state	6	2016	Governor	Male	1
state	7	2016	Deputy Governor	Female	0
state	7	2016	Deputy Governor	Male	1
state	7	2016	Governor	Female	0
state	7	2016	Governor	Male	1
state	8	2016	Deputy Governor	Female	0
state	8	2016	Deputy Governor	Male	1
state	8	2016	Governor	Female	0
state	8	2016	Governor	Male	1
state	9	2016	Deputy Governor	Female	0
state	9	2016	Deputy Governor	Male	1
state	9	2016	Governor	Female	0
state	9	2016	Governor	Male	1
state	10	2016	Deputy Governor	Female	0
state	10	2016	Deputy Governor	Male	1
state	10	2016	Governor	Female	0
state	10	2016	Governor	Male	1
state	11	2016	Deputy Governor	Female	0
state	11	2016	Deputy Governor	Male	1
state	11	2016	Governor	Female	0
state	11	2016	Governor	Male	1
state	12	2016	Deputy Governor	Female	0
state	12	2016	Deputy Governor	Male	1
state	12	2016	Governor	Female	0
state	12	2016	Governor	Male	1
state	13	2016	Deputy Governor	Female	0
state	13	2016	Deputy Governor	Male	1
state	13	2016	Governor	Female	0
state	13	2016	Governor	Male	1
state	14	2016	Deputy Governor	Female	1
state	14	2016	Deputy Governor	Male	0
state	14	2016	Governor	Female	0
state	14	2016	Governor	Male	1
state	16	2016	Deputy Governor	Female	0
state	16	2016	Deputy Governor	Male	1
state	16	2016	Governor	Female	0
state	16	2016	Governor	Male	1
state	17	2016	Deputy Governor	Female	0
state	17	2016	Deputy Governor	Male	1
state	17	2016	Governor	Female	0
state	17	2016	Governor	Male	1
state	18	2016	Deputy Governor	Female	0
state	18	2016	Deputy Governor	Male	1
state	18	2016	Governor	Female	0
state	18	2016	Governor	Male	1
state	19	2016	Deputy Governor	Female	0
state	19	2016	Deputy Governor	Male	1
state	19	2016	Governor	Female	0
state	19	2016	Governor	Male	1
state	20	2016	Deputy Governor	Female	0
state	20	2016	Deputy Governor	Male	1
state	20	2016	Governor	Female	0
state	20	2016	Governor	Male	1
state	21	2016	Deputy Governor	Female	0
state	21	2016	Deputy Governor	Male	1
state	21	2016	Governor	Female	0
state	21	2016	Governor	Male	1
state	22	2016	Deputy Governor	Female	0
state	22	2016	Deputy Governor	Male	1
state	22	2016	Governor	Female	0
state	22	2016	Governor	Male	1
state	23	2016	Deputy Governor	Female	0
state	23	2016	Deputy Governor	Male	1
state	23	2016	Governor	Female	0
state	23	2016	Governor	Male	1
state	24	2016	Deputy Governor	Female	0
state	24	2016	Deputy Governor	Male	1
state	24	2016	Governor	Female	0
state	24	2016	Governor	Male	1
state	25	2016	Deputy Governor	Female	1
state	25	2016	Deputy Governor	Male	0
state	25	2016	Governor	Female	0
state	25	2016	Governor	Male	1
state	26	2016	Deputy Governor	Female	0
state	26	2016	Deputy Governor	Male	1
state	26	2016	Governor	Female	0
state	26	2016	Governor	Male	1
state	27	2016	Deputy Governor	Female	0
state	27	2016	Deputy Governor	Male	1
state	27	2016	Governor	Female	0
state	27	2016	Governor	Male	1
country	NG	2016	Deputy Governor	Female	6
country	NG	2016	Deputy Governor	Male	33
country	NG	2016	Governor	Female	0
country	NG	2016	Governor	Male	36
state	28	2016	Deputy Governor	Female	1
state	28	2016	Deputy Governor	Male	0
state	28	2016	Governor	Female	0
state	28	2016	Governor	Male	1
state	29	2016	Deputy Governor	Female	0
state	29	2016	Deputy Governor	Male	2
state	29	2016	Governor	Female	0
state	29	2016	Governor	Male	1
state	30	2016	Deputy Governor	Female	1
state	30	2016	Deputy Governor	Male	0
state	30	2016	Governor	Female	0
state	30	2016	Governor	Male	1
state	31	2016	Deputy Governor	Female	1
state	31	2016	Deputy Governor	Male	1
state	31	2016	Governor	Female	0
state	31	2016	Governor	Male	1
state	32	2016	Deputy Governor	Female	0
state	32	2016	Deputy Governor	Male	1
state	32	2016	Governor	Female	0
state	32	2016	Governor	Male	1
state	33	2016	Deputy Governor	Female	1
state	33	2016	Deputy Governor	Male	1
state	33	2016	Governor	Female	0
state	33	2016	Governor	Male	1
state	34	2016	Deputy Governor	Female	0
state	34	2016	Deputy Governor	Male	1
state	34	2016	Governor	Female	0
state	34	2016	Governor	Male	1
state	35	2016	Deputy Governor	Female	0
state	35	2016	Deputy Governor	Male	1
state	35	2016	Governor	Female	0
state	35	2016	Governor	Male	1
state	36	2016	Deputy Governor	Female	0
state	36	2016	Deputy Governor	Male	1
state	36	2016	Governor	Female	0
state	36	2016	Governor	Male	1
state	37	2016	Deputy Governor	Female	0
state	37	2016	Deputy Governor	Male	1
state	37	2016	Governor	Female	0
state	37	2016	Governor	Male	1
\.


--
-- Name: governor_deputy_governor governor_deputy_governor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.governor_deputy_governor
    ADD CONSTRAINT governor_deputy_governor_pkey PRIMARY KEY (geo_level, geo_code, geo_version, position, gender);


--
-- PostgreSQL database dump complete
--
