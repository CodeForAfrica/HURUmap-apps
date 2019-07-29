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

ALTER TABLE IF EXISTS ONLY public.vaccine_coverage DROP CONSTRAINT IF EXISTS vaccine_coverage_pkey;
DROP TABLE IF EXISTS public.vaccine_coverage;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: vaccine_coverage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vaccine_coverage (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    vaccine character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: vaccine_coverage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.vaccine_coverage (geo_level, geo_code, geo_version, vaccine, total) FROM stdin;
state	1	2016	Any	95.5
state	1	2016	Measles	86.4
state	1	2016	Penta 1	95.5
state	1	2016	Penta 2	90.9
state	1	2016	Penta 3	86.4
state	2	2016	Any	83.5
state	2	2016	Measles	68.4
state	2	2016	Penta 1	69.9
state	2	2016	Penta 2	63.2
state	2	2016	Penta 3	51.9
state	3	2016	Any	83.5
state	3	2016	Measles	63.5
state	3	2016	Penta 1	81.2
state	3	2016	Penta 2	81.2
state	3	2016	Penta 3	65.9
state	4	2016	Any	96.2
state	4	2016	Measles	77.2
state	4	2016	Penta 1	91.1
state	4	2016	Penta 2	86.1
state	4	2016	Penta 3	81
state	5	2016	Any	65.9
state	5	2016	Measles	54.5
state	5	2016	Penta 1	52.8
state	5	2016	Penta 2	48.3
state	5	2016	Penta 3	41.5
state	6	2016	Any	76.7
state	6	2016	Measles	51.7
state	6	2016	Penta 1	60
state	6	2016	Penta 2	53.3
state	6	2016	Penta 3	41.7
state	7	2016	Any	84.4
state	7	2016	Measles	60.4
state	7	2016	Penta 1	62.5
state	7	2016	Penta 2	55.2
state	7	2016	Penta 3	40.6
state	8	2016	Any	66.7
state	8	2016	Measles	54.6
state	8	2016	Penta 1	60.5
state	8	2016	Penta 2	57.1
state	8	2016	Penta 3	44.5
state	9	2016	Any	89.4
state	9	2016	Measles	75.3
state	9	2016	Penta 1	89.4
state	9	2016	Penta 2	87.1
state	9	2016	Penta 3	81.2
state	10	2016	Any	93.8
state	10	2016	Measles	79.7
state	10	2016	Penta 1	84.4
state	10	2016	Penta 2	79.7
state	10	2016	Penta 3	73.4
state	11	2016	Any	94
state	11	2016	Measles	74.6
state	11	2016	Penta 1	91
state	11	2016	Penta 2	89.6
state	11	2016	Penta 3	74.6
state	12	2016	Any	95.3
state	12	2016	Measles	87.5
state	12	2016	Penta 1	93.8
state	12	2016	Penta 2	90.6
state	12	2016	Penta 3	81.3
state	13	2016	Any	98.5
state	13	2016	Measles	92.3
state	13	2016	Penta 1	96.9
state	13	2016	Penta 2	95.4
state	13	2016	Penta 3	92.3
state	14	2016	Any	94.9
state	14	2016	Measles	79.7
state	14	2016	Penta 1	88.1
state	14	2016	Penta 2	86.4
state	14	2016	Penta 3	83.1
state	15	2016	Any	89
state	15	2016	Measles	85.4
state	15	2016	Penta 1	87.8
state	15	2016	Penta 2	85.4
state	15	2016	Penta 3	80.5
state	16	2016	Any	69.7
state	16	2016	Measles	63
state	16	2016	Penta 1	61.2
state	16	2016	Penta 2	55.2
state	16	2016	Penta 3	49.1
state	17	2016	Any	96.2
state	17	2016	Measles	86.8
state	17	2016	Penta 1	96.2
state	17	2016	Penta 2	94.3
state	17	2016	Penta 3	86.8
state	18	2016	Any	72.7
state	18	2016	Measles	62
state	18	2016	Penta 1	53.7
state	18	2016	Penta 2	49.5
state	18	2016	Penta 3	38
state	19	2016	Any	83.6
state	19	2016	Measles	68
state	19	2016	Penta 1	54.1
state	19	2016	Penta 2	51.6
state	19	2016	Penta 3	45.9
state	20	2016	Any	63.3
state	20	2016	Measles	49
state	20	2016	Penta 1	55.1
state	20	2016	Penta 2	47.6
state	20	2016	Penta 3	36.1
state	21	2016	Any	34.4
state	21	2016	Measles	15.8
state	21	2016	Penta 1	27.3
state	21	2016	Penta 2	20.1
state	21	2016	Penta 3	12
state	22	2016	Any	53.6
state	22	2016	Measles	18.8
state	22	2016	Penta 1	35.4
state	22	2016	Penta 2	23.4
state	22	2016	Penta 3	19.3
state	23	2016	Any	79.2
state	23	2016	Measles	70.8
state	23	2016	Penta 1	66.7
state	23	2016	Penta 2	65.3
state	23	2016	Penta 3	52.8
state	24	2016	Any	73.8
state	24	2016	Measles	63.1
state	24	2016	Penta 1	57.1
state	24	2016	Penta 2	53.6
state	24	2016	Penta 3	46.4
state	25	2016	Any	97.1
state	25	2016	Measles	95.6
state	25	2016	Penta 1	94.1
state	25	2016	Penta 2	94.1
state	25	2016	Penta 3	92.6
state	26	2016	Any	88.2
state	26	2016	Measles	67.1
state	26	2016	Penta 1	82.4
state	26	2016	Penta 2	77.6
state	26	2016	Penta 3	58.8
state	27	2016	Any	80.9
state	27	2016	Measles	69.4
state	27	2016	Penta 1	49.2
state	27	2016	Penta 2	43.7
state	27	2016	Penta 3	33.3
country	NG	2016	Any	79.3
country	NG	2016	Measles	64.7
country	NG	2016	Penta 1	69.9
country	NG	2016	Penta 2	65.4
country	NG	2016	Penta 3	57.2
state	28	2016	Any	90
state	28	2016	Measles	70
state	28	2016	Penta 1	76.3
state	28	2016	Penta 2	70
state	28	2016	Penta 3	63.8
state	29	2016	Any	98.1
state	29	2016	Measles	85.2
state	29	2016	Penta 1	87
state	29	2016	Penta 2	81.5
state	29	2016	Penta 3	72.2
state	30	2016	Any	99.9
state	30	2016	Measles	70.6
state	30	2016	Penta 1	98
state	30	2016	Penta 2	90.2
state	30	2016	Penta 3	86.3
state	31	2016	Any	77.8
state	31	2016	Measles	59.7
state	31	2016	Penta 1	70.8
state	31	2016	Penta 2	66.7
state	31	2016	Penta 3	58.3
state	32	2016	Any	88.4
state	32	2016	Measles	71.1
state	32	2016	Penta 1	81
state	32	2016	Penta 2	74.4
state	32	2016	Penta 3	55.4
state	33	2016	Any	91.3
state	33	2016	Measles	75.4
state	33	2016	Penta 1	89.9
state	33	2016	Penta 2	88.4
state	33	2016	Penta 3	82.6
state	34	2016	Any	50
state	34	2016	Measles	23.7
state	34	2016	Penta 1	33.3
state	34	2016	Penta 2	26.9
state	34	2016	Penta 3	22.4
state	35	2016	Any	81.7
state	35	2016	Measles	66.1
state	35	2016	Penta 1	77.1
state	35	2016	Penta 2	70.6
state	35	2016	Penta 3	56
state	36	2016	Any	72.4
state	36	2016	Measles	64.5
state	36	2016	Penta 1	67.8
state	36	2016	Penta 2	63.2
state	36	2016	Penta 3	51.3
state	37	2016	Any	28.2
state	37	2016	Measles	20.4
state	37	2016	Penta 1	20.8
state	37	2016	Penta 2	17.1
state	37	2016	Penta 3	12
\.


--
-- Name: vaccine_coverage vaccine_coverage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vaccine_coverage
    ADD CONSTRAINT vaccine_coverage_pkey PRIMARY KEY (geo_level, geo_code, geo_version, vaccine);


--
-- PostgreSQL database dump complete
--
