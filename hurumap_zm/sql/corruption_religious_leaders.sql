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

ALTER TABLE IF EXISTS ONLY public.corruption_religious_leaders DROP CONSTRAINT IF EXISTS pk_corruption_religious_leaders;
DROP TABLE IF EXISTS public.corruption_religious_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_religious_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_religious_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_religious_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_religious_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_religious_leaders (geo_level, geo_code, geo_version, corruption_religious_leaders, total) FROM stdin;
province	1	2010	All of them	47
province	1	2010	Don't know/ Haven't heard enough	42
province	1	2010	Missing	2
province	1	2010	Most of them	95
province	1	2010	None	240
province	1	2010	Some of them	405
province	2	2010	All of them	2
province	2	2010	Don't know/ Haven't heard enough	1
province	2	2010	Most of them	3
province	2	2010	None	11
province	2	2010	Some of them	15
province	3	2010	All of them	1
province	3	2010	Don't know/ Haven't heard enough	1
province	3	2010	Most of them	6
province	3	2010	None	15
province	3	2010	Some of them	17
province	4	2010	Don't know/ Haven't heard enough	1
province	4	2010	Most of them	2
province	4	2010	None	16
province	4	2010	Some of them	21
province	6	2010	All of them	2
province	6	2010	Don't know/ Haven't heard enough	4
province	6	2010	Most of them	4
province	6	2010	None	17
province	6	2010	Some of them	21
province	8	2010	Don't know/ Haven't heard enough	1
province	8	2010	Most of them	4
province	8	2010	None	3
province	8	2010	Some of them	16
province	7	2010	All of them	8
province	7	2010	Don't know/ Haven't heard enough	1
province	7	2010	Most of them	9
province	7	2010	None	16
province	7	2010	Some of them	14
province	9	2010	Most of them	3
province	9	2010	None	35
province	9	2010	Some of them	42
province	10	2010	All of them	2
province	10	2010	Don't know/ Haven't heard enough	4
province	10	2010	Most of them	7
province	10	2010	None	24
province	10	2010	Some of them	19
country	ZM	2010	None	377
country	ZM	2010	Missing	2
country	ZM	2010	Don't know/ Haven't heard enough	55
country	ZM	2010	Some of them	570
country	ZM	2010	All of them	62
country	ZM	2010	Most of them	133
\.


--
-- Name: corruption_religious_leaders pk_corruption_religious_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_religious_leaders
    ADD CONSTRAINT pk_corruption_religious_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_religious_leaders);


--
-- PostgreSQL database dump complete
--

