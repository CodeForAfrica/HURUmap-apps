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

ALTER TABLE IF EXISTS ONLY public.corruption_office_of_the_presidency DROP CONSTRAINT IF EXISTS pk_corruption_office_of_the_presidency;
DROP TABLE IF EXISTS public.corruption_office_of_the_presidency;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_office_of_the_presidency; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_office_of_the_presidency (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_office_of_the_presidency character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_office_of_the_presidency; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_office_of_the_presidency (geo_level, geo_code, geo_version, corruption_office_of_the_presidency, total) FROM stdin;
region	114	2014	All of them	87
region	114	2014	Don't know/ Haven't heard enough	104
region	114	2014	Most of them	141
region	114	2014	None	51
region	114	2014	Some of them	281
region	115	2014	All of them	74
region	115	2014	Don't know/ Haven't heard enough	75
region	115	2014	Most of them	148
region	115	2014	None	67
region	115	2014	Some of them	260
region	116	2014	All of them	44
region	116	2014	Don't know/ Haven't heard enough	52
region	116	2014	Most of them	109
region	116	2014	None	82
region	116	2014	Some of them	217
region	117	2014	All of them	18
region	117	2014	Don't know/ Haven't heard enough	90
region	117	2014	Most of them	51
region	117	2014	None	160
region	117	2014	Some of them	288
country	UG	2014	None	360
country	UG	2014	Don't know/ Haven't heard enough	321
country	UG	2014	Some of them	1046
country	UG	2014	All of them	223
country	UG	2014	Most of them	449
\.


--
-- Name: corruption_office_of_the_presidency pk_corruption_office_of_the_presidency; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_office_of_the_presidency
    ADD CONSTRAINT pk_corruption_office_of_the_presidency PRIMARY KEY (geo_level, geo_code, geo_version, corruption_office_of_the_presidency);


--
-- PostgreSQL database dump complete
--

