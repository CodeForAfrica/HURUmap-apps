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

ALTER TABLE IF EXISTS ONLY public.maternal_mortality DROP CONSTRAINT IF EXISTS maternal_mortality_pkey;
DROP TABLE IF EXISTS public.maternal_mortality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maternal_mortality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.maternal_mortality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: maternal_mortality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.maternal_mortality (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NG	2016	2016	567.5
state	1	2016	2016	375.9
state	2	2016	2016	1841.9
state	3	2016	2016	150.9
state	4	2016	2016	279
state	5	2016	2016	593.8
state	6	2016	2016	471.1
state	7	2016	2016	809.6
state	8	2016	2016	2374.8
state	9	2016	2016	642.3
state	10	2016	2016	394.1
state	11	2016	2016	218
state	12	2016	2016	641.4
state	13	2016	2016	876.8
state	14	2016	2016	519
state	15	2016	2016	83.6
state	16	2016	2016	371.3
state	17	2016	2016	642.9
state	18	2016	2016	298.8
state	19	2016	2016	452.6
state	20	2016	2016	364.3
state	21	2016	2016	214.2
state	22	2016	2016	506.1
state	23	2016	2016	1267.8
state	24	2016	2016	904.4
state	25	2016	2016	110.4
state	26	2016	2016	817
state	27	2016	2016	387
state	28	2016	2016	258.8
state	29	2016	2016	115.9
state	30	2016	2016	344.1
state	31	2016	2016	184
state	32	2016	2016	278.5
state	33	2016	2016	483.4
state	34	2016	2016	737.4
state	35	2016	2016	623.2
state	36	2016	2016	1678.9
state	37	2016	2016	259.8
\.


--
-- Name: maternal_mortality maternal_mortality_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.maternal_mortality
    ADD CONSTRAINT maternal_mortality_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
