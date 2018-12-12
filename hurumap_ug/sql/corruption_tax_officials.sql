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

ALTER TABLE IF EXISTS ONLY public.corruption_tax_officials DROP CONSTRAINT IF EXISTS pk_corruption_tax_officials;
DROP TABLE IF EXISTS public.corruption_tax_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_tax_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_tax_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_tax_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_tax_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_tax_officials (geo_level, geo_code, geo_version, corruption_tax_officials, total) FROM stdin;
region	114	2014	All of them	184
region	114	2014	Don't know/ Haven't heard enough	108
region	114	2014	Most of them	179
region	114	2014	None	26
region	114	2014	Some of them	167
region	115	2014	All of them	129
region	115	2014	Don't know/ Haven't heard enough	65
region	115	2014	Most of them	188
region	115	2014	None	50
region	115	2014	Some of them	192
region	116	2014	All of them	115
region	116	2014	Don't know/ Haven't heard enough	57
region	116	2014	Most of them	165
region	116	2014	None	27
region	116	2014	Some of them	140
region	117	2014	All of them	35
region	117	2014	Don't know/ Haven't heard enough	111
region	117	2014	Most of them	137
region	117	2014	None	88
region	117	2014	Some of them	236
country	UG	2014	None	191
country	UG	2014	Don't know/ Haven't heard enough	341
country	UG	2014	Some of them	735
country	UG	2014	All of them	463
country	UG	2014	Most of them	669
\.


--
-- Name: corruption_tax_officials pk_corruption_tax_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_tax_officials
    ADD CONSTRAINT pk_corruption_tax_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_tax_officials);


--
-- PostgreSQL database dump complete
--

