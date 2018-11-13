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

ALTER TABLE IF EXISTS ONLY public.performance_traditional_leader DROP CONSTRAINT IF EXISTS pk_performance_traditional_leader;
DROP TABLE IF EXISTS public.performance_traditional_leader;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: performance_traditional_leader; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.performance_traditional_leader (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    performance_traditional_leader character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: performance_traditional_leader; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.performance_traditional_leader (geo_level, geo_code, geo_version, performance_traditional_leader, total) FROM stdin;
county	30	2009	Approve	17
county	36	2009	Approve	19
county	39	2009	Approve	43
county	40	2009	Approve	12
county	28	2009	Approve	7
county	14	2009	Approve	20
county	7	2009	Approve	18
county	43	2009	Approve	41
county	11	2009	Approve	5
county	34	2009	Approve	24
county	37	2009	Approve	38
county	35	2009	Approve	22
county	22	2009	Approve	50
county	3	2009	Approve	30
county	20	2009	Approve	19
county	45	2009	Approve	51
county	42	2009	Approve	40
county	15	2009	Approve	31
county	2	2009	Approve	13
county	31	2009	Approve	12
county	5	2009	Approve	2
county	16	2009	Approve	29
county	17	2009	Approve	20
county	9	2009	Approve	29
county	10	2009	Approve	9
county	12	2009	Approve	40
county	44	2009	Approve	27
county	1	2009	Approve	27
county	21	2009	Approve	36
county	47	2009	Approve	91
county	32	2009	Approve	54
county	29	2009	Approve	28
county	33	2009	Approve	16
county	46	2009	Approve	35
county	18	2009	Approve	16
county	19	2009	Approve	28
county	25	2009	Approve	3
county	41	2009	Approve	30
county	6	2009	Approve	7
county	4	2009	Approve	3
county	13	2009	Approve	13
county	26	2009	Approve	19
county	23	2009	Approve	23
county	27	2009	Approve	29
county	38	2009	Approve	16
county	8	2009	Approve	17
county	24	2009	Approve	8
county	30	2009	Disapprove	1
county	36	2009	Disapprove	4
county	39	2009	Disapprove	6
county	40	2009	Disapprove	5
county	14	2009	Disapprove	12
county	7	2009	Disapprove	2
county	43	2009	Disapprove	2
county	11	2009	Disapprove	1
county	34	2009	Disapprove	5
county	37	2009	Disapprove	18
county	35	2009	Disapprove	3
county	22	2009	Disapprove	24
county	3	2009	Disapprove	8
county	20	2009	Disapprove	3
county	45	2009	Disapprove	8
county	42	2009	Disapprove	3
county	15	2009	Disapprove	8
county	2	2009	Disapprove	3
county	31	2009	Disapprove	2
county	5	2009	Disapprove	2
county	16	2009	Disapprove	7
county	17	2009	Disapprove	6
county	9	2009	Disapprove	2
county	10	2009	Disapprove	2
county	12	2009	Disapprove	17
county	44	2009	Disapprove	7
county	1	2009	Disapprove	18
county	21	2009	Disapprove	8
county	47	2009	Disapprove	30
county	32	2009	Disapprove	4
county	29	2009	Disapprove	2
county	33	2009	Disapprove	2
county	46	2009	Disapprove	1
county	18	2009	Disapprove	13
county	19	2009	Disapprove	6
county	25	2009	Disapprove	1
county	41	2009	Disapprove	4
county	4	2009	Disapprove	1
county	13	2009	Disapprove	3
county	26	2009	Disapprove	4
county	23	2009	Disapprove	3
county	27	2009	Disapprove	7
county	38	2009	Disapprove	5
county	8	2009	Disapprove	4
county	30	2009	Don�t know/Haven't heard enough	2
county	39	2009	Don�t know/Haven't heard enough	8
county	40	2009	Don�t know/Haven't heard enough	7
county	7	2009	Don�t know/Haven't heard enough	6
county	34	2009	Don�t know/Haven't heard enough	10
county	37	2009	Don�t know/Haven't heard enough	13
county	35	2009	Don�t know/Haven't heard enough	1
county	22	2009	Don�t know/Haven't heard enough	23
county	3	2009	Don�t know/Haven't heard enough	9
county	20	2009	Don�t know/Haven't heard enough	6
county	45	2009	Don�t know/Haven't heard enough	2
county	42	2009	Don�t know/Haven't heard enough	3
county	15	2009	Don�t know/Haven't heard enough	3
county	2	2009	Don�t know/Haven't heard enough	10
county	31	2009	Don�t know/Haven't heard enough	2
county	5	2009	Don�t know/Haven't heard enough	1
county	16	2009	Don�t know/Haven't heard enough	18
county	17	2009	Don�t know/Haven't heard enough	12
county	9	2009	Don�t know/Haven't heard enough	10
county	12	2009	Don�t know/Haven't heard enough	12
county	44	2009	Don�t know/Haven't heard enough	1
county	1	2009	Don�t know/Haven't heard enough	14
county	21	2009	Don�t know/Haven't heard enough	5
county	47	2009	Don�t know/Haven't heard enough	76
county	32	2009	Don�t know/Haven't heard enough	4
county	33	2009	Don�t know/Haven't heard enough	3
county	46	2009	Don�t know/Haven't heard enough	1
county	18	2009	Don�t know/Haven't heard enough	3
county	19	2009	Don�t know/Haven't heard enough	6
county	41	2009	Don�t know/Haven't heard enough	2
county	6	2009	Don�t know/Haven't heard enough	5
county	4	2009	Don�t know/Haven't heard enough	2
county	13	2009	Don�t know/Haven't heard enough	1
county	26	2009	Don�t know/Haven't heard enough	7
county	27	2009	Don�t know/Haven't heard enough	6
county	38	2009	Don�t know/Haven't heard enough	3
county	8	2009	Don�t know/Haven't heard enough	4
county	17	2009	Missing	1
county	30	2009	Strongly Approve	12
county	36	2009	Strongly Approve	24
county	39	2009	Strongly Approve	13
county	40	2009	Strongly Approve	10
county	28	2009	Strongly Approve	8
county	14	2009	Strongly Approve	7
county	7	2009	Strongly Approve	6
county	43	2009	Strongly Approve	13
county	11	2009	Strongly Approve	2
county	34	2009	Strongly Approve	8
county	37	2009	Strongly Approve	12
county	35	2009	Strongly Approve	14
county	22	2009	Strongly Approve	14
county	3	2009	Strongly Approve	14
county	20	2009	Strongly Approve	7
county	45	2009	Strongly Approve	7
county	42	2009	Strongly Approve	8
county	15	2009	Strongly Approve	11
county	2	2009	Strongly Approve	14
county	31	2009	Strongly Approve	8
county	5	2009	Strongly Approve	1
county	16	2009	Strongly Approve	14
county	17	2009	Strongly Approve	12
county	9	2009	Strongly Approve	6
county	10	2009	Strongly Approve	4
county	12	2009	Strongly Approve	12
county	44	2009	Strongly Approve	13
county	1	2009	Strongly Approve	11
county	21	2009	Strongly Approve	12
county	47	2009	Strongly Approve	31
county	32	2009	Strongly Approve	40
county	29	2009	Strongly Approve	17
county	33	2009	Strongly Approve	25
county	46	2009	Strongly Approve	3
county	18	2009	Strongly Approve	5
county	19	2009	Strongly Approve	4
county	25	2009	Strongly Approve	3
county	41	2009	Strongly Approve	11
county	6	2009	Strongly Approve	3
county	4	2009	Strongly Approve	2
county	13	2009	Strongly Approve	7
county	26	2009	Strongly Approve	12
county	23	2009	Strongly Approve	22
county	27	2009	Strongly Approve	13
county	38	2009	Strongly Approve	5
county	8	2009	Strongly Approve	6
county	24	2009	Strongly Approve	16
county	36	2009	Strongly Disapprove	1
county	39	2009	Strongly Disapprove	10
county	40	2009	Strongly Disapprove	6
county	28	2009	Strongly Disapprove	1
county	14	2009	Strongly Disapprove	1
county	34	2009	Strongly Disapprove	1
county	37	2009	Strongly Disapprove	15
county	22	2009	Strongly Disapprove	9
county	3	2009	Strongly Disapprove	3
county	20	2009	Strongly Disapprove	5
county	45	2009	Strongly Disapprove	4
county	42	2009	Strongly Disapprove	2
county	15	2009	Strongly Disapprove	3
county	5	2009	Strongly Disapprove	2
county	16	2009	Strongly Disapprove	4
county	17	2009	Strongly Disapprove	5
county	9	2009	Strongly Disapprove	1
county	10	2009	Strongly Disapprove	1
county	12	2009	Strongly Disapprove	4
county	1	2009	Strongly Disapprove	2
county	21	2009	Strongly Disapprove	3
county	47	2009	Strongly Disapprove	20
county	32	2009	Strongly Disapprove	2
county	29	2009	Strongly Disapprove	1
county	33	2009	Strongly Disapprove	2
county	18	2009	Strongly Disapprove	3
county	19	2009	Strongly Disapprove	4
county	25	2009	Strongly Disapprove	1
county	41	2009	Strongly Disapprove	1
county	6	2009	Strongly Disapprove	1
county	26	2009	Strongly Disapprove	6
county	27	2009	Strongly Disapprove	1
county	38	2009	Strongly Disapprove	3
county	8	2009	Strongly Disapprove	1
\.


--
-- Name: performance_traditional_leader pk_performance_traditional_leader; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.performance_traditional_leader
    ADD CONSTRAINT pk_performance_traditional_leader PRIMARY KEY (geo_level, geo_code, geo_version, performance_traditional_leader);


--
-- PostgreSQL database dump complete
--

