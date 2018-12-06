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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_on_economy DROP CONSTRAINT IF EXISTS pk_chinas_influence_on_economy;
DROP TABLE IF EXISTS public.chinas_influence_on_economy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_on_economy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_on_economy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_on_economy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_on_economy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_on_economy (geo_level, geo_code, geo_version, chinas_influence_on_economy, total) FROM stdin;
region	114	2014	A little	70
region	114	2014	A lot	287
region	114	2014	Don't know / Haven't heard enough	120
region	114	2014	None	11
region	114	2014	Some	176
region	115	2014	A little	83
region	115	2014	A lot	193
region	115	2014	Don't know / Haven't heard enough	207
region	115	2014	None	14
region	115	2014	Some	127
region	116	2014	A little	83
region	116	2014	A lot	108
region	116	2014	Don't know / Haven't heard enough	190
region	116	2014	None	8
region	116	2014	Some	115
region	117	2014	A little	46
region	117	2014	A lot	208
region	117	2014	Don't know / Haven't heard enough	224
region	117	2014	None	11
region	117	2014	Some	119
country	UG	2014	A lot	796
country	UG	2014	Don't know / Haven't heard enough	741
country	UG	2014	Some	537
country	UG	2014	None	44
country	UG	2014	A little	282
\.


--
-- Name: chinas_influence_on_economy pk_chinas_influence_on_economy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_on_economy
    ADD CONSTRAINT pk_chinas_influence_on_economy PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_on_economy);


--
-- PostgreSQL database dump complete
--

