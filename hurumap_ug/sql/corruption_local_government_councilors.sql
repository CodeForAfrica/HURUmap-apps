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

ALTER TABLE IF EXISTS ONLY public.corruption_local_government_councilors DROP CONSTRAINT IF EXISTS pk_corruption_local_government_councilors;
DROP TABLE IF EXISTS public.corruption_local_government_councilors;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_local_government_councilors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_local_government_councilors (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_local_government_councilors character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_local_government_councilors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_local_government_councilors (geo_level, geo_code, geo_version, corruption_local_government_councilors, total) FROM stdin;
region	114	2014	All of them	82
region	114	2014	Don't know/ Haven't heard enough	77
region	114	2014	Most of them	166
region	114	2014	None	44
region	114	2014	Some of them	295
region	115	2014	All of them	131
region	115	2014	Don't know/ Haven't heard enough	38
region	115	2014	Most of them	191
region	115	2014	None	37
region	115	2014	Some of them	227
region	116	2014	All of them	46
region	116	2014	Don't know/ Haven't heard enough	40
region	116	2014	Most of them	126
region	116	2014	None	53
region	116	2014	Some of them	239
region	117	2014	All of them	25
region	117	2014	Don't know/ Haven't heard enough	35
region	117	2014	Missing	1
region	117	2014	Most of them	141
region	117	2014	None	86
region	117	2014	Some of them	320
country	UG	2014	None	220
country	UG	2014	Missing	1
country	UG	2014	Don't know/ Haven't heard enough	190
country	UG	2014	Some of them	1081
country	UG	2014	All of them	284
country	UG	2014	Most of them	624
\.


--
-- Name: corruption_local_government_councilors pk_corruption_local_government_councilors; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_local_government_councilors
    ADD CONSTRAINT pk_corruption_local_government_councilors PRIMARY KEY (geo_level, geo_code, geo_version, corruption_local_government_councilors);


--
-- PostgreSQL database dump complete
--

