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

ALTER TABLE IF EXISTS ONLY public.elections_enable_voters_to_remove_leaders_from_office DROP CONSTRAINT IF EXISTS pk_elections_enable_voters_to_remove_leaders_from_office;
DROP TABLE IF EXISTS public.elections_enable_voters_to_remove_leaders_from_office;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elections_enable_voters_to_remove_leaders_from_office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elections_enable_voters_to_remove_leaders_from_office (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    elections_enable_voters_to_remove_leaders_from_office character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: elections_enable_voters_to_remove_leaders_from_office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elections_enable_voters_to_remove_leaders_from_office (geo_level, geo_code, geo_version, elections_enable_voters_to_remove_leaders_from_office, total) FROM stdin;
province	1	2010	Don't know	87
province	1	2010	Not at all well	81
province	1	2010	Not very well	195
province	1	2010	Very well	220
province	1	2010	Well	248
province	2	2010	Don't know	6
province	2	2010	Not at all well	3
province	2	2010	Not very well	10
province	2	2010	Very well	5
province	2	2010	Well	8
province	3	2010	Don't know	9
province	3	2010	Not very well	5
province	3	2010	Very well	15
province	3	2010	Well	11
province	4	2010	Don't know	1
province	4	2010	Not at all well	8
province	4	2010	Not very well	8
province	4	2010	Very well	13
province	4	2010	Well	10
province	6	2010	Don't know	9
province	6	2010	Missing	1
province	6	2010	Not at all well	3
province	6	2010	Not very well	3
province	6	2010	Very well	21
province	6	2010	Well	11
province	8	2010	Don't know	3
province	8	2010	Not very well	1
province	8	2010	Very well	4
province	8	2010	Well	16
province	7	2010	Don't know	2
province	7	2010	Not at all well	2
province	7	2010	Not very well	9
province	7	2010	Very well	23
province	7	2010	Well	12
province	9	2010	Don't know	2
province	9	2010	Not at all well	7
province	9	2010	Not very well	20
province	9	2010	Very well	14
province	9	2010	Well	37
province	10	2010	Don't know	2
province	10	2010	Not at all well	10
province	10	2010	Not very well	18
province	10	2010	Very well	14
province	10	2010	Well	12
country	ZM	2010	Missing	1
country	ZM	2010	Well	365
country	ZM	2010	Very well	329
country	ZM	2010	Not at all well	114
country	ZM	2010	Don't know	121
country	ZM	2010	Not very well	269
\.


--
-- Name: elections_enable_voters_to_remove_leaders_from_office pk_elections_enable_voters_to_remove_leaders_from_office; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_enable_voters_to_remove_leaders_from_office
    ADD CONSTRAINT pk_elections_enable_voters_to_remove_leaders_from_office PRIMARY KEY (geo_level, geo_code, geo_version, elections_enable_voters_to_remove_leaders_from_office);


--
-- PostgreSQL database dump complete
--

