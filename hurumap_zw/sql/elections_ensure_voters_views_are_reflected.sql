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

ALTER TABLE IF EXISTS ONLY public.elections_ensure_voters_views_are_reflected DROP CONSTRAINT IF EXISTS pk_elections_ensure_voters_views_are_reflected;
DROP TABLE IF EXISTS public.elections_ensure_voters_views_are_reflected;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elections_ensure_voters_views_are_reflected; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elections_ensure_voters_views_are_reflected (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    elections_ensure_voters_views_are_reflected character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: elections_ensure_voters_views_are_reflected; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elections_ensure_voters_views_are_reflected (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected, total) FROM stdin;
province	10	2009	Don't know	4
province	10	2009	Not at all well	28
province	10	2009	Not very well	95
province	10	2009	Very well	6
province	10	2009	Well	19
province	19	2009	Don't know	15
province	19	2009	Not at all well	83
province	19	2009	Not very well	227
province	19	2009	Very well	33
province	19	2009	Well	90
province	11	2009	Don't know	26
province	11	2009	Not at all well	59
province	11	2009	Not very well	126
province	11	2009	Very well	33
province	11	2009	Well	60
province	12	2009	Don't know	1
province	12	2009	Not at all well	25
province	12	2009	Not very well	76
province	12	2009	Very well	42
province	12	2009	Well	64
province	13	2009	Don't know	7
province	13	2009	Not at all well	35
province	13	2009	Not very well	111
province	13	2009	Very well	38
province	13	2009	Well	57
province	14	2009	Don't know	24
province	14	2009	Not at all well	18
province	14	2009	Not very well	76
province	14	2009	Very well	53
province	14	2009	Well	101
province	18	2009	Don't know	4
province	18	2009	Not at all well	34
province	18	2009	Not very well	100
province	18	2009	Very well	30
province	18	2009	Well	80
province	15	2009	Don't know	23
province	15	2009	Not at all well	9
province	15	2009	Not very well	43
province	15	2009	Very well	7
province	15	2009	Well	46
province	16	2009	Don't know	12
province	16	2009	Not at all well	15
province	16	2009	Not very well	36
province	16	2009	Very well	16
province	16	2009	Well	25
province	17	2009	Don't know	11
province	17	2009	Not at all well	39
province	17	2009	Not very well	106
province	17	2009	Very well	47
province	17	2009	Well	85
country	ZW	2009	Not very well	996
country	ZW	2009	Well	627
country	ZW	2009	Don't know	127
country	ZW	2009	Not at all well	345
country	ZW	2009	Very well	305
\.


--
-- Name: elections_ensure_voters_views_are_reflected pk_elections_ensure_voters_views_are_reflected; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_ensure_voters_views_are_reflected
    ADD CONSTRAINT pk_elections_ensure_voters_views_are_reflected PRIMARY KEY (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected);


--
-- PostgreSQL database dump complete
--

