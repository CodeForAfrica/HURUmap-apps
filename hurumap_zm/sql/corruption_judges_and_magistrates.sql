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

ALTER TABLE IF EXISTS ONLY public.corruption_judges_and_magistrates DROP CONSTRAINT IF EXISTS pk_corruption_judges_and_magistrates;
DROP TABLE IF EXISTS public.corruption_judges_and_magistrates;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_judges_and_magistrates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_judges_and_magistrates (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_judges_and_magistrates character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_judges_and_magistrates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_judges_and_magistrates (geo_level, geo_code, geo_version, corruption_judges_and_magistrates, total) FROM stdin;
province	1	2010	All of them	100
province	1	2010	Don't know/ Haven't heard enough	64
province	1	2010	Missing	1
province	1	2010	Most of them	160
province	1	2010	None	100
province	1	2010	Some of them	406
province	2	2010	All of them	5
province	2	2010	Don't know/ Haven't heard enough	2
province	2	2010	Most of them	8
province	2	2010	None	2
province	2	2010	Some of them	15
province	3	2010	All of them	2
province	3	2010	Don't know/ Haven't heard enough	3
province	3	2010	Most of them	8
province	3	2010	None	5
province	3	2010	Some of them	22
province	4	2010	All of them	1
province	4	2010	Don't know/ Haven't heard enough	1
province	4	2010	Most of them	10
province	4	2010	None	5
province	4	2010	Some of them	23
province	6	2010	All of them	5
province	6	2010	Don't know/ Haven't heard enough	4
province	6	2010	Missing	1
province	6	2010	Most of them	12
province	6	2010	None	9
province	6	2010	Some of them	17
province	8	2010	All of them	2
province	8	2010	Don't know/ Haven't heard enough	1
province	8	2010	Most of them	6
province	8	2010	Some of them	15
province	7	2010	All of them	12
province	7	2010	Don't know/ Haven't heard enough	3
province	7	2010	Most of them	9
province	7	2010	None	9
province	7	2010	Some of them	15
province	9	2010	All of them	2
province	9	2010	Don't know/ Haven't heard enough	1
province	9	2010	Most of them	8
province	9	2010	None	14
province	9	2010	Some of them	55
province	10	2010	All of them	1
province	10	2010	Don't know/ Haven't heard enough	10
province	10	2010	Most of them	9
province	10	2010	None	14
province	10	2010	Some of them	22
country	ZM	2010	None	158
country	ZM	2010	Missing	2
country	ZM	2010	Don't know/ Haven't heard enough	89
country	ZM	2010	Some of them	590
country	ZM	2010	All of them	130
country	ZM	2010	Most of them	230
\.


--
-- Name: corruption_judges_and_magistrates pk_corruption_judges_and_magistrates; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_judges_and_magistrates
    ADD CONSTRAINT pk_corruption_judges_and_magistrates PRIMARY KEY (geo_level, geo_code, geo_version, corruption_judges_and_magistrates);


--
-- PostgreSQL database dump complete
--

