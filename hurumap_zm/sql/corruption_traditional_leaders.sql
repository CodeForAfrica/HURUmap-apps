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

ALTER TABLE IF EXISTS ONLY public.corruption_traditional_leaders DROP CONSTRAINT IF EXISTS pk_corruption_traditional_leaders;
DROP TABLE IF EXISTS public.corruption_traditional_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_traditional_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_traditional_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_traditional_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_traditional_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_traditional_leaders (geo_level, geo_code, geo_version, corruption_traditional_leaders, total) FROM stdin;
province	1	2010	All of them	69
province	1	2010	Don't know/ Haven't heard enough	62
province	1	2010	Most of them	113
province	1	2010	None	173
province	1	2010	Some of them	412
province	2	2010	All of them	3
province	2	2010	Don't know/ Haven't heard enough	2
province	2	2010	Most of them	6
province	2	2010	None	5
province	2	2010	Some of them	16
province	3	2010	All of them	1
province	3	2010	Don't know/ Haven't heard enough	1
province	3	2010	Most of them	9
province	3	2010	None	13
province	3	2010	Some of them	16
province	4	2010	All of them	1
province	4	2010	Don't know/ Haven't heard enough	1
province	4	2010	Most of them	4
province	4	2010	None	12
province	4	2010	Some of them	22
province	6	2010	All of them	2
province	6	2010	Don't know/ Haven't heard enough	3
province	6	2010	Most of them	9
province	6	2010	None	14
province	6	2010	Some of them	20
province	8	2010	Don't know/ Haven't heard enough	1
province	8	2010	Most of them	4
province	8	2010	None	2
province	8	2010	Some of them	17
province	7	2010	All of them	8
province	7	2010	Don't know/ Haven't heard enough	1
province	7	2010	Most of them	6
province	7	2010	None	16
province	7	2010	Some of them	17
province	9	2010	Don't know/ Haven't heard enough	1
province	9	2010	Most of them	4
province	9	2010	None	21
province	9	2010	Some of them	54
province	10	2010	All of them	3
province	10	2010	Don't know/ Haven't heard enough	8
province	10	2010	Most of them	8
province	10	2010	None	21
province	10	2010	Some of them	16
country	ZM	2010	None	277
country	ZM	2010	Don't know/ Haven't heard enough	80
country	ZM	2010	Some of them	590
country	ZM	2010	All of them	87
country	ZM	2010	Most of them	163
\.


--
-- Name: corruption_traditional_leaders pk_corruption_traditional_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_traditional_leaders
    ADD CONSTRAINT pk_corruption_traditional_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_traditional_leaders);


--
-- PostgreSQL database dump complete
--

