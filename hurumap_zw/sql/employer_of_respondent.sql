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
province	10	2009	Government	6
province	10	2009	Non Governmental Organizations/ civil society sector	4
province	10	2009	Not applicable	48
province	10	2009	Private sector	34
province	10	2009	Works for  self	26
province	19	2009	Government	37
province	19	2009	Non Governmental Organizations/ civil society sector	11
province	19	2009	Not applicable	60
province	19	2009	Private sector	95
province	19	2009	Works for  self	129
province	11	2009	Government	14
province	11	2009	Non Governmental Organizations/ civil society sector	4
province	11	2009	Not applicable	132
province	11	2009	Private sector	27
province	11	2009	Works for  self	44
province	12	2009	Government	10
province	12	2009	Non Governmental Organizations/ civil society sector	1
province	12	2009	Not applicable	25
province	12	2009	Private sector	34
province	12	2009	Works for  self	103
province	13	2009	Government	10
province	13	2009	Not applicable	74
province	13	2009	Private sector	12
province	13	2009	Works for  self	106
province	14	2009	Government	9
province	14	2009	Not applicable	94
province	14	2009	Private sector	31
province	14	2009	Works for  self	57
province	18	2009	Government	9
province	18	2009	Non Governmental Organizations/ civil society sector	1
province	18	2009	Not applicable	82
province	18	2009	Private sector	9
province	18	2009	Works for  self	49
province	15	2009	Government	6
province	15	2009	Not applicable	41
province	15	2009	Private sector	11
province	15	2009	Works for  self	25
province	16	2009	Government	4
province	16	2009	Non Governmental Organizations/ civil society sector	1
province	16	2009	Not applicable	35
province	16	2009	Private sector	11
province	16	2009	Works for  self	20
province	17	2009	Don't know	1
province	17	2009	Government	40
province	17	2009	Non Governmental Organizations/ civil society sector	5
province	17	2009	Not applicable	94
province	17	2009	Private sector	41
province	17	2009	Works for  self	49
country	ZW	2009	Government	145
country	ZW	2009	Private sector	305
country	ZW	2009	Works for  self	608
country	ZW	2009	Non Governmental Organizations/ civil society sector	27
country	ZW	2009	Not applicable	685
country	ZW	2009	Don't know	1
\.


--
-- Name: employer_of_respondent pk_employer_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employer_of_respondent
    ADD CONSTRAINT pk_employer_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, employer_of_respondent);


--
-- PostgreSQL database dump complete
--

