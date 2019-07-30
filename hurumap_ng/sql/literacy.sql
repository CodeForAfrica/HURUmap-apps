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

ALTER TABLE IF EXISTS ONLY public.literacy DROP CONSTRAINT IF EXISTS literacy_pkey;
DROP TABLE IF EXISTS public.literacy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: literacy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.literacy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: literacy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.literacy (geo_level, geo_code, geo_version, gender, total) FROM stdin;
country	NG	2016	Female	59.3
country	NG	2016	Male	70.9
state	1	2016	Female	98.2
state	1	2016	Male	94.2
state	2	2016	Female	50.6
state	2	2016	Male	74.3
state	3	2016	Female	94.6
state	3	2016	Male	92.7
state	4	2016	Female	98.1
state	4	2016	Male	95.1
state	5	2016	Female	25.6
state	5	2016	Male	39.8
state	6	2016	Female	95.8
state	6	2016	Male	98.3
state	7	2016	Female	69.9
state	7	2016	Male	90.5
state	8	2016	Female	56.4
state	8	2016	Male	60.3
state	9	2016	Female	94.3
state	9	2016	Male	95
state	10	2016	Female	91
state	10	2016	Male	95.3
state	11	2016	Female	83.4
state	11	2016	Male	81.9
state	12	2016	Female	94.9
state	12	2016	Male	98.3
state	13	2016	Female	96.7
state	13	2016	Male	99
state	14	2016	Female	97.9
state	14	2016	Male	96.8
state	15	2016	Female	81.3
state	15	2016	Male	90.1
state	16	2016	Female	37.5
state	16	2016	Male	47.5
state	17	2016	Female	98.2
state	17	2016	Male	98.9
state	18	2016	Female	24.8
state	18	2016	Male	32.3
state	19	2016	Female	54.4
state	19	2016	Male	65.2
state	20	2016	Female	46.1
state	20	2016	Male	72.5
state	21	2016	Female	32.6
state	21	2016	Male	62.6
state	22	2016	Female	30.9
state	22	2016	Male	41.8
state	23	2016	Female	86.3
state	23	2016	Male	92.4
state	24	2016	Female	73.5
state	24	2016	Male	81
state	25	2016	Female	93.1
state	25	2016	Male	98.3
state	26	2016	Female	56
state	26	2016	Male	78.1
state	27	2016	Female	37.6
state	27	2016	Male	58.9
state	28	2016	Female	90.7
state	28	2016	Male	89
state	29	2016	Female	91.4
state	29	2016	Male	93.4
state	30	2016	Female	94.7
state	30	2016	Male	94.8
state	31	2016	Female	90.7
state	31	2016	Male	88.3
state	32	2016	Female	65.1
state	32	2016	Male	69.6
state	33	2016	Female	98.1
state	33	2016	Male	94.7
state	34	2016	Female	20.1
state	34	2016	Male	47.4
state	35	2016	Female	53.1
state	35	2016	Male	70.6
state	36	2016	Female	28.3
state	36	2016	Male	42.7
state	37	2016	Female	31
state	37	2016	Male	53
\.


--
-- Name: literacy literacy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.literacy
    ADD CONSTRAINT literacy_pkey PRIMARY KEY (geo_level, geo_code, geo_version, gender);


--
-- PostgreSQL database dump complete
--
