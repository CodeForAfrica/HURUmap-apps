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

ALTER TABLE IF EXISTS ONLY public.corruption_members_of_parliament DROP CONSTRAINT IF EXISTS pk_corruption_members_of_parliament;
DROP TABLE IF EXISTS public.corruption_members_of_parliament;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_members_of_parliament; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_members_of_parliament (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_members_of_parliament character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_members_of_parliament; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_members_of_parliament (geo_level, geo_code, geo_version, corruption_members_of_parliament, total) FROM stdin;
province	1	2010	All of them	18
province	1	2010	Don't know/ Haven't heard enough	9
province	1	2010	Most of them	31
province	1	2010	None	16
province	1	2010	Some of them	46
province	2	2010	All of them	44
province	2	2010	Don't know/ Haven't heard enough	2
province	2	2010	Most of them	41
province	2	2010	None	7
province	2	2010	Some of them	98
province	3	2010	All of them	4
province	3	2010	Don't know/ Haven't heard enough	9
province	3	2010	Most of them	31
province	3	2010	None	15
province	3	2010	Some of them	77
province	4	2010	All of them	3
province	4	2010	Don't know/ Haven't heard enough	3
province	4	2010	Most of them	18
province	4	2010	None	12
province	4	2010	Some of them	51
province	5	2010	All of them	22
province	5	2010	Don't know/ Haven't heard enough	17
province	5	2010	Most of them	51
province	5	2010	None	12
province	5	2010	Some of them	122
province	6	2010	All of them	7
province	6	2010	Don't know/ Haven't heard enough	3
province	6	2010	Most of them	20
province	6	2010	None	8
province	6	2010	Some of them	26
province	8	2010	All of them	2
province	8	2010	Don't know/ Haven't heard enough	6
province	8	2010	Most of them	7
province	8	2010	None	3
province	8	2010	Some of them	46
province	7	2010	All of them	13
province	7	2010	Don't know/ Haven't heard enough	16
province	7	2010	Most of them	18
province	7	2010	None	21
province	7	2010	Some of them	28
province	9	2010	All of them	14
province	9	2010	Don't know/ Haven't heard enough	3
province	9	2010	Most of them	34
province	9	2010	None	16
province	9	2010	Some of them	69
province	10	2010	All of them	6
province	10	2010	Don't know/ Haven't heard enough	6
province	10	2010	Most of them	19
province	10	2010	None	16
province	10	2010	Some of them	33
country	ZM	2010	None	126
country	ZM	2010	All of them	133
country	ZM	2010	Most of them	270
country	ZM	2010	Don't know/ Haven't heard enough	74
country	ZM	2010	Some of them	596
\.


--
-- Name: corruption_members_of_parliament pk_corruption_members_of_parliament; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_members_of_parliament
    ADD CONSTRAINT pk_corruption_members_of_parliament PRIMARY KEY (geo_level, geo_code, geo_version, corruption_members_of_parliament);


--
-- PostgreSQL database dump complete
--

