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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_medical_treatment DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_medical_treatment;
DROP TABLE IF EXISTS public.difficulty_to_obtain_medical_treatment;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_medical_treatment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_medical_treatment (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_medical_treatment character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_medical_treatment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_medical_treatment (geo_level, geo_code, geo_version, difficulty_to_obtain_medical_treatment, total) FROM stdin;
province	1	2010	Difficult	32
province	1	2010	Easy	24
province	1	2010	No contact	31
province	1	2010	Very Difficult	13
province	1	2010	Very Easy	20
province	2	2010	Difficult	25
province	2	2010	Easy	60
province	2	2010	No contact	46
province	2	2010	Very Difficult	16
province	2	2010	Very Easy	45
province	3	2010	Difficult	22
province	3	2010	Easy	15
province	3	2010	No contact	36
province	3	2010	Very Difficult	14
province	3	2010	Very Easy	49
province	4	2010	Difficult	11
province	4	2010	Easy	31
province	4	2010	No contact	24
province	4	2010	Very Difficult	4
province	4	2010	Very Easy	17
province	5	2010	Difficult	45
province	5	2010	Easy	34
province	5	2010	No contact	86
province	5	2010	Very Difficult	33
province	5	2010	Very Easy	26
province	6	2010	Difficult	24
province	6	2010	Easy	7
province	6	2010	No contact	20
province	6	2010	Very Difficult	1
province	6	2010	Very Easy	12
province	8	2010	Difficult	5
province	8	2010	Easy	20
province	8	2010	No contact	25
province	8	2010	Very Difficult	2
province	8	2010	Very Easy	12
province	7	2010	Difficult	13
province	7	2010	Easy	30
province	7	2010	No contact	27
province	7	2010	Very Difficult	3
province	7	2010	Very Easy	23
province	9	2010	Difficult	26
province	9	2010	Easy	57
province	9	2010	No contact	28
province	9	2010	Very Difficult	20
province	9	2010	Very Easy	5
province	10	2010	Difficult	12
province	10	2010	Easy	23
province	10	2010	No contact	20
province	10	2010	Very Difficult	11
province	10	2010	Very Easy	14
country	ZM	2010	Very Easy	223
country	ZM	2010	No contact	343
country	ZM	2010	Very Difficult	117
country	ZM	2010	Easy	301
country	ZM	2010	Difficult	215
\.


--
-- Name: difficulty_to_obtain_medical_treatment pk_difficulty_to_obtain_medical_treatment; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_medical_treatment
    ADD CONSTRAINT pk_difficulty_to_obtain_medical_treatment PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_medical_treatment);


--
-- PostgreSQL database dump complete
--

