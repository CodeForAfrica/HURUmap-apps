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
province	1	2010	Difficult	19
province	1	2010	Don't Know	1
province	1	2010	Easy	25
province	1	2010	No contact	53
province	1	2010	Very Difficult	8
province	1	2010	Very Easy	14
province	2	2010	Difficult	10
province	2	2010	Easy	38
province	2	2010	No contact	113
province	2	2010	Very Difficult	12
province	2	2010	Very Easy	19
province	3	2010	Difficult	11
province	3	2010	Easy	13
province	3	2010	No contact	70
province	3	2010	Very Difficult	5
province	3	2010	Very Easy	37
province	4	2010	Difficult	2
province	4	2010	Easy	21
province	4	2010	No contact	52
province	4	2010	Very Difficult	2
province	4	2010	Very Easy	10
province	5	2010	Difficult	22
province	5	2010	Don't Know	1
province	5	2010	Easy	31
province	5	2010	No contact	130
province	5	2010	Very Difficult	16
province	5	2010	Very Easy	24
province	6	2010	Difficult	10
province	6	2010	Easy	5
province	6	2010	No contact	38
province	6	2010	Very Difficult	1
province	6	2010	Very Easy	10
province	8	2010	Difficult	2
province	8	2010	Easy	9
province	8	2010	No contact	45
province	8	2010	Very Easy	8
province	7	2010	Difficult	8
province	7	2010	Don't Know	1
province	7	2010	Easy	15
province	7	2010	No contact	62
province	7	2010	Very Difficult	3
province	7	2010	Very Easy	7
province	9	2010	Difficult	13
province	9	2010	Easy	29
province	9	2010	No contact	87
province	9	2010	Very Difficult	5
province	9	2010	Very Easy	2
province	10	2010	Difficult	9
province	10	2010	Easy	19
province	10	2010	No contact	32
province	10	2010	Very Difficult	9
province	10	2010	Very Easy	11
country	ZM	2010	Very Easy	142
country	ZM	2010	No contact	682
country	ZM	2010	Easy	205
country	ZM	2010	Very Difficult	61
country	ZM	2010	Don't Know	3
country	ZM	2010	Difficult	106
\.


--
-- Name: difficulty_to_obtain_public_school_services pk_difficulty_to_obtain_public_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_public_school_services
    ADD CONSTRAINT pk_difficulty_to_obtain_public_school_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_public_school_services);


--
-- PostgreSQL database dump complete
--

