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

ALTER TABLE IF EXISTS ONLY public.election_enable_voters_remove_leaders_from_office DROP CONSTRAINT IF EXISTS pk_election_enable_voters_remove_leaders_from_office;
DROP TABLE IF EXISTS public.election_enable_voters_remove_leaders_from_office;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_enable_voters_remove_leaders_from_office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_enable_voters_remove_leaders_from_office (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_enable_voters_remove_leaders_from_office character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_enable_voters_remove_leaders_from_office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_enable_voters_remove_leaders_from_office (geo_level, geo_code, geo_version, election_enable_voters_remove_leaders_from_office, total) FROM stdin;
region	114	2014	Don't know	74
region	114	2014	Not at all well	88
region	114	2014	Not very well	166
region	114	2014	Very well	86
region	114	2014	Well	250
region	115	2014	Don't know	56
region	115	2014	Not at all well	151
region	115	2014	Not very well	200
region	115	2014	Very well	96
region	115	2014	Well	121
region	116	2014	Don't know	37
region	116	2014	Not at all well	103
region	116	2014	Not very well	140
region	116	2014	Very well	98
region	116	2014	Well	126
region	117	2014	Don't know	35
region	117	2014	Not at all well	129
region	117	2014	Not very well	161
region	117	2014	Very well	150
region	117	2014	Well	133
country	UG	2014	Not very well	667
country	UG	2014	Well	630
country	UG	2014	Don't know	202
country	UG	2014	Not at all well	471
country	UG	2014	Very well	430
\.


--
-- Name: election_enable_voters_remove_leaders_from_office pk_election_enable_voters_remove_leaders_from_office; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_enable_voters_remove_leaders_from_office
    ADD CONSTRAINT pk_election_enable_voters_remove_leaders_from_office PRIMARY KEY (geo_level, geo_code, geo_version, election_enable_voters_remove_leaders_from_office);


--
-- PostgreSQL database dump complete
--

