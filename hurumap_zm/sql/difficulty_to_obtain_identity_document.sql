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
province	1	2010	Difficult	49
province	1	2010	Easy	66
province	1	2010	No contact	622
province	1	2010	Very Difficult	41
province	1	2010	Very Easy	53
province	2	2010	Difficult	4
province	2	2010	Easy	3
province	2	2010	No contact	22
province	2	2010	Very Difficult	2
province	2	2010	Very Easy	1
province	3	2010	Difficult	6
province	3	2010	Easy	1
province	3	2010	No contact	26
province	3	2010	Very Difficult	3
province	3	2010	Very Easy	4
province	4	2010	Don't Know	1
province	4	2010	Easy	6
province	4	2010	No contact	32
province	4	2010	Very Easy	1
province	6	2010	Difficult	2
province	6	2010	Easy	1
province	6	2010	No contact	42
province	6	2010	Very Difficult	2
province	6	2010	Very Easy	1
province	8	2010	Difficult	2
province	8	2010	Easy	1
province	8	2010	No contact	20
province	8	2010	Very Difficult	1
province	7	2010	Difficult	1
province	7	2010	Easy	1
province	7	2010	No contact	44
province	7	2010	Very Difficult	1
province	7	2010	Very Easy	1
province	9	2010	Difficult	6
province	9	2010	Easy	9
province	9	2010	No contact	58
province	9	2010	Very Difficult	6
province	9	2010	Very Easy	1
province	10	2010	Difficult	1
province	10	2010	Easy	8
province	10	2010	No contact	36
province	10	2010	Very Difficult	8
province	10	2010	Very Easy	3
country	ZM	2010	Very Easy	65
country	ZM	2010	No contact	902
country	ZM	2010	Easy	96
country	ZM	2010	Very Difficult	64
country	ZM	2010	Don't Know	1
country	ZM	2010	Difficult	71
\.


--
-- Name: difficulty_to_obtain_identity_document pk_difficulty_to_obtain_identity_document; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_identity_document
    ADD CONSTRAINT pk_difficulty_to_obtain_identity_document PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_identity_document);


--
-- PostgreSQL database dump complete
--

