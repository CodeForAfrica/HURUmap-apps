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
province	10	2009	Difficult	19
province	10	2009	Easy	22
province	10	2009	No contact	93
province	10	2009	Very Difficult	8
province	10	2009	Very Easy	10
province	19	2009	Difficult	58
province	19	2009	Easy	73
province	19	2009	No contact	282
province	19	2009	Very Difficult	16
province	19	2009	Very Easy	19
province	11	2009	Difficult	23
province	11	2009	Easy	56
province	11	2009	No contact	180
province	11	2009	Very Difficult	13
province	11	2009	Very Easy	32
province	12	2009	Difficult	8
province	12	2009	Easy	49
province	12	2009	No contact	107
province	12	2009	Very Difficult	20
province	12	2009	Very Easy	24
province	13	2009	Difficult	11
province	13	2009	Easy	15
province	13	2009	No contact	148
province	13	2009	Very Difficult	11
province	13	2009	Very Easy	63
province	14	2009	Difficult	20
province	14	2009	Don't Know	1
province	14	2009	Easy	48
province	14	2009	No contact	129
province	14	2009	Very Difficult	23
province	14	2009	Very Easy	51
province	18	2009	Difficult	19
province	18	2009	Easy	38
province	18	2009	No contact	149
province	18	2009	Very Difficult	14
province	18	2009	Very Easy	28
province	15	2009	Difficult	8
province	15	2009	Easy	13
province	15	2009	No contact	84
province	15	2009	Very Difficult	5
province	15	2009	Very Easy	18
province	16	2009	Difficult	9
province	16	2009	Easy	30
province	16	2009	No contact	55
province	16	2009	Very Difficult	3
province	16	2009	Very Easy	7
province	17	2009	Difficult	17
province	17	2009	Easy	87
province	17	2009	No contact	154
province	17	2009	Very Difficult	12
province	17	2009	Very Easy	18
country	ZW	2009	Very Easy	270
country	ZW	2009	No contact	1381
country	ZW	2009	Easy	431
country	ZW	2009	Very Difficult	125
country	ZW	2009	Don't Know	1
country	ZW	2009	Difficult	192
\.


--
-- Name: difficulty_to_obtain_public_school_services pk_difficulty_to_obtain_public_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_public_school_services
    ADD CONSTRAINT pk_difficulty_to_obtain_public_school_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_public_school_services);


--
-- PostgreSQL database dump complete
--

