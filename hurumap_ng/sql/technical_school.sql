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

ALTER TABLE IF EXISTS ONLY public.food_price DROP CONSTRAINT IF EXISTS food_price_pkey;
DROP TABLE IF EXISTS public.food_price;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: food_price; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.food_price (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: food_price; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.food_price (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2014	4
state	1	2016	2015	3
state	1	2016	2016	2
state	2	2016	2014	6
state	2	2016	2015	5
state	2	2016	2016	5
state	3	2016	2014	15
state	3	2016	2015	15
state	3	2016	2016	21
state	4	2016	2014	10
state	4	2016	2015	10
state	4	2016	2016	13
state	5	2016	2014	9
state	5	2016	2015	8
state	5	2016	2016	8
state	6	2016	2014	2
state	6	2016	2015	1
state	6	2016	2016	2
state	7	2016	2014	11
state	7	2016	2015	12
state	7	2016	2016	13
state	8	2016	2014	3
state	8	2016	2015	0
state	8	2016	2016	0
state	9	2016	2014	20
state	9	2016	2015	20
state	9	2016	2016	20
state	10	2016	2014	6
state	10	2016	2015	6
state	10	2016	2016	6
state	11	2016	2014	2
state	11	2016	2015	2
state	11	2016	2016	2
state	12	2016	2014	6
state	12	2016	2015	6
state	12	2016	2016	6
state	13	2016	2014	6
state	13	2016	2015	7
state	13	2016	2016	7
state	14	2016	2014	16
state	14	2016	2015	19
state	14	2016	2016	24
state	15	2016	2014	2
state	15	2016	2015	2
state	15	2016	2016	2
state	16	2016	2014	7
state	16	2016	2015	7
state	16	2016	2016	7
state	17	2016	2014	6
state	17	2016	2015	6
state	17	2016	2016	10
state	18	2016	2014	4
state	18	2016	2015	4
state	18	2016	2016	4
state	19	2016	2014	6
state	19	2016	2015	6
state	19	2016	2016	6
state	20	2016	2014	6
state	20	2016	2015	6
state	20	2016	2016	6
state	21	2016	2014	7
state	21	2016	2015	7
state	21	2016	2016	8
state	22	2016	2014	4
state	22	2016	2015	4
state	22	2016	2016	4
state	23	2016	2014	5
state	23	2016	2015	5
state	23	2016	2016	5
state	24	2016	2014	5
state	24	2016	2015	5
state	24	2016	2016	6
state	25	2016	2014	7
state	25	2016	2015	7
state	25	2016	2016	8
state	26	2016	2014	4
state	26	2016	2015	4
state	26	2016	2016	4
state	27	2016	2014	6
state	27	2016	2015	7
state	27	2016	2016	9
country	NG	2016	2014	254
country	NG	2016	2015	252
country	NG	2016	2016	282
state	28	2016	2014	9
state	28	2016	2015	9
state	28	2016	2016	9
state	29	2016	2014	7
state	29	2016	2015	7
state	29	2016	2016	7
state	30	2016	2014	16
state	30	2016	2015	16
state	30	2016	2016	20
state	31	2016	2014	7
state	31	2016	2015	6
state	31	2016	2016	7
state	32	2016	2014	1
state	32	2016	2015	1
state	32	2016	2016	1
state	33	2016	2014	7
state	33	2016	2015	7
state	33	2016	2016	8
state	34	2016	2014	4
state	34	2016	2015	4
state	34	2016	2016	4
state	35	2016	2014	8
state	35	2016	2015	8
state	35	2016	2016	8
state	36	2016	2014	8
state	36	2016	2015	8
state	36	2016	2016	8
state	37	2016	2014	2
state	37	2016	2015	2
state	37	2016	2016	2
\.


--
-- Name: food_price food_price_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.food_price
    ADD CONSTRAINT food_price_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
