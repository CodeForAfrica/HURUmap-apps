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

ALTER TABLE IF EXISTS ONLY public.people_must_obey_the_law DROP CONSTRAINT IF EXISTS pk_people_must_obey_the_law;
DROP TABLE IF EXISTS public.people_must_obey_the_law;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_must_obey_the_law; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_must_obey_the_law (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_must_obey_the_law character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_must_obey_the_law; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_must_obey_the_law (geo_level, geo_code, geo_version, people_must_obey_the_law, total) FROM stdin;
region	114	2014	Agree	301
region	114	2014	Disagree	70
region	114	2014	Don't Know	12
region	114	2014	Neither Agree Nor Disagree	8
region	114	2014	Strongly Agree	244
region	114	2014	Strongly Disagree	29
region	115	2014	Agree	293
region	115	2014	Disagree	37
region	115	2014	Don't Know	6
region	115	2014	Neither Agree Nor Disagree	15
region	115	2014	Strongly Agree	210
region	115	2014	Strongly Disagree	63
region	116	2014	Agree	229
region	116	2014	Disagree	38
region	116	2014	Don't Know	5
region	116	2014	Neither Agree Nor Disagree	11
region	116	2014	Strongly Agree	185
region	116	2014	Strongly Disagree	36
region	117	2014	Agree	240
region	117	2014	Disagree	31
region	117	2014	Don't Know	12
region	117	2014	Neither Agree Nor Disagree	11
region	117	2014	Strongly Agree	301
region	117	2014	Strongly Disagree	13
country	UG	2014	Neither Agree Nor Disagree	45
country	UG	2014	Disagree	176
country	UG	2014	Strongly Agree	940
country	UG	2014	Agree	1063
country	UG	2014	Strongly Disagree	141
country	UG	2014	Don't Know	35
\.


--
-- Name: people_must_obey_the_law pk_people_must_obey_the_law; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_obey_the_law
    ADD CONSTRAINT pk_people_must_obey_the_law PRIMARY KEY (geo_level, geo_code, geo_version, people_must_obey_the_law);


--
-- PostgreSQL database dump complete
--

