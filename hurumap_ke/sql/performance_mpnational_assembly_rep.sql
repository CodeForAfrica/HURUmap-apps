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

ALTER TABLE IF EXISTS ONLY public.performance_mpnational_assembly_rep DROP CONSTRAINT IF EXISTS pk_performance_mpnational_assembly_rep;
DROP TABLE IF EXISTS public.performance_mpnational_assembly_rep;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: performance_mpnational_assembly_rep; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.performance_mpnational_assembly_rep (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    performance_mpnational_assembly_rep character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: performance_mpnational_assembly_rep; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.performance_mpnational_assembly_rep (geo_level, geo_code, geo_version, performance_mpnational_assembly_rep, total) FROM stdin;
county	30	2009	Approve	23
county	36	2009	Approve	11
county	39	2009	Approve	27
county	40	2009	Approve	16
county	28	2009	Approve	7
county	14	2009	Approve	20
county	7	2009	Approve	8
county	43	2009	Approve	25
county	11	2009	Approve	5
county	34	2009	Approve	26
county	37	2009	Approve	29
county	35	2009	Approve	23
county	22	2009	Approve	42
county	3	2009	Approve	16
county	20	2009	Approve	17
county	45	2009	Approve	17
county	42	2009	Approve	27
county	15	2009	Approve	26
county	2	2009	Approve	7
county	31	2009	Approve	12
county	5	2009	Approve	1
county	16	2009	Approve	24
county	17	2009	Approve	15
county	9	2009	Approve	17
county	10	2009	Approve	9
county	12	2009	Approve	51
county	44	2009	Approve	20
county	1	2009	Approve	25
county	21	2009	Approve	30
county	47	2009	Approve	72
county	32	2009	Approve	46
county	29	2009	Approve	30
county	33	2009	Approve	16
county	46	2009	Approve	14
county	18	2009	Approve	14
county	19	2009	Approve	20
county	25	2009	Approve	4
county	41	2009	Approve	20
county	6	2009	Approve	6
county	4	2009	Approve	2
county	13	2009	Approve	10
county	26	2009	Approve	15
county	23	2009	Approve	27
county	27	2009	Approve	38
county	38	2009	Approve	15
county	8	2009	Approve	5
county	24	2009	Approve	16
county	30	2009	Disapprove	4
county	36	2009	Disapprove	17
county	39	2009	Disapprove	15
county	40	2009	Disapprove	11
county	28	2009	Disapprove	8
county	14	2009	Disapprove	7
county	7	2009	Disapprove	18
county	43	2009	Disapprove	20
county	34	2009	Disapprove	16
county	37	2009	Disapprove	25
county	35	2009	Disapprove	7
county	22	2009	Disapprove	34
county	3	2009	Disapprove	31
county	20	2009	Disapprove	9
county	45	2009	Disapprove	33
county	42	2009	Disapprove	18
county	15	2009	Disapprove	12
county	2	2009	Disapprove	20
county	31	2009	Disapprove	2
county	5	2009	Disapprove	2
county	16	2009	Disapprove	22
county	17	2009	Disapprove	13
county	9	2009	Disapprove	20
county	10	2009	Disapprove	1
county	12	2009	Disapprove	18
county	44	2009	Disapprove	18
county	1	2009	Disapprove	26
county	21	2009	Disapprove	10
county	47	2009	Disapprove	99
county	32	2009	Disapprove	25
county	29	2009	Disapprove	8
county	33	2009	Disapprove	17
county	46	2009	Disapprove	13
county	18	2009	Disapprove	18
county	19	2009	Disapprove	7
county	25	2009	Disapprove	4
county	41	2009	Disapprove	19
county	6	2009	Disapprove	4
county	4	2009	Disapprove	3
county	13	2009	Disapprove	9
county	26	2009	Disapprove	6
county	23	2009	Disapprove	10
county	27	2009	Disapprove	10
county	38	2009	Disapprove	8
county	8	2009	Disapprove	19
county	24	2009	Disapprove	3
county	36	2009	Don�t know/Haven't heard enough	2
county	39	2009	Don�t know/Haven't heard enough	2
county	40	2009	Don�t know/Haven't heard enough	1
county	7	2009	Don�t know/Haven't heard enough	2
county	34	2009	Don�t know/Haven't heard enough	1
county	37	2009	Don�t know/Haven't heard enough	2
county	22	2009	Don�t know/Haven't heard enough	3
county	3	2009	Don�t know/Haven't heard enough	1
county	15	2009	Don�t know/Haven't heard enough	1
county	2	2009	Don�t know/Haven't heard enough	2
county	31	2009	Don�t know/Haven't heard enough	3
county	16	2009	Don�t know/Haven't heard enough	3
county	17	2009	Don�t know/Haven't heard enough	2
county	9	2009	Don�t know/Haven't heard enough	8
county	12	2009	Don�t know/Haven't heard enough	4
county	21	2009	Don�t know/Haven't heard enough	1
county	47	2009	Don�t know/Haven't heard enough	10
county	32	2009	Don�t know/Haven't heard enough	6
county	33	2009	Don�t know/Haven't heard enough	1
county	18	2009	Don�t know/Haven't heard enough	1
county	6	2009	Don�t know/Haven't heard enough	1
county	4	2009	Don�t know/Haven't heard enough	3
county	26	2009	Don�t know/Haven't heard enough	2
county	27	2009	Don�t know/Haven't heard enough	1
county	38	2009	Don�t know/Haven't heard enough	1
county	8	2009	Don�t know/Haven't heard enough	6
county	15	2009	Missing	2
county	17	2009	Missing	1
county	30	2009	Strongly Approve	4
county	36	2009	Strongly Approve	11
county	39	2009	Strongly Approve	11
county	40	2009	Strongly Approve	7
county	28	2009	Strongly Approve	1
county	14	2009	Strongly Approve	8
county	43	2009	Strongly Approve	8
county	11	2009	Strongly Approve	1
county	34	2009	Strongly Approve	4
county	37	2009	Strongly Approve	4
county	35	2009	Strongly Approve	9
county	22	2009	Strongly Approve	27
county	3	2009	Strongly Approve	1
county	20	2009	Strongly Approve	6
county	45	2009	Strongly Approve	3
county	42	2009	Strongly Approve	8
county	15	2009	Strongly Approve	5
county	2	2009	Strongly Approve	3
county	31	2009	Strongly Approve	3
county	5	2009	Strongly Approve	4
county	16	2009	Strongly Approve	9
county	17	2009	Strongly Approve	9
county	10	2009	Strongly Approve	1
county	12	2009	Strongly Approve	5
county	44	2009	Strongly Approve	4
county	1	2009	Strongly Approve	4
county	21	2009	Strongly Approve	16
county	47	2009	Strongly Approve	15
county	32	2009	Strongly Approve	19
county	29	2009	Strongly Approve	8
county	33	2009	Strongly Approve	6
county	46	2009	Strongly Approve	1
county	18	2009	Strongly Approve	2
county	19	2009	Strongly Approve	7
county	41	2009	Strongly Approve	1
county	13	2009	Strongly Approve	2
county	26	2009	Strongly Approve	12
county	23	2009	Strongly Approve	11
county	27	2009	Strongly Approve	3
county	38	2009	Strongly Approve	3
county	24	2009	Strongly Approve	4
county	30	2009	Strongly Disapprove	1
county	36	2009	Strongly Disapprove	7
county	39	2009	Strongly Disapprove	25
county	40	2009	Strongly Disapprove	5
county	14	2009	Strongly Disapprove	5
county	7	2009	Strongly Disapprove	4
county	43	2009	Strongly Disapprove	3
county	11	2009	Strongly Disapprove	2
county	34	2009	Strongly Disapprove	1
county	37	2009	Strongly Disapprove	36
county	35	2009	Strongly Disapprove	1
county	22	2009	Strongly Disapprove	14
county	3	2009	Strongly Disapprove	15
county	20	2009	Strongly Disapprove	8
county	45	2009	Strongly Disapprove	19
county	42	2009	Strongly Disapprove	3
county	15	2009	Strongly Disapprove	10
county	2	2009	Strongly Disapprove	8
county	31	2009	Strongly Disapprove	4
county	5	2009	Strongly Disapprove	1
county	16	2009	Strongly Disapprove	14
county	17	2009	Strongly Disapprove	16
county	9	2009	Strongly Disapprove	3
county	10	2009	Strongly Disapprove	5
county	12	2009	Strongly Disapprove	7
county	44	2009	Strongly Disapprove	6
county	1	2009	Strongly Disapprove	17
county	21	2009	Strongly Disapprove	7
county	47	2009	Strongly Disapprove	52
county	32	2009	Strongly Disapprove	8
county	29	2009	Strongly Disapprove	2
county	33	2009	Strongly Disapprove	8
county	46	2009	Strongly Disapprove	12
county	18	2009	Strongly Disapprove	5
county	19	2009	Strongly Disapprove	14
county	41	2009	Strongly Disapprove	8
county	6	2009	Strongly Disapprove	5
county	13	2009	Strongly Disapprove	3
county	26	2009	Strongly Disapprove	13
county	27	2009	Strongly Disapprove	4
county	38	2009	Strongly Disapprove	5
county	8	2009	Strongly Disapprove	2
county	24	2009	Strongly Disapprove	1
\.


--
-- Name: performance_mpnational_assembly_rep pk_performance_mpnational_assembly_rep; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.performance_mpnational_assembly_rep
    ADD CONSTRAINT pk_performance_mpnational_assembly_rep PRIMARY KEY (geo_level, geo_code, geo_version, performance_mpnational_assembly_rep);


--
-- PostgreSQL database dump complete
--

