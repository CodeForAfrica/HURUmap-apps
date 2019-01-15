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

ALTER TABLE IF EXISTS ONLY public.election_enable_voters_remove_leaders_from_office DROP CONSTRAINT IF EXISTS pk_election_enable_voters_remove_leaders_from_office;
DROP TABLE IF EXISTS public.election_enable_voters_remove_leaders_from_office;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_enable_voters_remove_leaders_from_office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_enable_voters_remove_leaders_from_office (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_enable_voters_remove_leaders_from_office character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_enable_voters_remove_leaders_from_office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_enable_voters_remove_leaders_from_office (geo_level, geo_code, geo_version, election_enable_voters_remove_leaders_from_office, total) FROM stdin;
province	1	2010	Don't know	16
province	1	2010	Not at all well	20
province	1	2010	Not very well	29
province	1	2010	Very well	35
province	1	2010	Well	20
province	2	2010	Don't know	19
province	2	2010	Not at all well	28
province	2	2010	Not very well	60
province	2	2010	Very well	29
province	2	2010	Well	56
province	3	2010	Don't know	30
province	3	2010	Not at all well	2
province	3	2010	Not very well	9
province	3	2010	Very well	46
province	3	2010	Well	49
province	4	2010	Don't know	4
province	4	2010	Not at all well	13
province	4	2010	Not very well	20
province	4	2010	Very well	29
province	4	2010	Well	21
province	5	2010	Don't know	21
province	5	2010	Not at all well	21
province	5	2010	Not very well	62
province	5	2010	Very well	55
province	5	2010	Well	65
province	6	2010	Don't know	12
province	6	2010	Not at all well	5
province	6	2010	Not very well	9
province	6	2010	Very well	24
province	6	2010	Well	13
province	8	2010	Don't know	6
province	8	2010	Not very well	6
province	8	2010	Very well	10
province	8	2010	Well	42
province	7	2010	Don't know	6
province	7	2010	Not at all well	5
province	7	2010	Not very well	10
province	7	2010	Very well	57
province	7	2010	Well	18
province	9	2010	Don't know	2
province	9	2010	Not at all well	8
province	9	2010	Not very well	35
province	9	2010	Very well	24
province	9	2010	Well	67
province	10	2010	Don't know	5
province	10	2010	Not at all well	12
province	10	2010	Not very well	29
province	10	2010	Very well	20
province	10	2010	Well	14
country	ZM	2010	Not very well	269
country	ZM	2010	Well	365
country	ZM	2010	Don't know	121
country	ZM	2010	Not at all well	114
country	ZM	2010	Very well	329
\.


--
-- Name: election_enable_voters_remove_leaders_from_office pk_election_enable_voters_remove_leaders_from_office; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_enable_voters_remove_leaders_from_office
    ADD CONSTRAINT pk_election_enable_voters_remove_leaders_from_office PRIMARY KEY (geo_level, geo_code, geo_version, election_enable_voters_remove_leaders_from_office);


--
-- PostgreSQL database dump complete
--

