--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.freeness_and_fairness_last_elections DROP CONSTRAINT IF EXISTS pk_freeness_and_fairness_last_elections;
DROP TABLE IF EXISTS public.freeness_and_fairness_last_elections;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: freeness_and_fairness_last_elections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.freeness_and_fairness_last_elections (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    freeness_and_fairness_last_elections character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: freeness_and_fairness_last_elections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.freeness_and_fairness_last_elections (geo_level, geo_code, geo_version, freeness_and_fairness_last_elections, total) FROM stdin;
region	1	2009	Completely free and fair	36
region	1	2009	Don't know	15
region	1	2009	Free and fair, but with minor problems	26
region	1	2009	Free and fair, with major problems	36
region	1	2009	Not free and fair	7
region	2	2009	Completely free and fair	78
region	2	2009	Don't know	17
region	2	2009	Free and fair, but with minor problems	128
region	2	2009	Free and fair, with major problems	26
region	2	2009	Not free and fair	24
region	3	2009	Completely free and fair	66
region	3	2009	Don't know	14
region	3	2009	Free and fair, but with minor problems	14
region	3	2009	Free and fair, with major problems	2
region	4	2009	Completely free and fair	31
region	4	2009	Don't know	5
region	4	2009	Free and fair, but with minor problems	20
region	4	2009	Free and fair, with major problems	11
region	4	2009	Not free and fair	4
region	5	2009	Completely free and fair	24
region	5	2009	Do not understand the question	1
region	5	2009	Don't know	3
region	5	2009	Free and fair, but with minor problems	14
region	5	2009	Free and fair, with major problems	4
region	5	2009	Not free and fair	2
region	6	2009	Completely free and fair	30
region	6	2009	Do not understand the question	2
region	6	2009	Don't know	8
region	6	2009	Free and fair, but with minor problems	20
region	6	2009	Free and fair, with major problems	5
region	6	2009	Not free and fair	7
region	7	2009	Completely free and fair	25
region	7	2009	Free and fair, but with minor problems	17
region	7	2009	Free and fair, with major problems	10
region	7	2009	Not free and fair	4
region	8	2009	Completely free and fair	11
region	8	2009	Don't know	1
region	8	2009	Free and fair, but with minor problems	22
region	8	2009	Free and fair, with major problems	4
region	8	2009	Not free and fair	2
region	9	2009	Completely free and fair	16
region	9	2009	Free and fair, but with minor problems	7
region	9	2009	Free and fair, with major problems	1
region	10	2009	Completely free and fair	43
region	10	2009	Don't know	5
region	10	2009	Free and fair, but with minor problems	39
region	10	2009	Free and fair, with major problems	8
region	10	2009	Not free and fair	1
region	11	2009	Completely free and fair	17
region	11	2009	Don't know	10
region	11	2009	Free and fair, but with minor problems	35
region	11	2009	Free and fair, with major problems	16
region	11	2009	Not free and fair	10
region	12	2009	Completely free and fair	3
region	12	2009	Don't know	1
region	12	2009	Free and fair, but with minor problems	1
region	12	2009	Free and fair, with major problems	2
region	12	2009	Not free and fair	1
region	13	2009	Completely free and fair	5
region	13	2009	Don't know	1
region	13	2009	Free and fair, but with minor problems	10
region	13	2009	Free and fair, with major problems	6
region	13	2009	Not free and fair	2
region	14	2009	Completely free and fair	10
region	14	2009	Free and fair, but with minor problems	34
region	14	2009	Free and fair, with major problems	2
region	14	2009	Not free and fair	2
region	15	2009	Completely free and fair	16
region	15	2009	Do not understand the question	4
region	15	2009	Don't know	10
region	15	2009	Free and fair, but with minor problems	3
region	15	2009	Free and fair, with major problems	17
region	15	2009	Not free and fair	14
region	16	2009	Completely free and fair	45
region	16	2009	Don't know	6
region	16	2009	Free and fair, but with minor problems	14
region	16	2009	Free and fair, with major problems	10
region	16	2009	Not free and fair	5
region	17	2009	Completely free and fair	30
region	17	2009	Don't know	3
region	17	2009	Free and fair, but with minor problems	26
region	17	2009	Free and fair, with major problems	3
region	17	2009	Not free and fair	2
region	30	2009	Completely free and fair	28
region	30	2009	Don't know	6
region	30	2009	Free and fair, but with minor problems	60
region	30	2009	Free and fair, with major problems	16
region	30	2009	Not free and fair	2
region	18	2009	Completely free and fair	68
region	18	2009	Do not understand the question	1
region	18	2009	Don't know	21
region	18	2009	Free and fair, but with minor problems	20
region	18	2009	Free and fair, with major problems	6
region	18	2009	Not free and fair	4
region	19	2009	Completely free and fair	15
region	19	2009	Free and fair, but with minor problems	51
region	19	2009	Free and fair, with major problems	5
region	20	2009	Completely free and fair	77
region	20	2009	Do not understand the question	2
region	20	2009	Don't know	8
region	20	2009	Free and fair, but with minor problems	23
region	20	2009	Free and fair, with major problems	10
region	20	2009	Not free and fair	4
region	21	2009	Completely free and fair	15
region	21	2009	Do not understand the question	2
region	21	2009	Free and fair, but with minor problems	17
region	21	2009	Free and fair, with major problems	4
region	21	2009	Not free and fair	2
region	22	2009	Completely free and fair	33
region	22	2009	Don't know	3
region	22	2009	Free and fair, but with minor problems	23
region	22	2009	Free and fair, with major problems	9
region	22	2009	Not free and fair	4
region	23	2009	Completely free and fair	22
region	23	2009	Don't know	1
region	23	2009	Free and fair, but with minor problems	13
region	23	2009	Free and fair, with major problems	3
region	24	2009	Completely free and fair	52
region	24	2009	Don't know	2
region	24	2009	Free and fair, but with minor problems	17
region	24	2009	Free and fair, with major problems	1
region	25	2009	Completely free and fair	40
region	25	2009	Don't know	1
region	25	2009	Free and fair, but with minor problems	26
region	25	2009	Free and fair, with major problems	5
region	26	2009	Completely free and fair	31
region	26	2009	Don't know	5
region	26	2009	Free and fair, but with minor problems	24
region	26	2009	Free and fair, with major problems	1
region	26	2009	Not free and fair	3
region	27	2009	Completely free and fair	30
region	27	2009	Don't know	5
region	27	2009	Free and fair, but with minor problems	27
region	27	2009	Free and fair, with major problems	1
region	27	2009	Not free and fair	1
region	31	2009	Completely free and fair	47
region	31	2009	Don't know	3
region	31	2009	Free and fair, but with minor problems	21
region	31	2009	Not free and fair	1
region	29	2009	Completely free and fair	57
region	29	2009	Don't know	20
region	29	2009	Free and fair, but with minor problems	19
region	29	2009	Free and fair, with major problems	7
region	29	2009	Not free and fair	1
region	28	2009	Completely free and fair	25
region	28	2009	Do not understand the question	1
region	28	2009	Don't know	14
region	28	2009	Free and fair, but with minor problems	10
region	28	2009	Free and fair, with major problems	19
region	28	2009	Not free and fair	19
country	TZ	2009	Free and fair, with major problems	250
country	TZ	2009	Free and fair, but with minor problems	781
country	TZ	2009	Don't know	188
country	TZ	2009	Do not understand the question	13
country	TZ	2009	Not free and fair	128
country	TZ	2009	Completely free and fair	1026
\.


--
-- Name: freeness_and_fairness_last_elections pk_freeness_and_fairness_last_elections; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freeness_and_fairness_last_elections
    ADD CONSTRAINT pk_freeness_and_fairness_last_elections PRIMARY KEY (geo_level, geo_code, geo_version, freeness_and_fairness_last_elections);


--
-- PostgreSQL database dump complete
--

