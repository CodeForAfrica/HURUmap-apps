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

ALTER TABLE IF EXISTS ONLY public.redistributedlandinhectares DROP CONSTRAINT IF EXISTS pk_redistributedlandinhectares;
DROP TABLE IF EXISTS public.redistributedlandinhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: redistributedlandinhectares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redistributedlandinhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    redistributedlandinhectares numeric NOT NULL
);


--
-- Data for Name: redistributedlandinhectares; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redistributedlandinhectares (geo_level, geo_code, geo_version, redistributedlandinhectares) FROM stdin;
province	EC	2016	1314.69
province	FS	2016	11735.83
province	GT	2016	1256.14
province	KZN	2016	13770.03
province	LIM	2016	7337.09
province	MP	2016	6704.34
province	NC	2016	34037.19
province	NW	2016	15017.18
province	WC	2016	859.87
country	ZA	2016	92032.35
\.


--
-- Name: redistributedlandinhectares pk_redistributedlandinhectares; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redistributedlandinhectares
    ADD CONSTRAINT pk_redistributedlandinhectares PRIMARY KEY (geo_level, geo_code, geo_version, redistributedlandinhectares);


--
-- PostgreSQL database dump complete
--

