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
province	10	2009	All of them	14
province	10	2009	Don't know/ Haven't heard enough	17
province	10	2009	Most of them	39
province	10	2009	None	25
province	10	2009	Some of them	57
province	19	2009	All of them	24
province	19	2009	Don't know/ Haven't heard enough	66
province	19	2009	Most of them	113
province	19	2009	None	37
province	19	2009	Some of them	208
province	11	2009	All of them	11
province	11	2009	Don't know/ Haven't heard enough	45
province	11	2009	Most of them	49
province	11	2009	None	58
province	11	2009	Some of them	141
province	12	2009	All of them	5
province	12	2009	Don't know/ Haven't heard enough	13
province	12	2009	Most of them	23
province	12	2009	None	41
province	12	2009	Some of them	126
province	13	2009	All of them	8
province	13	2009	Don't know/ Haven't heard enough	8
province	13	2009	Most of them	64
province	13	2009	None	16
province	13	2009	Some of them	152
province	14	2009	All of them	7
province	14	2009	Don't know/ Haven't heard enough	38
province	14	2009	Most of them	41
province	14	2009	None	64
province	14	2009	Some of them	122
province	18	2009	All of them	8
province	18	2009	Don't know/ Haven't heard enough	13
province	18	2009	Most of them	54
province	18	2009	None	45
province	18	2009	Some of them	128
province	15	2009	All of them	4
province	15	2009	Don't know/ Haven't heard enough	37
province	15	2009	Most of them	12
province	15	2009	None	50
province	15	2009	Some of them	25
province	16	2009	All of them	3
province	16	2009	Don't know/ Haven't heard enough	15
province	16	2009	Most of them	4
province	16	2009	None	30
province	16	2009	Some of them	52
province	17	2009	All of them	9
province	17	2009	Don't know/ Haven't heard enough	47
province	17	2009	Most of them	44
province	17	2009	None	58
province	17	2009	Some of them	130
country	ZW	2009	None	424
country	ZW	2009	All of them	93
country	ZW	2009	Most of them	443
country	ZW	2009	Don't know/ Haven't heard enough	299
country	ZW	2009	Some of them	1141
\.


--
-- Name: corruption_traditional_leaders pk_corruption_traditional_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_traditional_leaders
    ADD CONSTRAINT pk_corruption_traditional_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_traditional_leaders);


--
-- PostgreSQL database dump complete
--

