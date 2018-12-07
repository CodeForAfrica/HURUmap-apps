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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_identity_document DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_identity_document;
DROP TABLE IF EXISTS public.difficulty_to_obtain_identity_document;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_identity_document; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_identity_document (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_identity_document character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_identity_document; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_identity_document (geo_level, geo_code, geo_version, difficulty_to_obtain_identity_document, total) FROM stdin;
region	114	2014	Difficult	88
region	114	2014	Easy	187
region	114	2014	No contact	238
region	114	2014	Very Difficult	49
region	114	2014	Very Easy	102
region	115	2014	Difficult	59
region	115	2014	Don't Know	1
region	115	2014	Easy	127
region	115	2014	No contact	354
region	115	2014	Very Difficult	20
region	115	2014	Very Easy	63
region	116	2014	Difficult	88
region	116	2014	Don't Know	2
region	116	2014	Easy	140
region	116	2014	No contact	218
region	116	2014	Very Difficult	16
region	116	2014	Very Easy	40
region	117	2014	Difficult	98
region	117	2014	Easy	166
region	117	2014	No contact	137
region	117	2014	Very Difficult	51
region	117	2014	Very Easy	156
country	UG	2014	Very Easy	361
country	UG	2014	No contact	947
country	UG	2014	Easy	620
country	UG	2014	Very Difficult	136
country	UG	2014	Don't Know	3
country	UG	2014	Difficult	333
\.


--
-- Name: difficulty_to_obtain_identity_document pk_difficulty_to_obtain_identity_document; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_identity_document
    ADD CONSTRAINT pk_difficulty_to_obtain_identity_document PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_identity_document);


--
-- PostgreSQL database dump complete
--

