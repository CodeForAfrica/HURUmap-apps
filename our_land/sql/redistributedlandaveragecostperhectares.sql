--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

-- Started on 2018-09-12 17:03:52 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 355 (class 1259 OID 71277)
-- Name: redistributedlandaveragecostperhectares; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.redistributedlandaveragecostperhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    redistributedlandaveragecostperhectares numeric
);


ALTER TABLE public.redistributedlandaveragecostperhectares OWNER TO our_land;

--
-- TOC entry 3366 (class 0 OID 71277)
-- Dependencies: 355
-- Data for Name: redistributedlandaveragecostperhectares; Type: TABLE DATA; Schema: public; Owner: our_land
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


-- Completed on 2018-09-12 17:03:52 EAT

--
-- PostgreSQL database dump complete
--

