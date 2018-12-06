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

ALTER TABLE IF EXISTS ONLY public.elections_ensure_voters_views_are_reflected DROP CONSTRAINT IF EXISTS pk_elections_ensure_voters_views_are_reflected;
DROP TABLE IF EXISTS public.elections_ensure_voters_views_are_reflected;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elections_ensure_voters_views_are_reflected; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elections_ensure_voters_views_are_reflected (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    elections_ensure_voters_views_are_reflected character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: elections_ensure_voters_views_are_reflected; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elections_ensure_voters_views_are_reflected (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected, total) FROM stdin;
region	114	2014	Don't know	68
region	114	2014	Not at all well	52
region	114	2014	Not very well	205
region	114	2014	Very well	67
region	114	2014	Well	272
region	115	2014	Don't know	42
region	115	2014	Not at all well	96
region	115	2014	Not very well	186
region	115	2014	Very well	91
region	115	2014	Well	209
region	116	2014	Don't know	26
region	116	2014	Not at all well	62
region	116	2014	Not very well	185
region	116	2014	Very well	89
region	116	2014	Well	142
region	117	2014	Don't know	34
region	117	2014	Not at all well	80
region	117	2014	Not very well	206
region	117	2014	Very well	111
region	117	2014	Well	177
country	UG	2014	Not very well	782
country	UG	2014	Well	800
country	UG	2014	Don't know	170
country	UG	2014	Not at all well	290
country	UG	2014	Very well	358
\.


--
-- Name: elections_ensure_voters_views_are_reflected pk_elections_ensure_voters_views_are_reflected; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_ensure_voters_views_are_reflected
    ADD CONSTRAINT pk_elections_ensure_voters_views_are_reflected PRIMARY KEY (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected);


--
-- PostgreSQL database dump complete
--

