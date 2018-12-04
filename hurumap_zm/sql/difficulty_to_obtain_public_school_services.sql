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
province	1	2010	Difficult	64
province	1	2010	Don't Know	3
province	1	2010	Easy	138
province	1	2010	No contact	476
province	1	2010	Very Difficult	46
province	1	2010	Very Easy	104
province	2	2010	Difficult	1
province	2	2010	Easy	6
province	2	2010	No contact	16
province	2	2010	Very Difficult	5
province	2	2010	Very Easy	4
province	3	2010	Difficult	7
province	3	2010	Easy	3
province	3	2010	No contact	21
province	3	2010	Very Easy	9
province	4	2010	Difficult	1
province	4	2010	Easy	11
province	4	2010	No contact	25
province	4	2010	Very Difficult	1
province	4	2010	Very Easy	2
province	6	2010	Difficult	8
province	6	2010	Easy	3
province	6	2010	No contact	29
province	6	2010	Very Difficult	1
province	6	2010	Very Easy	7
province	8	2010	Difficult	1
province	8	2010	Easy	3
province	8	2010	No contact	18
province	8	2010	Very Easy	2
province	7	2010	Difficult	7
province	7	2010	Easy	9
province	7	2010	No contact	29
province	7	2010	Very Easy	3
province	9	2010	Difficult	10
province	9	2010	Easy	21
province	9	2010	No contact	44
province	9	2010	Very Difficult	3
province	9	2010	Very Easy	2
province	10	2010	Difficult	7
province	10	2010	Easy	11
province	10	2010	No contact	24
province	10	2010	Very Difficult	5
province	10	2010	Very Easy	9
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

