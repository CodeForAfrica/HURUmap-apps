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

ALTER TABLE IF EXISTS ONLY public.level_of_corruption DROP CONSTRAINT IF EXISTS pk_level_of_corruption;
DROP TABLE IF EXISTS public.level_of_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: level_of_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.level_of_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    level_of_corruption character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: level_of_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.level_of_corruption (geo_level, geo_code, geo_version, level_of_corruption, total) FROM stdin;
region	114	2014	Decreased a lot	4
region	114	2014	Decreased somewhat	64
region	114	2014	Don't know	34
region	114	2014	Increased a lot	409
region	114	2014	Increased somewhat	107
region	114	2014	Stayed the same	46
region	115	2014	Decreased a lot	9
region	115	2014	Decreased somewhat	62
region	115	2014	Don't know	42
region	115	2014	Increased a lot	344
region	115	2014	Increased somewhat	105
region	115	2014	Stayed the same	62
region	116	2014	Decreased a lot	16
region	116	2014	Decreased somewhat	109
region	116	2014	Don't know	20
region	116	2014	Increased a lot	252
region	116	2014	Increased somewhat	72
region	116	2014	Stayed the same	35
region	117	2014	Decreased a lot	11
region	117	2014	Decreased somewhat	113
region	117	2014	Don't know	39
region	117	2014	Increased a lot	222
region	117	2014	Increased somewhat	138
region	117	2014	Stayed the same	85
country	UG	2014	Increased somewhat	422
country	UG	2014	Decreased a lot	40
country	UG	2014	Increased a lot	1227
country	UG	2014	Stayed the same	228
country	UG	2014	Decreased somewhat	348
country	UG	2014	Don't know	135
\.


--
-- Name: level_of_corruption pk_level_of_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.level_of_corruption
    ADD CONSTRAINT pk_level_of_corruption PRIMARY KEY (geo_level, geo_code, geo_version, level_of_corruption);


--
-- PostgreSQL database dump complete
--

