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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_positive_or_negative DROP CONSTRAINT IF EXISTS pk_chinas_influence_positive_or_negative;
DROP TABLE IF EXISTS public.chinas_influence_positive_or_negative;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_positive_or_negative; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_positive_or_negative (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_positive_or_negative character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_positive_or_negative; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_positive_or_negative (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative, total) FROM stdin;
province	1	2010	Don't know / Haven't heard enough	6
province	1	2010	Neither positive nor negative	11
province	1	2010	Somewhat negative	4
province	1	2010	Somewhat positive	33
province	1	2010	Very negative	7
province	1	2010	Very positive	59
province	2	2010	Don't know / Haven't heard enough	7
province	2	2010	Neither positive nor negative	8
province	2	2010	Somewhat negative	9
province	2	2010	Somewhat positive	60
province	2	2010	Very negative	15
province	2	2010	Very positive	93
province	3	2010	Don't know / Haven't heard enough	30
province	3	2010	Neither positive nor negative	9
province	3	2010	Somewhat negative	4
province	3	2010	Somewhat positive	14
province	3	2010	Very negative	4
province	3	2010	Very positive	75
province	4	2010	Don't know / Haven't heard enough	12
province	4	2010	Neither positive nor negative	8
province	4	2010	Somewhat negative	6
province	4	2010	Somewhat positive	21
province	4	2010	Very negative	3
province	4	2010	Very positive	36
province	5	2010	Don't know / Haven't heard enough	20
province	5	2010	Neither positive nor negative	12
province	5	2010	Somewhat negative	14
province	5	2010	Somewhat positive	58
province	5	2010	Very negative	9
province	5	2010	Very positive	111
province	6	2010	Don't know / Haven't heard enough	8
province	6	2010	Neither positive nor negative	6
province	6	2010	Somewhat negative	1
province	6	2010	Somewhat positive	12
province	6	2010	Very negative	1
province	6	2010	Very positive	36
province	8	2010	Don't know / Haven't heard enough	7
province	8	2010	Neither positive nor negative	3
province	8	2010	Somewhat negative	3
province	8	2010	Somewhat positive	13
province	8	2010	Very positive	38
province	7	2010	Don't know / Haven't heard enough	15
province	7	2010	Neither positive nor negative	6
province	7	2010	Somewhat negative	6
province	7	2010	Somewhat positive	23
province	7	2010	Very negative	9
province	7	2010	Very positive	37
province	9	2010	Don't know / Haven't heard enough	8
province	9	2010	Neither positive nor negative	12
province	9	2010	Somewhat negative	6
province	9	2010	Somewhat positive	29
province	9	2010	Very negative	23
province	9	2010	Very positive	58
province	10	2010	Don't know / Haven't heard enough	2
province	10	2010	Neither positive nor negative	8
province	10	2010	Somewhat negative	2
province	10	2010	Somewhat positive	14
province	10	2010	Very negative	1
province	10	2010	Very positive	53
country	ZM	2010	Don't know / Haven't heard enough	115
country	ZM	2010	Somewhat positive	277
country	ZM	2010	Somewhat negative	55
country	ZM	2010	Neither positive nor negative	83
country	ZM	2010	Very negative	72
country	ZM	2010	Very positive	596
\.


--
-- Name: chinas_influence_positive_or_negative pk_chinas_influence_positive_or_negative; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_positive_or_negative
    ADD CONSTRAINT pk_chinas_influence_positive_or_negative PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative);


--
-- PostgreSQL database dump complete
--

