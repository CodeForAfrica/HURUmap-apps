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
province	1	2010	Don't know	11
province	1	2010	Not at all well	24
province	1	2010	Not very well	43
province	1	2010	Very well	27
province	1	2010	Well	15
province	2	2010	Don't know	19
province	2	2010	Not at all well	42
province	2	2010	Not very well	69
province	2	2010	Very well	16
province	2	2010	Well	46
province	3	2010	Don't know	34
province	3	2010	Not at all well	8
province	3	2010	Not very well	30
province	3	2010	Very well	17
province	3	2010	Well	47
province	4	2010	Don't know	3
province	4	2010	Not at all well	9
province	4	2010	Not very well	26
province	4	2010	Very well	24
province	4	2010	Well	25
province	5	2010	Don't know	26
province	5	2010	Not at all well	19
province	5	2010	Not very well	80
province	5	2010	Very well	37
province	5	2010	Well	62
province	6	2010	Don't know	12
province	6	2010	Not at all well	3
province	6	2010	Not very well	11
province	6	2010	Very well	25
province	6	2010	Well	12
province	8	2010	Don't know	4
province	8	2010	Not at all well	3
province	8	2010	Not very well	9
province	8	2010	Very well	9
province	8	2010	Well	39
province	7	2010	Don't know	6
province	7	2010	Not at all well	4
province	7	2010	Not very well	18
province	7	2010	Very well	44
province	7	2010	Well	24
province	9	2010	Don't know	3
province	9	2010	Not at all well	13
province	9	2010	Not very well	29
province	9	2010	Very well	19
province	9	2010	Well	72
province	10	2010	Don't know	6
province	10	2010	Not at all well	6
province	10	2010	Not very well	41
province	10	2010	Very well	18
province	10	2010	Well	9
country	ZM	2010	Not very well	356
country	ZM	2010	Well	351
country	ZM	2010	Don't know	124
country	ZM	2010	Not at all well	131
country	ZM	2010	Very well	236
\.


--
-- Name: elections_ensure_voters_views_are_reflected pk_elections_ensure_voters_views_are_reflected; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_ensure_voters_views_are_reflected
    ADD CONSTRAINT pk_elections_ensure_voters_views_are_reflected PRIMARY KEY (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected);


--
-- PostgreSQL database dump complete
--

