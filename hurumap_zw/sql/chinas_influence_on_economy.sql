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
province	10	2009	A little	6
province	10	2009	A lot	84
province	10	2009	Don't know / Haven't heard enough	6
province	10	2009	None	3
province	10	2009	Some	53
province	19	2009	A little	91
province	19	2009	A lot	173
province	19	2009	Don't know / Haven't heard enough	12
province	19	2009	None	10
province	19	2009	Some	162
province	11	2009	A little	94
province	11	2009	A lot	57
province	11	2009	Don't know / Haven't heard enough	40
province	11	2009	None	31
province	11	2009	Some	82
province	12	2009	A little	29
province	12	2009	A lot	90
province	12	2009	Don't know / Haven't heard enough	27
province	12	2009	None	7
province	12	2009	Some	54
province	13	2009	A little	47
province	13	2009	A lot	85
province	13	2009	Don't know / Haven't heard enough	23
province	13	2009	None	22
province	13	2009	Some	71
province	14	2009	A little	44
province	14	2009	A lot	129
province	14	2009	Don't know / Haven't heard enough	12
province	14	2009	None	5
province	14	2009	Some	82
province	18	2009	A little	68
province	18	2009	A lot	61
province	18	2009	Don't know / Haven't heard enough	12
province	18	2009	None	31
province	18	2009	Some	76
province	15	2009	A little	24
province	15	2009	A lot	36
province	15	2009	Don't know / Haven't heard enough	30
province	15	2009	None	6
province	15	2009	Some	31
province	16	2009	A little	16
province	16	2009	A lot	21
province	16	2009	Don't know / Haven't heard enough	18
province	16	2009	None	7
province	16	2009	Some	42
province	17	2009	A little	26
province	17	2009	A lot	151
province	17	2009	Don't know / Haven't heard enough	14
province	17	2009	None	10
province	17	2009	Some	87
country	ZW	2009	A lot	887
country	ZW	2009	Don't know / Haven't heard enough	194
country	ZW	2009	Some	740
country	ZW	2009	None	132
country	ZW	2009	A little	445
\.


--
-- Name: chinas_influence_on_economy pk_chinas_influence_on_economy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_on_economy
    ADD CONSTRAINT pk_chinas_influence_on_economy PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_on_economy);


--
-- PostgreSQL database dump complete
--

