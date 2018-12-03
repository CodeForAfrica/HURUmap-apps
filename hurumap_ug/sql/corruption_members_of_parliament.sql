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

ALTER TABLE IF EXISTS ONLY public.corruption_members_of_parliament DROP CONSTRAINT IF EXISTS pk_corruption_members_of_parliament;
DROP TABLE IF EXISTS public.corruption_members_of_parliament;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_members_of_parliament; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_members_of_parliament (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_members_of_parliament character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_members_of_parliament; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_members_of_parliament (geo_level, geo_code, geo_version, corruption_members_of_parliament, total) FROM stdin;
region	114	2014	All of them	74
region	114	2014	Don't know/ Haven't heard enough	83
region	114	2014	Most of them	184
region	114	2014	None	30
region	114	2014	Some of them	293
region	115	2014	All of them	90
region	115	2014	Don't know/ Haven't heard enough	54
region	115	2014	Most of them	216
region	115	2014	None	33
region	115	2014	Some of them	231
region	116	2014	All of them	52
region	116	2014	Don't know/ Haven't heard enough	38
region	116	2014	Most of them	128
region	116	2014	None	61
region	116	2014	Some of them	225
region	117	2014	All of them	24
region	117	2014	Don't know/ Haven't heard enough	52
region	117	2014	Missing	1
region	117	2014	Most of them	101
region	117	2014	None	89
region	117	2014	Some of them	341
country	UG	2014	None	213
country	UG	2014	Missing	1
country	UG	2014	Don't know/ Haven't heard enough	227
country	UG	2014	Some of them	1090
country	UG	2014	All of them	240
country	UG	2014	Most of them	629
\.


--
-- Name: corruption_members_of_parliament pk_corruption_members_of_parliament; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_members_of_parliament
    ADD CONSTRAINT pk_corruption_members_of_parliament PRIMARY KEY (geo_level, geo_code, geo_version, corruption_members_of_parliament);


--
-- PostgreSQL database dump complete
--

