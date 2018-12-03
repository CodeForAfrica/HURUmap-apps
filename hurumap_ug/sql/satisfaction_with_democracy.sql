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

ALTER TABLE IF EXISTS ONLY public.satisfaction_with_democracy DROP CONSTRAINT IF EXISTS pk_satisfaction_with_democracy;
DROP TABLE IF EXISTS public.satisfaction_with_democracy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: satisfaction_with_democracy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.satisfaction_with_democracy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    satisfaction_with_democracy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: satisfaction_with_democracy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.satisfaction_with_democracy (geo_level, geo_code, geo_version, satisfaction_with_democracy, total) FROM stdin;
region	114	2014	Do not know	148
region	114	2014	Fairly satisfied	189
region	114	2014	Not at all satisfied	76
region	114	2014	Not very satisfied	177
region	114	2014	The country is not a democracy	12
region	114	2014	Very satisfied	62
region	115	2014	Do not know	190
region	115	2014	Fairly satisfied	199
region	115	2014	Not at all satisfied	49
region	115	2014	Not very satisfied	103
region	115	2014	The country is not a democracy	11
region	115	2014	Very satisfied	72
region	116	2014	Do not know	133
region	116	2014	Fairly satisfied	190
region	116	2014	Not at all satisfied	35
region	116	2014	Not very satisfied	69
region	116	2014	The country is not a democracy	5
region	116	2014	Very satisfied	72
region	117	2014	Do not know	69
region	117	2014	Fairly satisfied	258
region	117	2014	Not at all satisfied	20
region	117	2014	Not very satisfied	91
region	117	2014	The country is not a democracy	5
region	117	2014	Very satisfied	165
country	UG	2014	The country is not a democracy	33
country	UG	2014	Not very satisfied	440
country	UG	2014	Do not know	540
country	UG	2014	Fairly satisfied	836
country	UG	2014	Not at all satisfied	180
country	UG	2014	Very satisfied	371
\.


--
-- Name: satisfaction_with_democracy pk_satisfaction_with_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.satisfaction_with_democracy
    ADD CONSTRAINT pk_satisfaction_with_democracy PRIMARY KEY (geo_level, geo_code, geo_version, satisfaction_with_democracy);


--
-- PostgreSQL database dump complete
--

