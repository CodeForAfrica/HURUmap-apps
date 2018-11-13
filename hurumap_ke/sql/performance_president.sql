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

ALTER TABLE IF EXISTS ONLY public.performance_president DROP CONSTRAINT IF EXISTS pk_performance_president;
DROP TABLE IF EXISTS public.performance_president;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: performance_president; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.performance_president (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    performance_president character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: performance_president; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.performance_president (geo_level, geo_code, geo_version, performance_president, total) FROM stdin;
county	30	2009	Approve	12
county	36	2009	Approve	24
county	39	2009	Approve	38
county	40	2009	Approve	20
county	28	2009	Approve	5
county	14	2009	Approve	12
county	7	2009	Approve	20
county	43	2009	Approve	13
county	11	2009	Approve	3
county	34	2009	Approve	27
county	37	2009	Approve	50
county	35	2009	Approve	16
county	22	2009	Approve	44
county	3	2009	Approve	26
county	20	2009	Approve	9
county	45	2009	Approve	32
county	42	2009	Approve	18
county	15	2009	Approve	28
county	2	2009	Approve	17
county	31	2009	Approve	7
county	16	2009	Approve	31
county	17	2009	Approve	22
county	9	2009	Approve	29
county	10	2009	Approve	7
county	12	2009	Approve	41
county	44	2009	Approve	23
county	1	2009	Approve	29
county	21	2009	Approve	12
county	47	2009	Approve	119
county	32	2009	Approve	33
county	29	2009	Approve	17
county	33	2009	Approve	17
county	46	2009	Approve	18
county	18	2009	Approve	7
county	19	2009	Approve	16
county	25	2009	Approve	7
county	41	2009	Approve	11
county	6	2009	Approve	7
county	4	2009	Approve	4
county	13	2009	Approve	11
county	26	2009	Approve	20
county	23	2009	Approve	30
county	27	2009	Approve	11
county	38	2009	Approve	16
county	8	2009	Approve	19
county	24	2009	Approve	6
county	36	2009	Disapprove	1
county	39	2009	Disapprove	6
county	40	2009	Disapprove	7
county	14	2009	Disapprove	2
county	7	2009	Disapprove	4
county	43	2009	Disapprove	21
county	34	2009	Disapprove	7
county	37	2009	Disapprove	11
county	35	2009	Disapprove	5
county	22	2009	Disapprove	5
county	3	2009	Disapprove	17
county	20	2009	Disapprove	1
county	45	2009	Disapprove	26
county	42	2009	Disapprove	17
county	15	2009	Disapprove	5
county	2	2009	Disapprove	10
county	5	2009	Disapprove	1
county	16	2009	Disapprove	15
county	17	2009	Disapprove	11
county	9	2009	Disapprove	9
county	10	2009	Disapprove	1
county	12	2009	Disapprove	4
county	44	2009	Disapprove	18
county	1	2009	Disapprove	16
county	47	2009	Disapprove	40
county	32	2009	Disapprove	7
county	29	2009	Disapprove	2
county	33	2009	Disapprove	6
county	46	2009	Disapprove	13
county	18	2009	Disapprove	3
county	19	2009	Disapprove	2
county	41	2009	Disapprove	16
county	6	2009	Disapprove	3
county	4	2009	Disapprove	1
county	13	2009	Disapprove	2
county	26	2009	Disapprove	5
county	23	2009	Disapprove	8
county	38	2009	Disapprove	7
county	8	2009	Disapprove	5
county	24	2009	Disapprove	1
county	40	2009	Don�t know/Haven't heard enough	1
county	7	2009	Don�t know/Haven't heard enough	2
county	11	2009	Don�t know/Haven't heard enough	1
county	34	2009	Don�t know/Haven't heard enough	1
county	37	2009	Don�t know/Haven't heard enough	1
county	22	2009	Don�t know/Haven't heard enough	1
county	3	2009	Don�t know/Haven't heard enough	1
county	15	2009	Don�t know/Haven't heard enough	1
county	31	2009	Don�t know/Haven't heard enough	2
county	16	2009	Don�t know/Haven't heard enough	2
county	17	2009	Don�t know/Haven't heard enough	4
county	10	2009	Don�t know/Haven't heard enough	2
county	47	2009	Don�t know/Haven't heard enough	2
county	41	2009	Don�t know/Haven't heard enough	1
county	6	2009	Don�t know/Haven't heard enough	3
county	4	2009	Don�t know/Haven't heard enough	1
county	27	2009	Don�t know/Haven't heard enough	1
county	8	2009	Don�t know/Haven't heard enough	4
county	30	2009	Strongly Approve	20
county	36	2009	Strongly Approve	22
county	39	2009	Strongly Approve	24
county	40	2009	Strongly Approve	4
county	28	2009	Strongly Approve	10
county	14	2009	Strongly Approve	25
county	7	2009	Strongly Approve	4
county	43	2009	Strongly Approve	2
county	11	2009	Strongly Approve	2
county	34	2009	Strongly Approve	12
county	37	2009	Strongly Approve	14
county	35	2009	Strongly Approve	16
county	22	2009	Strongly Approve	68
county	3	2009	Strongly Approve	4
county	20	2009	Strongly Approve	30
county	45	2009	Strongly Approve	4
county	42	2009	Strongly Approve	1
county	15	2009	Strongly Approve	17
county	2	2009	Strongly Approve	8
county	31	2009	Strongly Approve	14
county	5	2009	Strongly Approve	6
county	16	2009	Strongly Approve	21
county	17	2009	Strongly Approve	14
county	9	2009	Strongly Approve	5
county	10	2009	Strongly Approve	1
county	12	2009	Strongly Approve	40
county	44	2009	Strongly Approve	1
county	1	2009	Strongly Approve	7
county	21	2009	Strongly Approve	51
county	47	2009	Strongly Approve	65
county	32	2009	Strongly Approve	63
county	29	2009	Strongly Approve	29
county	33	2009	Strongly Approve	23
county	46	2009	Strongly Approve	3
county	18	2009	Strongly Approve	30
county	19	2009	Strongly Approve	30
county	25	2009	Strongly Approve	1
county	6	2009	Strongly Approve	2
county	4	2009	Strongly Approve	2
county	13	2009	Strongly Approve	10
county	26	2009	Strongly Approve	15
county	23	2009	Strongly Approve	9
county	27	2009	Strongly Approve	42
county	38	2009	Strongly Approve	4
county	8	2009	Strongly Approve	1
county	24	2009	Strongly Approve	17
county	36	2009	Strongly Disapprove	1
county	39	2009	Strongly Disapprove	12
county	40	2009	Strongly Disapprove	8
county	28	2009	Strongly Disapprove	1
county	14	2009	Strongly Disapprove	1
county	7	2009	Strongly Disapprove	2
county	43	2009	Strongly Disapprove	20
county	11	2009	Strongly Disapprove	2
county	34	2009	Strongly Disapprove	1
county	37	2009	Strongly Disapprove	20
county	35	2009	Strongly Disapprove	3
county	22	2009	Strongly Disapprove	2
county	3	2009	Strongly Disapprove	16
county	45	2009	Strongly Disapprove	10
county	42	2009	Strongly Disapprove	20
county	15	2009	Strongly Disapprove	5
county	2	2009	Strongly Disapprove	5
county	31	2009	Strongly Disapprove	1
county	5	2009	Strongly Disapprove	1
county	16	2009	Strongly Disapprove	3
county	17	2009	Strongly Disapprove	5
county	9	2009	Strongly Disapprove	5
county	10	2009	Strongly Disapprove	5
county	44	2009	Strongly Disapprove	6
county	1	2009	Strongly Disapprove	20
county	21	2009	Strongly Disapprove	1
county	47	2009	Strongly Disapprove	22
county	32	2009	Strongly Disapprove	1
county	33	2009	Strongly Disapprove	2
county	46	2009	Strongly Disapprove	6
county	41	2009	Strongly Disapprove	20
county	6	2009	Strongly Disapprove	1
county	13	2009	Strongly Disapprove	1
county	26	2009	Strongly Disapprove	8
county	23	2009	Strongly Disapprove	1
county	27	2009	Strongly Disapprove	2
county	38	2009	Strongly Disapprove	5
county	8	2009	Strongly Disapprove	3
\.


--
-- Name: performance_president pk_performance_president; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.performance_president
    ADD CONSTRAINT pk_performance_president PRIMARY KEY (geo_level, geo_code, geo_version, performance_president);


--
-- PostgreSQL database dump complete
--

