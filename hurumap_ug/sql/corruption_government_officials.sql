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

ALTER TABLE IF EXISTS ONLY public.corruption_government_officials DROP CONSTRAINT IF EXISTS pk_corruption_government_officials;
DROP TABLE IF EXISTS public.corruption_government_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_government_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_government_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_government_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_government_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_government_officials (geo_level, geo_code, geo_version, corruption_government_officials, total) FROM stdin;
region	114	2014	All of them	110
region	114	2014	Don't know/ Haven't heard enough	85
region	114	2014	Most of them	216
region	114	2014	None	18
region	114	2014	Some of them	235
region	115	2014	All of them	112
region	115	2014	Don't know/ Haven't heard enough	45
region	115	2014	Missing	1
region	115	2014	Most of them	222
region	115	2014	None	22
region	115	2014	Some of them	222
region	116	2014	All of them	69
region	116	2014	Don't know/ Haven't heard enough	50
region	116	2014	Most of them	170
region	116	2014	None	27
region	116	2014	Some of them	188
region	117	2014	All of them	26
region	117	2014	Don't know/ Haven't heard enough	40
region	117	2014	Missing	1
region	117	2014	Most of them	187
region	117	2014	None	50
region	117	2014	Some of them	304
country	UG	2014	None	117
country	UG	2014	Missing	2
country	UG	2014	Don't know/ Haven't heard enough	220
country	UG	2014	Some of them	949
country	UG	2014	All of them	317
country	UG	2014	Most of them	795
\.


--
-- Name: corruption_government_officials pk_corruption_government_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_government_officials
    ADD CONSTRAINT pk_corruption_government_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_government_officials);


--
-- PostgreSQL database dump complete
--

