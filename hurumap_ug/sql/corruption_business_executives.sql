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

ALTER TABLE IF EXISTS ONLY public.corruption_business_executives DROP CONSTRAINT IF EXISTS pk_corruption_business_executives;
DROP TABLE IF EXISTS public.corruption_business_executives;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_business_executives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_business_executives (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_business_executives character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_business_executives; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_business_executives (geo_level, geo_code, geo_version, corruption_business_executives, total) FROM stdin;
region	114	2014	All of them	59
region	114	2014	Don't know/ Haven't heard enough	110
region	114	2014	Most of them	180
region	114	2014	None	59
region	114	2014	Some of them	256
region	115	2014	All of them	166
region	115	2014	Don't know/ Haven't heard enough	71
region	115	2014	Most of them	181
region	115	2014	None	48
region	115	2014	Some of them	158
region	116	2014	All of them	61
region	116	2014	Don't know/ Haven't heard enough	50
region	116	2014	Most of them	146
region	116	2014	None	60
region	116	2014	Some of them	187
region	117	2014	All of them	46
region	117	2014	Don't know/ Haven't heard enough	116
region	117	2014	Most of them	108
region	117	2014	None	135
region	117	2014	Some of them	202
country	UG	2014	None	302
country	UG	2014	Don't know/ Haven't heard enough	347
country	UG	2014	Some of them	803
country	UG	2014	All of them	332
country	UG	2014	Most of them	615
\.


--
-- Name: corruption_business_executives pk_corruption_business_executives; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_business_executives
    ADD CONSTRAINT pk_corruption_business_executives PRIMARY KEY (geo_level, geo_code, geo_version, corruption_business_executives);


--
-- PostgreSQL database dump complete
--

