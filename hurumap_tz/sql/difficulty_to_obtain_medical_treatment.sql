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
region	1	2009	Difficult	14
region	1	2009	Easy	36
region	1	2009	No contact	42
region	1	2009	Very Difficult	13
region	1	2009	Very Easy	15
region	2	2009	Difficult	85
region	2	2009	Easy	75
region	2	2009	No contact	90
region	2	2009	Very Difficult	12
region	2	2009	Very Easy	11
region	3	2009	Difficult	28
region	3	2009	Easy	35
region	3	2009	No contact	5
region	3	2009	Very Difficult	23
region	3	2009	Very Easy	5
region	4	2009	Difficult	12
region	4	2009	Easy	11
region	4	2009	No contact	17
region	4	2009	Very Difficult	15
region	4	2009	Very Easy	16
region	5	2009	Difficult	13
region	5	2009	Easy	14
region	5	2009	No contact	15
region	5	2009	Very Difficult	1
region	5	2009	Very Easy	5
region	6	2009	Difficult	5
region	6	2009	Easy	18
region	6	2009	No contact	30
region	6	2009	Very Difficult	7
region	6	2009	Very Easy	12
region	7	2009	Difficult	31
region	7	2009	Easy	13
region	7	2009	No contact	2
region	7	2009	Very Difficult	10
region	8	2009	Difficult	23
region	8	2009	Easy	10
region	8	2009	No contact	2
region	8	2009	Very Difficult	5
region	9	2009	Difficult	9
region	9	2009	Easy	8
region	9	2009	No contact	6
region	9	2009	Very Easy	1
region	10	2009	Difficult	16
region	10	2009	Easy	22
region	10	2009	No contact	47
region	10	2009	Very Difficult	8
region	10	2009	Very Easy	3
region	11	2009	Difficult	6
region	11	2009	Easy	29
region	11	2009	No contact	39
region	11	2009	Very Difficult	12
region	11	2009	Very Easy	2
region	12	2009	Difficult	4
region	12	2009	Easy	1
region	12	2009	No contact	2
region	12	2009	Very Difficult	1
region	13	2009	Difficult	11
region	13	2009	Easy	7
region	13	2009	No contact	3
region	13	2009	Very Difficult	3
region	14	2009	Difficult	17
region	14	2009	Easy	12
region	14	2009	No contact	9
region	14	2009	Very Difficult	10
region	15	2009	Difficult	13
region	15	2009	Easy	10
region	15	2009	No contact	23
region	15	2009	Very Difficult	12
region	15	2009	Very Easy	6
region	16	2009	Difficult	23
region	16	2009	Easy	13
region	16	2009	No contact	22
region	16	2009	Very Difficult	13
region	16	2009	Very Easy	9
region	17	2009	Difficult	20
region	17	2009	Easy	9
region	17	2009	No contact	25
region	17	2009	Very Difficult	1
region	17	2009	Very Easy	9
region	30	2009	Difficult	41
region	30	2009	Easy	35
region	30	2009	No contact	8
region	30	2009	Very Difficult	28
region	18	2009	Difficult	46
region	18	2009	Easy	39
region	18	2009	No contact	14
region	18	2009	Very Difficult	15
region	18	2009	Very Easy	6
region	19	2009	Difficult	41
region	19	2009	Easy	9
region	19	2009	No contact	14
region	19	2009	Very Difficult	6
region	19	2009	Very Easy	1
region	20	2009	Difficult	17
region	20	2009	Easy	22
region	20	2009	No contact	43
region	20	2009	Very Difficult	17
region	20	2009	Very Easy	25
region	21	2009	Difficult	8
region	21	2009	Easy	12
region	21	2009	No contact	13
region	21	2009	Very Difficult	2
region	21	2009	Very Easy	5
region	22	2009	Difficult	25
region	22	2009	Easy	20
region	22	2009	No contact	15
region	22	2009	Very Difficult	2
region	22	2009	Very Easy	10
region	23	2009	Difficult	10
region	23	2009	Easy	13
region	23	2009	No contact	13
region	23	2009	Very Easy	3
region	24	2009	Difficult	12
region	24	2009	Easy	29
region	24	2009	No contact	19
region	24	2009	Very Difficult	4
region	24	2009	Very Easy	8
region	25	2009	Difficult	26
region	25	2009	Easy	11
region	25	2009	No contact	23
region	25	2009	Very Difficult	9
region	25	2009	Very Easy	3
region	26	2009	Difficult	17
region	26	2009	Easy	10
region	26	2009	No contact	27
region	26	2009	Very Difficult	2
region	26	2009	Very Easy	8
region	27	2009	Difficult	16
region	27	2009	Easy	19
region	27	2009	No contact	23
region	27	2009	Very Difficult	4
region	27	2009	Very Easy	2
region	31	2009	Difficult	16
region	31	2009	Easy	14
region	31	2009	No contact	21
region	31	2009	Very Difficult	10
region	31	2009	Very Easy	11
region	29	2009	Difficult	40
region	29	2009	Easy	19
region	29	2009	No contact	19
region	29	2009	Very Difficult	24
region	29	2009	Very Easy	2
region	28	2009	Difficult	25
region	28	2009	Easy	16
region	28	2009	No contact	24
region	28	2009	Very Difficult	8
region	28	2009	Very Easy	15
country	TZ	2009	Very Easy	193
country	TZ	2009	No contact	655
country	TZ	2009	Very Difficult	277
country	TZ	2009	Easy	591
country	TZ	2009	Difficult	670
\.


--
-- Name: difficulty_to_obtain_medical_treatment pk_difficulty_to_obtain_medical_treatment; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_medical_treatment
    ADD CONSTRAINT pk_difficulty_to_obtain_medical_treatment PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_medical_treatment);


--
-- PostgreSQL database dump complete
--

