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

ALTER TABLE IF EXISTS ONLY public.difficulty_of_crossing_borders DROP CONSTRAINT IF EXISTS pk_difficulty_of_crossing_borders;
DROP TABLE IF EXISTS public.difficulty_of_crossing_borders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_of_crossing_borders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_of_crossing_borders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_of_crossing_borders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_of_crossing_borders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_of_crossing_borders (geo_level, geo_code, geo_version, difficulty_of_crossing_borders, total) FROM stdin;
county	30	2009	Difficult	8
county	36	2009	Difficult	17
county	39	2009	Difficult	24
county	40	2009	Difficult	11
county	28	2009	Difficult	5
county	14	2009	Difficult	13
county	7	2009	Difficult	1
county	43	2009	Difficult	5
county	11	2009	Difficult	1
county	34	2009	Difficult	22
county	37	2009	Difficult	38
county	35	2009	Difficult	16
county	22	2009	Difficult	34
county	3	2009	Difficult	15
county	20	2009	Difficult	10
county	45	2009	Difficult	16
county	42	2009	Difficult	10
county	15	2009	Difficult	15
county	2	2009	Difficult	12
county	31	2009	Difficult	5
county	5	2009	Difficult	1
county	16	2009	Difficult	23
county	17	2009	Difficult	11
county	9	2009	Difficult	6
county	10	2009	Difficult	5
county	12	2009	Difficult	38
county	44	2009	Difficult	15
county	1	2009	Difficult	8
county	21	2009	Difficult	16
county	47	2009	Difficult	55
county	32	2009	Difficult	39
county	29	2009	Difficult	13
county	33	2009	Difficult	10
county	46	2009	Difficult	11
county	18	2009	Difficult	8
county	19	2009	Difficult	13
county	25	2009	Difficult	3
county	41	2009	Difficult	7
county	6	2009	Difficult	5
county	4	2009	Difficult	1
county	13	2009	Difficult	4
county	26	2009	Difficult	10
county	23	2009	Difficult	9
county	27	2009	Difficult	16
county	38	2009	Difficult	15
county	8	2009	Difficult	2
county	24	2009	Difficult	2
county	30	2009	Don't know	5
county	36	2009	Don't know	1
county	39	2009	Don't know	8
county	28	2009	Don't know	4
county	14	2009	Don't know	7
county	7	2009	Don't know	20
county	43	2009	Don't know	8
county	11	2009	Don't know	3
county	34	2009	Don't know	1
county	37	2009	Don't know	6
county	35	2009	Don't know	4
county	22	2009	Don't know	7
county	3	2009	Don't know	9
county	20	2009	Don't know	3
county	45	2009	Don't know	3
county	42	2009	Don't know	7
county	15	2009	Don't know	10
county	2	2009	Don't know	2
county	31	2009	Don't know	6
county	16	2009	Don't know	19
county	17	2009	Don't know	5
county	9	2009	Don't know	17
county	10	2009	Don't know	1
county	12	2009	Don't know	6
county	44	2009	Don't know	1
county	1	2009	Don't know	3
county	21	2009	Don't know	3
county	47	2009	Don't know	47
county	32	2009	Don't know	5
county	29	2009	Don't know	5
county	33	2009	Don't know	7
county	46	2009	Don't know	5
county	18	2009	Don't know	1
county	19	2009	Don't know	5
county	25	2009	Don't know	2
county	41	2009	Don't know	7
county	4	2009	Don't know	7
county	13	2009	Don't know	2
county	26	2009	Don't know	4
county	23	2009	Don't know	9
county	27	2009	Don't know	6
county	38	2009	Don't know	3
county	8	2009	Don't know	20
county	24	2009	Don't know	2
county	30	2009	Easy	12
county	36	2009	Easy	17
county	39	2009	Easy	20
county	40	2009	Easy	12
county	28	2009	Easy	4
county	14	2009	Easy	11
county	7	2009	Easy	10
county	43	2009	Easy	12
county	11	2009	Easy	2
county	34	2009	Easy	17
county	37	2009	Easy	18
county	35	2009	Easy	13
county	22	2009	Easy	26
county	3	2009	Easy	13
county	20	2009	Easy	10
county	45	2009	Easy	12
county	42	2009	Easy	14
county	15	2009	Easy	20
county	2	2009	Easy	13
county	31	2009	Easy	6
county	5	2009	Easy	4
county	16	2009	Easy	21
county	17	2009	Easy	12
county	9	2009	Easy	19
county	10	2009	Easy	5
county	12	2009	Easy	22
county	44	2009	Easy	11
county	1	2009	Easy	25
county	21	2009	Easy	11
county	47	2009	Easy	73
county	32	2009	Easy	35
county	29	2009	Easy	10
county	33	2009	Easy	19
county	46	2009	Easy	7
county	18	2009	Easy	13
county	19	2009	Easy	12
county	25	2009	Easy	1
county	41	2009	Easy	11
county	6	2009	Easy	4
county	13	2009	Easy	7
county	26	2009	Easy	17
county	23	2009	Easy	4
county	27	2009	Easy	18
county	38	2009	Easy	6
county	8	2009	Easy	5
county	24	2009	Easy	5
county	15	2009	Missing	1
county	30	2009	Never try	6
county	36	2009	Never try	3
county	39	2009	Never try	5
county	40	2009	Never try	1
county	28	2009	Never try	2
county	43	2009	Never try	17
county	37	2009	Never try	11
county	35	2009	Never try	2
county	22	2009	Never try	19
county	3	2009	Never try	11
county	20	2009	Never try	8
county	45	2009	Never try	30
county	42	2009	Never try	16
county	15	2009	Never try	1
county	2	2009	Never try	5
county	31	2009	Never try	2
county	16	2009	Never try	1
county	17	2009	Never try	9
county	9	2009	Never try	2
county	44	2009	Never try	7
county	1	2009	Never try	10
county	21	2009	Never try	12
county	47	2009	Never try	25
county	32	2009	Never try	8
county	29	2009	Never try	8
county	33	2009	Never try	3
county	46	2009	Never try	11
county	18	2009	Never try	9
county	19	2009	Never try	8
county	25	2009	Never try	2
county	41	2009	Never try	14
county	6	2009	Never try	2
county	13	2009	Never try	1
county	26	2009	Never try	1
county	23	2009	Never try	12
county	27	2009	Never try	9
county	38	2009	Never try	2
county	8	2009	Never try	4
county	24	2009	Never try	7
county	36	2009	Very difficult	4
county	39	2009	Very difficult	13
county	40	2009	Very difficult	9
county	14	2009	Very difficult	6
county	43	2009	Very difficult	9
county	11	2009	Very difficult	2
county	34	2009	Very difficult	3
county	37	2009	Very difficult	16
county	35	2009	Very difficult	4
county	22	2009	Very difficult	21
county	3	2009	Very difficult	7
county	20	2009	Very difficult	8
county	45	2009	Very difficult	8
county	42	2009	Very difficult	3
county	15	2009	Very difficult	8
county	2	2009	Very difficult	4
county	31	2009	Very difficult	5
county	16	2009	Very difficult	4
county	17	2009	Very difficult	8
county	9	2009	Very difficult	4
county	10	2009	Very difficult	5
county	12	2009	Very difficult	16
county	44	2009	Very difficult	10
county	1	2009	Very difficult	3
county	21	2009	Very difficult	22
county	47	2009	Very difficult	35
county	32	2009	Very difficult	14
county	29	2009	Very difficult	3
county	33	2009	Very difficult	9
county	46	2009	Very difficult	4
county	18	2009	Very difficult	6
county	19	2009	Very difficult	8
county	41	2009	Very difficult	2
county	6	2009	Very difficult	1
county	13	2009	Very difficult	8
county	26	2009	Very difficult	8
county	23	2009	Very difficult	1
county	27	2009	Very difficult	1
county	38	2009	Very difficult	5
county	8	2009	Very difficult	1
county	24	2009	Very difficult	2
county	30	2009	Very easy	1
county	36	2009	Very easy	6
county	39	2009	Very easy	10
county	40	2009	Very easy	7
county	28	2009	Very easy	1
county	14	2009	Very easy	3
county	7	2009	Very easy	1
county	43	2009	Very easy	5
county	34	2009	Very easy	5
county	37	2009	Very easy	7
county	35	2009	Very easy	1
county	22	2009	Very easy	13
county	3	2009	Very easy	9
county	20	2009	Very easy	1
county	45	2009	Very easy	3
county	42	2009	Very easy	6
county	15	2009	Very easy	1
county	2	2009	Very easy	4
county	5	2009	Very easy	3
county	16	2009	Very easy	4
county	17	2009	Very easy	11
county	12	2009	Very easy	3
county	44	2009	Very easy	4
county	1	2009	Very easy	23
county	47	2009	Very easy	13
county	32	2009	Very easy	3
county	29	2009	Very easy	9
county	46	2009	Very easy	2
county	18	2009	Very easy	3
county	19	2009	Very easy	2
county	41	2009	Very easy	7
county	6	2009	Very easy	4
county	13	2009	Very easy	2
county	26	2009	Very easy	8
county	23	2009	Very easy	13
county	27	2009	Very easy	6
county	38	2009	Very easy	1
county	24	2009	Very easy	6
\.


--
-- Name: difficulty_of_crossing_borders pk_difficulty_of_crossing_borders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_of_crossing_borders
    ADD CONSTRAINT pk_difficulty_of_crossing_borders PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_of_crossing_borders);


--
-- PostgreSQL database dump complete
--

