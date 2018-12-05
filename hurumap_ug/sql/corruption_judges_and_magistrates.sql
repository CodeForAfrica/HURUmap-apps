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

ALTER TABLE IF EXISTS ONLY public.corruption_judges_and_magistrates DROP CONSTRAINT IF EXISTS pk_corruption_judges_and_magistrates;
DROP TABLE IF EXISTS public.corruption_judges_and_magistrates;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_judges_and_magistrates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_judges_and_magistrates (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_judges_and_magistrates character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_judges_and_magistrates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_judges_and_magistrates (geo_level, geo_code, geo_version, corruption_judges_and_magistrates, total) FROM stdin;
region	114	2014	All of them	195
region	114	2014	Don't know/ Haven't heard enough	73
region	114	2014	Most of them	180
region	114	2014	None	31
region	114	2014	Some of them	185
region	115	2014	All of them	150
region	115	2014	Don't know/ Haven't heard enough	44
region	115	2014	Most of them	181
region	115	2014	None	52
region	115	2014	Some of them	197
region	116	2014	All of them	64
region	116	2014	Don't know/ Haven't heard enough	62
region	116	2014	Most of them	156
region	116	2014	None	51
region	116	2014	Some of them	171
region	117	2014	All of them	47
region	117	2014	Don't know/ Haven't heard enough	72
region	117	2014	Most of them	120
region	117	2014	None	95
region	117	2014	Some of them	273
country	UG	2014	None	229
country	UG	2014	Don't know/ Haven't heard enough	251
country	UG	2014	Some of them	826
country	UG	2014	All of them	456
country	UG	2014	Most of them	637
\.


--
-- Name: corruption_judges_and_magistrates pk_corruption_judges_and_magistrates; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_judges_and_magistrates
    ADD CONSTRAINT pk_corruption_judges_and_magistrates PRIMARY KEY (geo_level, geo_code, geo_version, corruption_judges_and_magistrates);


--
-- PostgreSQL database dump complete
--

