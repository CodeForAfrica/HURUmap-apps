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

ALTER TABLE IF EXISTS ONLY public.corruption_tax_officials DROP CONSTRAINT IF EXISTS pk_corruption_tax_officials;
DROP TABLE IF EXISTS public.corruption_tax_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_tax_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_tax_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_tax_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_tax_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_tax_officials (geo_level, geo_code, geo_version, corruption_tax_officials, total) FROM stdin;
province	10	2009	All of them	42
province	10	2009	Don't know/ Haven't heard enough	8
province	10	2009	Most of them	57
province	10	2009	None	15
province	10	2009	Some of them	30
province	19	2009	All of them	101
province	19	2009	Don't know/ Haven't heard enough	18
province	19	2009	Most of them	165
province	19	2009	None	8
province	19	2009	Some of them	156
province	11	2009	All of them	64
province	11	2009	Don't know/ Haven't heard enough	32
province	11	2009	Most of them	81
province	11	2009	None	16
province	11	2009	Some of them	111
province	12	2009	All of them	16
province	12	2009	Don't know/ Haven't heard enough	40
province	12	2009	Most of them	91
province	12	2009	None	9
province	12	2009	Some of them	52
province	13	2009	All of them	26
province	13	2009	Don't know/ Haven't heard enough	19
province	13	2009	Most of them	76
province	13	2009	None	6
province	13	2009	Some of them	121
province	14	2009	All of them	17
province	14	2009	Don't know/ Haven't heard enough	44
province	14	2009	Most of them	50
province	14	2009	None	46
province	14	2009	Some of them	115
province	18	2009	All of them	30
province	18	2009	Don't know/ Haven't heard enough	37
province	18	2009	Most of them	90
province	18	2009	None	7
province	18	2009	Some of them	84
province	15	2009	All of them	12
province	15	2009	Don't know/ Haven't heard enough	73
province	15	2009	Most of them	16
province	15	2009	None	9
province	15	2009	Some of them	18
province	16	2009	All of them	5
province	16	2009	Don't know/ Haven't heard enough	30
province	16	2009	Most of them	20
province	16	2009	None	17
province	16	2009	Some of them	32
province	17	2009	All of them	48
province	17	2009	Don't know/ Haven't heard enough	42
province	17	2009	Most of them	86
province	17	2009	None	16
province	17	2009	Some of them	96
country	ZW	2009	None	149
country	ZW	2009	All of them	361
country	ZW	2009	Most of them	732
country	ZW	2009	Don't know/ Haven't heard enough	343
country	ZW	2009	Some of them	815
\.


--
-- Name: corruption_tax_officials pk_corruption_tax_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_tax_officials
    ADD CONSTRAINT pk_corruption_tax_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_tax_officials);


--
-- PostgreSQL database dump complete
--

