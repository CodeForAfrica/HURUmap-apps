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
province	1	2010	Difficult	143
province	1	2010	Easy	195
province	1	2010	No contact	246
province	1	2010	Very Difficult	86
province	1	2010	Very Easy	161
province	2	2010	Difficult	4
province	2	2010	Easy	14
province	2	2010	No contact	3
province	2	2010	Very Difficult	4
province	2	2010	Very Easy	7
province	3	2010	Difficult	9
province	3	2010	Easy	3
province	3	2010	No contact	13
province	3	2010	Very Difficult	2
province	3	2010	Very Easy	13
province	4	2010	Difficult	6
province	4	2010	Easy	11
province	4	2010	No contact	14
province	4	2010	Very Difficult	3
province	4	2010	Very Easy	6
province	6	2010	Difficult	21
province	6	2010	Easy	6
province	6	2010	No contact	13
province	6	2010	Very Difficult	1
province	6	2010	Very Easy	7
province	8	2010	Difficult	4
province	8	2010	Easy	8
province	8	2010	No contact	8
province	8	2010	Very Easy	4
province	7	2010	Difficult	5
province	7	2010	Easy	16
province	7	2010	No contact	17
province	7	2010	Very Difficult	1
province	7	2010	Very Easy	9
province	9	2010	Difficult	14
province	9	2010	Easy	35
province	9	2010	No contact	15
province	9	2010	Very Difficult	11
province	9	2010	Very Easy	5
province	10	2010	Difficult	9
province	10	2010	Easy	13
province	10	2010	No contact	14
province	10	2010	Very Difficult	9
province	10	2010	Very Easy	11
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

