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
province	1	2010	A little	15
province	1	2010	A lot	74
province	1	2010	Don't know / Haven't heard enough	7
province	1	2010	None	4
province	1	2010	Some	20
province	2	2010	A little	23
province	2	2010	A lot	123
province	2	2010	Don't know / Haven't heard enough	2
province	2	2010	None	13
province	2	2010	Some	31
province	3	2010	A little	12
province	3	2010	A lot	89
province	3	2010	Don't know / Haven't heard enough	27
province	3	2010	None	5
province	3	2010	Some	3
province	4	2010	A little	14
province	4	2010	A lot	38
province	4	2010	Don't know / Haven't heard enough	12
province	4	2010	None	5
province	4	2010	Some	17
province	5	2010	A little	21
province	5	2010	A lot	154
province	5	2010	Don't know / Haven't heard enough	16
province	5	2010	None	3
province	5	2010	Some	30
province	6	2010	A little	5
province	6	2010	A lot	44
province	6	2010	Don't know / Haven't heard enough	8
province	6	2010	Some	7
province	8	2010	A little	6
province	8	2010	A lot	43
province	8	2010	Don't know / Haven't heard enough	8
province	8	2010	None	2
province	8	2010	Some	5
province	7	2010	A little	10
province	7	2010	A lot	50
province	7	2010	Don't know / Haven't heard enough	24
province	7	2010	None	3
province	7	2010	Some	9
province	9	2010	A little	21
province	9	2010	A lot	71
province	9	2010	Don't know / Haven't heard enough	6
province	9	2010	None	16
province	9	2010	Some	22
province	10	2010	A little	6
province	10	2010	A lot	59
province	10	2010	Don't know / Haven't heard enough	3
province	10	2010	None	1
province	10	2010	Some	11
country	ZM	2010	A lot	745
country	ZM	2010	Don't know / Haven't heard enough	113
country	ZM	2010	Some	155
country	ZM	2010	None	52
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

