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
region	114	2014	Difficult	25
region	114	2014	Easy	34
region	114	2014	No contact	587
region	114	2014	Very Difficult	13
region	114	2014	Very Easy	5
region	115	2014	Difficult	48
region	115	2014	Don't Know	2
region	115	2014	Easy	72
region	115	2014	No contact	460
region	115	2014	Very Difficult	21
region	115	2014	Very Easy	21
region	116	2014	Difficult	30
region	116	2014	Don't Know	1
region	116	2014	Easy	40
region	116	2014	No contact	393
region	116	2014	Very Difficult	30
region	116	2014	Very Easy	10
region	117	2014	Difficult	49
region	117	2014	Easy	55
region	117	2014	No contact	417
region	117	2014	Very Difficult	48
region	117	2014	Very Easy	39
country	UG	2014	Very Easy	75
country	UG	2014	No contact	1857
country	UG	2014	Easy	201
country	UG	2014	Very Difficult	112
country	UG	2014	Don't Know	3
country	UG	2014	Difficult	152
\.


--
-- Name: difficulty_to_obtain_household_services pk_difficulty_to_obtain_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_household_services
    ADD CONSTRAINT pk_difficulty_to_obtain_household_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_household_services);


--
-- PostgreSQL database dump complete
--

