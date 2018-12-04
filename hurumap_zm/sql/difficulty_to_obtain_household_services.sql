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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_household_services DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_household_services;
DROP TABLE IF EXISTS public.difficulty_to_obtain_household_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_household_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_household_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_household_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_household_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_household_services (geo_level, geo_code, geo_version, difficulty_to_obtain_household_services, total) FROM stdin;
province	1	2010	Difficult	52
province	1	2010	Don't Know	3
province	1	2010	Easy	58
province	1	2010	No contact	665
province	1	2010	Very Difficult	37
province	1	2010	Very Easy	16
province	2	2010	Difficult	1
province	2	2010	Easy	5
province	2	2010	No contact	23
province	2	2010	Very Difficult	2
province	2	2010	Very Easy	1
province	3	2010	Difficult	3
province	3	2010	Easy	2
province	3	2010	No contact	30
province	3	2010	Very Difficult	2
province	3	2010	Very Easy	3
province	4	2010	Difficult	1
province	4	2010	Easy	2
province	4	2010	No contact	37
province	6	2010	No contact	46
province	6	2010	Very Difficult	1
province	6	2010	Very Easy	1
province	8	2010	Difficult	1
province	8	2010	No contact	23
province	7	2010	No contact	47
province	7	2010	Very Difficult	1
province	9	2010	Difficult	4
province	9	2010	Easy	4
province	9	2010	No contact	70
province	9	2010	Very Difficult	2
province	10	2010	Difficult	2
province	10	2010	Easy	2
province	10	2010	Missing	1
province	10	2010	No contact	48
province	10	2010	Very Difficult	3
country	ZM	2010	Missing	1
country	ZM	2010	Very Easy	21
country	ZM	2010	No contact	989
country	ZM	2010	Easy	73
country	ZM	2010	Very Difficult	48
country	ZM	2010	Don't Know	3
country	ZM	2010	Difficult	64
\.


--
-- Name: difficulty_to_obtain_household_services pk_difficulty_to_obtain_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_household_services
    ADD CONSTRAINT pk_difficulty_to_obtain_household_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_household_services);


--
-- PostgreSQL database dump complete
--

