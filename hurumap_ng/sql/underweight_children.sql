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

ALTER TABLE IF EXISTS ONLY public.underweight_children DROP CONSTRAINT IF EXISTS underweight_children_pkey;
DROP TABLE IF EXISTS public.underweight_children;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: underweight_children; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.underweight_children (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    state character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: underweight_children; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.underweight_children (geo_level, geo_code, geo_version, state, total) FROM stdin;
state	1	2016	Moderate Underweight	12.2
state	1	2016	Severe Underweight	5.2
state	1	2016	Underweight	17.4
state	2	2016	Moderate Underweight	14.2
state	2	2016	Severe Underweight	3.4
state	2	2016	Underweight	17.6
state	3	2016	Moderate Underweight	13.9
state	3	2016	Severe Underweight	5.2
state	3	2016	Underweight	19.2
state	4	2016	Moderate Underweight	6
state	4	2016	Severe Underweight	0
state	4	2016	Underweight	6
state	5	2016	Moderate Underweight	20
state	5	2016	Severe Underweight	8.2
state	5	2016	Underweight	28.2
state	6	2016	Moderate Underweight	10.2
state	6	2016	Severe Underweight	2.3
state	6	2016	Underweight	12.5
state	7	2016	Moderate Underweight	11
state	7	2016	Severe Underweight	2.6
state	7	2016	Underweight	13.6
state	8	2016	Moderate Underweight	20.6
state	8	2016	Severe Underweight	6.6
state	8	2016	Underweight	27.2
state	9	2016	Moderate Underweight	10.4
state	9	2016	Severe Underweight	2.4
state	9	2016	Underweight	13
state	10	2016	Moderate Underweight	12.7
state	10	2016	Severe Underweight	2.4
state	10	2016	Underweight	15.1
state	11	2016	Moderate Underweight	16.2
state	11	2016	Severe Underweight	4.1
state	11	2016	Underweight	20.4
state	12	2016	Moderate Underweight	10.4
state	12	2016	Severe Underweight	2.5
state	12	2016	Underweight	12.9
state	13	2016	Moderate Underweight	9.7
state	13	2016	Severe Underweight	3.4
state	13	2016	Underweight	13.1
state	14	2016	Moderate Underweight	8.8
state	14	2016	Severe Underweight	0.4
state	14	2016	Underweight	9.2
state	15	2016	Moderate Underweight	10.3
state	15	2016	Severe Underweight	1.5
state	15	2016	Underweight	11.8
state	16	2016	Moderate Underweight	20.6
state	16	2016	Severe Underweight	6.2
state	16	2016	Underweight	26.9
state	17	2016	Moderate Underweight	12.5
state	17	2016	Severe Underweight	1.4
state	17	2016	Underweight	13.9
state	18	2016	Moderate Underweight	25.4
state	18	2016	Severe Underweight	11
state	18	2016	Underweight	36.4
state	19	2016	Moderate Underweight	16.8
state	19	2016	Severe Underweight	5.4
state	19	2016	Underweight	22.2
state	20	2016	Moderate Underweight	20.3
state	20	2016	Severe Underweight	6.6
state	20	2016	Underweight	26.9
state	21	2016	Moderate Underweight	24.2
state	21	2016	Severe Underweight	7.2
state	21	2016	Underweight	31.4
state	22	2016	Moderate Underweight	23.2
state	22	2016	Severe Underweight	9.6
state	22	2016	Underweight	32.8
state	23	2016	Moderate Underweight	9.3
state	23	2016	Severe Underweight	1.4
state	23	2016	Underweight	10.7
state	24	2016	Moderate Underweight	11.8
state	24	2016	Severe Underweight	3.4
state	24	2016	Underweight	15.1
state	25	2016	Moderate Underweight	10
state	25	2016	Severe Underweight	2.2
state	25	2016	Underweight	12.2
state	26	2016	Moderate Underweight	14.9
state	26	2016	Severe Underweight	2.1
state	26	2016	Underweight	16.9
state	27	2016	Moderate Underweight	13
state	27	2016	Severe Underweight	3.2
state	27	2016	Underweight	16.2
state	28	2016	Moderate Underweight	15.6
state	28	2016	Severe Underweight	4.8
state	28	2016	Underweight	20.4
state	29	2016	Moderate Underweight	14
state	29	2016	Severe Underweight	5.8
state	29	2016	Underweight	19.8
state	30	2016	Moderate Underweight	12.9
state	30	2016	Severe Underweight	2.1
state	30	2016	Underweight	15
state	31	2016	Moderate Underweight	9.8
state	31	2016	Severe Underweight	1.2
state	31	2016	Underweight	11
state	32	2016	Moderate Underweight	15.5
state	32	2016	Severe Underweight	7.2
state	32	2016	Underweight	22.7
state	33	2016	Moderate Underweight	11.7
state	33	2016	Severe Underweight	1.5
state	33	2016	Underweight	13.3
state	34	2016	Moderate Underweight	22.4
state	34	2016	Severe Underweight	7.9
state	34	2016	Underweight	30.3
state	35	2016	Moderate Underweight	8.5
state	35	2016	Severe Underweight	2.1
state	35	2016	Underweight	10.5
state	36	2016	Moderate Underweight	26
state	36	2016	Severe Underweight	11
state	36	2016	Underweight	37.1
state	37	2016	Moderate Underweight	21.8
state	37	2016	Severe Underweight	7.4
state	37	2016	Underweight	29.2
\.


--
-- Name: underweight_children underweight_children_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.underweight_children
    ADD CONSTRAINT underweight_children_pkey PRIMARY KEY (geo_level, geo_code, geo_version, state);


--
-- PostgreSQL database dump complete
--
