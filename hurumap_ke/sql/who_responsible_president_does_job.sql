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

ALTER TABLE IF EXISTS ONLY public.who_responsible_president_does_job DROP CONSTRAINT IF EXISTS pk_who_responsible_president_does_job;
DROP TABLE IF EXISTS public.who_responsible_president_does_job;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: who_responsible_president_does_job; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.who_responsible_president_does_job (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    who_responsible_president_does_job character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: who_responsible_president_does_job; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.who_responsible_president_does_job (geo_level, geo_code, geo_version, who_responsible_president_does_job, total) FROM stdin;
county	30	2009	Don�t know	1
county	36	2009	Don�t know	1
county	39	2009	Don�t know	2
county	40	2009	Don�t know	2
county	14	2009	Don�t know	1
county	7	2009	Don�t know	10
county	11	2009	Don�t know	1
county	34	2009	Don�t know	2
county	37	2009	Don�t know	2
county	3	2009	Don�t know	4
county	45	2009	Don�t know	3
county	42	2009	Don�t know	2
county	15	2009	Don�t know	2
county	2	2009	Don�t know	1
county	31	2009	Don�t know	3
county	16	2009	Don�t know	1
county	17	2009	Don�t know	4
county	9	2009	Don�t know	10
county	10	2009	Don�t know	1
county	12	2009	Don�t know	2
county	44	2009	Don�t know	2
county	21	2009	Don�t know	2
county	47	2009	Don�t know	13
county	29	2009	Don�t know	1
county	33	2009	Don�t know	1
county	46	2009	Don�t know	2
county	25	2009	Don�t know	2
county	41	2009	Don�t know	6
county	4	2009	Don�t know	4
county	23	2009	Don�t know	3
county	27	2009	Don�t know	1
county	8	2009	Don�t know	13
county	24	2009	Don�t know	1
county	16	2009	Missing	1
county	30	2009	No One	1
county	28	2009	No One	1
county	7	2009	No One	2
county	43	2009	No One	1
county	34	2009	No One	2
county	37	2009	No One	1
county	22	2009	No One	2
county	3	2009	No One	1
county	20	2009	No One	1
county	45	2009	No One	3
county	17	2009	No One	1
county	9	2009	No One	1
county	1	2009	No One	1
county	47	2009	No One	6
county	46	2009	No One	1
county	23	2009	No One	1
county	30	2009	The President / Executive	6
county	36	2009	The President / Executive	1
county	39	2009	The President / Executive	8
county	40	2009	The President / Executive	1
county	28	2009	The President / Executive	5
county	14	2009	The President / Executive	1
county	7	2009	The President / Executive	1
county	43	2009	The President / Executive	4
county	11	2009	The President / Executive	1
county	34	2009	The President / Executive	10
county	37	2009	The President / Executive	8
county	35	2009	The President / Executive	1
county	22	2009	The President / Executive	6
county	3	2009	The President / Executive	1
county	20	2009	The President / Executive	1
county	45	2009	The President / Executive	5
county	42	2009	The President / Executive	1
county	2	2009	The President / Executive	2
county	16	2009	The President / Executive	1
county	17	2009	The President / Executive	3
county	10	2009	The President / Executive	2
county	12	2009	The President / Executive	3
county	44	2009	The President / Executive	3
county	1	2009	The President / Executive	1
county	21	2009	The President / Executive	3
county	47	2009	The President / Executive	15
county	32	2009	The President / Executive	5
county	29	2009	The President / Executive	10
county	46	2009	The President / Executive	1
county	19	2009	The President / Executive	3
county	4	2009	The President / Executive	1
county	13	2009	The President / Executive	1
county	26	2009	The President / Executive	1
county	23	2009	The President / Executive	1
county	27	2009	The President / Executive	13
county	38	2009	The President / Executive	2
county	24	2009	The President / Executive	1
county	30	2009	The Voters	16
county	36	2009	The Voters	18
county	39	2009	The Voters	41
county	40	2009	The Voters	28
county	28	2009	The Voters	5
county	14	2009	The Voters	17
county	7	2009	The Voters	12
county	43	2009	The Voters	38
county	11	2009	The Voters	2
county	34	2009	The Voters	20
county	37	2009	The Voters	53
county	35	2009	The Voters	20
county	22	2009	The Voters	71
county	3	2009	The Voters	38
county	20	2009	The Voters	24
county	45	2009	The Voters	48
county	42	2009	The Voters	30
county	15	2009	The Voters	17
county	2	2009	The Voters	24
county	31	2009	The Voters	12
county	5	2009	The Voters	6
county	16	2009	The Voters	33
county	17	2009	The Voters	29
county	9	2009	The Voters	19
county	10	2009	The Voters	6
county	12	2009	The Voters	30
county	44	2009	The Voters	31
county	1	2009	The Voters	45
county	21	2009	The Voters	31
county	47	2009	The Voters	108
county	32	2009	The Voters	50
county	29	2009	The Voters	31
county	33	2009	The Voters	24
county	46	2009	The Voters	23
county	18	2009	The Voters	28
county	19	2009	The Voters	27
county	25	2009	The Voters	3
county	41	2009	The Voters	22
county	6	2009	The Voters	13
county	4	2009	The Voters	2
county	13	2009	The Voters	6
county	26	2009	The Voters	23
county	23	2009	The Voters	35
county	27	2009	The Voters	24
county	38	2009	The Voters	19
county	8	2009	The Voters	12
county	24	2009	The Voters	17
county	30	2009	The parliament / local council	6
county	36	2009	The parliament / local council	27
county	39	2009	The parliament / local council	27
county	40	2009	The parliament / local council	7
county	28	2009	The parliament / local council	2
county	14	2009	The parliament / local council	17
county	7	2009	The parliament / local council	7
county	43	2009	The parliament / local council	13
county	11	2009	The parliament / local council	3
county	34	2009	The parliament / local council	14
county	37	2009	The parliament / local council	28
county	35	2009	The parliament / local council	18
county	22	2009	The parliament / local council	41
county	3	2009	The parliament / local council	14
county	20	2009	The parliament / local council	12
county	45	2009	The parliament / local council	11
county	42	2009	The parliament / local council	23
county	15	2009	The parliament / local council	29
county	2	2009	The parliament / local council	10
county	31	2009	The parliament / local council	8
county	5	2009	The parliament / local council	2
county	16	2009	The parliament / local council	28
county	17	2009	The parliament / local council	18
county	9	2009	The parliament / local council	18
county	10	2009	The parliament / local council	7
county	12	2009	The parliament / local council	38
county	44	2009	The parliament / local council	12
county	1	2009	The parliament / local council	23
county	21	2009	The parliament / local council	23
county	47	2009	The parliament / local council	93
county	32	2009	The parliament / local council	45
county	29	2009	The parliament / local council	6
county	33	2009	The parliament / local council	22
county	46	2009	The parliament / local council	12
county	18	2009	The parliament / local council	12
county	19	2009	The parliament / local council	17
county	25	2009	The parliament / local council	3
county	41	2009	The parliament / local council	18
county	6	2009	The parliament / local council	3
county	13	2009	The parliament / local council	14
county	26	2009	The parliament / local council	22
county	23	2009	The parliament / local council	8
county	27	2009	The parliament / local council	18
county	38	2009	The parliament / local council	8
county	8	2009	The parliament / local council	7
county	24	2009	The parliament / local council	4
county	30	2009	Their political party	2
county	36	2009	Their political party	1
county	39	2009	Their political party	2
county	40	2009	Their political party	2
county	28	2009	Their political party	3
county	14	2009	Their political party	4
county	11	2009	Their political party	1
county	37	2009	Their political party	4
county	35	2009	Their political party	1
county	3	2009	Their political party	6
county	20	2009	Their political party	2
county	45	2009	Their political party	2
county	15	2009	Their political party	8
county	2	2009	Their political party	3
county	31	2009	Their political party	1
county	16	2009	Their political party	8
county	17	2009	Their political party	1
county	12	2009	Their political party	12
county	1	2009	Their political party	2
county	21	2009	Their political party	5
county	47	2009	Their political party	13
county	32	2009	Their political party	4
county	33	2009	Their political party	1
county	46	2009	Their political party	1
county	19	2009	Their political party	1
county	41	2009	Their political party	2
county	4	2009	Their political party	1
county	13	2009	Their political party	3
county	26	2009	Their political party	2
county	38	2009	Their political party	3
county	24	2009	Their political party	1
\.


--
-- Name: who_responsible_president_does_job pk_who_responsible_president_does_job; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.who_responsible_president_does_job
    ADD CONSTRAINT pk_who_responsible_president_does_job PRIMARY KEY (geo_level, geo_code, geo_version, who_responsible_president_does_job);


--
-- PostgreSQL database dump complete
--

