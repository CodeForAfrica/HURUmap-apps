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

ALTER TABLE IF EXISTS ONLY public.how_often_use_a_mobile_phone DROP CONSTRAINT IF EXISTS pk_how_often_use_a_mobile_phone;
DROP TABLE IF EXISTS public.how_often_use_a_mobile_phone;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_use_a_mobile_phone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_use_a_mobile_phone (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_use_a_mobile_phone character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_use_a_mobile_phone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_use_a_mobile_phone (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone, total) FROM stdin;
region	114	2014	A few times a month	6
region	114	2014	A few times a week	27
region	114	2014	Everyday	524
region	114	2014	Less than once a month	3
region	114	2014	Never	104
region	115	2014	A few times a month	19
region	115	2014	A few times a week	71
region	115	2014	Don't know	1
region	115	2014	Everyday	299
region	115	2014	Less than once a month	21
region	115	2014	Never	213
region	116	2014	A few times a month	23
region	116	2014	A few times a week	49
region	116	2014	Don't know	6
region	116	2014	Everyday	218
region	116	2014	Less than once a month	36
region	116	2014	Never	172
region	117	2014	A few times a month	18
region	117	2014	A few times a week	92
region	117	2014	Don't know	1
region	117	2014	Everyday	340
region	117	2014	Less than once a month	13
region	117	2014	Never	144
country	UG	2014	A few times a month	66
country	UG	2014	Less than once a month	73
country	UG	2014	Never	633
country	UG	2014	Don't know	8
country	UG	2014	A few times a week	239
country	UG	2014	Everyday	1381
\.


--
-- Name: how_often_use_a_mobile_phone pk_how_often_use_a_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_a_mobile_phone
    ADD CONSTRAINT pk_how_often_use_a_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone);


--
-- PostgreSQL database dump complete
--

