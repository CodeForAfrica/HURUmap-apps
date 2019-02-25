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

ALTER TABLE IF EXISTS ONLY public.corruption_president_office DROP CONSTRAINT IF EXISTS pk_corruption_president_office;
DROP TABLE IF EXISTS public.corruption_president_office;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_president_office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_president_office (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_president_office character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_president_office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_president_office (geo_level, geo_code, geo_version, corruption_president_office, total) FROM stdin;
province	10	2009	All of them	32
province	10	2009	Don't know/ Haven't heard enough	1
province	10	2009	Most of them	55
province	10	2009	None	19
province	10	2009	Some of them	45
province	19	2009	All of them	35
province	19	2009	Don't know/ Haven't heard enough	32
province	19	2009	Most of them	112
province	19	2009	None	47
province	19	2009	Some of them	222
province	11	2009	All of them	38
province	11	2009	Don't know/ Haven't heard enough	39
province	11	2009	Most of them	68
province	11	2009	None	60
province	11	2009	Some of them	99
province	12	2009	All of them	7
province	12	2009	Don't know/ Haven't heard enough	34
province	12	2009	Most of them	26
province	12	2009	None	25
province	12	2009	Some of them	116
province	13	2009	All of them	15
province	13	2009	Don't know/ Haven't heard enough	13
province	13	2009	Most of them	50
province	13	2009	None	20
province	13	2009	Some of them	150
province	14	2009	All of them	13
province	14	2009	Don't know/ Haven't heard enough	57
province	14	2009	Most of them	35
province	14	2009	None	75
province	14	2009	Some of them	92
province	18	2009	All of them	24
province	18	2009	Don't know/ Haven't heard enough	13
province	18	2009	Most of them	67
province	18	2009	None	30
province	18	2009	Some of them	114
province	15	2009	All of them	12
province	15	2009	Don't know/ Haven't heard enough	53
province	15	2009	Most of them	22
province	15	2009	None	25
province	15	2009	Some of them	16
province	16	2009	All of them	3
province	16	2009	Don't know/ Haven't heard enough	22
province	16	2009	Most of them	15
province	16	2009	None	36
province	16	2009	Some of them	28
province	17	2009	All of them	30
province	17	2009	Don't know/ Haven't heard enough	42
province	17	2009	Most of them	57
province	17	2009	None	52
province	17	2009	Some of them	107
country	ZW	2009	None	389
country	ZW	2009	All of them	209
country	ZW	2009	Most of them	507
country	ZW	2009	Don't know/ Haven't heard enough	306
country	ZW	2009	Some of them	989
\.


--
-- Name: corruption_president_office pk_corruption_president_office; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_president_office
    ADD CONSTRAINT pk_corruption_president_office PRIMARY KEY (geo_level, geo_code, geo_version, corruption_president_office);


--
-- PostgreSQL database dump complete
--

