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
province	1	2010	Agree	354
province	1	2010	Disagree	105
province	1	2010	Don't Know	25
province	1	2010	Neither Agree Nor Disagree	37
province	1	2010	Strongly Agree	203
province	1	2010	Strongly Disagree	106
province	2	2010	Agree	15
province	2	2010	Disagree	4
province	2	2010	Neither Agree Nor Disagree	2
province	2	2010	Strongly Agree	4
province	2	2010	Strongly Disagree	7
province	3	2010	Agree	13
province	3	2010	Disagree	3
province	3	2010	Neither Agree Nor Disagree	1
province	3	2010	Strongly Agree	19
province	3	2010	Strongly Disagree	4
province	4	2010	Agree	21
province	4	2010	Disagree	1
province	4	2010	Neither Agree Nor Disagree	1
province	4	2010	Strongly Agree	13
province	4	2010	Strongly Disagree	4
province	6	2010	Agree	17
province	6	2010	Disagree	10
province	6	2010	Don't Know	2
province	6	2010	Neither Agree Nor Disagree	2
province	6	2010	Strongly Agree	15
province	6	2010	Strongly Disagree	1
province	8	2010	Agree	23
province	8	2010	Strongly Agree	1
province	7	2010	Agree	17
province	7	2010	Disagree	13
province	7	2010	Neither Agree Nor Disagree	1
province	7	2010	Strongly Agree	12
province	7	2010	Strongly Disagree	5
province	9	2010	Agree	34
province	9	2010	Disagree	18
province	9	2010	Don't Know	1
province	9	2010	Neither Agree Nor Disagree	2
province	9	2010	Strongly Agree	17
province	9	2010	Strongly Disagree	8
province	10	2010	Agree	13
province	10	2010	Disagree	4
province	10	2010	Don't Know	3
province	10	2010	Neither Agree Nor Disagree	3
province	10	2010	Strongly Agree	21
province	10	2010	Strongly Disagree	12
country	ZM	2010	Neither Agree Nor Disagree	49
country	ZM	2010	Disagree	158
country	ZM	2010	Strongly Agree	305
country	ZM	2010	Strongly Disagree	147
country	ZM	2010	Agree	507
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

