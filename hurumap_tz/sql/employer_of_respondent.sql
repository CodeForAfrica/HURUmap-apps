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
region	1	2009	Not applicable	36
region	1	2009	Private sector	7
region	1	2009	Works for  self	76
region	2	2009	Government	20
region	2	2009	Non Governmental Organizations/ civil society sector	10
region	2	2009	Not applicable	53
region	2	2009	Private sector	38
region	2	2009	Works for  self	149
region	3	2009	Government	3
region	3	2009	Non Governmental Organizations/ civil society sector	1
region	3	2009	Not applicable	6
region	3	2009	Private sector	6
region	3	2009	Works for  self	80
region	4	2009	Government	3
region	4	2009	Not applicable	5
region	4	2009	Private sector	2
region	4	2009	Works for  self	59
region	5	2009	Government	1
region	5	2009	Not applicable	7
region	5	2009	Private sector	2
region	5	2009	Works for  self	37
region	6	2009	Government	3
region	6	2009	Not applicable	16
region	6	2009	Private sector	4
region	6	2009	Works for  self	46
region	7	2009	Government	8
region	7	2009	Not applicable	3
region	7	2009	Private sector	4
region	7	2009	Works for  self	41
region	8	2009	Government	8
region	8	2009	Non Governmental Organizations/ civil society sector	1
region	8	2009	Not applicable	1
region	8	2009	Private sector	2
region	8	2009	Works for  self	28
region	9	2009	Government	1
region	9	2009	Works for  self	23
region	10	2009	Government	1
region	10	2009	Not applicable	4
region	10	2009	Private sector	4
region	10	2009	Works for  self	87
region	11	2009	Government	6
region	11	2009	Non Governmental Organizations/ civil society sector	1
region	11	2009	Not applicable	33
region	11	2009	Private sector	7
region	11	2009	Works for  self	40
region	12	2009	Government	2
region	12	2009	Not applicable	1
region	12	2009	Works for  self	5
region	13	2009	Government	1
region	13	2009	Not applicable	1
region	13	2009	Private sector	1
region	13	2009	Works for  self	20
region	14	2009	Government	1
region	14	2009	Non Governmental Organizations/ civil society sector	1
region	14	2009	Not applicable	2
region	14	2009	Private sector	9
region	14	2009	Works for  self	35
region	15	2009	Don't know	1
region	15	2009	Government	2
region	15	2009	Not applicable	17
region	15	2009	Private sector	2
region	15	2009	Works for  self	42
region	16	2009	Government	7
region	16	2009	Not applicable	6
region	16	2009	Private sector	2
region	16	2009	Works for  self	65
region	17	2009	Government	3
region	17	2009	Not applicable	4
region	17	2009	Private sector	2
region	17	2009	Works for  self	55
region	30	2009	Government	15
region	30	2009	Non Governmental Organizations/ civil society sector	4
region	30	2009	Not applicable	13
region	30	2009	Private sector	7
region	30	2009	Works for  self	73
region	18	2009	Government	3
region	18	2009	Non Governmental Organizations/ civil society sector	1
region	18	2009	Not applicable	10
region	18	2009	Private sector	6
region	18	2009	Works for  self	100
region	19	2009	Government	2
region	19	2009	Not applicable	2
region	19	2009	Private sector	17
region	19	2009	Works for  self	50
region	20	2009	Government	5
region	20	2009	Non Governmental Organizations/ civil society sector	2
region	20	2009	Not applicable	9
region	20	2009	Private sector	10
region	20	2009	Works for  self	98
region	21	2009	Government	1
region	21	2009	Not applicable	7
region	21	2009	Private sector	2
region	21	2009	Works for  self	30
region	22	2009	Government	1
region	22	2009	Not applicable	5
region	22	2009	Private sector	2
region	22	2009	Works for  self	64
region	23	2009	Works for  self	39
region	24	2009	Government	1
region	24	2009	Not applicable	2
region	24	2009	Private sector	1
region	24	2009	Works for  self	67
region	25	2009	Government	2
region	25	2009	Non Governmental Organizations/ civil society sector	2
region	25	2009	Private sector	1
region	25	2009	Works for  self	67
region	26	2009	Government	1
region	26	2009	Non Governmental Organizations/ civil society sector	2
region	26	2009	Not applicable	5
region	26	2009	Works for  self	56
region	27	2009	Not applicable	2
region	27	2009	Works for  self	62
region	31	2009	Government	2
region	31	2009	Not applicable	6
region	31	2009	Works for  self	64
region	29	2009	Not applicable	5
region	29	2009	Private sector	4
region	29	2009	Works for  self	95
region	28	2009	Government	1
region	28	2009	Non Governmental Organizations/ civil society sector	2
region	28	2009	Not applicable	23
region	28	2009	Private sector	4
region	28	2009	Works for  self	58
country	TZ	2009	Government	104
country	TZ	2009	Private sector	146
country	TZ	2009	Works for  self	1811
country	TZ	2009	Non Governmental Organizations/ civil society sector	27
country	TZ	2009	Not applicable	284
country	TZ	2009	Don't know	1
\.


--
-- Name: employer_of_respondent pk_employer_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employer_of_respondent
    ADD CONSTRAINT pk_employer_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, employer_of_respondent);


--
-- PostgreSQL database dump complete
--

