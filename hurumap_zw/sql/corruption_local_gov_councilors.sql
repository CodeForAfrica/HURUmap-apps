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

ALTER TABLE IF EXISTS ONLY public.corruption_local_gov_councilors DROP CONSTRAINT IF EXISTS pk_corruption_local_gov_councilors;
DROP TABLE IF EXISTS public.corruption_local_gov_councilors;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_local_gov_councilors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_local_gov_councilors (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_local_gov_councilors character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_local_gov_councilors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_local_gov_councilors (geo_level, geo_code, geo_version, corruption_local_gov_councilors, total) FROM stdin;
province	10	2009	All of them	30
province	10	2009	Don't know/ Haven't heard enough	4
province	10	2009	Most of them	47
province	10	2009	None	13
province	10	2009	Some of them	57
province	19	2009	All of them	69
province	19	2009	Don't know/ Haven't heard enough	16
province	19	2009	Most of them	175
province	19	2009	None	10
province	19	2009	Some of them	178
province	11	2009	All of them	29
province	11	2009	Don't know/ Haven't heard enough	18
province	11	2009	Most of them	93
province	11	2009	None	29
province	11	2009	Some of them	135
province	12	2009	All of them	4
province	12	2009	Don't know/ Haven't heard enough	16
province	12	2009	Most of them	88
province	12	2009	None	12
province	12	2009	Some of them	88
province	13	2009	All of them	21
province	13	2009	Don't know/ Haven't heard enough	7
province	13	2009	Most of them	85
province	13	2009	None	9
province	13	2009	Some of them	126
province	14	2009	All of them	16
province	14	2009	Don't know/ Haven't heard enough	26
province	14	2009	Most of them	63
province	14	2009	None	43
province	14	2009	Some of them	124
province	18	2009	All of them	18
province	18	2009	Don't know/ Haven't heard enough	6
province	18	2009	Most of them	92
province	18	2009	None	21
province	18	2009	Some of them	111
province	15	2009	All of them	18
province	15	2009	Don't know/ Haven't heard enough	39
province	15	2009	Most of them	14
province	15	2009	None	23
province	15	2009	Some of them	34
province	16	2009	All of them	4
province	16	2009	Don't know/ Haven't heard enough	20
province	16	2009	Most of them	18
province	16	2009	None	27
province	16	2009	Some of them	35
province	17	2009	All of them	39
province	17	2009	Don't know/ Haven't heard enough	13
province	17	2009	Most of them	74
province	17	2009	None	27
province	17	2009	Some of them	135
country	ZW	2009	None	214
country	ZW	2009	All of them	248
country	ZW	2009	Most of them	749
country	ZW	2009	Don't know/ Haven't heard enough	165
country	ZW	2009	Some of them	1023
\.


--
-- Name: corruption_local_gov_councilors pk_corruption_local_gov_councilors; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_local_gov_councilors
    ADD CONSTRAINT pk_corruption_local_gov_councilors PRIMARY KEY (geo_level, geo_code, geo_version, corruption_local_gov_councilors);


--
-- PostgreSQL database dump complete
--

