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

ALTER TABLE IF EXISTS ONLY public.courts_make_binding_decisions DROP CONSTRAINT IF EXISTS pk_courts_make_binding_decisions;
DROP TABLE IF EXISTS public.courts_make_binding_decisions;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: courts_make_binding_decisions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.courts_make_binding_decisions (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    courts_make_binding_decisions character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: courts_make_binding_decisions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.courts_make_binding_decisions (geo_level, geo_code, geo_version, courts_make_binding_decisions, total) FROM stdin;
province	10	2009	Agree	64
province	10	2009	Disagree	8
province	10	2009	Don't Know	3
province	10	2009	Neither Agree Nor Disagree	26
province	10	2009	Strongly Agree	45
province	10	2009	Strongly Disagree	6
province	19	2009	Agree	240
province	19	2009	Disagree	54
province	19	2009	Don't Know	3
province	19	2009	Neither Agree Nor Disagree	21
province	19	2009	Strongly Agree	103
province	19	2009	Strongly Disagree	27
province	11	2009	Agree	153
province	11	2009	Disagree	15
province	11	2009	Don't Know	15
province	11	2009	Neither Agree Nor Disagree	9
province	11	2009	Strongly Agree	90
province	11	2009	Strongly Disagree	22
province	12	2009	Agree	76
province	12	2009	Disagree	13
province	12	2009	Don't Know	3
province	12	2009	Neither Agree Nor Disagree	7
province	12	2009	Strongly Agree	106
province	12	2009	Strongly Disagree	3
province	13	2009	Agree	118
province	13	2009	Disagree	14
province	13	2009	Don't Know	4
province	13	2009	Neither Agree Nor Disagree	25
province	13	2009	Strongly Agree	68
province	13	2009	Strongly Disagree	19
province	14	2009	Agree	121
province	14	2009	Disagree	7
province	14	2009	Don't Know	1
province	14	2009	Neither Agree Nor Disagree	8
province	14	2009	Strongly Agree	130
province	14	2009	Strongly Disagree	5
province	18	2009	Agree	119
province	18	2009	Disagree	25
province	18	2009	Don't Know	2
province	18	2009	Neither Agree Nor Disagree	33
province	18	2009	Strongly Agree	63
province	18	2009	Strongly Disagree	6
province	15	2009	Agree	65
province	15	2009	Disagree	4
province	15	2009	Don't Know	1
province	15	2009	Neither Agree Nor Disagree	6
province	15	2009	Strongly Agree	49
province	15	2009	Strongly Disagree	3
province	16	2009	Agree	46
province	16	2009	Disagree	3
province	16	2009	Don't Know	7
province	16	2009	Neither Agree Nor Disagree	3
province	16	2009	Strongly Agree	39
province	16	2009	Strongly Disagree	6
province	17	2009	Agree	143
province	17	2009	Disagree	11
province	17	2009	Don't Know	4
province	17	2009	Neither Agree Nor Disagree	24
province	17	2009	Strongly Agree	94
province	17	2009	Strongly Disagree	12
country	ZW	2009	Neither Agree Nor Disagree	162
country	ZW	2009	Disagree	154
country	ZW	2009	Strongly Agree	787
country	ZW	2009	Agree	1145
country	ZW	2009	Strongly Disagree	109
country	ZW	2009	Don't Know	43
\.


--
-- Name: courts_make_binding_decisions pk_courts_make_binding_decisions; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.courts_make_binding_decisions
    ADD CONSTRAINT pk_courts_make_binding_decisions PRIMARY KEY (geo_level, geo_code, geo_version, courts_make_binding_decisions);


--
-- PostgreSQL database dump complete
--

