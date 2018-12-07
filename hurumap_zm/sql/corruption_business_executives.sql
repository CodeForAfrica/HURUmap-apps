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

ALTER TABLE IF EXISTS ONLY public.corruption_business_executives DROP CONSTRAINT IF EXISTS pk_corruption_business_executives;
DROP TABLE IF EXISTS public.corruption_business_executives;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_business_executives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_business_executives (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_business_executives character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_business_executives; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_business_executives (geo_level, geo_code, geo_version, corruption_business_executives, total) FROM stdin;
province	1	2010	All of them	14
province	1	2010	Don't know/ Haven't heard enough	26
province	1	2010	Most of them	18
province	1	2010	None	14
province	1	2010	Some of them	47
province	2	2010	All of them	29
province	2	2010	Don't know/ Haven't heard enough	5
province	2	2010	Most of them	45
province	2	2010	None	14
province	2	2010	Some of them	98
province	3	2010	All of them	18
province	3	2010	Don't know/ Haven't heard enough	20
province	3	2010	Most of them	24
province	3	2010	None	16
province	3	2010	Some of them	58
province	4	2010	All of them	3
province	4	2010	Don't know/ Haven't heard enough	4
province	4	2010	Most of them	16
province	4	2010	None	17
province	4	2010	Some of them	47
province	5	2010	All of them	29
province	5	2010	Don't know/ Haven't heard enough	25
province	5	2010	Most of them	53
province	5	2010	None	22
province	5	2010	Some of them	95
province	6	2010	All of them	7
province	6	2010	Don't know/ Haven't heard enough	6
province	6	2010	Most of them	19
province	6	2010	None	15
province	6	2010	Some of them	17
province	8	2010	Don't know/ Haven't heard enough	6
province	8	2010	Most of them	16
province	8	2010	None	3
province	8	2010	Some of them	39
province	7	2010	All of them	16
province	7	2010	Don't know/ Haven't heard enough	18
province	7	2010	Most of them	16
province	7	2010	None	19
province	7	2010	Some of them	27
province	9	2010	All of them	4
province	9	2010	Don't know/ Haven't heard enough	5
province	9	2010	Most of them	40
province	9	2010	None	17
province	9	2010	Some of them	69
province	10	2010	All of them	15
province	10	2010	Don't know/ Haven't heard enough	7
province	10	2010	Most of them	12
province	10	2010	None	16
province	10	2010	Some of them	30
country	ZM	2010	None	153
country	ZM	2010	All of them	135
country	ZM	2010	Most of them	259
country	ZM	2010	Don't know/ Haven't heard enough	122
country	ZM	2010	Some of them	527
\.


--
-- Name: corruption_business_executives pk_corruption_business_executives; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_business_executives
    ADD CONSTRAINT pk_corruption_business_executives PRIMARY KEY (geo_level, geo_code, geo_version, corruption_business_executives);


--
-- PostgreSQL database dump complete
--

