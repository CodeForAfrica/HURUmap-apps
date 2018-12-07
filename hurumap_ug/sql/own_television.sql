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

ALTER TABLE IF EXISTS ONLY public.own_television DROP CONSTRAINT IF EXISTS pk_own_television;
DROP TABLE IF EXISTS public.own_television;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_television; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_television (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_television character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_television; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_television (geo_level, geo_code, geo_version, own_television, total) FROM stdin;
region	114	2014	No, don't own	450
region	114	2014	Yes, do own	214
region	115	2014	Don't know	1
region	115	2014	No, don't own	569
region	115	2014	Yes, do own	54
region	116	2014	Don't know	4
region	116	2014	No, don't own	484
region	116	2014	Yes, do own	16
region	117	2014	No, don't own	556
region	117	2014	Yes, do own	52
country	UG	2014	Yes, do own	336
country	UG	2014	No, don't own	2059
country	UG	2014	Don't know	5
\.


--
-- Name: own_television pk_own_television; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_television
    ADD CONSTRAINT pk_own_television PRIMARY KEY (geo_level, geo_code, geo_version, own_television);


--
-- PostgreSQL database dump complete
--

