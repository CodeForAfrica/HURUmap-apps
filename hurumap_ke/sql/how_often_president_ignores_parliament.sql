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

ALTER TABLE IF EXISTS ONLY public.how_often_president_ignores_parliament DROP CONSTRAINT IF EXISTS pk_how_often_president_ignores_parliament;
DROP TABLE IF EXISTS public.how_often_president_ignores_parliament;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_president_ignores_parliament; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_president_ignores_parliament (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_president_ignores_parliament character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_president_ignores_parliament; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_president_ignores_parliament (geo_level, geo_code, geo_version, how_often_president_ignores_parliament, total) FROM stdin;
county	30	2009	Always	1
county	39	2009	Always	13
county	40	2009	Always	7
county	43	2009	Always	3
county	11	2009	Always	1
county	34	2009	Always	7
county	37	2009	Always	20
county	35	2009	Always	3
county	22	2009	Always	1
county	3	2009	Always	4
county	20	2009	Always	2
county	45	2009	Always	2
county	15	2009	Always	1
county	2	2009	Always	3
county	16	2009	Always	2
county	17	2009	Always	2
county	9	2009	Always	1
county	12	2009	Always	2
county	44	2009	Always	4
county	1	2009	Always	7
county	47	2009	Always	12
county	32	2009	Always	1
county	29	2009	Always	2
county	33	2009	Always	3
county	46	2009	Always	1
county	18	2009	Always	2
county	19	2009	Always	1
county	41	2009	Always	1
county	13	2009	Always	2
county	26	2009	Always	7
county	27	2009	Always	4
county	38	2009	Always	3
county	8	2009	Always	1
county	24	2009	Always	1
county	30	2009	Don�t know	2
county	36	2009	Don�t know	2
county	39	2009	Don�t know	9
county	40	2009	Don�t know	3
county	28	2009	Don�t know	4
county	14	2009	Don�t know	8
county	7	2009	Don�t know	15
county	43	2009	Don�t know	6
county	11	2009	Don�t know	3
county	34	2009	Don�t know	4
county	37	2009	Don�t know	9
county	35	2009	Don�t know	5
county	22	2009	Don�t know	4
county	3	2009	Don�t know	12
county	20	2009	Don�t know	1
county	45	2009	Don�t know	3
county	42	2009	Don�t know	10
county	15	2009	Don�t know	9
county	2	2009	Don�t know	7
county	31	2009	Don�t know	4
county	5	2009	Don�t know	1
county	16	2009	Don�t know	21
county	17	2009	Don�t know	12
county	9	2009	Don�t know	12
county	10	2009	Don�t know	6
county	12	2009	Don�t know	10
county	44	2009	Don�t know	2
county	1	2009	Don�t know	6
county	21	2009	Don�t know	3
county	47	2009	Don�t know	25
county	32	2009	Don�t know	9
county	29	2009	Don�t know	4
county	33	2009	Don�t know	4
county	46	2009	Don�t know	2
county	19	2009	Don�t know	1
county	41	2009	Don�t know	17
county	6	2009	Don�t know	3
county	4	2009	Don�t know	5
county	13	2009	Don�t know	3
county	26	2009	Don�t know	4
county	23	2009	Don�t know	19
county	27	2009	Don�t know	6
county	38	2009	Don�t know	1
county	8	2009	Don�t know	19
county	24	2009	Don�t know	6
county	23	2009	Missing	1
county	30	2009	Never	13
county	36	2009	Never	31
county	39	2009	Never	44
county	40	2009	Never	12
county	28	2009	Never	5
county	14	2009	Never	23
county	7	2009	Never	11
county	43	2009	Never	23
county	11	2009	Never	3
county	34	2009	Never	7
county	37	2009	Never	36
county	35	2009	Never	21
county	22	2009	Never	68
county	3	2009	Never	20
county	20	2009	Never	26
county	45	2009	Never	37
county	42	2009	Never	25
county	15	2009	Never	20
county	2	2009	Never	15
county	31	2009	Never	17
county	5	2009	Never	6
county	16	2009	Never	25
county	17	2009	Never	19
county	9	2009	Never	25
county	10	2009	Never	8
county	12	2009	Never	52
county	44	2009	Never	15
county	1	2009	Never	22
county	21	2009	Never	43
county	47	2009	Never	112
county	32	2009	Never	79
county	29	2009	Never	19
county	33	2009	Never	26
county	46	2009	Never	23
county	18	2009	Never	29
county	19	2009	Never	29
county	25	2009	Never	5
county	41	2009	Never	8
county	6	2009	Never	7
county	4	2009	Never	2
county	13	2009	Never	15
county	26	2009	Never	25
county	23	2009	Never	17
county	27	2009	Never	23
county	38	2009	Never	10
county	8	2009	Never	9
county	24	2009	Never	11
county	36	2009	Often	1
county	39	2009	Often	4
county	40	2009	Often	4
county	14	2009	Often	2
county	43	2009	Often	4
county	34	2009	Often	5
county	37	2009	Often	13
county	35	2009	Often	4
county	22	2009	Often	7
county	3	2009	Often	5
county	20	2009	Often	1
county	45	2009	Often	2
county	42	2009	Often	8
county	15	2009	Often	5
county	2	2009	Often	4
county	16	2009	Often	8
county	17	2009	Often	7
county	9	2009	Often	6
county	10	2009	Often	1
county	12	2009	Often	8
county	44	2009	Often	3
county	1	2009	Often	5
county	21	2009	Often	3
county	47	2009	Often	33
county	32	2009	Often	4
county	29	2009	Often	2
county	33	2009	Often	4
county	46	2009	Often	1
county	18	2009	Often	2
county	19	2009	Often	2
county	25	2009	Often	2
county	41	2009	Often	3
county	6	2009	Often	1
county	4	2009	Often	1
county	13	2009	Often	2
county	26	2009	Often	5
county	23	2009	Often	2
county	27	2009	Often	3
county	38	2009	Often	9
county	8	2009	Often	3
county	30	2009	Rarely	16
county	36	2009	Rarely	14
county	39	2009	Rarely	10
county	40	2009	Rarely	14
county	28	2009	Rarely	7
county	14	2009	Rarely	7
county	7	2009	Rarely	6
county	43	2009	Rarely	20
county	11	2009	Rarely	1
county	34	2009	Rarely	25
county	37	2009	Rarely	18
county	35	2009	Rarely	7
county	22	2009	Rarely	40
county	3	2009	Rarely	23
county	20	2009	Rarely	10
county	45	2009	Rarely	28
county	42	2009	Rarely	13
county	15	2009	Rarely	21
county	2	2009	Rarely	11
county	31	2009	Rarely	3
county	5	2009	Rarely	1
county	16	2009	Rarely	16
county	17	2009	Rarely	16
county	9	2009	Rarely	4
county	10	2009	Rarely	1
county	12	2009	Rarely	13
county	44	2009	Rarely	24
county	1	2009	Rarely	32
county	21	2009	Rarely	15
county	47	2009	Rarely	66
county	32	2009	Rarely	11
county	29	2009	Rarely	21
county	33	2009	Rarely	11
county	46	2009	Rarely	13
county	18	2009	Rarely	7
county	19	2009	Rarely	15
county	25	2009	Rarely	1
county	41	2009	Rarely	19
county	6	2009	Rarely	5
county	13	2009	Rarely	2
county	26	2009	Rarely	7
county	23	2009	Rarely	9
county	27	2009	Rarely	20
county	38	2009	Rarely	9
county	24	2009	Rarely	6
\.


--
-- Name: how_often_president_ignores_parliament pk_how_often_president_ignores_parliament; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_president_ignores_parliament
    ADD CONSTRAINT pk_how_often_president_ignores_parliament PRIMARY KEY (geo_level, geo_code, geo_version, how_often_president_ignores_parliament);


--
-- PostgreSQL database dump complete
--

