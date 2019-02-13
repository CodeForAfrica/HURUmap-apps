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
province	10	2009	All of them	17
province	10	2009	Don't know/ Haven't heard enough	5
province	10	2009	Most of them	39
province	10	2009	None	16
province	10	2009	Some of them	75
province	19	2009	All of them	40
province	19	2009	Don't know/ Haven't heard enough	29
province	19	2009	Most of them	121
province	19	2009	None	30
province	19	2009	Some of them	228
province	11	2009	All of them	23
province	11	2009	Don't know/ Haven't heard enough	28
province	11	2009	Most of them	78
province	11	2009	None	26
province	11	2009	Some of them	149
province	12	2009	All of them	3
province	12	2009	Don't know/ Haven't heard enough	33
province	12	2009	Most of them	28
province	12	2009	None	22
province	12	2009	Some of them	122
province	13	2009	All of them	18
province	13	2009	Don't know/ Haven't heard enough	11
province	13	2009	Most of them	79
province	13	2009	None	7
province	13	2009	Some of them	132
province	14	2009	All of them	9
province	14	2009	Don't know/ Haven't heard enough	40
province	14	2009	Most of them	46
province	14	2009	None	58
province	14	2009	Some of them	119
province	18	2009	All of them	13
province	18	2009	Don't know/ Haven't heard enough	15
province	18	2009	Most of them	59
province	18	2009	None	26
province	18	2009	Some of them	134
province	15	2009	All of them	7
province	15	2009	Don't know/ Haven't heard enough	50
province	15	2009	Most of them	17
province	15	2009	None	25
province	15	2009	Some of them	29
province	16	2009	All of them	3
province	16	2009	Don't know/ Haven't heard enough	30
province	16	2009	Most of them	11
province	16	2009	None	24
province	16	2009	Some of them	36
province	17	2009	All of them	14
province	17	2009	Don't know/ Haven't heard enough	32
province	17	2009	Most of them	65
province	17	2009	None	33
province	17	2009	Some of them	144
country	ZW	2009	None	267
country	ZW	2009	All of them	147
country	ZW	2009	Most of them	543
country	ZW	2009	Don't know/ Haven't heard enough	273
country	ZW	2009	Some of them	1168
\.


--
-- Name: corruption_judges_and_magistrates pk_corruption_judges_and_magistrates; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_judges_and_magistrates
    ADD CONSTRAINT pk_corruption_judges_and_magistrates PRIMARY KEY (geo_level, geo_code, geo_version, corruption_judges_and_magistrates);


--
-- PostgreSQL database dump complete
--

