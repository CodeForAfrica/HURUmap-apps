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

ALTER TABLE IF EXISTS ONLY public.extent_of_democracy DROP CONSTRAINT IF EXISTS pk_extent_of_democracy;
DROP TABLE IF EXISTS public.extent_of_democracy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: extent_of_democracy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.extent_of_democracy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    extent_of_democracy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: extent_of_democracy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.extent_of_democracy (geo_level, geo_code, geo_version, extent_of_democracy, total) FROM stdin;
region	114	2014	A democracy, but with minor problems	217
region	114	2014	A democracy, with major problems	177
region	114	2014	A full democracy	65
region	114	2014	Do not understand question / democracy	46
region	114	2014	Don't know	109
region	114	2014	Not a democracy	50
region	115	2014	A democracy, but with minor problems	209
region	115	2014	A democracy, with major problems	99
region	115	2014	A full democracy	80
region	115	2014	Do not understand question / democracy	64
region	115	2014	Don't know	142
region	115	2014	Not a democracy	30
region	116	2014	A democracy, but with minor problems	177
region	116	2014	A democracy, with major problems	100
region	116	2014	A full democracy	51
region	116	2014	Do not understand question / democracy	36
region	116	2014	Don't know	116
region	116	2014	Not a democracy	24
region	117	2014	A democracy, but with minor problems	282
region	117	2014	A democracy, with major problems	74
region	117	2014	A full democracy	157
region	117	2014	Do not understand question / democracy	12
region	117	2014	Don't know	71
region	117	2014	Not a democracy	12
country	UG	2014	A democracy, but with minor problems	885
country	UG	2014	Not a democracy	116
country	UG	2014	Do not understand question / democracy	158
country	UG	2014	A democracy, with major problems	450
country	UG	2014	Don't know	438
country	UG	2014	A full democracy	353
\.


--
-- Name: extent_of_democracy pk_extent_of_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extent_of_democracy
    ADD CONSTRAINT pk_extent_of_democracy PRIMARY KEY (geo_level, geo_code, geo_version, extent_of_democracy);


--
-- PostgreSQL database dump complete
--

