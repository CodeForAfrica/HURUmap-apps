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

ALTER TABLE IF EXISTS ONLY public.corruption_police DROP CONSTRAINT IF EXISTS pk_corruption_police;
DROP TABLE IF EXISTS public.corruption_police;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_police; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_police (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_police character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_police; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_police (geo_level, geo_code, geo_version, corruption_police, total) FROM stdin;
region	114	2014	All of them	311
region	114	2014	Don't know/ Haven't heard enough	45
region	114	2014	Most of them	183
region	114	2014	None	16
region	114	2014	Some of them	109
region	115	2014	All of them	218
region	115	2014	Don't know/ Haven't heard enough	30
region	115	2014	Most of them	218
region	115	2014	None	24
region	115	2014	Some of them	134
region	116	2014	All of them	114
region	116	2014	Don't know/ Haven't heard enough	31
region	116	2014	Most of them	160
region	116	2014	None	53
region	116	2014	Some of them	146
region	117	2014	All of them	94
region	117	2014	Don't know/ Haven't heard enough	26
region	117	2014	Most of them	206
region	117	2014	None	52
region	117	2014	Some of them	229
country	UG	2014	None	145
country	UG	2014	Don't know/ Haven't heard enough	132
country	UG	2014	Some of them	618
country	UG	2014	All of them	737
country	UG	2014	Most of them	767
\.


--
-- Name: corruption_police pk_corruption_police; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_police
    ADD CONSTRAINT pk_corruption_police PRIMARY KEY (geo_level, geo_code, geo_version, corruption_police);


--
-- PostgreSQL database dump complete
--

