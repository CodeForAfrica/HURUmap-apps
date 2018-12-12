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

ALTER TABLE IF EXISTS ONLY public.employer_of_respondent DROP CONSTRAINT IF EXISTS pk_employer_of_respondent;
DROP TABLE IF EXISTS public.employer_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employer_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employer_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    employer_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: employer_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employer_of_respondent (geo_level, geo_code, geo_version, employer_of_respondent, total) FROM stdin;
province	1	2010	Don't know	1
province	1	2010	Government	14
province	1	2010	Non Governmental Organizations/ civil society sector	3
province	1	2010	Not applicable	30
province	1	2010	Private sector	37
province	1	2010	Works for  self	32
province	2	2010	Government	11
province	2	2010	Non Governmental Organizations/ civil society sector	2
province	2	2010	Not applicable	73
province	2	2010	Private sector	34
province	2	2010	Works for  self	67
province	3	2010	Government	6
province	3	2010	Non Governmental Organizations/ civil society sector	3
province	3	2010	Not applicable	13
province	3	2010	Private sector	1
province	3	2010	Works for  self	109
province	4	2010	Government	6
province	4	2010	Not applicable	46
province	4	2010	Private sector	3
province	4	2010	Works for  self	26
province	5	2010	Don't know	1
province	5	2010	Government	14
province	5	2010	Non Governmental Organizations/ civil society sector	4
province	5	2010	Not applicable	83
province	5	2010	Private sector	37
province	5	2010	Works for  self	72
province	6	2010	Government	7
province	6	2010	Non Governmental Organizations/ civil society sector	1
province	6	2010	Not applicable	18
province	6	2010	Private sector	11
province	6	2010	Works for  self	27
province	8	2010	Government	5
province	8	2010	Non Governmental Organizations/ civil society sector	2
province	8	2010	Not applicable	20
province	8	2010	Private sector	4
province	8	2010	Works for  self	30
province	7	2010	Government	6
province	7	2010	Non Governmental Organizations/ civil society sector	1
province	7	2010	Not applicable	24
province	7	2010	Private sector	4
province	7	2010	Works for  self	57
province	9	2010	Don't know	2
province	9	2010	Government	11
province	9	2010	Non Governmental Organizations/ civil society sector	2
province	9	2010	Not applicable	14
province	9	2010	Private sector	11
province	9	2010	Works for  self	74
province	10	2010	Government	19
province	10	2010	Non Governmental Organizations/ civil society sector	1
province	10	2010	Not applicable	7
province	10	2010	Private sector	2
province	10	2010	Works for  self	48
country	ZM	2010	Government	99
country	ZM	2010	Private sector	144
country	ZM	2010	Works for  self	542
country	ZM	2010	Non Governmental Organizations/ civil society sector	19
country	ZM	2010	Not applicable	328
country	ZM	2010	Don't know	4
\.


--
-- Name: employer_of_respondent pk_employer_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employer_of_respondent
    ADD CONSTRAINT pk_employer_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, employer_of_respondent);


--
-- PostgreSQL database dump complete
--

