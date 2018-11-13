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

ALTER TABLE IF EXISTS ONLY public.how_often_gone_without_cash_income DROP CONSTRAINT IF EXISTS pk_how_often_gone_without_cash_income;
DROP TABLE IF EXISTS public.how_often_gone_without_cash_income;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_gone_without_cash_income; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_gone_without_cash_income (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_gone_without_cash_income character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_gone_without_cash_income; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_gone_without_cash_income (geo_level, geo_code, geo_version, how_often_gone_without_cash_income, total) FROM stdin;
county	30	2009	Always	6
county	39	2009	Always	3
county	40	2009	Always	1
county	28	2009	Always	3
county	14	2009	Always	3
county	7	2009	Always	3
county	43	2009	Always	1
county	11	2009	Always	1
county	34	2009	Always	7
county	37	2009	Always	3
county	22	2009	Always	3
county	3	2009	Always	4
county	20	2009	Always	2
county	42	2009	Always	1
county	15	2009	Always	10
county	2	2009	Always	2
county	31	2009	Always	5
county	16	2009	Always	9
county	17	2009	Always	2
county	9	2009	Always	6
county	10	2009	Always	6
county	12	2009	Always	10
county	44	2009	Always	5
county	1	2009	Always	2
county	21	2009	Always	3
county	47	2009	Always	12
county	32	2009	Always	5
county	29	2009	Always	10
county	33	2009	Always	1
county	18	2009	Always	1
county	19	2009	Always	1
county	25	2009	Always	3
county	41	2009	Always	2
county	6	2009	Always	1
county	4	2009	Always	3
county	13	2009	Always	1
county	26	2009	Always	5
county	23	2009	Always	19
county	27	2009	Always	10
county	38	2009	Always	3
county	8	2009	Always	10
county	24	2009	Always	7
county	36	2009	Don't Know	1
county	37	2009	Don't Know	1
county	30	2009	Just once or twice	7
county	36	2009	Just once or twice	4
county	39	2009	Just once or twice	18
county	40	2009	Just once or twice	6
county	28	2009	Just once or twice	2
county	14	2009	Just once or twice	7
county	7	2009	Just once or twice	1
county	43	2009	Just once or twice	8
county	11	2009	Just once or twice	1
county	34	2009	Just once or twice	18
county	37	2009	Just once or twice	15
county	35	2009	Just once or twice	9
county	22	2009	Just once or twice	11
county	3	2009	Just once or twice	3
county	20	2009	Just once or twice	4
county	45	2009	Just once or twice	18
county	42	2009	Just once or twice	17
county	15	2009	Just once or twice	7
county	2	2009	Just once or twice	2
county	31	2009	Just once or twice	3
county	5	2009	Just once or twice	2
county	16	2009	Just once or twice	8
county	17	2009	Just once or twice	6
county	9	2009	Just once or twice	3
county	10	2009	Just once or twice	2
county	12	2009	Just once or twice	16
county	44	2009	Just once or twice	12
county	1	2009	Just once or twice	5
county	21	2009	Just once or twice	7
county	47	2009	Just once or twice	59
county	32	2009	Just once or twice	6
county	29	2009	Just once or twice	12
county	33	2009	Just once or twice	2
county	46	2009	Just once or twice	10
county	18	2009	Just once or twice	3
county	19	2009	Just once or twice	4
county	41	2009	Just once or twice	13
county	6	2009	Just once or twice	2
county	13	2009	Just once or twice	6
county	26	2009	Just once or twice	9
county	27	2009	Just once or twice	16
county	38	2009	Just once or twice	2
county	24	2009	Just once or twice	3
county	30	2009	Many times	6
county	36	2009	Many times	13
county	39	2009	Many times	13
county	40	2009	Many times	7
county	28	2009	Many times	5
county	14	2009	Many times	6
county	7	2009	Many times	17
county	43	2009	Many times	14
county	11	2009	Many times	4
county	34	2009	Many times	10
county	37	2009	Many times	9
county	35	2009	Many times	8
county	22	2009	Many times	10
county	3	2009	Many times	25
county	20	2009	Many times	4
county	45	2009	Many times	22
county	42	2009	Many times	10
county	15	2009	Many times	11
county	2	2009	Many times	14
county	31	2009	Many times	7
county	16	2009	Many times	19
county	17	2009	Many times	13
county	9	2009	Many times	19
county	10	2009	Many times	6
county	12	2009	Many times	13
county	44	2009	Many times	6
county	1	2009	Many times	19
county	21	2009	Many times	7
county	47	2009	Many times	52
county	32	2009	Many times	37
county	29	2009	Many times	9
county	33	2009	Many times	15
county	46	2009	Many times	2
county	18	2009	Many times	2
county	19	2009	Many times	10
county	25	2009	Many times	2
county	41	2009	Many times	6
county	6	2009	Many times	4
county	4	2009	Many times	4
county	13	2009	Many times	4
county	26	2009	Many times	10
county	23	2009	Many times	12
county	27	2009	Many times	13
county	38	2009	Many times	4
county	8	2009	Many times	15
county	24	2009	Many times	7
county	30	2009	Never	4
county	36	2009	Never	11
county	39	2009	Never	25
county	40	2009	Never	10
county	14	2009	Never	15
county	7	2009	Never	1
county	43	2009	Never	4
county	11	2009	Never	1
county	34	2009	Never	8
county	37	2009	Never	29
county	35	2009	Never	6
county	22	2009	Never	71
county	3	2009	Never	18
county	20	2009	Never	24
county	45	2009	Never	4
county	42	2009	Never	10
county	15	2009	Never	10
county	2	2009	Never	13
county	31	2009	Never	3
county	5	2009	Never	2
county	16	2009	Never	14
county	17	2009	Never	18
county	9	2009	Never	1
county	10	2009	Never	1
county	12	2009	Never	24
county	44	2009	Never	5
county	1	2009	Never	27
county	21	2009	Never	34
county	47	2009	Never	54
county	32	2009	Never	15
county	29	2009	Never	10
county	33	2009	Never	11
county	46	2009	Never	5
county	18	2009	Never	25
county	19	2009	Never	27
county	41	2009	Never	5
county	6	2009	Never	4
county	13	2009	Never	8
county	26	2009	Never	13
county	23	2009	Never	2
county	27	2009	Never	8
county	38	2009	Never	13
county	8	2009	Never	1
county	24	2009	Never	1
county	30	2009	Several times	9
county	36	2009	Several times	19
county	39	2009	Several times	21
county	40	2009	Several times	16
county	28	2009	Several times	6
county	14	2009	Several times	9
county	7	2009	Several times	10
county	43	2009	Several times	29
county	11	2009	Several times	1
county	34	2009	Several times	5
county	37	2009	Several times	39
county	35	2009	Several times	17
county	22	2009	Several times	25
county	3	2009	Several times	14
county	20	2009	Several times	6
county	45	2009	Several times	28
county	42	2009	Several times	18
county	15	2009	Several times	18
county	2	2009	Several times	9
county	31	2009	Several times	6
county	5	2009	Several times	4
county	16	2009	Several times	22
county	17	2009	Several times	17
county	9	2009	Several times	19
county	10	2009	Several times	1
county	12	2009	Several times	22
county	44	2009	Several times	20
county	1	2009	Several times	19
county	21	2009	Several times	13
county	47	2009	Several times	71
county	32	2009	Several times	41
county	29	2009	Several times	7
county	33	2009	Several times	19
county	46	2009	Several times	23
county	18	2009	Several times	9
county	19	2009	Several times	6
county	25	2009	Several times	3
county	41	2009	Several times	22
county	6	2009	Several times	5
county	4	2009	Several times	1
county	13	2009	Several times	5
county	26	2009	Several times	11
county	23	2009	Several times	15
county	27	2009	Several times	9
county	38	2009	Several times	10
county	8	2009	Several times	6
county	24	2009	Several times	6
\.


--
-- Name: how_often_gone_without_cash_income pk_how_often_gone_without_cash_income; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_gone_without_cash_income
    ADD CONSTRAINT pk_how_often_gone_without_cash_income PRIMARY KEY (geo_level, geo_code, geo_version, how_often_gone_without_cash_income);


--
-- PostgreSQL database dump complete
--

