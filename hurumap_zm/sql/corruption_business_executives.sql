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
province	1	2010	All of them	99
province	1	2010	Don't know/ Haven't heard enough	96
province	1	2010	Most of them	171
province	1	2010	None	100
province	1	2010	Some of them	362
province	2	2010	All of them	3
province	2	2010	Don't know/ Haven't heard enough	2
province	2	2010	Most of them	7
province	2	2010	None	4
province	2	2010	Some of them	16
province	3	2010	All of them	5
province	3	2010	Don't know/ Haven't heard enough	7
province	3	2010	Most of them	7
province	3	2010	None	4
province	3	2010	Some of them	17
province	4	2010	All of them	2
province	4	2010	Don't know/ Haven't heard enough	1
province	4	2010	Most of them	9
province	4	2010	None	6
province	4	2010	Some of them	22
province	6	2010	All of them	6
province	6	2010	Don't know/ Haven't heard enough	4
province	6	2010	Most of them	15
province	6	2010	None	11
province	6	2010	Some of them	12
province	8	2010	Don't know/ Haven't heard enough	1
province	8	2010	Most of them	7
province	8	2010	None	1
province	8	2010	Some of them	15
province	7	2010	All of them	11
province	7	2010	Don't know/ Haven't heard enough	5
province	7	2010	Most of them	9
province	7	2010	None	7
province	7	2010	Some of them	16
province	9	2010	Don't know/ Haven't heard enough	2
province	9	2010	Most of them	24
province	9	2010	None	9
province	9	2010	Some of them	45
province	10	2010	All of them	9
province	10	2010	Don't know/ Haven't heard enough	4
province	10	2010	Most of them	10
province	10	2010	None	11
province	10	2010	Some of them	22
country	ZM	2010	None	153
country	ZM	2010	Don't know/ Haven't heard enough	122
country	ZM	2010	Some of them	527
country	ZM	2010	All of them	135
country	ZM	2010	Most of them	259
\.


--
-- Name: corruption_business_executives pk_corruption_business_executives; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_business_executives
    ADD CONSTRAINT pk_corruption_business_executives PRIMARY KEY (geo_level, geo_code, geo_version, corruption_business_executives);


--
-- PostgreSQL database dump complete
--

