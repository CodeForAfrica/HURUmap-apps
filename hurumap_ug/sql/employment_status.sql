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

ALTER TABLE IF EXISTS ONLY public.employment_status DROP CONSTRAINT IF EXISTS pk_employment_status;
DROP TABLE IF EXISTS public.employment_status;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employment_status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employment_status (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    employment_status character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: employment_status; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employment_status (geo_level, geo_code, geo_version, employment_status, total) FROM stdin;
region	114	2014	No (looking)	126
region	114	2014	No (not looking)	90
region	114	2014	Yes, full time	330
region	114	2014	Yes, part time	118
region	115	2014	Don't know	3
region	115	2014	No (looking)	122
region	115	2014	No (not looking)	323
region	115	2014	Yes, full time	126
region	115	2014	Yes, part time	50
region	116	2014	Don't know	1
region	116	2014	No (looking)	104
region	116	2014	No (not looking)	347
region	116	2014	Yes, full time	31
region	116	2014	Yes, part time	21
region	117	2014	Don't know	3
region	117	2014	No (looking)	77
region	117	2014	No (not looking)	177
region	117	2014	Yes, full time	294
region	117	2014	Yes, part time	57
country	UG	2014	No (looking)	429
country	UG	2014	Yes, full time	781
country	UG	2014	No (not looking)	937
country	UG	2014	Don't know	7
country	UG	2014	Yes, part time	246
\.


--
-- Name: employment_status pk_employment_status; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employment_status
    ADD CONSTRAINT pk_employment_status PRIMARY KEY (geo_level, geo_code, geo_version, employment_status);


--
-- PostgreSQL database dump complete
--

