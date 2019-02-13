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

ALTER TABLE IF EXISTS ONLY public.corruption_gov_officials DROP CONSTRAINT IF EXISTS pk_corruption_gov_officials;
DROP TABLE IF EXISTS public.corruption_gov_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_gov_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_gov_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_gov_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_gov_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_gov_officials (geo_level, geo_code, geo_version, corruption_gov_officials, total) FROM stdin;
province	10	2009	All of them	37
province	10	2009	Don't know/ Haven't heard enough	2
province	10	2009	Most of them	56
province	10	2009	None	9
province	10	2009	Some of them	48
province	19	2009	All of them	64
province	19	2009	Don't know/ Haven't heard enough	18
province	19	2009	Most of them	169
province	19	2009	None	10
province	19	2009	Some of them	187
province	11	2009	All of them	30
province	11	2009	Don't know/ Haven't heard enough	19
province	11	2009	Most of them	96
province	11	2009	None	28
province	11	2009	Some of them	131
province	12	2009	All of them	4
province	12	2009	Don't know/ Haven't heard enough	16
province	12	2009	Most of them	86
province	12	2009	None	12
province	12	2009	Some of them	90
province	13	2009	All of them	19
province	13	2009	Don't know/ Haven't heard enough	7
province	13	2009	Most of them	72
province	13	2009	None	5
province	13	2009	Some of them	145
province	14	2009	All of them	13
province	14	2009	Don't know/ Haven't heard enough	38
province	14	2009	Most of them	63
province	14	2009	None	37
province	14	2009	Some of them	121
province	18	2009	All of them	17
province	18	2009	Don't know/ Haven't heard enough	5
province	18	2009	Most of them	87
province	18	2009	None	16
province	18	2009	Some of them	123
province	15	2009	All of them	15
province	15	2009	Don't know/ Haven't heard enough	50
province	15	2009	Most of them	19
province	15	2009	None	15
province	15	2009	Some of them	29
province	16	2009	All of them	3
province	16	2009	Don't know/ Haven't heard enough	20
province	16	2009	Most of them	19
province	16	2009	None	28
province	16	2009	Some of them	34
province	17	2009	All of them	39
province	17	2009	Don't know/ Haven't heard enough	19
province	17	2009	Most of them	77
province	17	2009	None	23
province	17	2009	Some of them	130
country	ZW	2009	None	183
country	ZW	2009	All of them	241
country	ZW	2009	Most of them	744
country	ZW	2009	Don't know/ Haven't heard enough	194
country	ZW	2009	Some of them	1038
\.


--
-- Name: corruption_gov_officials pk_corruption_gov_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_gov_officials
    ADD CONSTRAINT pk_corruption_gov_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_gov_officials);


--
-- PostgreSQL database dump complete
--

