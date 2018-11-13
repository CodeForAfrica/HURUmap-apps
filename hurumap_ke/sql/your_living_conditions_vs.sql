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

ALTER TABLE IF EXISTS ONLY public.your_living_conditions_vs DROP CONSTRAINT IF EXISTS pk_your_living_conditions_vs;
DROP TABLE IF EXISTS public.your_living_conditions_vs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: your_living_conditions_vs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.your_living_conditions_vs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    your_living_conditions_vs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: your_living_conditions_vs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.your_living_conditions_vs (geo_level, geo_code, geo_version, your_living_conditions_vs, total) FROM stdin;
county	30	2009	Better	5
county	36	2009	Better	22
county	39	2009	Better	14
county	40	2009	Better	8
county	14	2009	Better	11
county	7	2009	Better	2
county	43	2009	Better	6
county	11	2009	Better	2
county	34	2009	Better	13
county	37	2009	Better	24
county	35	2009	Better	19
county	22	2009	Better	53
county	3	2009	Better	2
county	20	2009	Better	19
county	45	2009	Better	16
county	42	2009	Better	8
county	15	2009	Better	9
county	2	2009	Better	7
county	31	2009	Better	11
county	5	2009	Better	2
county	16	2009	Better	16
county	17	2009	Better	7
county	9	2009	Better	4
county	10	2009	Better	1
county	12	2009	Better	17
county	44	2009	Better	9
county	1	2009	Better	14
county	21	2009	Better	27
county	47	2009	Better	59
county	32	2009	Better	28
county	29	2009	Better	13
county	33	2009	Better	13
county	46	2009	Better	16
county	18	2009	Better	19
county	19	2009	Better	19
county	41	2009	Better	11
county	6	2009	Better	1
county	4	2009	Better	1
county	13	2009	Better	4
county	26	2009	Better	8
county	23	2009	Better	2
county	27	2009	Better	12
county	38	2009	Better	5
county	8	2009	Better	4
county	24	2009	Better	2
county	30	2009	Don't know	2
county	36	2009	Don't know	1
county	39	2009	Don't know	5
county	40	2009	Don't know	2
county	28	2009	Don't know	1
county	43	2009	Don't know	2
county	34	2009	Don't know	5
county	35	2009	Don't know	1
county	22	2009	Don't know	1
county	3	2009	Don't know	1
county	45	2009	Don't know	7
county	42	2009	Don't know	2
county	15	2009	Don't know	2
county	2	2009	Don't know	1
county	12	2009	Don't know	1
county	47	2009	Don't know	4
county	32	2009	Don't know	2
county	46	2009	Don't know	3
county	19	2009	Don't know	1
county	13	2009	Don't know	1
county	26	2009	Don't know	1
county	38	2009	Don't know	2
county	24	2009	Don't know	1
county	36	2009	Much better	2
county	39	2009	Much better	2
county	14	2009	Much better	2
county	34	2009	Much better	1
county	37	2009	Much better	2
county	35	2009	Much better	1
county	22	2009	Much better	3
county	3	2009	Much better	2
county	20	2009	Much better	3
county	42	2009	Much better	2
county	15	2009	Much better	2
county	16	2009	Much better	2
county	17	2009	Much better	3
county	12	2009	Much better	1
county	1	2009	Much better	2
county	47	2009	Much better	2
county	33	2009	Much better	3
county	18	2009	Much better	2
county	19	2009	Much better	7
county	25	2009	Much better	1
county	41	2009	Much better	3
county	26	2009	Much better	1
county	27	2009	Much better	1
county	36	2009	Much worse	1
county	39	2009	Much worse	5
county	40	2009	Much worse	3
county	14	2009	Much worse	3
county	7	2009	Much worse	4
county	43	2009	Much worse	11
county	11	2009	Much worse	3
county	34	2009	Much worse	1
county	37	2009	Much worse	7
county	35	2009	Much worse	2
county	22	2009	Much worse	1
county	3	2009	Much worse	12
county	20	2009	Much worse	1
county	45	2009	Much worse	8
county	42	2009	Much worse	11
county	15	2009	Much worse	12
county	2	2009	Much worse	2
county	31	2009	Much worse	5
county	16	2009	Much worse	15
county	17	2009	Much worse	6
county	9	2009	Much worse	8
county	10	2009	Much worse	7
county	12	2009	Much worse	8
county	44	2009	Much worse	5
county	1	2009	Much worse	3
county	21	2009	Much worse	5
county	47	2009	Much worse	30
county	32	2009	Much worse	11
county	29	2009	Much worse	5
county	33	2009	Much worse	10
county	46	2009	Much worse	4
county	19	2009	Much worse	2
county	25	2009	Much worse	2
county	41	2009	Much worse	3
county	6	2009	Much worse	1
county	4	2009	Much worse	4
county	13	2009	Much worse	2
county	26	2009	Much worse	6
county	23	2009	Much worse	20
county	27	2009	Much worse	3
county	38	2009	Much worse	5
county	8	2009	Much worse	9
county	24	2009	Much worse	3
county	30	2009	Same	12
county	36	2009	Same	15
county	39	2009	Same	25
county	40	2009	Same	11
county	28	2009	Same	6
county	14	2009	Same	16
county	7	2009	Same	14
county	43	2009	Same	18
county	11	2009	Same	1
county	34	2009	Same	13
county	37	2009	Same	23
county	35	2009	Same	10
county	22	2009	Same	45
county	3	2009	Same	19
county	20	2009	Same	12
county	45	2009	Same	20
county	42	2009	Same	21
county	15	2009	Same	15
county	2	2009	Same	16
county	31	2009	Same	4
county	5	2009	Same	3
county	16	2009	Same	23
county	17	2009	Same	29
county	9	2009	Same	22
county	10	2009	Same	4
county	12	2009	Same	34
county	44	2009	Same	17
county	1	2009	Same	32
county	21	2009	Same	22
county	47	2009	Same	101
county	32	2009	Same	28
county	29	2009	Same	14
county	33	2009	Same	11
county	46	2009	Same	7
county	18	2009	Same	14
county	19	2009	Same	10
county	25	2009	Same	1
county	41	2009	Same	16
county	6	2009	Same	12
county	4	2009	Same	1
county	13	2009	Same	8
county	26	2009	Same	17
county	23	2009	Same	12
county	27	2009	Same	17
county	38	2009	Same	6
county	8	2009	Same	6
county	24	2009	Same	6
county	30	2009	Worse	13
county	36	2009	Worse	7
county	39	2009	Worse	29
county	40	2009	Worse	16
county	28	2009	Worse	9
county	14	2009	Worse	8
county	7	2009	Worse	12
county	43	2009	Worse	19
county	11	2009	Worse	2
county	34	2009	Worse	15
county	37	2009	Worse	40
county	35	2009	Worse	7
county	22	2009	Worse	17
county	3	2009	Worse	28
county	20	2009	Worse	5
county	45	2009	Worse	21
county	42	2009	Worse	12
county	15	2009	Worse	16
county	2	2009	Worse	14
county	31	2009	Worse	4
county	5	2009	Worse	3
county	16	2009	Worse	16
county	17	2009	Worse	11
county	9	2009	Worse	14
county	10	2009	Worse	4
county	12	2009	Worse	24
county	44	2009	Worse	17
county	1	2009	Worse	21
county	21	2009	Worse	10
county	47	2009	Worse	52
county	32	2009	Worse	35
county	29	2009	Worse	16
county	33	2009	Worse	11
county	46	2009	Worse	10
county	18	2009	Worse	5
county	19	2009	Worse	9
county	25	2009	Worse	4
county	41	2009	Worse	15
county	6	2009	Worse	2
county	4	2009	Worse	2
county	13	2009	Worse	9
county	26	2009	Worse	15
county	23	2009	Worse	14
county	27	2009	Worse	23
county	38	2009	Worse	14
county	8	2009	Worse	13
county	24	2009	Worse	12
\.


--
-- Name: your_living_conditions_vs pk_your_living_conditions_vs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.your_living_conditions_vs
    ADD CONSTRAINT pk_your_living_conditions_vs PRIMARY KEY (geo_level, geo_code, geo_version, your_living_conditions_vs);


--
-- PostgreSQL database dump complete
--

