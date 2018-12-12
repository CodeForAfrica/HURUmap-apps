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

ALTER TABLE IF EXISTS ONLY public.corruption_local_government_councilors DROP CONSTRAINT IF EXISTS pk_corruption_local_government_councilors;
DROP TABLE IF EXISTS public.corruption_local_government_councilors;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_local_government_councilors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_local_government_councilors (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_local_government_councilors character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_local_government_councilors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_local_government_councilors (geo_level, geo_code, geo_version, corruption_local_government_councilors, total) FROM stdin;
province	1	2010	All of them	22
province	1	2010	Don't know/ Haven't heard enough	9
province	1	2010	Most of them	22
province	1	2010	None	13
province	1	2010	Some of them	54
province	2	2010	All of them	39
province	2	2010	Don't know/ Haven't heard enough	5
province	2	2010	Most of them	44
province	2	2010	None	7
province	2	2010	Some of them	97
province	3	2010	All of them	10
province	3	2010	Don't know/ Haven't heard enough	6
province	3	2010	Most of them	27
province	3	2010	None	18
province	3	2010	Some of them	75
province	4	2010	All of them	4
province	4	2010	Don't know/ Haven't heard enough	3
province	4	2010	Most of them	13
province	4	2010	None	11
province	4	2010	Some of them	56
province	5	2010	All of them	28
province	5	2010	Don't know/ Haven't heard enough	15
province	5	2010	Most of them	71
province	5	2010	None	15
province	5	2010	Some of them	95
province	6	2010	All of them	10
province	6	2010	Don't know/ Haven't heard enough	3
province	6	2010	Most of them	22
province	6	2010	None	6
province	6	2010	Some of them	23
province	8	2010	Don't know/ Haven't heard enough	3
province	8	2010	Most of them	9
province	8	2010	None	7
province	8	2010	Some of them	45
province	7	2010	All of them	12
province	7	2010	Don't know/ Haven't heard enough	13
province	7	2010	Most of them	17
province	7	2010	None	21
province	7	2010	Some of them	33
province	9	2010	All of them	8
province	9	2010	Don't know/ Haven't heard enough	3
province	9	2010	Most of them	35
province	9	2010	None	20
province	9	2010	Some of them	70
province	10	2010	All of them	3
province	10	2010	Don't know/ Haven't heard enough	6
province	10	2010	Most of them	16
province	10	2010	None	21
province	10	2010	Some of them	34
country	ZM	2010	None	139
country	ZM	2010	All of them	136
country	ZM	2010	Most of them	276
country	ZM	2010	Don't know/ Haven't heard enough	66
country	ZM	2010	Some of them	582
\.


--
-- Name: corruption_local_government_councilors pk_corruption_local_government_councilors; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_local_government_councilors
    ADD CONSTRAINT pk_corruption_local_government_councilors PRIMARY KEY (geo_level, geo_code, geo_version, corruption_local_government_councilors);


--
-- PostgreSQL database dump complete
--

