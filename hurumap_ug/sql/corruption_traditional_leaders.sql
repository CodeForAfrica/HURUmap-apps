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

ALTER TABLE IF EXISTS ONLY public.corruption_traditional_leaders DROP CONSTRAINT IF EXISTS pk_corruption_traditional_leaders;
DROP TABLE IF EXISTS public.corruption_traditional_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_traditional_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_traditional_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_traditional_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_traditional_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_traditional_leaders (geo_level, geo_code, geo_version, corruption_traditional_leaders, total) FROM stdin;
region	114	2014	All of them	15
region	114	2014	Don't know/ Haven't heard enough	125
region	114	2014	Most of them	49
region	114	2014	None	325
region	114	2014	Some of them	150
region	115	2014	All of them	38
region	115	2014	Don't know/ Haven't heard enough	76
region	115	2014	Most of them	83
region	115	2014	None	161
region	115	2014	Some of them	266
region	116	2014	All of them	22
region	116	2014	Don't know/ Haven't heard enough	17
region	116	2014	Most of them	42
region	116	2014	None	192
region	116	2014	Some of them	231
region	117	2014	All of them	18
region	117	2014	Don't know/ Haven't heard enough	249
region	117	2014	Most of them	19
region	117	2014	None	220
region	117	2014	Some of them	101
country	UG	2014	None	898
country	UG	2014	Don't know/ Haven't heard enough	467
country	UG	2014	Some of them	748
country	UG	2014	All of them	93
country	UG	2014	Most of them	193
\.


--
-- Name: corruption_traditional_leaders pk_corruption_traditional_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_traditional_leaders
    ADD CONSTRAINT pk_corruption_traditional_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_traditional_leaders);


--
-- PostgreSQL database dump complete
--

