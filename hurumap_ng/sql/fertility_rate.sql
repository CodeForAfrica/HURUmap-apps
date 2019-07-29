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

ALTER TABLE IF EXISTS ONLY public.fertility_rate DROP CONSTRAINT IF EXISTS fertility_rate_pkey;
DROP TABLE IF EXISTS public.fertility_rate;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: fertility_rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fertility_rate (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: fertility_rate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fertility_rate (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NG	2016	2016/17	5.8
state	1	2016	2016/17	5.1
state	2	2016	2016/17	5.5
state	3	2016	2016/17	4.5
state	4	2016	2016/17	4.3
state	5	2016	2016/17	6.8
state	6	2016	2016/17	4.8
state	7	2016	2016/17	4.8
state	8	2016	2016/17	6.1
state	9	2016	2016/17	4.4
state	10	2016	2016/17	5.2
state	11	2016	2016/17	5.2
state	12	2016	2016/17	3.8
state	13	2016	2016/17	4.4
state	14	2016	2016/17	3.8
state	15	2016	2016/17	4.6
state	16	2016	2016/17	7.3
state	17	2016	2016/17	5.1
state	18	2016	2016/17	8.5
state	19	2016	2016/17	5.6
state	20	2016	2016/17	7.7
state	21	2016	2016/17	7.5
state	22	2016	2016/17	7.7
state	23	2016	2016/17	3.7
state	24	2016	2016/17	4.4
state	25	2016	2016/17	4
state	26	2016	2016/17	5.7
state	27	2016	2016/17	6.4
state	28	2016	2016/17	4.5
state	29	2016	2016/17	4.5
state	30	2016	2016/17	4.7
state	31	2016	2016/17	4.9
state	32	2016	2016/17	5.6
state	33	2016	2016/17	3.3
state	34	2016	2016/17	7.3
state	35	2016	2016/17	5.5
state	36	2016	2016/17	6.8
state	37	2016	2016/17	7.3
\.


--
-- Name: fertility_rate fertility_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fertility_rate
    ADD CONSTRAINT fertility_rate_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
