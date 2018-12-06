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
region	114	2014	Agree	304
region	114	2014	Disagree	102
region	114	2014	Don't Know	22
region	114	2014	Neither Agree Nor Disagree	6
region	114	2014	Strongly Agree	193
region	114	2014	Strongly Disagree	37
region	115	2014	Agree	275
region	115	2014	Disagree	31
region	115	2014	Don't Know	7
region	115	2014	Neither Agree Nor Disagree	11
region	115	2014	Strongly Agree	223
region	115	2014	Strongly Disagree	77
region	116	2014	Agree	241
region	116	2014	Disagree	51
region	116	2014	Don't Know	12
region	116	2014	Neither Agree Nor Disagree	11
region	116	2014	Strongly Agree	150
region	116	2014	Strongly Disagree	39
region	117	2014	Agree	271
region	117	2014	Disagree	38
region	117	2014	Don't Know	34
region	117	2014	Neither Agree Nor Disagree	14
region	117	2014	Strongly Agree	234
region	117	2014	Strongly Disagree	17
country	UG	2014	Neither Agree Nor Disagree	42
country	UG	2014	Disagree	222
country	UG	2014	Strongly Agree	800
country	UG	2014	Agree	1091
country	UG	2014	Strongly Disagree	170
country	UG	2014	Don't Know	75
\.


--
-- Name: courts_make_binding_decisions pk_courts_make_binding_decisions; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.courts_make_binding_decisions
    ADD CONSTRAINT pk_courts_make_binding_decisions PRIMARY KEY (geo_level, geo_code, geo_version, courts_make_binding_decisions);


--
-- PostgreSQL database dump complete
--

