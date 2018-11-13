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

ALTER TABLE IF EXISTS ONLY public.who_responsible_mps_do_jobs DROP CONSTRAINT IF EXISTS pk_who_responsible_mps_do_jobs;
DROP TABLE IF EXISTS public.who_responsible_mps_do_jobs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: who_responsible_mps_do_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.who_responsible_mps_do_jobs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    who_responsible_mps_do_jobs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: who_responsible_mps_do_jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.who_responsible_mps_do_jobs (geo_level, geo_code, geo_version, who_responsible_mps_do_jobs, total) FROM stdin;
county	39	2009	Don�t know	1
county	40	2009	Don�t know	3
county	28	2009	Don�t know	1
county	14	2009	Don�t know	1
county	7	2009	Don�t know	10
county	11	2009	Don�t know	1
county	34	2009	Don�t know	1
county	37	2009	Don�t know	1
county	3	2009	Don�t know	3
county	45	2009	Don�t know	1
county	42	2009	Don�t know	1
county	15	2009	Don�t know	4
county	2	2009	Don�t know	1
county	31	2009	Don�t know	3
county	16	2009	Don�t know	6
county	17	2009	Don�t know	4
county	9	2009	Don�t know	11
county	12	2009	Don�t know	1
county	44	2009	Don�t know	2
county	47	2009	Don�t know	8
county	29	2009	Don�t know	1
county	46	2009	Don�t know	1
county	19	2009	Don�t know	1
county	25	2009	Don�t know	2
county	41	2009	Don�t know	3
county	4	2009	Don�t know	5
county	23	2009	Don�t know	2
county	27	2009	Don�t know	1
county	8	2009	Don�t know	10
county	24	2009	Don�t know	1
county	40	2009	No One	1
county	43	2009	No One	1
county	34	2009	No One	1
county	37	2009	No One	2
county	22	2009	No One	1
county	1	2009	No One	1
county	21	2009	No One	1
county	47	2009	No One	3
county	29	2009	No One	1
county	46	2009	No One	1
county	19	2009	No One	2
county	23	2009	No One	1
county	38	2009	No One	1
county	30	2009	The President / Executive	1
county	36	2009	The President / Executive	19
county	39	2009	The President / Executive	12
county	40	2009	The President / Executive	4
county	28	2009	The President / Executive	6
county	14	2009	The President / Executive	9
county	7	2009	The President / Executive	2
county	43	2009	The President / Executive	5
county	11	2009	The President / Executive	2
county	34	2009	The President / Executive	8
county	37	2009	The President / Executive	18
county	35	2009	The President / Executive	6
county	22	2009	The President / Executive	13
county	3	2009	The President / Executive	6
county	20	2009	The President / Executive	6
county	45	2009	The President / Executive	7
county	42	2009	The President / Executive	2
county	15	2009	The President / Executive	8
county	2	2009	The President / Executive	3
county	31	2009	The President / Executive	7
county	5	2009	The President / Executive	1
county	16	2009	The President / Executive	14
county	17	2009	The President / Executive	5
county	10	2009	The President / Executive	7
county	12	2009	The President / Executive	9
county	44	2009	The President / Executive	3
county	1	2009	The President / Executive	1
county	21	2009	The President / Executive	6
county	47	2009	The President / Executive	36
county	32	2009	The President / Executive	37
county	29	2009	The President / Executive	3
county	33	2009	The President / Executive	12
county	46	2009	The President / Executive	2
county	18	2009	The President / Executive	1
county	19	2009	The President / Executive	10
county	25	2009	The President / Executive	2
county	41	2009	The President / Executive	6
county	6	2009	The President / Executive	1
county	4	2009	The President / Executive	1
county	13	2009	The President / Executive	4
county	26	2009	The President / Executive	7
county	23	2009	The President / Executive	5
county	27	2009	The President / Executive	5
county	38	2009	The President / Executive	4
county	8	2009	The President / Executive	2
county	24	2009	The President / Executive	1
county	30	2009	The Voters	24
county	36	2009	The Voters	19
county	39	2009	The Voters	56
county	40	2009	The Voters	26
county	28	2009	The Voters	6
county	14	2009	The Voters	19
county	7	2009	The Voters	18
county	43	2009	The Voters	44
county	11	2009	The Voters	3
county	34	2009	The Voters	19
county	37	2009	The Voters	56
county	35	2009	The Voters	17
county	22	2009	The Voters	94
county	3	2009	The Voters	32
county	20	2009	The Voters	26
county	45	2009	The Voters	58
county	42	2009	The Voters	46
county	15	2009	The Voters	33
county	2	2009	The Voters	19
county	31	2009	The Voters	9
county	5	2009	The Voters	5
county	16	2009	The Voters	40
county	17	2009	The Voters	25
county	9	2009	The Voters	29
county	10	2009	The Voters	7
county	12	2009	The Voters	55
county	44	2009	The Voters	39
county	1	2009	The Voters	36
county	21	2009	The Voters	41
county	47	2009	The Voters	149
county	32	2009	The Voters	45
county	29	2009	The Voters	36
county	33	2009	The Voters	25
county	46	2009	The Voters	34
county	18	2009	The Voters	32
county	19	2009	The Voters	26
county	25	2009	The Voters	3
county	41	2009	The Voters	28
county	6	2009	The Voters	9
county	4	2009	The Voters	2
county	13	2009	The Voters	12
county	26	2009	The Voters	33
county	23	2009	The Voters	38
county	27	2009	The Voters	30
county	38	2009	The Voters	22
county	8	2009	The Voters	16
county	24	2009	The Voters	19
county	30	2009	The parliament / local council	5
county	36	2009	The parliament / local council	6
county	39	2009	The parliament / local council	7
county	40	2009	The parliament / local council	4
county	28	2009	The parliament / local council	1
county	14	2009	The parliament / local council	3
county	7	2009	The parliament / local council	1
county	43	2009	The parliament / local council	6
county	11	2009	The parliament / local council	2
county	34	2009	The parliament / local council	18
county	37	2009	The parliament / local council	14
county	35	2009	The parliament / local council	12
county	22	2009	The parliament / local council	11
county	3	2009	The parliament / local council	17
county	20	2009	The parliament / local council	7
county	45	2009	The parliament / local council	4
county	42	2009	The parliament / local council	6
county	15	2009	The parliament / local council	2
county	2	2009	The parliament / local council	12
county	31	2009	The parliament / local council	4
county	5	2009	The parliament / local council	2
county	16	2009	The parliament / local council	5
county	17	2009	The parliament / local council	19
county	9	2009	The parliament / local council	7
county	12	2009	The parliament / local council	10
county	44	2009	The parliament / local council	4
county	1	2009	The parliament / local council	31
county	21	2009	The parliament / local council	12
county	47	2009	The parliament / local council	40
county	32	2009	The parliament / local council	14
county	29	2009	The parliament / local council	3
county	33	2009	The parliament / local council	4
county	46	2009	The parliament / local council	2
county	18	2009	The parliament / local council	6
county	19	2009	The parliament / local council	7
county	25	2009	The parliament / local council	1
county	41	2009	The parliament / local council	6
county	6	2009	The parliament / local council	6
county	13	2009	The parliament / local council	4
county	26	2009	The parliament / local council	6
county	23	2009	The parliament / local council	1
county	27	2009	The parliament / local council	12
county	38	2009	The parliament / local council	2
county	8	2009	The parliament / local council	4
county	24	2009	The parliament / local council	2
county	30	2009	Their political party	2
county	36	2009	Their political party	4
county	39	2009	Their political party	4
county	40	2009	Their political party	2
county	28	2009	Their political party	2
county	14	2009	Their political party	8
county	7	2009	Their political party	1
county	34	2009	Their political party	1
county	37	2009	Their political party	5
county	35	2009	Their political party	5
county	22	2009	Their political party	1
county	3	2009	Their political party	6
county	20	2009	Their political party	1
county	45	2009	Their political party	2
county	42	2009	Their political party	1
county	15	2009	Their political party	9
county	2	2009	Their political party	5
county	31	2009	Their political party	1
county	16	2009	Their political party	7
county	17	2009	Their political party	3
county	9	2009	Their political party	1
county	10	2009	Their political party	2
county	12	2009	Their political party	10
county	1	2009	Their political party	3
county	21	2009	Their political party	4
county	47	2009	Their political party	12
county	32	2009	Their political party	8
county	29	2009	Their political party	4
county	33	2009	Their political party	7
county	18	2009	Their political party	1
county	19	2009	Their political party	2
county	41	2009	Their political party	5
county	13	2009	Their political party	4
county	26	2009	Their political party	2
county	23	2009	Their political party	1
county	27	2009	Their political party	8
county	38	2009	Their political party	3
county	24	2009	Their political party	1
\.


--
-- Name: who_responsible_mps_do_jobs pk_who_responsible_mps_do_jobs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.who_responsible_mps_do_jobs
    ADD CONSTRAINT pk_who_responsible_mps_do_jobs PRIMARY KEY (geo_level, geo_code, geo_version, who_responsible_mps_do_jobs);


--
-- PostgreSQL database dump complete
--

