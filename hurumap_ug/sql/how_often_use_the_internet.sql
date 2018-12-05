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

ALTER TABLE IF EXISTS ONLY public.how_often_use_the_internet DROP CONSTRAINT IF EXISTS pk_how_often_use_the_internet;
DROP TABLE IF EXISTS public.how_often_use_the_internet;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_use_the_internet; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_use_the_internet (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_use_the_internet character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_use_the_internet; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_use_the_internet (geo_level, geo_code, geo_version, how_often_use_the_internet, total) FROM stdin;
region	114	2014	A few times a month	19
region	114	2014	A few times a week	43
region	114	2014	Don't know	39
region	114	2014	Everyday	51
region	114	2014	Less than once a month	21
region	114	2014	Never	491
region	115	2014	A few times a month	11
region	115	2014	A few times a week	18
region	115	2014	Don't know	12
region	115	2014	Everyday	26
region	115	2014	Less than once a month	14
region	115	2014	Never	541
region	116	2014	A few times a month	6
region	116	2014	A few times a week	10
region	116	2014	Don't know	50
region	116	2014	Everyday	12
region	116	2014	Less than once a month	3
region	116	2014	Never	423
region	117	2014	A few times a month	8
region	117	2014	A few times a week	25
region	117	2014	Don't know	12
region	117	2014	Everyday	13
region	117	2014	Less than once a month	6
region	117	2014	Never	544
country	UG	2014	A few times a month	44
country	UG	2014	Less than once a month	44
country	UG	2014	Never	1999
country	UG	2014	Don't know	113
country	UG	2014	A few times a week	96
country	UG	2014	Everyday	102
\.


--
-- Name: how_often_use_the_internet pk_how_often_use_the_internet; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_the_internet
    ADD CONSTRAINT pk_how_often_use_the_internet PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_the_internet);


--
-- PostgreSQL database dump complete
--

