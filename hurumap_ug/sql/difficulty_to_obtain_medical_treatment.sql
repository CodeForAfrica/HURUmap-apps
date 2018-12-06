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
region	114	2014	Difficult	174
region	114	2014	Easy	133
region	114	2014	No contact	195
region	114	2014	Very Difficult	96
region	114	2014	Very Easy	66
region	115	2014	Difficult	162
region	115	2014	Don't Know	3
region	115	2014	Easy	146
region	115	2014	No contact	170
region	115	2014	Very Difficult	104
region	115	2014	Very Easy	39
region	116	2014	Difficult	153
region	116	2014	Easy	128
region	116	2014	No contact	99
region	116	2014	Very Difficult	76
region	116	2014	Very Easy	48
region	117	2014	Difficult	118
region	117	2014	Easy	156
region	117	2014	No contact	134
region	117	2014	Very Difficult	53
region	117	2014	Very Easy	147
country	UG	2014	Very Easy	300
country	UG	2014	No contact	598
country	UG	2014	Easy	563
country	UG	2014	Very Difficult	329
country	UG	2014	Don't Know	3
country	UG	2014	Difficult	607
\.


--
-- Name: difficulty_to_obtain_medical_treatment pk_difficulty_to_obtain_medical_treatment; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_medical_treatment
    ADD CONSTRAINT pk_difficulty_to_obtain_medical_treatment PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_medical_treatment);


--
-- PostgreSQL database dump complete
--

