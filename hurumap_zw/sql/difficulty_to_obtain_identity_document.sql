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
province	10	2009	Difficult	26
province	10	2009	Easy	21
province	10	2009	No contact	75
province	10	2009	Very Difficult	24
province	10	2009	Very Easy	6
province	19	2009	Difficult	72
province	19	2009	Easy	80
province	19	2009	No contact	220
province	19	2009	Very Difficult	63
province	19	2009	Very Easy	13
province	11	2009	Difficult	35
province	11	2009	Easy	24
province	11	2009	No contact	192
province	11	2009	Very Difficult	37
province	11	2009	Very Easy	16
province	12	2009	Difficult	27
province	12	2009	Easy	14
province	12	2009	No contact	118
province	12	2009	Very Difficult	40
province	12	2009	Very Easy	9
province	13	2009	Difficult	23
province	13	2009	Easy	15
province	13	2009	No contact	172
province	13	2009	Very Difficult	22
province	13	2009	Very Easy	16
province	14	2009	Difficult	18
province	14	2009	Easy	26
province	14	2009	No contact	160
province	14	2009	Very Difficult	43
province	14	2009	Very Easy	25
province	18	2009	Difficult	25
province	18	2009	Don't Know	1
province	18	2009	Easy	23
province	18	2009	No contact	143
province	18	2009	Very Difficult	44
province	18	2009	Very Easy	12
province	15	2009	Difficult	4
province	15	2009	Easy	4
province	15	2009	No contact	94
province	15	2009	Very Difficult	16
province	15	2009	Very Easy	10
province	16	2009	Difficult	23
province	16	2009	Easy	18
province	16	2009	No contact	46
province	16	2009	Very Difficult	6
province	16	2009	Very Easy	11
province	17	2009	Difficult	61
province	17	2009	Easy	40
province	17	2009	No contact	131
province	17	2009	Very Difficult	40
province	17	2009	Very Easy	16
country	ZW	2009	Very Easy	134
country	ZW	2009	No contact	1351
country	ZW	2009	Easy	265
country	ZW	2009	Very Difficult	335
country	ZW	2009	Don't Know	1
country	ZW	2009	Difficult	314
\.


--
-- Name: difficulty_to_obtain_identity_document pk_difficulty_to_obtain_identity_document; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_identity_document
    ADD CONSTRAINT pk_difficulty_to_obtain_identity_document PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_identity_document);


--
-- PostgreSQL database dump complete
--

