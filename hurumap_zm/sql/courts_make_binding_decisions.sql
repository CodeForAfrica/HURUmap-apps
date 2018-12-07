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
province	1	2010	Agree	47
province	1	2010	Disagree	10
province	1	2010	Don't Know	10
province	1	2010	Neither Agree Nor Disagree	3
province	1	2010	Strongly Agree	25
province	1	2010	Strongly Disagree	24
province	2	2010	Agree	88
province	2	2010	Disagree	20
province	2	2010	Don't Know	4
province	2	2010	Neither Agree Nor Disagree	11
province	2	2010	Strongly Agree	47
province	2	2010	Strongly Disagree	22
province	3	2010	Agree	45
province	3	2010	Disagree	19
province	3	2010	Don't Know	3
province	3	2010	Neither Agree Nor Disagree	2
province	3	2010	Strongly Agree	46
province	3	2010	Strongly Disagree	21
province	4	2010	Agree	41
province	4	2010	Disagree	2
province	4	2010	Neither Agree Nor Disagree	7
province	4	2010	Strongly Agree	31
province	4	2010	Strongly Disagree	6
province	5	2010	Agree	93
province	5	2010	Disagree	35
province	5	2010	Don't Know	5
province	5	2010	Neither Agree Nor Disagree	9
province	5	2010	Strongly Agree	50
province	5	2010	Strongly Disagree	32
province	6	2010	Agree	22
province	6	2010	Disagree	13
province	6	2010	Don't Know	2
province	6	2010	Neither Agree Nor Disagree	6
province	6	2010	Strongly Agree	19
province	6	2010	Strongly Disagree	1
province	8	2010	Agree	50
province	8	2010	Disagree	5
province	8	2010	Neither Agree Nor Disagree	1
province	8	2010	Strongly Agree	5
province	8	2010	Strongly Disagree	3
province	7	2010	Agree	37
province	7	2010	Disagree	21
province	7	2010	Neither Agree Nor Disagree	3
province	7	2010	Strongly Agree	28
province	7	2010	Strongly Disagree	7
province	9	2010	Agree	60
province	9	2010	Disagree	29
province	9	2010	Don't Know	2
province	9	2010	Neither Agree Nor Disagree	2
province	9	2010	Strongly Agree	27
province	9	2010	Strongly Disagree	16
province	10	2010	Agree	24
province	10	2010	Disagree	4
province	10	2010	Don't Know	5
province	10	2010	Neither Agree Nor Disagree	5
province	10	2010	Strongly Agree	27
province	10	2010	Strongly Disagree	15
country	ZM	2010	Neither Agree Nor Disagree	49
country	ZM	2010	Disagree	158
country	ZM	2010	Strongly Agree	305
country	ZM	2010	Agree	507
country	ZM	2010	Strongly Disagree	147
country	ZM	2010	Don't Know	31
\.


--
-- Name: courts_make_binding_decisions pk_courts_make_binding_decisions; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.courts_make_binding_decisions
    ADD CONSTRAINT pk_courts_make_binding_decisions PRIMARY KEY (geo_level, geo_code, geo_version, courts_make_binding_decisions);


--
-- PostgreSQL database dump complete
--

