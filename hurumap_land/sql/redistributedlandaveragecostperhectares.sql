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

ALTER TABLE IF EXISTS ONLY public.redistributedlandaveragecostperhectares DROP CONSTRAINT IF EXISTS pk_redistributedlandaveragecostperhectares;
DROP TABLE IF EXISTS public.redistributedlandaveragecostperhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: redistributedlandaveragecostperhectares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redistributedlandaveragecostperhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    redistributedlandaveragecostperhectares numeric NOT NULL
);


--
-- Data for Name: redistributedlandaveragecostperhectares; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redistributedlandaveragecostperhectares (geo_level, geo_code, geo_version, redistributedlandaveragecostperhectares) FROM stdin;
province	EC	2016	16006.77
province	FS	2016	8314.66
province	GT	2016	18342.58
province	KZN	2016	9767.2
province	LIM	2016	2060.08
province	MP	2016	9712.52
province	NC	2016	2343.03
province	NW	2016	4069.67
province	WC	2016	17212
country	ZA	2016	5563.86
\.


--
-- Name: redistributedlandaveragecostperhectares pk_redistributedlandaveragecostperhectares; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redistributedlandaveragecostperhectares
    ADD CONSTRAINT pk_redistributedlandaveragecostperhectares PRIMARY KEY (geo_level, geo_code, geo_version, redistributedlandaveragecostperhectares);


--
-- PostgreSQL database dump complete
--

