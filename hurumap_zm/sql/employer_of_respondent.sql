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
province	1	2010	Don't know	3
province	1	2010	Government	61
province	1	2010	Missing	37
province	1	2010	Non Governmental Organizations/ civil society sector	16
province	1	2010	Not applicable	232
province	1	2010	Private sector	117
province	1	2010	Works for  self	365
province	2	2010	Government	3
province	2	2010	Missing	2
province	2	2010	Not applicable	13
province	2	2010	Private sector	5
province	2	2010	Works for  self	9
province	3	2010	Non Governmental Organizations/ civil society sector	1
province	3	2010	Not applicable	5
province	3	2010	Works for  self	34
province	4	2010	Government	4
province	4	2010	Missing	3
province	4	2010	Not applicable	26
province	4	2010	Private sector	2
province	4	2010	Works for  self	5
province	6	2010	Government	4
province	6	2010	Not applicable	14
province	6	2010	Private sector	7
province	6	2010	Works for  self	23
province	8	2010	Government	1
province	8	2010	Missing	1
province	8	2010	Non Governmental Organizations/ civil society sector	1
province	8	2010	Not applicable	7
province	8	2010	Private sector	3
province	8	2010	Works for  self	11
province	7	2010	Government	4
province	7	2010	Missing	1
province	7	2010	Not applicable	17
province	7	2010	Private sector	4
province	7	2010	Works for  self	22
province	9	2010	Don't know	1
province	9	2010	Government	10
province	9	2010	Missing	17
province	9	2010	Non Governmental Organizations/ civil society sector	1
province	9	2010	Not applicable	9
province	9	2010	Private sector	5
province	9	2010	Works for  self	37
province	10	2010	Government	12
province	10	2010	Missing	2
province	10	2010	Not applicable	5
province	10	2010	Private sector	1
province	10	2010	Works for  self	36
country	ZM	2010	Missing	63
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

