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
province	10	2009	Difficult	7
province	10	2009	Easy	7
province	10	2009	No contact	132
province	10	2009	Very Difficult	5
province	10	2009	Very Easy	1
province	19	2009	Difficult	54
province	19	2009	Easy	30
province	19	2009	No contact	330
province	19	2009	Very Difficult	29
province	19	2009	Very Easy	5
province	11	2009	Difficult	5
province	11	2009	Easy	10
province	11	2009	No contact	281
province	11	2009	Very Difficult	6
province	11	2009	Very Easy	2
province	12	2009	Difficult	3
province	12	2009	Easy	2
province	12	2009	No contact	202
province	12	2009	Very Difficult	1
province	13	2009	Easy	1
province	13	2009	No contact	240
province	13	2009	Very Difficult	4
province	13	2009	Very Easy	3
province	14	2009	Difficult	7
province	14	2009	Easy	11
province	14	2009	No contact	235
province	14	2009	Very Difficult	17
province	14	2009	Very Easy	2
province	18	2009	Difficult	8
province	18	2009	Easy	5
province	18	2009	No contact	224
province	18	2009	Very Difficult	5
province	18	2009	Very Easy	6
province	15	2009	Difficult	2
province	15	2009	Easy	1
province	15	2009	No contact	121
province	15	2009	Very Difficult	2
province	15	2009	Very Easy	2
province	16	2009	Difficult	2
province	16	2009	Easy	1
province	16	2009	No contact	101
province	17	2009	Difficult	4
province	17	2009	Easy	33
province	17	2009	No contact	238
province	17	2009	Very Difficult	5
province	17	2009	Very Easy	8
country	ZW	2009	Very Easy	29
country	ZW	2009	No contact	2104
country	ZW	2009	Very Difficult	74
country	ZW	2009	Easy	101
country	ZW	2009	Difficult	92
\.


--
-- Name: difficulty_to_obtain_household_services pk_difficulty_to_obtain_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_household_services
    ADD CONSTRAINT pk_difficulty_to_obtain_household_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_household_services);


--
-- PostgreSQL database dump complete
--

