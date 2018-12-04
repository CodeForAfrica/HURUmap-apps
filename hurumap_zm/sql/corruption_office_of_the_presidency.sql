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

ALTER TABLE IF EXISTS ONLY public.corruption_office_of_the_presidency DROP CONSTRAINT IF EXISTS pk_corruption_office_of_the_presidency;
DROP TABLE IF EXISTS public.corruption_office_of_the_presidency;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_office_of_the_presidency; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_office_of_the_presidency (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_office_of_the_presidency character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_office_of_the_presidency; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_office_of_the_presidency (geo_level, geo_code, geo_version, corruption_office_of_the_presidency, total) FROM stdin;
province	1	2010	All of them	77
province	1	2010	Don't know/ Haven't heard enough	63
province	1	2010	Most of them	139
province	1	2010	None	119
province	1	2010	Some of them	433
province	2	2010	All of them	6
province	2	2010	Don't know/ Haven't heard enough	1
province	2	2010	Most of them	6
province	2	2010	None	1
province	2	2010	Some of them	18
province	3	2010	All of them	3
province	3	2010	Don't know/ Haven't heard enough	2
province	3	2010	Most of them	5
province	3	2010	None	3
province	3	2010	Some of them	27
province	4	2010	All of them	1
province	4	2010	Don't know/ Haven't heard enough	2
province	4	2010	Most of them	6
province	4	2010	None	7
province	4	2010	Some of them	24
province	6	2010	All of them	5
province	6	2010	Don't know/ Haven't heard enough	4
province	6	2010	Most of them	13
province	6	2010	None	8
province	6	2010	Some of them	18
province	8	2010	Most of them	5
province	8	2010	None	2
province	8	2010	Some of them	17
province	7	2010	All of them	11
province	7	2010	Don't know/ Haven't heard enough	7
province	7	2010	Most of them	7
province	7	2010	None	7
province	7	2010	Some of them	16
province	9	2010	All of them	5
province	9	2010	Don't know/ Haven't heard enough	3
province	9	2010	Most of them	12
province	9	2010	None	8
province	9	2010	Some of them	52
province	10	2010	All of them	7
province	10	2010	Don't know/ Haven't heard enough	7
province	10	2010	Most of them	9
province	10	2010	None	9
province	10	2010	Some of them	24
country	ZM	2010	None	164
country	ZM	2010	All of them	115
country	ZM	2010	Most of them	202
country	ZM	2010	Don't know/ Haven't heard enough	89
country	ZM	2010	Some of them	629
\.


--
-- Name: corruption_office_of_the_presidency pk_corruption_office_of_the_presidency; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_office_of_the_presidency
    ADD CONSTRAINT pk_corruption_office_of_the_presidency PRIMARY KEY (geo_level, geo_code, geo_version, corruption_office_of_the_presidency);


--
-- PostgreSQL database dump complete
--

