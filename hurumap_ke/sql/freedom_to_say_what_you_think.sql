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

ALTER TABLE IF EXISTS ONLY public.freedom_to_say_what_you_think DROP CONSTRAINT IF EXISTS pk_freedom_to_say_what_you_think;
DROP TABLE IF EXISTS public.freedom_to_say_what_you_think;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: freedom_to_say_what_you_think; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.freedom_to_say_what_you_think (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    freedom_to_say_what_you_think character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: freedom_to_say_what_you_think; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.freedom_to_say_what_you_think (geo_level, geo_code, geo_version, freedom_to_say_what_you_think, total) FROM stdin;
county	30	2009	Completely free	18
county	36	2009	Completely free	19
county	39	2009	Completely free	42
county	40	2009	Completely free	26
county	28	2009	Completely free	7
county	14	2009	Completely free	24
county	7	2009	Completely free	18
county	43	2009	Completely free	35
county	11	2009	Completely free	4
county	34	2009	Completely free	16
county	37	2009	Completely free	57
county	35	2009	Completely free	14
county	22	2009	Completely free	73
county	3	2009	Completely free	26
county	20	2009	Completely free	29
county	45	2009	Completely free	39
county	42	2009	Completely free	29
county	15	2009	Completely free	45
county	2	2009	Completely free	15
county	31	2009	Completely free	11
county	5	2009	Completely free	5
county	16	2009	Completely free	50
county	17	2009	Completely free	26
county	9	2009	Completely free	22
county	10	2009	Completely free	8
county	12	2009	Completely free	40
county	44	2009	Completely free	24
county	1	2009	Completely free	38
county	21	2009	Completely free	43
county	47	2009	Completely free	115
county	32	2009	Completely free	57
county	29	2009	Completely free	27
county	33	2009	Completely free	24
county	46	2009	Completely free	23
county	18	2009	Completely free	27
county	19	2009	Completely free	31
county	25	2009	Completely free	3
county	41	2009	Completely free	21
county	6	2009	Completely free	7
county	4	2009	Completely free	6
county	13	2009	Completely free	10
county	26	2009	Completely free	24
county	23	2009	Completely free	26
county	27	2009	Completely free	29
county	38	2009	Completely free	22
county	8	2009	Completely free	13
county	24	2009	Completely free	11
county	39	2009	Don�t know	1
county	11	2009	Don�t know	1
county	34	2009	Don�t know	1
county	22	2009	Don�t know	2
county	31	2009	Don�t know	1
county	17	2009	Don�t know	1
county	9	2009	Don�t know	4
county	21	2009	Don�t know	1
county	47	2009	Don�t know	8
county	25	2009	Don�t know	1
county	6	2009	Don�t know	1
county	4	2009	Don�t know	1
county	13	2009	Don�t know	1
county	26	2009	Don�t know	1
county	23	2009	Don�t know	1
county	27	2009	Don�t know	1
county	8	2009	Don�t know	6
county	36	2009	Not at all free	1
county	39	2009	Not at all free	14
county	40	2009	Not at all free	4
county	28	2009	Not at all free	1
county	14	2009	Not at all free	3
county	7	2009	Not at all free	2
county	43	2009	Not at all free	1
county	11	2009	Not at all free	1
county	34	2009	Not at all free	1
county	37	2009	Not at all free	8
county	35	2009	Not at all free	1
county	22	2009	Not at all free	2
county	3	2009	Not at all free	2
county	20	2009	Not at all free	1
county	15	2009	Not at all free	4
county	2	2009	Not at all free	1
county	5	2009	Not at all free	1
county	16	2009	Not at all free	2
county	17	2009	Not at all free	2
county	9	2009	Not at all free	3
county	10	2009	Not at all free	4
county	12	2009	Not at all free	11
county	44	2009	Not at all free	3
county	1	2009	Not at all free	8
county	21	2009	Not at all free	3
county	47	2009	Not at all free	9
county	32	2009	Not at all free	2
county	4	2009	Not at all free	1
county	13	2009	Not at all free	6
county	26	2009	Not at all free	8
county	8	2009	Not at all free	2
county	30	2009	Not very free	3
county	36	2009	Not very free	10
county	39	2009	Not very free	9
county	40	2009	Not very free	2
county	28	2009	Not very free	2
county	14	2009	Not very free	4
county	7	2009	Not very free	2
county	43	2009	Not very free	3
county	11	2009	Not very free	2
county	34	2009	Not very free	9
county	37	2009	Not very free	10
county	35	2009	Not very free	13
county	22	2009	Not very free	11
county	3	2009	Not very free	15
county	20	2009	Not very free	1
county	45	2009	Not very free	8
county	42	2009	Not very free	2
county	15	2009	Not very free	3
county	2	2009	Not very free	9
county	31	2009	Not very free	6
county	16	2009	Not very free	7
county	17	2009	Not very free	10
county	9	2009	Not very free	6
county	10	2009	Not very free	2
county	12	2009	Not very free	19
county	44	2009	Not very free	3
county	1	2009	Not very free	5
county	21	2009	Not very free	5
county	47	2009	Not very free	40
county	32	2009	Not very free	25
county	29	2009	Not very free	3
county	33	2009	Not very free	11
county	46	2009	Not very free	6
county	18	2009	Not very free	3
county	19	2009	Not very free	6
county	25	2009	Not very free	2
county	41	2009	Not very free	3
county	6	2009	Not very free	3
county	13	2009	Not very free	4
county	26	2009	Not very free	6
county	23	2009	Not very free	2
county	27	2009	Not very free	4
county	38	2009	Not very free	2
county	8	2009	Not very free	3
county	24	2009	Not very free	1
county	30	2009	Somewhat free	11
county	36	2009	Somewhat free	18
county	39	2009	Somewhat free	14
county	40	2009	Somewhat free	8
county	28	2009	Somewhat free	6
county	14	2009	Somewhat free	9
county	7	2009	Somewhat free	10
county	43	2009	Somewhat free	17
county	34	2009	Somewhat free	21
county	37	2009	Somewhat free	21
county	35	2009	Somewhat free	12
county	22	2009	Somewhat free	32
county	3	2009	Somewhat free	21
county	20	2009	Somewhat free	9
county	45	2009	Somewhat free	25
county	42	2009	Somewhat free	25
county	15	2009	Somewhat free	4
county	2	2009	Somewhat free	15
county	31	2009	Somewhat free	6
county	5	2009	Somewhat free	2
county	16	2009	Somewhat free	13
county	17	2009	Somewhat free	17
county	9	2009	Somewhat free	13
county	10	2009	Somewhat free	2
county	12	2009	Somewhat free	15
county	44	2009	Somewhat free	18
county	1	2009	Somewhat free	21
county	21	2009	Somewhat free	12
county	47	2009	Somewhat free	76
county	32	2009	Somewhat free	20
county	29	2009	Somewhat free	18
county	33	2009	Somewhat free	13
county	46	2009	Somewhat free	11
county	18	2009	Somewhat free	10
county	19	2009	Somewhat free	11
county	25	2009	Somewhat free	2
county	41	2009	Somewhat free	24
county	6	2009	Somewhat free	5
county	13	2009	Somewhat free	3
county	26	2009	Somewhat free	9
county	23	2009	Somewhat free	19
county	27	2009	Somewhat free	22
county	38	2009	Somewhat free	8
county	8	2009	Somewhat free	8
county	24	2009	Somewhat free	12
\.


--
-- Name: freedom_to_say_what_you_think pk_freedom_to_say_what_you_think; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freedom_to_say_what_you_think
    ADD CONSTRAINT pk_freedom_to_say_what_you_think PRIMARY KEY (geo_level, geo_code, geo_version, freedom_to_say_what_you_think);


--
-- PostgreSQL database dump complete
--

