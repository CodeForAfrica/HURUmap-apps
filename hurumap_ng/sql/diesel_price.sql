--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.faac DROP CONSTRAINT IF EXISTS faac_pkey;
DROP TABLE IF EXISTS public.faac;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: faac; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.faac (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: faac; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.faac (geo_level, geo_code, geo_version, year, total) FROM stdin;

\.


--
-- Name: faac faac_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faac
    ADD CONSTRAINT faac_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
