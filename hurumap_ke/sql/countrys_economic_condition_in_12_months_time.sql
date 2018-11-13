--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.countrys_economic_condition_in_12_months_time DROP CONSTRAINT IF EXISTS pk_countrys_economic_condition_in_12_months_time;
DROP TABLE IF EXISTS public.countrys_economic_condition_in_12_months_time;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: countrys_economic_condition_in_12_months_time; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countrys_economic_condition_in_12_months_time (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    countrys_economic_condition_in_12_months_time character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: countrys_economic_condition_in_12_months_time; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countrys_economic_condition_in_12_months_time (geo_level, geo_code, geo_version, countrys_economic_condition_in_12_months_time, total) FROM stdin;
county	30	2009	Better	12
county	36	2009	Better	23
county	39	2009	Better	26
county	40	2009	Better	10
county	28	2009	Better	7
county	14	2009	Better	14
county	7	2009	Better	14
county	43	2009	Better	12
county	11	2009	Better	2
county	34	2009	Better	15
county	37	2009	Better	12
county	35	2009	Better	19
county	22	2009	Better	72
county	3	2009	Better	4
county	20	2009	Better	22
county	45	2009	Better	17
county	42	2009	Better	13
county	15	2009	Better	13
county	2	2009	Better	11
county	31	2009	Better	6
county	5	2009	Better	4
county	16	2009	Better	23
county	17	2009	Better	16
county	9	2009	Better	18
county	10	2009	Better	3
county	12	2009	Better	26
county	44	2009	Better	16
county	1	2009	Better	24
county	21	2009	Better	30
county	47	2009	Better	86
county	32	2009	Better	41
county	29	2009	Better	24
county	33	2009	Better	15
county	46	2009	Better	6
county	18	2009	Better	26
county	19	2009	Better	25
county	41	2009	Better	9
county	6	2009	Better	5
county	4	2009	Better	3
county	13	2009	Better	5
county	26	2009	Better	10
county	23	2009	Better	8
county	27	2009	Better	22
county	38	2009	Better	6
county	8	2009	Better	9
county	24	2009	Better	14
county	30	2009	Don�t know	5
county	36	2009	Don�t know	6
county	39	2009	Don�t know	16
county	40	2009	Don�t know	8
county	28	2009	Don�t know	3
county	14	2009	Don�t know	5
county	7	2009	Don�t know	1
county	11	2009	Don�t know	2
county	34	2009	Don�t know	6
county	37	2009	Don�t know	12
county	22	2009	Don�t know	3
county	3	2009	Don�t know	18
county	20	2009	Don�t know	1
county	45	2009	Don�t know	4
county	42	2009	Don�t know	2
county	15	2009	Don�t know	1
county	2	2009	Don�t know	10
county	31	2009	Don�t know	3
county	5	2009	Don�t know	1
county	16	2009	Don�t know	1
county	17	2009	Don�t know	5
county	9	2009	Don�t know	4
county	12	2009	Don�t know	1
county	44	2009	Don�t know	3
county	1	2009	Don�t know	11
county	21	2009	Don�t know	2
county	47	2009	Don�t know	21
county	32	2009	Don�t know	12
county	29	2009	Don�t know	3
county	33	2009	Don�t know	5
county	46	2009	Don�t know	4
county	19	2009	Don�t know	2
county	25	2009	Don�t know	2
county	41	2009	Don�t know	3
county	6	2009	Don�t know	3
county	4	2009	Don�t know	1
county	13	2009	Don�t know	1
county	26	2009	Don�t know	7
county	23	2009	Don�t know	9
county	27	2009	Don�t know	7
county	38	2009	Don�t know	4
county	8	2009	Don�t know	5
county	24	2009	Don�t know	3
county	3	2009	Missing	1
county	30	2009	Much Better	3
county	36	2009	Much Better	8
county	39	2009	Much Better	5
county	40	2009	Much Better	1
county	14	2009	Much Better	6
county	7	2009	Much Better	1
county	43	2009	Much Better	5
county	11	2009	Much Better	1
county	34	2009	Much Better	5
county	37	2009	Much Better	5
county	35	2009	Much Better	6
county	22	2009	Much Better	23
county	20	2009	Much Better	9
county	45	2009	Much Better	12
county	42	2009	Much Better	2
county	15	2009	Much Better	3
county	2	2009	Much Better	2
county	5	2009	Much Better	2
county	16	2009	Much Better	2
county	17	2009	Much Better	6
county	12	2009	Much Better	6
county	44	2009	Much Better	2
county	21	2009	Much Better	12
county	47	2009	Much Better	31
county	32	2009	Much Better	13
county	29	2009	Much Better	3
county	33	2009	Much Better	16
county	46	2009	Much Better	10
county	18	2009	Much Better	5
county	19	2009	Much Better	8
county	25	2009	Much Better	1
county	41	2009	Much Better	1
county	6	2009	Much Better	2
county	13	2009	Much Better	3
county	26	2009	Much Better	4
county	23	2009	Much Better	2
county	27	2009	Much Better	3
county	8	2009	Much Better	1
county	30	2009	Much worse	1
county	36	2009	Much worse	4
county	39	2009	Much worse	20
county	40	2009	Much worse	9
county	14	2009	Much worse	2
county	7	2009	Much worse	6
county	43	2009	Much worse	23
county	11	2009	Much worse	2
county	34	2009	Much worse	2
county	37	2009	Much worse	29
county	35	2009	Much worse	9
county	22	2009	Much worse	3
county	3	2009	Much worse	12
county	20	2009	Much worse	1
county	45	2009	Much worse	24
county	42	2009	Much worse	15
county	15	2009	Much worse	10
county	2	2009	Much worse	4
county	31	2009	Much worse	10
county	5	2009	Much worse	1
county	16	2009	Much worse	18
county	17	2009	Much worse	12
county	9	2009	Much worse	10
county	10	2009	Much worse	9
county	12	2009	Much worse	12
county	44	2009	Much worse	15
county	1	2009	Much worse	18
county	21	2009	Much worse	5
county	47	2009	Much worse	38
county	32	2009	Much worse	17
county	29	2009	Much worse	5
county	33	2009	Much worse	5
county	46	2009	Much worse	9
county	18	2009	Much worse	2
county	19	2009	Much worse	3
county	25	2009	Much worse	1
county	41	2009	Much worse	12
county	6	2009	Much worse	2
county	4	2009	Much worse	3
county	13	2009	Much worse	4
county	26	2009	Much worse	16
county	23	2009	Much worse	12
county	27	2009	Much worse	6
county	38	2009	Much worse	10
county	8	2009	Much worse	6
county	24	2009	Much worse	2
county	30	2009	Same	3
county	36	2009	Same	2
county	39	2009	Same	6
county	40	2009	Same	5
county	28	2009	Same	2
county	14	2009	Same	6
county	7	2009	Same	3
county	43	2009	Same	11
county	11	2009	Same	1
county	34	2009	Same	6
county	37	2009	Same	16
county	35	2009	Same	2
county	22	2009	Same	10
county	3	2009	Same	9
county	20	2009	Same	2
county	45	2009	Same	8
county	42	2009	Same	14
county	15	2009	Same	13
county	2	2009	Same	5
county	31	2009	Same	2
county	16	2009	Same	16
county	17	2009	Same	5
county	9	2009	Same	13
county	10	2009	Same	2
county	12	2009	Same	20
county	44	2009	Same	5
county	1	2009	Same	9
county	21	2009	Same	7
county	47	2009	Same	30
county	32	2009	Same	12
county	29	2009	Same	6
county	33	2009	Same	3
county	46	2009	Same	6
county	18	2009	Same	4
county	19	2009	Same	8
county	41	2009	Same	15
county	6	2009	Same	2
county	4	2009	Same	1
county	13	2009	Same	9
county	26	2009	Same	4
county	23	2009	Same	9
county	27	2009	Same	7
county	38	2009	Same	1
county	8	2009	Same	5
county	24	2009	Same	2
county	30	2009	Worse	8
county	36	2009	Worse	5
county	39	2009	Worse	7
county	40	2009	Worse	7
county	28	2009	Worse	4
county	14	2009	Worse	7
county	7	2009	Worse	7
county	43	2009	Worse	5
county	34	2009	Worse	14
county	37	2009	Worse	22
county	35	2009	Worse	4
county	22	2009	Worse	9
county	3	2009	Worse	20
county	20	2009	Worse	5
county	45	2009	Worse	7
county	42	2009	Worse	10
county	15	2009	Worse	16
county	2	2009	Worse	8
county	31	2009	Worse	3
county	16	2009	Worse	12
county	17	2009	Worse	12
county	9	2009	Worse	3
county	10	2009	Worse	2
county	12	2009	Worse	20
county	44	2009	Worse	7
county	1	2009	Worse	10
county	21	2009	Worse	8
county	47	2009	Worse	42
county	32	2009	Worse	9
county	29	2009	Worse	7
county	33	2009	Worse	4
county	46	2009	Worse	5
county	18	2009	Worse	3
county	19	2009	Worse	2
county	25	2009	Worse	4
county	41	2009	Worse	8
county	6	2009	Worse	2
county	13	2009	Worse	2
county	26	2009	Worse	7
county	23	2009	Worse	8
county	27	2009	Worse	11
county	38	2009	Worse	11
county	8	2009	Worse	6
county	24	2009	Worse	3
\.


--
-- Name: countrys_economic_condition_in_12_months_time pk_countrys_economic_condition_in_12_months_time; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countrys_economic_condition_in_12_months_time
    ADD CONSTRAINT pk_countrys_economic_condition_in_12_months_time PRIMARY KEY (geo_level, geo_code, geo_version, countrys_economic_condition_in_12_months_time);


--
-- PostgreSQL database dump complete
--

