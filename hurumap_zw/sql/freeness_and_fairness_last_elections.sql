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
province	10	2009	Completely free and fair	31
province	10	2009	Don't know	9
province	10	2009	Free and fair, but with minor problems	31
province	10	2009	Free and fair, with major problems	32
province	10	2009	Not free and fair	49
province	19	2009	Completely free and fair	114
province	19	2009	Do not understand the question	2
province	19	2009	Don't know	33
province	19	2009	Free and fair, but with minor problems	91
province	19	2009	Free and fair, with major problems	95
province	19	2009	Not free and fair	113
province	11	2009	Completely free and fair	101
province	11	2009	Do not understand the question	1
province	11	2009	Don't know	28
province	11	2009	Free and fair, but with minor problems	42
province	11	2009	Free and fair, with major problems	58
province	11	2009	Not free and fair	74
province	12	2009	Completely free and fair	91
province	12	2009	Don't know	14
province	12	2009	Free and fair, but with minor problems	55
province	12	2009	Free and fair, with major problems	27
province	12	2009	Not free and fair	20
province	13	2009	Completely free and fair	76
province	13	2009	Do not understand the question	5
province	13	2009	Don't know	21
province	13	2009	Free and fair, but with minor problems	51
province	13	2009	Free and fair, with major problems	55
province	13	2009	Not free and fair	40
province	14	2009	Completely free and fair	155
province	14	2009	Don't know	22
province	14	2009	Free and fair, but with minor problems	45
province	14	2009	Free and fair, with major problems	29
province	14	2009	Not free and fair	21
province	18	2009	Completely free and fair	99
province	18	2009	Don't know	8
province	18	2009	Free and fair, but with minor problems	61
province	18	2009	Free and fair, with major problems	47
province	18	2009	Not free and fair	33
province	15	2009	Completely free and fair	57
province	15	2009	Don't know	18
province	15	2009	Free and fair, but with minor problems	29
province	15	2009	Free and fair, with major problems	17
province	15	2009	Not free and fair	7
province	16	2009	Completely free and fair	30
province	16	2009	Don't know	19
province	16	2009	Free and fair, but with minor problems	25
province	16	2009	Free and fair, with major problems	10
province	16	2009	Not free and fair	20
province	17	2009	Completely free and fair	81
province	17	2009	Do not understand the question	1
province	17	2009	Don't know	26
province	17	2009	Free and fair, but with minor problems	71
province	17	2009	Free and fair, with major problems	56
province	17	2009	Not free and fair	53
country	ZW	2009	Free and fair, with major problems	426
country	ZW	2009	Free and fair, but with minor problems	501
country	ZW	2009	Don't know	198
country	ZW	2009	Do not understand the question	9
country	ZW	2009	Not free and fair	430
country	ZW	2009	Completely free and fair	835
\.


--
-- Name: freeness_and_fairness_last_elections pk_freeness_and_fairness_last_elections; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freeness_and_fairness_last_elections
    ADD CONSTRAINT pk_freeness_and_fairness_last_elections PRIMARY KEY (geo_level, geo_code, geo_version, freeness_and_fairness_last_elections);


--
-- PostgreSQL database dump complete
--

