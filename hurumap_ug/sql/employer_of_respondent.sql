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
region	114	2014	Don't know	1
region	114	2014	Government	17
region	114	2014	Missing	22
region	114	2014	Non Governmental Organizations/ civil society sector	6
region	114	2014	Not applicable	108
region	114	2014	Private sector	70
region	114	2014	Works for  self	440
region	115	2014	Government	17
region	115	2014	Missing	22
region	115	2014	Non Governmental Organizations/ civil society sector	7
region	115	2014	Not applicable	169
region	115	2014	Private sector	45
region	115	2014	Works for  self	364
region	116	2014	Don't know	1
region	116	2014	Government	11
region	116	2014	Missing	22
region	116	2014	Non Governmental Organizations/ civil society sector	4
region	116	2014	Not applicable	95
region	116	2014	Private sector	21
region	116	2014	Works for  self	350
region	117	2014	Government	17
region	117	2014	Missing	12
region	117	2014	Non Governmental Organizations/ civil society sector	2
region	117	2014	Not applicable	61
region	117	2014	Private sector	45
region	117	2014	Works for  self	471
country	UG	2014	Missing	78
country	UG	2014	Government	62
country	UG	2014	Private sector	181
country	UG	2014	Works for  self	1625
country	UG	2014	Non Governmental Organizations/ civil society sector	19
country	UG	2014	Not applicable	433
country	UG	2014	Don't know	2
\.


--
-- Name: employer_of_respondent pk_employer_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employer_of_respondent
    ADD CONSTRAINT pk_employer_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, employer_of_respondent);


--
-- PostgreSQL database dump complete
--

