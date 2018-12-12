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
region	114	2014	Difficult	90
region	114	2014	Don't Know	1
region	114	2014	Easy	132
region	114	2014	No contact	374
region	114	2014	Very Difficult	12
region	114	2014	Very Easy	55
region	115	2014	Difficult	69
region	115	2014	Don't Know	5
region	115	2014	Easy	145
region	115	2014	No contact	299
region	115	2014	Very Difficult	46
region	115	2014	Very Easy	60
region	116	2014	Difficult	66
region	116	2014	Easy	158
region	116	2014	No contact	212
region	116	2014	Very Difficult	28
region	116	2014	Very Easy	40
region	117	2014	Difficult	35
region	117	2014	Don't Know	1
region	117	2014	Easy	138
region	117	2014	No contact	269
region	117	2014	Very Difficult	17
region	117	2014	Very Easy	148
country	UG	2014	Very Easy	303
country	UG	2014	No contact	1154
country	UG	2014	Easy	573
country	UG	2014	Very Difficult	103
country	UG	2014	Don't Know	7
country	UG	2014	Difficult	260
\.


--
-- Name: difficulty_to_obtain_public_school_services pk_difficulty_to_obtain_public_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_public_school_services
    ADD CONSTRAINT pk_difficulty_to_obtain_public_school_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_public_school_services);


--
-- PostgreSQL database dump complete
--

