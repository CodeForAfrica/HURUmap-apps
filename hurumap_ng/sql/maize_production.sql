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

ALTER TABLE IF EXISTS ONLY public.maize_production DROP CONSTRAINT IF EXISTS maize_production_pkey;
DROP TABLE IF EXISTS public.maize_production;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maize_production; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.maize_production (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: maize_production; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.maize_production (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2014	54300
state	1	2016	2015	64200
state	1	2016	2016	72200
state	2	2016	2014	35100
state	2	2016	2015	47200
state	2	2016	2016	51000
state	3	2016	2014	58200
state	3	2016	2015	63600
state	3	2016	2016	71300
state	4	2016	2014	58400
state	4	2016	2015	65300
state	4	2016	2016	72300
state	5	2016	2014	41000
state	5	2016	2015	53200
state	5	2016	2016	59200
state	6	2016	2014	57300
state	6	2016	2015	57300
state	6	2016	2016	74600
state	7	2016	2014	51000
state	7	2016	2015	56200
state	7	2016	2016	60200
state	8	2016	2014	40000
state	8	2016	2015	52000
state	8	2016	2016	61000
state	9	2016	2014	54300
state	9	2016	2015	61500
state	9	2016	2016	71000
state	10	2016	2014	38200
state	10	2016	2015	41000
state	10	2016	2016	48300
state	11	2016	2014	56300
state	11	2016	2015	63200
state	11	2016	2016	71200
state	12	2016	2014	58300
state	12	2016	2015	63500
state	12	2016	2016	69400
state	13	2016	2014	39300
state	13	2016	2015	49400
state	13	2016	2016	69400
state	14	2016	2014	31400
state	14	2016	2015	35000
state	14	2016	2016	39600
state	15	2016	2014	61000
state	15	2016	2015	61000
state	15	2016	2016	75000
state	16	2016	2014	37300
state	16	2016	2015	50200
state	16	2016	2016	59200
state	17	2016	2014	29000
state	17	2016	2015	34000
state	17	2016	2016	57000
state	18	2016	2014	64300
state	18	2016	2015	64300
state	18	2016	2016	74300
state	19	2016	2014	60000
state	19	2016	2015	68000
state	19	2016	2016	75000
state	20	2016	2014	61300
state	20	2016	2015	75300
state	20	2016	2016	76200
state	21	2016	2014	59000
state	21	2016	2015	66300
state	21	2016	2016	74200
state	22	2016	2014	57500
state	22	2016	2015	65800
state	22	2016	2016	74000
state	23	2016	2014	40000
state	23	2016	2015	47200
state	23	2016	2016	53000
state	24	2016	2014	59300
state	24	2016	2015	61400
state	24	2016	2016	73200
state	25	2016	2014	58000
state	25	2016	2015	58000
state	25	2016	2016	71000
state	26	2016	2014	50200
state	26	2016	2015	56200
state	26	2016	2016	60000
state	27	2016	2014	41200
state	27	2016	2015	51400
state	27	2016	2016	69800
country	NG	2016	2014	49627
country	NG	2016	2015	56522
country	NG	2016	2016	66135
state	28	2016	2014	40100
state	28	2016	2015	40100
state	28	2016	2016	56700
state	29	2016	2014	39100
state	29	2016	2015	49000
state	29	2016	2016	63700
state	30	2016	2014	58200
state	30	2016	2015	64300
state	30	2016	2016	72300
state	31	2016	2014	41200
state	31	2016	2015	51200
state	31	2016	2016	57200
state	32	2016	2014	53200
state	32	2016	2015	63700
state	32	2016	2016	71300
state	33	2016	2014	29400
state	33	2016	2015	35200
state	33	2016	2016	59400
state	34	2016	2014	58500
state	34	2016	2015	65300
state	34	2016	2016	74000
state	35	2016	2014	44800
state	35	2016	2015	56300
state	35	2016	2016	62100
state	36	2016	2014	57300
state	36	2016	2015	65200
state	36	2016	2016	72500
state	37	2016	2014	63200
state	37	2016	2015	69300
state	37	2016	2016	75200
\.


--
-- Name: maize_production maize_production_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.maize_production
    ADD CONSTRAINT maize_production_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
