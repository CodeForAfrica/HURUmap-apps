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
province	10	2009	All of them	8
province	10	2009	Don't know/ Haven't heard enough	3
province	10	2009	Most of them	24
province	10	2009	None	37
province	10	2009	Some of them	80
province	19	2009	All of them	23
province	19	2009	Don't know/ Haven't heard enough	16
province	19	2009	Most of them	114
province	19	2009	None	48
province	19	2009	Some of them	247
province	11	2009	All of them	9
province	11	2009	Don't know/ Haven't heard enough	19
province	11	2009	Most of them	52
province	11	2009	None	64
province	11	2009	Some of them	160
province	12	2009	All of them	2
province	12	2009	Don't know/ Haven't heard enough	10
province	12	2009	Most of them	19
province	12	2009	None	53
province	12	2009	Some of them	124
province	13	2009	All of them	7
province	13	2009	Don't know/ Haven't heard enough	7
province	13	2009	Most of them	39
province	13	2009	None	44
province	13	2009	Some of them	151
province	14	2009	All of them	5
province	14	2009	Don't know/ Haven't heard enough	21
province	14	2009	Most of them	28
province	14	2009	None	82
province	14	2009	Some of them	136
province	18	2009	All of them	4
province	18	2009	Don't know/ Haven't heard enough	8
province	18	2009	Most of them	44
province	18	2009	None	63
province	18	2009	Some of them	129
province	15	2009	All of them	4
province	15	2009	Don't know/ Haven't heard enough	27
province	15	2009	Most of them	7
province	15	2009	None	58
province	15	2009	Some of them	32
province	16	2009	All of them	1
province	16	2009	Don't know/ Haven't heard enough	13
province	16	2009	Most of them	2
province	16	2009	None	39
province	16	2009	Some of them	49
province	17	2009	All of them	9
province	17	2009	Don't know/ Haven't heard enough	31
province	17	2009	Most of them	41
province	17	2009	None	86
province	17	2009	Some of them	121
country	ZW	2009	None	574
country	ZW	2009	All of them	72
country	ZW	2009	Most of them	370
country	ZW	2009	Don't know/ Haven't heard enough	155
country	ZW	2009	Some of them	1229
\.


--
-- Name: corruption_religious_leaders pk_corruption_religious_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_religious_leaders
    ADD CONSTRAINT pk_corruption_religious_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_religious_leaders);


--
-- PostgreSQL database dump complete
--

