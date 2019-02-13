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
province	10	2009	Difficult	23
province	10	2009	Easy	37
province	10	2009	No contact	70
province	10	2009	Very Difficult	14
province	10	2009	Very Easy	8
province	19	2009	Difficult	106
province	19	2009	Easy	80
province	19	2009	No contact	212
province	19	2009	Very Difficult	37
province	19	2009	Very Easy	13
province	11	2009	Difficult	44
province	11	2009	Easy	50
province	11	2009	No contact	153
province	11	2009	Very Difficult	20
province	11	2009	Very Easy	37
province	12	2009	Difficult	41
province	12	2009	Easy	66
province	12	2009	No contact	40
province	12	2009	Very Difficult	16
province	12	2009	Very Easy	45
province	13	2009	Difficult	21
province	13	2009	Easy	43
province	13	2009	No contact	103
province	13	2009	Very Difficult	10
province	13	2009	Very Easy	71
province	14	2009	Difficult	31
province	14	2009	Easy	62
province	14	2009	No contact	70
province	14	2009	Very Difficult	39
province	14	2009	Very Easy	70
province	18	2009	Difficult	31
province	18	2009	Easy	65
province	18	2009	No contact	86
province	18	2009	Very Difficult	26
province	18	2009	Very Easy	40
province	15	2009	Difficult	5
province	15	2009	Easy	8
province	15	2009	No contact	75
province	15	2009	Very Difficult	15
province	15	2009	Very Easy	25
province	16	2009	Difficult	12
province	16	2009	Easy	45
province	16	2009	No contact	37
province	16	2009	Very Difficult	2
province	16	2009	Very Easy	8
province	17	2009	Difficult	28
province	17	2009	Easy	104
province	17	2009	No contact	105
province	17	2009	Very Difficult	21
province	17	2009	Very Easy	30
country	ZW	2009	Very Easy	347
country	ZW	2009	No contact	951
country	ZW	2009	Very Difficult	200
country	ZW	2009	Easy	560
country	ZW	2009	Difficult	342
\.


--
-- Name: difficulty_to_obtain_medical_treatment pk_difficulty_to_obtain_medical_treatment; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_medical_treatment
    ADD CONSTRAINT pk_difficulty_to_obtain_medical_treatment PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_medical_treatment);


--
-- PostgreSQL database dump complete
--

