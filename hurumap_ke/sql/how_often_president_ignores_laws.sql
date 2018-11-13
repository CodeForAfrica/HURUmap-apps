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

ALTER TABLE IF EXISTS ONLY public.how_often_president_ignores_laws DROP CONSTRAINT IF EXISTS pk_how_often_president_ignores_laws;
DROP TABLE IF EXISTS public.how_often_president_ignores_laws;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_president_ignores_laws; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_president_ignores_laws (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_president_ignores_laws character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_president_ignores_laws; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_president_ignores_laws (geo_level, geo_code, geo_version, how_often_president_ignores_laws, total) FROM stdin;
county	30	2009	Always	1
county	36	2009	Always	2
county	39	2009	Always	10
county	40	2009	Always	5
county	14	2009	Always	1
county	43	2009	Always	3
county	11	2009	Always	1
county	34	2009	Always	6
county	37	2009	Always	20
county	35	2009	Always	3
county	22	2009	Always	2
county	3	2009	Always	5
county	42	2009	Always	1
county	2	2009	Always	3
county	16	2009	Always	1
county	17	2009	Always	1
county	12	2009	Always	3
county	44	2009	Always	6
county	1	2009	Always	7
county	21	2009	Always	1
county	47	2009	Always	12
county	29	2009	Always	1
county	33	2009	Always	1
county	18	2009	Always	1
county	13	2009	Always	1
county	26	2009	Always	7
county	23	2009	Always	1
county	27	2009	Always	2
county	38	2009	Always	4
county	8	2009	Always	1
county	24	2009	Always	1
county	30	2009	Don�t know	3
county	36	2009	Don�t know	5
county	39	2009	Don�t know	8
county	40	2009	Don�t know	2
county	28	2009	Don�t know	7
county	14	2009	Don�t know	10
county	7	2009	Don�t know	16
county	43	2009	Don�t know	5
county	11	2009	Don�t know	3
county	34	2009	Don�t know	2
county	37	2009	Don�t know	11
county	35	2009	Don�t know	6
county	22	2009	Don�t know	2
county	3	2009	Don�t know	12
county	20	2009	Don�t know	1
county	45	2009	Don�t know	3
county	42	2009	Don�t know	8
county	15	2009	Don�t know	12
county	2	2009	Don�t know	7
county	31	2009	Don�t know	4
county	5	2009	Don�t know	1
county	16	2009	Don�t know	22
county	17	2009	Don�t know	12
county	9	2009	Don�t know	13
county	10	2009	Don�t know	6
county	12	2009	Don�t know	11
county	44	2009	Don�t know	2
county	1	2009	Don�t know	6
county	21	2009	Don�t know	4
county	47	2009	Don�t know	26
county	32	2009	Don�t know	9
county	29	2009	Don�t know	5
county	33	2009	Don�t know	4
county	46	2009	Don�t know	2
county	25	2009	Don�t know	1
county	41	2009	Don�t know	14
county	6	2009	Don�t know	4
county	4	2009	Don�t know	5
county	26	2009	Don�t know	2
county	23	2009	Don�t know	18
county	27	2009	Don�t know	8
county	38	2009	Don�t know	1
county	8	2009	Don�t know	19
county	24	2009	Don�t know	6
county	15	2009	Missing	1
county	30	2009	Never	11
county	36	2009	Never	26
county	39	2009	Never	41
county	40	2009	Never	15
county	28	2009	Never	3
county	14	2009	Never	20
county	7	2009	Never	12
county	43	2009	Never	23
county	11	2009	Never	3
county	34	2009	Never	13
county	37	2009	Never	33
county	35	2009	Never	17
county	22	2009	Never	71
county	3	2009	Never	13
county	20	2009	Never	22
county	45	2009	Never	35
county	42	2009	Never	20
county	15	2009	Never	16
county	2	2009	Never	15
county	31	2009	Never	14
county	5	2009	Never	5
county	16	2009	Never	21
county	17	2009	Never	11
county	9	2009	Never	23
county	10	2009	Never	7
county	12	2009	Never	50
county	44	2009	Never	11
county	1	2009	Never	20
county	21	2009	Never	48
county	47	2009	Never	112
county	32	2009	Never	65
county	29	2009	Never	19
county	33	2009	Never	18
county	46	2009	Never	20
county	18	2009	Never	26
county	19	2009	Never	36
county	25	2009	Never	5
county	41	2009	Never	10
county	6	2009	Never	4
county	4	2009	Never	3
county	13	2009	Never	15
county	26	2009	Never	25
county	23	2009	Never	16
county	27	2009	Never	19
county	38	2009	Never	13
county	8	2009	Never	7
county	24	2009	Never	9
county	30	2009	Often	2
county	36	2009	Often	2
county	39	2009	Often	7
county	40	2009	Often	4
county	14	2009	Often	3
county	7	2009	Often	3
county	43	2009	Often	7
county	34	2009	Often	7
county	37	2009	Often	19
county	35	2009	Often	5
county	22	2009	Often	11
county	3	2009	Often	5
county	20	2009	Often	5
county	45	2009	Often	2
county	42	2009	Often	11
county	15	2009	Often	10
county	2	2009	Often	6
county	16	2009	Often	3
county	17	2009	Often	12
county	9	2009	Often	7
county	10	2009	Often	3
county	12	2009	Often	7
county	44	2009	Often	5
county	1	2009	Often	11
county	21	2009	Often	4
county	47	2009	Often	38
county	32	2009	Often	7
county	29	2009	Often	1
county	33	2009	Often	4
county	46	2009	Often	1
county	18	2009	Often	1
county	19	2009	Often	4
county	41	2009	Often	3
county	6	2009	Often	2
county	13	2009	Often	2
county	26	2009	Often	5
county	23	2009	Often	1
county	27	2009	Often	3
county	38	2009	Often	4
county	8	2009	Often	2
county	24	2009	Often	2
county	30	2009	Rarely	15
county	36	2009	Rarely	13
county	39	2009	Rarely	14
county	40	2009	Rarely	14
county	28	2009	Rarely	6
county	14	2009	Rarely	6
county	7	2009	Rarely	1
county	43	2009	Rarely	18
county	11	2009	Rarely	1
county	34	2009	Rarely	20
county	37	2009	Rarely	13
county	35	2009	Rarely	9
county	22	2009	Rarely	34
county	3	2009	Rarely	29
county	20	2009	Rarely	12
county	45	2009	Rarely	32
county	42	2009	Rarely	16
county	15	2009	Rarely	17
county	2	2009	Rarely	9
county	31	2009	Rarely	6
county	5	2009	Rarely	2
county	16	2009	Rarely	25
county	17	2009	Rarely	20
county	9	2009	Rarely	5
county	12	2009	Rarely	14
county	44	2009	Rarely	24
county	1	2009	Rarely	28
county	21	2009	Rarely	7
county	47	2009	Rarely	60
county	32	2009	Rarely	23
county	29	2009	Rarely	22
county	33	2009	Rarely	21
county	46	2009	Rarely	17
county	18	2009	Rarely	12
county	19	2009	Rarely	8
county	25	2009	Rarely	2
county	41	2009	Rarely	21
county	6	2009	Rarely	6
county	13	2009	Rarely	6
county	26	2009	Rarely	9
county	23	2009	Rarely	12
county	27	2009	Rarely	24
county	38	2009	Rarely	10
county	8	2009	Rarely	3
county	24	2009	Rarely	6
\.


--
-- Name: how_often_president_ignores_laws pk_how_often_president_ignores_laws; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_president_ignores_laws
    ADD CONSTRAINT pk_how_often_president_ignores_laws PRIMARY KEY (geo_level, geo_code, geo_version, how_often_president_ignores_laws);


--
-- PostgreSQL database dump complete
--

