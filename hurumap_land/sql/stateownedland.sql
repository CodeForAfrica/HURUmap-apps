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

ALTER TABLE IF EXISTS ONLY public.stateownedland DROP CONSTRAINT IF EXISTS pk_redistributedlandaveragecostperhectares;
DROP TABLE IF EXISTS public.stateownedland;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: stateownedland; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stateownedland (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    stateownedland numeric NOT NULL
);


--
-- Data for Name: stateownedland; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stateownedland (geo_level, geo_code, geo_version, stateownedland) FROM stdin;
province	EC	2016	1510553
province	FS	2016	845084
province	GT	2016	304137
province	KZN	2016	4695245
province	LIM	2016	2551790
province	MP	2016	1875146
province	NC	2016  1829347
province	NW	2016	2409778
province	WC	2016	1040801
country	ZA	2016	17061882
\.

--
-- Name: stateownedland pk_stateownedland; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stateownedland
    ADD CONSTRAINT pk_stateownedland PRIMARY KEY (geo_level, geo_code, geo_version, stateownedland);


--
-- PostgreSQL database dump complete
--

