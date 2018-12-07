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

ALTER TABLE IF EXISTS ONLY public.corruption_government_officials DROP CONSTRAINT IF EXISTS pk_corruption_government_officials;
DROP TABLE IF EXISTS public.corruption_government_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_government_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_government_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_government_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_government_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_government_officials (geo_level, geo_code, geo_version, corruption_government_officials, total) FROM stdin;
province	1	2010	All of them	12
province	1	2010	Don't know/ Haven't heard enough	8
province	1	2010	Most of them	29
province	1	2010	None	12
province	1	2010	Some of them	59
province	2	2010	All of them	35
province	2	2010	Don't know/ Haven't heard enough	5
province	2	2010	Most of them	43
province	2	2010	None	8
province	2	2010	Some of them	101
province	3	2010	All of them	6
province	3	2010	Don't know/ Haven't heard enough	6
province	3	2010	Most of them	24
province	3	2010	None	19
province	3	2010	Some of them	81
province	4	2010	All of them	3
province	4	2010	Don't know/ Haven't heard enough	2
province	4	2010	Most of them	16
province	4	2010	None	12
province	4	2010	Some of them	54
province	5	2010	All of them	22
province	5	2010	Don't know/ Haven't heard enough	15
province	5	2010	Most of them	58
province	5	2010	None	11
province	5	2010	Some of them	118
province	6	2010	All of them	5
province	6	2010	Don't know/ Haven't heard enough	3
province	6	2010	Most of them	26
province	6	2010	None	5
province	6	2010	Some of them	25
province	8	2010	All of them	1
province	8	2010	Don't know/ Haven't heard enough	3
province	8	2010	Most of them	11
province	8	2010	None	3
province	8	2010	Some of them	46
province	7	2010	All of them	14
province	7	2010	Don't know/ Haven't heard enough	16
province	7	2010	Most of them	15
province	7	2010	None	24
province	7	2010	Some of them	27
province	9	2010	All of them	11
province	9	2010	Don't know/ Haven't heard enough	3
province	9	2010	Most of them	42
province	9	2010	None	11
province	9	2010	Some of them	69
province	10	2010	All of them	5
province	10	2010	Don't know/ Haven't heard enough	7
province	10	2010	Most of them	17
province	10	2010	None	17
province	10	2010	Some of them	34
country	ZM	2010	None	122
country	ZM	2010	All of them	114
country	ZM	2010	Most of them	281
country	ZM	2010	Don't know/ Haven't heard enough	68
country	ZM	2010	Some of them	614
\.


--
-- Name: corruption_government_officials pk_corruption_government_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_government_officials
    ADD CONSTRAINT pk_corruption_government_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_government_officials);


--
-- PostgreSQL database dump complete
--

