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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_find_out_what_taxes_or_fees_to_pay DROP CONSTRAINT IF EXISTS pk_difficulty_to_find_out_what_taxes_or_fees_to_pay;
DROP TABLE IF EXISTS public.difficulty_to_find_out_what_taxes_or_fees_to_pay;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_find_out_what_taxes_or_fees_to_pay; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_find_out_what_taxes_or_fees_to_pay (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_find_out_what_taxes_or_fees_to_pay character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_find_out_what_taxes_or_fees_to_pay; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_find_out_what_taxes_or_fees_to_pay (geo_level, geo_code, geo_version, difficulty_to_find_out_what_taxes_or_fees_to_pay, total) FROM stdin;
county	30	2009	Difficult	18
county	36	2009	Difficult	16
county	39	2009	Difficult	19
county	40	2009	Difficult	4
county	28	2009	Difficult	5
county	14	2009	Difficult	10
county	7	2009	Difficult	2
county	43	2009	Difficult	4
county	11	2009	Difficult	2
county	34	2009	Difficult	23
county	37	2009	Difficult	26
county	35	2009	Difficult	12
county	22	2009	Difficult	50
county	3	2009	Difficult	20
county	20	2009	Difficult	21
county	45	2009	Difficult	15
county	42	2009	Difficult	12
county	15	2009	Difficult	25
county	2	2009	Difficult	12
county	31	2009	Difficult	5
county	5	2009	Difficult	3
county	16	2009	Difficult	29
county	17	2009	Difficult	13
county	9	2009	Difficult	5
county	10	2009	Difficult	4
county	12	2009	Difficult	30
county	44	2009	Difficult	6
county	1	2009	Difficult	26
county	21	2009	Difficult	23
county	47	2009	Difficult	56
county	32	2009	Difficult	33
county	29	2009	Difficult	16
county	33	2009	Difficult	26
county	46	2009	Difficult	6
county	18	2009	Difficult	19
county	19	2009	Difficult	18
county	25	2009	Difficult	2
county	41	2009	Difficult	16
county	6	2009	Difficult	4
county	13	2009	Difficult	8
county	26	2009	Difficult	16
county	23	2009	Difficult	15
county	27	2009	Difficult	19
county	38	2009	Difficult	8
county	8	2009	Difficult	3
county	24	2009	Difficult	5
county	30	2009	Don't Know	2
county	36	2009	Don't Know	2
county	39	2009	Don't Know	13
county	40	2009	Don't Know	2
county	28	2009	Don't Know	4
county	14	2009	Don't Know	14
county	7	2009	Don't Know	12
county	43	2009	Don't Know	18
county	11	2009	Don't Know	4
county	34	2009	Don't Know	1
county	37	2009	Don't Know	7
county	35	2009	Don't Know	2
county	22	2009	Don't Know	3
county	3	2009	Don't Know	10
county	20	2009	Don't Know	1
county	45	2009	Don't Know	18
county	42	2009	Don't Know	12
county	15	2009	Don't Know	14
county	2	2009	Don't Know	1
county	31	2009	Don't Know	7
county	5	2009	Don't Know	2
county	16	2009	Don't Know	25
county	17	2009	Don't Know	5
county	9	2009	Don't Know	16
county	10	2009	Don't Know	5
county	12	2009	Don't Know	23
county	44	2009	Don't Know	11
county	1	2009	Don't Know	1
county	21	2009	Don't Know	3
county	47	2009	Don't Know	40
county	32	2009	Don't Know	10
county	29	2009	Don't Know	6
county	33	2009	Don't Know	4
county	46	2009	Don't Know	9
county	18	2009	Don't Know	1
county	19	2009	Don't Know	2
county	25	2009	Don't Know	3
county	41	2009	Don't Know	9
county	6	2009	Don't Know	1
county	4	2009	Don't Know	5
county	13	2009	Don't Know	4
county	26	2009	Don't Know	6
county	23	2009	Don't Know	10
county	27	2009	Don't Know	8
county	38	2009	Don't Know	1
county	8	2009	Don't Know	13
county	24	2009	Don't Know	6
county	30	2009	Easy	3
county	36	2009	Easy	11
county	39	2009	Easy	5
county	40	2009	Easy	2
county	14	2009	Easy	3
county	7	2009	Easy	7
county	43	2009	Easy	1
county	34	2009	Easy	1
county	37	2009	Easy	3
county	35	2009	Easy	9
county	22	2009	Easy	26
county	3	2009	Easy	3
county	20	2009	Easy	8
county	45	2009	Easy	4
county	42	2009	Easy	3
county	15	2009	Easy	5
county	2	2009	Easy	4
county	31	2009	Easy	1
county	5	2009	Easy	1
county	16	2009	Easy	4
county	17	2009	Easy	11
county	9	2009	Easy	15
county	12	2009	Easy	9
county	44	2009	Easy	1
county	1	2009	Easy	10
county	21	2009	Easy	13
county	47	2009	Easy	59
county	32	2009	Easy	16
county	33	2009	Easy	3
county	46	2009	Easy	5
county	18	2009	Easy	5
county	19	2009	Easy	10
county	41	2009	Easy	4
county	6	2009	Easy	5
county	4	2009	Easy	2
county	13	2009	Easy	3
county	26	2009	Easy	5
county	23	2009	Easy	1
county	27	2009	Easy	2
county	8	2009	Easy	9
county	47	2009	Refused	1
county	30	2009	Very difficult	9
county	36	2009	Very difficult	19
county	39	2009	Very difficult	41
county	40	2009	Very difficult	32
county	28	2009	Very difficult	6
county	14	2009	Very difficult	13
county	7	2009	Very difficult	7
county	43	2009	Very difficult	32
county	11	2009	Very difficult	2
county	34	2009	Very difficult	23
county	37	2009	Very difficult	58
county	35	2009	Very difficult	17
county	22	2009	Very difficult	28
county	3	2009	Very difficult	24
county	20	2009	Very difficult	6
county	45	2009	Very difficult	32
county	42	2009	Very difficult	28
county	15	2009	Very difficult	10
county	2	2009	Very difficult	16
county	31	2009	Very difficult	11
county	5	2009	Very difficult	1
county	16	2009	Very difficult	10
county	17	2009	Very difficult	20
county	9	2009	Very difficult	8
county	10	2009	Very difficult	7
county	12	2009	Very difficult	23
county	44	2009	Very difficult	30
county	1	2009	Very difficult	22
county	21	2009	Very difficult	18
county	47	2009	Very difficult	71
county	32	2009	Very difficult	44
county	29	2009	Very difficult	26
county	33	2009	Very difficult	15
county	46	2009	Very difficult	19
county	18	2009	Very difficult	15
county	19	2009	Very difficult	15
county	25	2009	Very difficult	3
county	41	2009	Very difficult	19
county	6	2009	Very difficult	6
county	4	2009	Very difficult	1
county	13	2009	Very difficult	9
county	26	2009	Very difficult	19
county	23	2009	Very difficult	22
county	27	2009	Very difficult	27
county	38	2009	Very difficult	22
county	8	2009	Very difficult	5
county	24	2009	Very difficult	13
county	39	2009	Very easy	2
county	28	2009	Very easy	1
county	7	2009	Very easy	4
county	43	2009	Very easy	1
county	37	2009	Very easy	2
county	22	2009	Very easy	13
county	3	2009	Very easy	7
county	20	2009	Very easy	4
county	45	2009	Very easy	3
county	42	2009	Very easy	1
county	15	2009	Very easy	2
county	2	2009	Very easy	7
county	5	2009	Very easy	1
county	16	2009	Very easy	4
county	17	2009	Very easy	7
county	9	2009	Very easy	4
county	1	2009	Very easy	13
county	21	2009	Very easy	7
county	47	2009	Very easy	21
county	32	2009	Very easy	1
county	46	2009	Very easy	1
county	19	2009	Very easy	3
county	26	2009	Very easy	2
county	38	2009	Very easy	1
county	8	2009	Very easy	2
\.


--
-- Name: difficulty_to_find_out_what_taxes_or_fees_to_pay pk_difficulty_to_find_out_what_taxes_or_fees_to_pay; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_find_out_what_taxes_or_fees_to_pay
    ADD CONSTRAINT pk_difficulty_to_find_out_what_taxes_or_fees_to_pay PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_find_out_what_taxes_or_fees_to_pay);


--
-- PostgreSQL database dump complete
--

