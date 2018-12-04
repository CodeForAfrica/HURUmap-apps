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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_on_economy DROP CONSTRAINT IF EXISTS pk_chinas_influence_on_economy;
DROP TABLE IF EXISTS public.chinas_influence_on_economy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_on_economy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_on_economy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_on_economy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_on_economy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_on_economy (geo_level, geo_code, geo_version, chinas_influence_on_economy, total) FROM stdin;
province	1	2010	A little	93
province	1	2010	A lot	522
province	1	2010	Don't know / Haven't heard enough	75
province	1	2010	None	37
province	1	2010	Some	104
province	2	2010	A little	4
province	2	2010	A lot	18
province	2	2010	Don't know / Haven't heard enough	1
province	2	2010	None	3
province	2	2010	Some	6
province	3	2010	A little	1
province	3	2010	A lot	25
province	3	2010	Don't know / Haven't heard enough	9
province	3	2010	None	3
province	3	2010	Some	2
province	4	2010	A little	5
province	4	2010	A lot	17
province	4	2010	Don't know / Haven't heard enough	8
province	4	2010	Missing	1
province	4	2010	None	1
province	4	2010	Some	8
province	6	2010	A little	5
province	6	2010	A lot	30
province	6	2010	Don't know / Haven't heard enough	8
province	6	2010	Some	5
province	8	2010	A little	3
province	8	2010	A lot	18
province	8	2010	Don't know / Haven't heard enough	1
province	8	2010	Some	2
province	7	2010	A little	8
province	7	2010	A lot	26
province	7	2010	Don't know / Haven't heard enough	7
province	7	2010	Some	7
province	9	2010	A little	13
province	9	2010	A lot	45
province	9	2010	Don't know / Haven't heard enough	2
province	9	2010	None	7
province	9	2010	Some	13
province	10	2010	A little	1
province	10	2010	A lot	44
province	10	2010	Don't know / Haven't heard enough	2
province	10	2010	None	1
province	10	2010	Some	8
country	ZM	2010	Don't know / Haven't heard enough	113
country	ZM	2010	Missing	1
country	ZM	2010	Some	155
country	ZM	2010	None	52
country	ZM	2010	A lot	745
country	ZM	2010	A little	133
\.


--
-- Name: chinas_influence_on_economy pk_chinas_influence_on_economy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_on_economy
    ADD CONSTRAINT pk_chinas_influence_on_economy PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_on_economy);


--
-- PostgreSQL database dump complete
--

