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
province	1	2010	All of them	85
province	1	2010	Don't know/ Haven't heard enough	110
province	1	2010	Most of them	180
province	1	2010	None	86
province	1	2010	Some of them	370
province	2	2010	All of them	6
province	2	2010	Don't know/ Haven't heard enough	2
province	2	2010	Most of them	9
province	2	2010	None	2
province	2	2010	Some of them	13
province	3	2010	All of them	1
province	3	2010	Don't know/ Haven't heard enough	8
province	3	2010	Most of them	9
province	3	2010	None	3
province	3	2010	Some of them	19
province	4	2010	All of them	1
province	4	2010	Don't know/ Haven't heard enough	6
province	4	2010	Most of them	7
province	4	2010	None	6
province	4	2010	Some of them	20
province	6	2010	All of them	11
province	6	2010	Don't know/ Haven't heard enough	6
province	6	2010	Most of them	11
province	6	2010	None	4
province	6	2010	Some of them	16
province	8	2010	Don't know/ Haven't heard enough	1
province	8	2010	Most of them	6
province	8	2010	None	2
province	8	2010	Some of them	15
province	7	2010	All of them	11
province	7	2010	Don't know/ Haven't heard enough	5
province	7	2010	Most of them	11
province	7	2010	None	5
province	7	2010	Some of them	16
province	9	2010	All of them	5
province	9	2010	Don't know/ Haven't heard enough	1
province	9	2010	Most of them	12
province	9	2010	None	5
province	9	2010	Some of them	57
province	10	2010	All of them	2
province	10	2010	Don't know/ Haven't heard enough	15
province	10	2010	Most of them	10
province	10	2010	None	10
province	10	2010	Some of them	19
country	ZM	2010	None	123
country	ZM	2010	All of them	122
country	ZM	2010	Most of them	255
country	ZM	2010	Don't know/ Haven't heard enough	154
country	ZM	2010	Some of them	545
\.


--
-- Name: corruption_tax_officials pk_corruption_tax_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_tax_officials
    ADD CONSTRAINT pk_corruption_tax_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_tax_officials);


--
-- PostgreSQL database dump complete
--

