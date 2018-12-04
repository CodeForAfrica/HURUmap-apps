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

ALTER TABLE IF EXISTS ONLY public.corruption_police DROP CONSTRAINT IF EXISTS pk_corruption_police;
DROP TABLE IF EXISTS public.corruption_police;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_police; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_police (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_police character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_police; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_police (geo_level, geo_code, geo_version, corruption_police, total) FROM stdin;
province	1	2010	All of them	190
province	1	2010	Don't know/ Haven't heard enough	32
province	1	2010	Missing	2
province	1	2010	Most of them	246
province	1	2010	None	52
province	1	2010	Some of them	309
province	2	2010	All of them	6
province	2	2010	Don't know/ Haven't heard enough	1
province	2	2010	Most of them	12
province	2	2010	None	1
province	2	2010	Some of them	12
province	3	2010	All of them	14
province	3	2010	Don't know/ Haven't heard enough	1
province	3	2010	Most of them	7
province	3	2010	None	2
province	3	2010	Some of them	16
province	4	2010	All of them	6
province	4	2010	Most of them	19
province	4	2010	None	1
province	4	2010	Some of them	14
province	6	2010	All of them	11
province	6	2010	Don't know/ Haven't heard enough	3
province	6	2010	Most of them	18
province	6	2010	None	4
province	6	2010	Some of them	12
province	8	2010	All of them	1
province	8	2010	Most of them	9
province	8	2010	Some of them	14
province	7	2010	All of them	10
province	7	2010	Don't know/ Haven't heard enough	4
province	7	2010	Most of them	14
province	7	2010	None	5
province	7	2010	Some of them	15
province	9	2010	All of them	10
province	9	2010	Don't know/ Haven't heard enough	1
province	9	2010	Most of them	14
province	9	2010	None	7
province	9	2010	Some of them	48
province	10	2010	All of them	11
province	10	2010	Don't know/ Haven't heard enough	5
province	10	2010	Most of them	11
province	10	2010	None	10
province	10	2010	Some of them	19
country	ZM	2010	None	82
country	ZM	2010	Missing	2
country	ZM	2010	Don't know/ Haven't heard enough	47
country	ZM	2010	Some of them	459
country	ZM	2010	All of them	259
country	ZM	2010	Most of them	350
\.


--
-- Name: corruption_police pk_corruption_police; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_police
    ADD CONSTRAINT pk_corruption_police PRIMARY KEY (geo_level, geo_code, geo_version, corruption_police);


--
-- PostgreSQL database dump complete
--

