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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_positive_or_negative DROP CONSTRAINT IF EXISTS pk_chinas_influence_positive_or_negative;
DROP TABLE IF EXISTS public.chinas_influence_positive_or_negative;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_positive_or_negative; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_positive_or_negative (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_positive_or_negative character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_positive_or_negative; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_positive_or_negative (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative, total) FROM stdin;
region	114	2014	Don't know / Haven't heard enough	128
region	114	2014	Neither positive nor negative	24
region	114	2014	Somewhat negative	41
region	114	2014	Somewhat positive	248
region	114	2014	Very negative	35
region	114	2014	Very positive	188
region	115	2014	Don't know / Haven't heard enough	215
region	115	2014	Neither positive nor negative	23
region	115	2014	Somewhat negative	23
region	115	2014	Somewhat positive	186
region	115	2014	Very negative	20
region	115	2014	Very positive	157
region	116	2014	Don't know / Haven't heard enough	188
region	116	2014	Neither positive nor negative	18
region	116	2014	Somewhat negative	23
region	116	2014	Somewhat positive	159
region	116	2014	Very negative	13
region	116	2014	Very positive	103
region	117	2014	Don't know / Haven't heard enough	226
region	117	2014	Neither positive nor negative	24
region	117	2014	Somewhat negative	19
region	117	2014	Somewhat positive	193
region	117	2014	Very negative	7
region	117	2014	Very positive	139
country	UG	2014	Don't know / Haven't heard enough	757
country	UG	2014	Somewhat positive	786
country	UG	2014	Somewhat negative	106
country	UG	2014	Neither positive nor negative	89
country	UG	2014	Very negative	75
country	UG	2014	Very positive	587
\.


--
-- Name: chinas_influence_positive_or_negative pk_chinas_influence_positive_or_negative; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_positive_or_negative
    ADD CONSTRAINT pk_chinas_influence_positive_or_negative PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative);


--
-- PostgreSQL database dump complete
--

