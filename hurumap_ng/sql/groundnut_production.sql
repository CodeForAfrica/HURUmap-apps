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

ALTER TABLE IF EXISTS ONLY public.groundnut_production DROP CONSTRAINT IF EXISTS groundnut_production_pkey;
DROP TABLE IF EXISTS public.groundnut_production;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: groundnut_production; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.groundnut_production (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: groundnut_production; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.groundnut_production (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	2	2016	2014	187000
state	2	2016	2015	189000
state	2	2016	2016	189500
state	5	2016	2014	199000
state	5	2016	2015	200000
state	5	2016	2016	201500
state	7	2016	2014	177000
state	7	2016	2015	176000
state	7	2016	2016	178300
state	8	2016	2014	200000
state	8	2016	2015	201000
state	8	2016	2016	206000
state	16	2016	2014	189000
state	16	2016	2015	190000
state	16	2016	2016	192000
state	18	2016	2014	181000
state	18	2016	2015	184000
state	18	2016	2016	186000
state	19	2016	2014	200000
state	19	2016	2015	200000
state	19	2016	2016	205000
state	20	2016	2014	192000
state	20	2016	2015	193000
state	20	2016	2016	196000
state	21	2016	2014	170000
state	21	2016	2015	170000
state	21	2016	2016	190200
state	22	2016	2014	189000
state	22	2016	2015	190000
state	22	2016	2016	190200
state	24	2016	2014	170000
state	24	2016	2015	170000
state	24	2016	2016	169000
state	26	2016	2014	200000
state	26	2016	2015	200000
state	26	2016	2016	203200
state	27	2016	2014	196000
state	27	2016	2015	196000
state	27	2016	2016	197600
country	NG	2016	2014	188533
country	NG	2016	2015	189333
country	NG	2016	2016	192633
state	35	2016	2014	175000
state	35	2016	2015	175000
state	35	2016	2016	176000
state	36	2016	2014	203000
state	36	2016	2015	206000
state	36	2016	2016	209000
\.


--
-- Name: groundnut_production groundnut_production_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.groundnut_production
    ADD CONSTRAINT groundnut_production_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
