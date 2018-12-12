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

ALTER TABLE IF EXISTS ONLY public.corruption_religious_leaders DROP CONSTRAINT IF EXISTS pk_corruption_religious_leaders;
DROP TABLE IF EXISTS public.corruption_religious_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_religious_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_religious_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_religious_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_religious_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_religious_leaders (geo_level, geo_code, geo_version, corruption_religious_leaders, total) FROM stdin;
region	114	2014	All of them	21
region	114	2014	Don't know/ Haven't heard enough	63
region	114	2014	Most of them	22
region	114	2014	None	415
region	114	2014	Some of them	143
region	115	2014	All of them	26
region	115	2014	Don't know/ Haven't heard enough	50
region	115	2014	Most of them	47
region	115	2014	None	318
region	115	2014	Some of them	183
region	116	2014	All of them	16
region	116	2014	Don't know/ Haven't heard enough	17
region	116	2014	Most of them	32
region	116	2014	None	237
region	116	2014	Some of them	202
region	117	2014	All of them	12
region	117	2014	Don't know/ Haven't heard enough	56
region	117	2014	Most of them	26
region	117	2014	None	403
region	117	2014	Some of them	110
country	UG	2014	None	1373
country	UG	2014	Don't know/ Haven't heard enough	186
country	UG	2014	Some of them	638
country	UG	2014	All of them	75
country	UG	2014	Most of them	127
\.


--
-- Name: corruption_religious_leaders pk_corruption_religious_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_religious_leaders
    ADD CONSTRAINT pk_corruption_religious_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_religious_leaders);


--
-- PostgreSQL database dump complete
--

