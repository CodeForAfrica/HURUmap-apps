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
province	1	2010	Don't know / Haven't heard enough	75
province	1	2010	Neither positive nor negative	57
province	1	2010	Somewhat negative	38
province	1	2010	Somewhat positive	198
province	1	2010	Very negative	46
province	1	2010	Very positive	417
province	2	2010	Don't know / Haven't heard enough	5
province	2	2010	Neither positive nor negative	2
province	2	2010	Somewhat positive	11
province	2	2010	Very negative	5
province	2	2010	Very positive	9
province	3	2010	Don't know / Haven't heard enough	10
province	3	2010	Neither positive nor negative	3
province	3	2010	Somewhat negative	1
province	3	2010	Somewhat positive	5
province	3	2010	Very negative	1
province	3	2010	Very positive	20
province	4	2010	Don't know / Haven't heard enough	7
province	4	2010	Missing	1
province	4	2010	Neither positive nor negative	1
province	4	2010	Somewhat negative	4
province	4	2010	Somewhat positive	8
province	4	2010	Very negative	2
province	4	2010	Very positive	17
province	6	2010	Don't know / Haven't heard enough	8
province	6	2010	Neither positive nor negative	5
province	6	2010	Somewhat negative	1
province	6	2010	Somewhat positive	9
province	6	2010	Very negative	1
province	6	2010	Very positive	24
province	8	2010	Don't know / Haven't heard enough	1
province	8	2010	Somewhat negative	1
province	8	2010	Somewhat positive	4
province	8	2010	Very positive	18
province	7	2010	Don't know / Haven't heard enough	3
province	7	2010	Neither positive nor negative	4
province	7	2010	Somewhat negative	3
province	7	2010	Somewhat positive	16
province	7	2010	Very negative	5
province	7	2010	Very positive	17
province	9	2010	Don't know / Haven't heard enough	4
province	9	2010	Neither positive nor negative	6
province	9	2010	Somewhat negative	5
province	9	2010	Somewhat positive	17
province	9	2010	Very negative	11
province	9	2010	Very positive	37
province	10	2010	Don't know / Haven't heard enough	2
province	10	2010	Neither positive nor negative	5
province	10	2010	Somewhat negative	2
province	10	2010	Somewhat positive	9
province	10	2010	Very negative	1
province	10	2010	Very positive	37
country	ZM	2010	Don't know / Haven't heard enough	115
country	ZM	2010	Somewhat positive	277
country	ZM	2010	Missing	1
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

