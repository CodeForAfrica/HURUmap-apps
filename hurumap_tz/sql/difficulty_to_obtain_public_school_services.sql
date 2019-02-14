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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_public_school_services DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_public_school_services;
DROP TABLE IF EXISTS public.difficulty_to_obtain_public_school_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_public_school_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_public_school_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_public_school_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_public_school_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_public_school_services (geo_level, geo_code, geo_version, difficulty_to_obtain_public_school_services, total) FROM stdin;
region	1	2009	Difficult	6
region	1	2009	Easy	33
region	1	2009	No contact	65
region	1	2009	Very Difficult	3
region	1	2009	Very Easy	13
region	2	2009	Difficult	44
region	2	2009	Easy	66
region	2	2009	No contact	143
region	2	2009	Very Difficult	6
region	2	2009	Very Easy	14
region	3	2009	Difficult	14
region	3	2009	Easy	36
region	3	2009	No contact	38
region	3	2009	Very Easy	8
region	4	2009	Difficult	4
region	4	2009	Easy	12
region	4	2009	No contact	39
region	4	2009	Very Difficult	1
region	4	2009	Very Easy	15
region	5	2009	Difficult	1
region	5	2009	Easy	13
region	5	2009	No contact	28
region	5	2009	Very Easy	6
region	6	2009	Difficult	6
region	6	2009	Easy	9
region	6	2009	No contact	52
region	6	2009	Very Difficult	2
region	6	2009	Very Easy	3
region	7	2009	Difficult	13
region	7	2009	Easy	17
region	7	2009	No contact	22
region	7	2009	Very Difficult	2
region	7	2009	Very Easy	2
region	8	2009	Difficult	7
region	8	2009	Easy	19
region	8	2009	No contact	14
region	9	2009	Difficult	1
region	9	2009	Easy	8
region	9	2009	No contact	12
region	9	2009	Very Easy	3
region	10	2009	Difficult	5
region	10	2009	Easy	10
region	10	2009	No contact	70
region	10	2009	Very Easy	11
region	11	2009	Difficult	9
region	11	2009	Easy	24
region	11	2009	No contact	44
region	11	2009	Very Difficult	2
region	11	2009	Very Easy	9
region	12	2009	Difficult	2
region	12	2009	Easy	3
region	12	2009	No contact	3
region	13	2009	Difficult	4
region	13	2009	Easy	10
region	13	2009	No contact	10
region	14	2009	Difficult	9
region	14	2009	Easy	9
region	14	2009	No contact	21
region	14	2009	Very Difficult	8
region	14	2009	Very Easy	1
region	15	2009	Difficult	7
region	15	2009	Easy	16
region	15	2009	No contact	31
region	15	2009	Very Difficult	3
region	15	2009	Very Easy	7
region	16	2009	Difficult	9
region	16	2009	Easy	12
region	16	2009	No contact	45
region	16	2009	Very Difficult	6
region	16	2009	Very Easy	8
region	17	2009	Easy	13
region	17	2009	No contact	37
region	17	2009	Very Easy	14
region	30	2009	Difficult	26
region	30	2009	Easy	38
region	30	2009	No contact	37
region	30	2009	Very Difficult	10
region	30	2009	Very Easy	1
region	18	2009	Difficult	15
region	18	2009	Easy	58
region	18	2009	No contact	41
region	18	2009	Very Difficult	2
region	18	2009	Very Easy	4
region	19	2009	Difficult	28
region	19	2009	Easy	18
region	19	2009	No contact	23
region	19	2009	Very Difficult	2
region	20	2009	Difficult	9
region	20	2009	Easy	15
region	20	2009	No contact	66
region	20	2009	Very Difficult	5
region	20	2009	Very Easy	29
region	21	2009	Easy	14
region	21	2009	No contact	22
region	21	2009	Very Easy	4
region	22	2009	Difficult	12
region	22	2009	Easy	18
region	22	2009	No contact	31
region	22	2009	Very Difficult	1
region	22	2009	Very Easy	10
region	23	2009	Easy	10
region	23	2009	No contact	19
region	23	2009	Very Difficult	1
region	23	2009	Very Easy	9
region	24	2009	Difficult	2
region	24	2009	Easy	21
region	24	2009	No contact	31
region	24	2009	Very Easy	18
region	25	2009	Difficult	10
region	25	2009	Easy	7
region	25	2009	No contact	51
region	25	2009	Very Easy	4
region	26	2009	Difficult	1
region	26	2009	Easy	5
region	26	2009	No contact	50
region	26	2009	Very Easy	8
region	27	2009	Difficult	4
region	27	2009	Easy	15
region	27	2009	No contact	40
region	27	2009	Very Easy	5
region	31	2009	Easy	24
region	31	2009	No contact	30
region	31	2009	Very Difficult	1
region	31	2009	Very Easy	17
region	29	2009	Difficult	11
region	29	2009	Don't Know	1
region	29	2009	Easy	33
region	29	2009	No contact	48
region	29	2009	Very Difficult	1
region	29	2009	Very Easy	10
region	28	2009	Difficult	26
region	28	2009	Easy	18
region	28	2009	No contact	37
region	28	2009	Very Difficult	1
region	28	2009	Very Easy	6
country	TZ	2009	Very Easy	239
country	TZ	2009	No contact	1200
country	TZ	2009	Easy	604
country	TZ	2009	Very Difficult	57
country	TZ	2009	Don't Know	1
country	TZ	2009	Difficult	285
\.


--
-- Name: difficulty_to_obtain_public_school_services pk_difficulty_to_obtain_public_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_public_school_services
    ADD CONSTRAINT pk_difficulty_to_obtain_public_school_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_public_school_services);


--
-- PostgreSQL database dump complete
--

