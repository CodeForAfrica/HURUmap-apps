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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_avoid_paying_taxes DROP CONSTRAINT IF EXISTS pk_difficulty_to_avoid_paying_taxes;
DROP TABLE IF EXISTS public.difficulty_to_avoid_paying_taxes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_avoid_paying_taxes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_avoid_paying_taxes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_avoid_paying_taxes character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_avoid_paying_taxes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_avoid_paying_taxes (geo_level, geo_code, geo_version, difficulty_to_avoid_paying_taxes, total) FROM stdin;
county	30	2009	Difficult	19
county	36	2009	Difficult	25
county	39	2009	Difficult	23
county	40	2009	Difficult	6
county	28	2009	Difficult	5
county	14	2009	Difficult	5
county	7	2009	Difficult	5
county	43	2009	Difficult	9
county	11	2009	Difficult	2
county	34	2009	Difficult	14
county	37	2009	Difficult	30
county	35	2009	Difficult	17
county	22	2009	Difficult	50
county	3	2009	Difficult	7
county	20	2009	Difficult	15
county	45	2009	Difficult	8
county	42	2009	Difficult	3
county	15	2009	Difficult	20
county	2	2009	Difficult	5
county	31	2009	Difficult	6
county	5	2009	Difficult	1
county	16	2009	Difficult	20
county	17	2009	Difficult	11
county	9	2009	Difficult	10
county	10	2009	Difficult	4
county	12	2009	Difficult	32
county	44	2009	Difficult	6
county	1	2009	Difficult	12
county	21	2009	Difficult	20
county	47	2009	Difficult	71
county	32	2009	Difficult	33
county	29	2009	Difficult	15
county	33	2009	Difficult	28
county	46	2009	Difficult	5
county	18	2009	Difficult	10
county	19	2009	Difficult	14
county	25	2009	Difficult	2
county	41	2009	Difficult	8
county	6	2009	Difficult	3
county	4	2009	Difficult	2
county	13	2009	Difficult	9
county	26	2009	Difficult	14
county	23	2009	Difficult	16
county	27	2009	Difficult	20
county	38	2009	Difficult	5
county	8	2009	Difficult	4
county	24	2009	Difficult	4
county	30	2009	Don't Know	3
county	36	2009	Don't Know	2
county	39	2009	Don't Know	15
county	40	2009	Don't Know	4
county	28	2009	Don't Know	4
county	14	2009	Don't Know	12
county	7	2009	Don't Know	13
county	43	2009	Don't Know	14
county	11	2009	Don't Know	4
county	34	2009	Don't Know	1
county	37	2009	Don't Know	8
county	35	2009	Don't Know	2
county	22	2009	Don't Know	3
county	3	2009	Don't Know	6
county	20	2009	Don't Know	1
county	45	2009	Don't Know	13
county	42	2009	Don't Know	5
county	15	2009	Don't Know	8
county	31	2009	Don't Know	7
county	5	2009	Don't Know	2
county	16	2009	Don't Know	12
county	17	2009	Don't Know	3
county	9	2009	Don't Know	16
county	10	2009	Don't Know	6
county	12	2009	Don't Know	15
county	44	2009	Don't Know	10
county	1	2009	Don't Know	1
county	21	2009	Don't Know	3
county	47	2009	Don't Know	43
county	32	2009	Don't Know	12
county	29	2009	Don't Know	6
county	33	2009	Don't Know	4
county	46	2009	Don't Know	5
county	18	2009	Don't Know	2
county	19	2009	Don't Know	1
county	25	2009	Don't Know	3
county	41	2009	Don't Know	5
county	6	2009	Don't Know	1
county	4	2009	Don't Know	5
county	13	2009	Don't Know	2
county	26	2009	Don't Know	9
county	23	2009	Don't Know	11
county	27	2009	Don't Know	10
county	38	2009	Don't Know	2
county	8	2009	Don't Know	13
county	24	2009	Don't Know	5
county	30	2009	Don�t have to pay taxes	1
county	39	2009	Don�t have to pay taxes	1
county	7	2009	Don�t have to pay taxes	1
county	3	2009	Don�t have to pay taxes	1
county	9	2009	Don�t have to pay taxes	2
county	10	2009	Don�t have to pay taxes	1
county	12	2009	Don�t have to pay taxes	4
county	47	2009	Don�t have to pay taxes	1
county	13	2009	Don�t have to pay taxes	2
county	38	2009	Don�t have to pay taxes	1
county	8	2009	Don�t have to pay taxes	1
county	36	2009	Easy	1
county	39	2009	Easy	1
county	28	2009	Easy	1
county	14	2009	Easy	1
county	34	2009	Easy	1
county	37	2009	Easy	2
county	35	2009	Easy	2
county	22	2009	Easy	6
county	3	2009	Easy	5
county	20	2009	Easy	4
county	45	2009	Easy	4
county	42	2009	Easy	1
county	15	2009	Easy	8
county	2	2009	Easy	5
county	16	2009	Easy	5
county	17	2009	Easy	5
county	12	2009	Easy	4
county	1	2009	Easy	3
county	21	2009	Easy	6
county	47	2009	Easy	31
county	32	2009	Easy	12
county	33	2009	Easy	1
county	18	2009	Easy	4
county	19	2009	Easy	6
county	41	2009	Easy	3
county	6	2009	Easy	2
county	26	2009	Easy	1
county	27	2009	Easy	1
county	8	2009	Easy	1
county	30	2009	Very difficult	9
county	36	2009	Very difficult	20
county	39	2009	Very difficult	37
county	40	2009	Very difficult	29
county	28	2009	Very difficult	6
county	14	2009	Very difficult	22
county	7	2009	Very difficult	13
county	43	2009	Very difficult	32
county	11	2009	Very difficult	2
county	34	2009	Very difficult	32
county	37	2009	Very difficult	53
county	35	2009	Very difficult	19
county	22	2009	Very difficult	57
county	3	2009	Very difficult	38
county	20	2009	Very difficult	18
county	45	2009	Very difficult	46
county	42	2009	Very difficult	47
county	15	2009	Very difficult	18
county	2	2009	Very difficult	27
county	31	2009	Very difficult	11
county	5	2009	Very difficult	3
county	16	2009	Very difficult	35
county	17	2009	Very difficult	31
county	9	2009	Very difficult	20
county	10	2009	Very difficult	5
county	12	2009	Very difficult	29
county	44	2009	Very difficult	32
county	1	2009	Very difficult	45
county	21	2009	Very difficult	31
county	47	2009	Very difficult	92
county	32	2009	Very difficult	47
county	29	2009	Very difficult	27
county	33	2009	Very difficult	15
county	46	2009	Very difficult	30
county	18	2009	Very difficult	19
county	19	2009	Very difficult	22
county	25	2009	Very difficult	3
county	41	2009	Very difficult	32
county	6	2009	Very difficult	10
county	13	2009	Very difficult	10
county	26	2009	Very difficult	20
county	23	2009	Very difficult	21
county	27	2009	Very difficult	25
county	38	2009	Very difficult	24
county	8	2009	Very difficult	13
county	24	2009	Very difficult	15
county	39	2009	Very easy	3
county	40	2009	Very easy	1
county	43	2009	Very easy	1
county	37	2009	Very easy	3
county	22	2009	Very easy	4
county	3	2009	Very easy	7
county	20	2009	Very easy	2
county	45	2009	Very easy	1
county	15	2009	Very easy	2
county	2	2009	Very easy	3
county	5	2009	Very easy	2
county	17	2009	Very easy	6
county	12	2009	Very easy	1
county	1	2009	Very easy	11
county	21	2009	Very easy	4
county	47	2009	Very easy	10
county	18	2009	Very easy	5
county	19	2009	Very easy	5
county	4	2009	Very easy	1
county	13	2009	Very easy	1
county	26	2009	Very easy	4
\.


--
-- Name: difficulty_to_avoid_paying_taxes pk_difficulty_to_avoid_paying_taxes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_avoid_paying_taxes
    ADD CONSTRAINT pk_difficulty_to_avoid_paying_taxes PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_avoid_paying_taxes);


--
-- PostgreSQL database dump complete
--

