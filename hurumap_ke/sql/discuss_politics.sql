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

ALTER TABLE IF EXISTS ONLY public.discuss_politics DROP CONSTRAINT IF EXISTS pk_discuss_politics;
DROP TABLE IF EXISTS public.discuss_politics;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: discuss_politics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.discuss_politics (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    discuss_politics character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: discuss_politics; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.discuss_politics (geo_level, geo_code, geo_version, discuss_politics, total) FROM stdin;
county	47	2009	Don't know	1
county	4	2009	Don't know	2
county	23	2009	Don't know	1
county	30	2009	Frequently	6
county	36	2009	Frequently	10
county	39	2009	Frequently	6
county	40	2009	Frequently	9
county	28	2009	Frequently	4
county	14	2009	Frequently	9
county	7	2009	Frequently	3
county	43	2009	Frequently	8
county	34	2009	Frequently	7
county	37	2009	Frequently	14
county	35	2009	Frequently	17
county	22	2009	Frequently	39
county	3	2009	Frequently	2
county	20	2009	Frequently	16
county	45	2009	Frequently	9
county	42	2009	Frequently	6
county	15	2009	Frequently	13
county	2	2009	Frequently	4
county	31	2009	Frequently	2
county	5	2009	Frequently	2
county	16	2009	Frequently	12
county	17	2009	Frequently	10
county	9	2009	Frequently	6
county	10	2009	Frequently	1
county	12	2009	Frequently	22
county	44	2009	Frequently	9
county	1	2009	Frequently	5
county	21	2009	Frequently	24
county	47	2009	Frequently	59
county	32	2009	Frequently	21
county	29	2009	Frequently	5
county	33	2009	Frequently	12
county	46	2009	Frequently	7
county	18	2009	Frequently	16
county	19	2009	Frequently	14
county	41	2009	Frequently	5
county	6	2009	Frequently	1
county	13	2009	Frequently	4
county	26	2009	Frequently	5
county	27	2009	Frequently	6
county	38	2009	Frequently	5
county	8	2009	Frequently	4
county	24	2009	Frequently	1
county	30	2009	Never	8
county	36	2009	Never	6
county	39	2009	Never	35
county	40	2009	Never	14
county	28	2009	Never	8
county	14	2009	Never	11
county	7	2009	Never	14
county	43	2009	Never	11
county	11	2009	Never	4
county	34	2009	Never	19
county	37	2009	Never	38
county	35	2009	Never	8
county	22	2009	Never	19
county	3	2009	Never	32
county	20	2009	Never	6
county	45	2009	Never	25
county	42	2009	Never	15
county	15	2009	Never	13
county	2	2009	Never	22
county	31	2009	Never	10
county	5	2009	Never	1
county	16	2009	Never	24
county	17	2009	Never	23
county	9	2009	Never	20
county	10	2009	Never	6
county	12	2009	Never	23
county	44	2009	Never	7
county	1	2009	Never	27
county	21	2009	Never	10
county	47	2009	Never	66
county	32	2009	Never	21
county	29	2009	Never	16
county	33	2009	Never	12
county	46	2009	Never	16
county	18	2009	Never	8
county	19	2009	Never	8
county	25	2009	Never	5
county	41	2009	Never	15
county	6	2009	Never	10
county	4	2009	Never	2
county	13	2009	Never	6
county	26	2009	Never	30
county	23	2009	Never	36
county	27	2009	Never	30
county	38	2009	Never	16
county	8	2009	Never	20
county	24	2009	Never	13
county	30	2009	Occasionally	18
county	36	2009	Occasionally	32
county	39	2009	Occasionally	39
county	40	2009	Occasionally	17
county	28	2009	Occasionally	4
county	14	2009	Occasionally	20
county	7	2009	Occasionally	15
county	43	2009	Occasionally	37
county	11	2009	Occasionally	4
county	34	2009	Occasionally	22
county	37	2009	Occasionally	44
county	35	2009	Occasionally	15
county	22	2009	Occasionally	62
county	3	2009	Occasionally	30
county	20	2009	Occasionally	18
county	45	2009	Occasionally	38
county	42	2009	Occasionally	35
county	15	2009	Occasionally	30
county	2	2009	Occasionally	14
county	31	2009	Occasionally	12
county	5	2009	Occasionally	5
county	16	2009	Occasionally	36
county	17	2009	Occasionally	23
county	9	2009	Occasionally	22
county	10	2009	Occasionally	9
county	12	2009	Occasionally	40
county	44	2009	Occasionally	32
county	1	2009	Occasionally	40
county	21	2009	Occasionally	30
county	47	2009	Occasionally	122
county	32	2009	Occasionally	62
county	29	2009	Occasionally	27
county	33	2009	Occasionally	24
county	46	2009	Occasionally	17
county	18	2009	Occasionally	16
county	19	2009	Occasionally	26
county	25	2009	Occasionally	3
county	41	2009	Occasionally	28
county	6	2009	Occasionally	5
county	4	2009	Occasionally	4
county	13	2009	Occasionally	14
county	26	2009	Occasionally	13
county	23	2009	Occasionally	11
county	27	2009	Occasionally	20
county	38	2009	Occasionally	11
county	8	2009	Occasionally	8
county	24	2009	Occasionally	10
\.


--
-- Name: discuss_politics pk_discuss_politics; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discuss_politics
    ADD CONSTRAINT pk_discuss_politics PRIMARY KEY (geo_level, geo_code, geo_version, discuss_politics);


--
-- PostgreSQL database dump complete
--

