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

ALTER TABLE IF EXISTS ONLY public.corruption_mps DROP CONSTRAINT IF EXISTS pk_corruption_mps;
DROP TABLE IF EXISTS public.corruption_mps;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_mps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_mps (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_mps character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_mps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_mps (geo_level, geo_code, geo_version, corruption_mps, total) FROM stdin;
province	10	2009	All of them	31
province	10	2009	Don't know/ Haven't heard enough	2
province	10	2009	Most of them	64
province	10	2009	None	12
province	10	2009	Some of them	43
province	19	2009	All of them	45
province	19	2009	Don't know/ Haven't heard enough	21
province	19	2009	Most of them	176
province	19	2009	None	11
province	19	2009	Some of them	195
province	11	2009	All of them	30
province	11	2009	Don't know/ Haven't heard enough	23
province	11	2009	Most of them	96
province	11	2009	None	28
province	11	2009	Some of them	127
province	12	2009	All of them	3
province	12	2009	Don't know/ Haven't heard enough	24
province	12	2009	Most of them	43
province	12	2009	None	14
province	12	2009	Some of them	124
province	13	2009	All of them	18
province	13	2009	Don't know/ Haven't heard enough	8
province	13	2009	Most of them	68
province	13	2009	None	4
province	13	2009	Some of them	150
province	14	2009	All of them	14
province	14	2009	Don't know/ Haven't heard enough	43
province	14	2009	Most of them	67
province	14	2009	None	40
province	14	2009	Some of them	108
province	18	2009	All of them	24
province	18	2009	Don't know/ Haven't heard enough	7
province	18	2009	Most of them	75
province	18	2009	None	19
province	18	2009	Some of them	123
province	15	2009	All of them	11
province	15	2009	Don't know/ Haven't heard enough	52
province	15	2009	Most of them	24
province	15	2009	None	13
province	15	2009	Some of them	28
province	16	2009	All of them	2
province	16	2009	Don't know/ Haven't heard enough	21
province	16	2009	Most of them	19
province	16	2009	None	28
province	16	2009	Some of them	34
province	17	2009	All of them	32
province	17	2009	Don't know/ Haven't heard enough	23
province	17	2009	Most of them	77
province	17	2009	None	32
province	17	2009	Some of them	124
country	ZW	2009	None	201
country	ZW	2009	All of them	210
country	ZW	2009	Most of them	709
country	ZW	2009	Don't know/ Haven't heard enough	224
country	ZW	2009	Some of them	1056
\.


--
-- Name: corruption_mps pk_corruption_mps; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_mps
    ADD CONSTRAINT pk_corruption_mps PRIMARY KEY (geo_level, geo_code, geo_version, corruption_mps);


--
-- PostgreSQL database dump complete
--

