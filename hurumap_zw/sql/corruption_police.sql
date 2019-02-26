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

ALTER TABLE IF EXISTS ONLY public.corruption_police DROP CONSTRAINT IF EXISTS pk_corruption_police;
DROP TABLE IF EXISTS public.corruption_police;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_police; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_police (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_police character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_police; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_police (geo_level, geo_code, geo_version, corruption_police, total) FROM stdin;
province	10	2009	All of them	53
province	10	2009	Don't know/ Haven't heard enough	2
province	10	2009	Most of them	57
province	10	2009	None	9
province	10	2009	Some of them	31
province	19	2009	All of them	121
province	19	2009	Don't know/ Haven't heard enough	7
province	19	2009	Most of them	200
province	19	2009	None	6
province	19	2009	Some of them	114
province	11	2009	All of them	81
province	11	2009	Don't know/ Haven't heard enough	11
province	11	2009	Most of them	98
province	11	2009	None	14
province	11	2009	Some of them	100
province	12	2009	All of them	23
province	12	2009	Don't know/ Haven't heard enough	12
province	12	2009	Most of them	109
province	12	2009	None	10
province	12	2009	Some of them	54
province	13	2009	All of them	43
province	13	2009	Don't know/ Haven't heard enough	4
province	13	2009	Most of them	92
province	13	2009	None	6
province	13	2009	Some of them	103
province	14	2009	All of them	36
province	14	2009	Don't know/ Haven't heard enough	15
province	14	2009	Most of them	100
province	14	2009	None	25
province	14	2009	Some of them	96
province	18	2009	All of them	36
province	18	2009	Don't know/ Haven't heard enough	6
province	18	2009	Most of them	96
province	18	2009	None	16
province	18	2009	Some of them	94
province	15	2009	All of them	31
province	15	2009	Don't know/ Haven't heard enough	22
province	15	2009	Most of them	24
province	15	2009	None	16
province	15	2009	Some of them	35
province	16	2009	All of them	10
province	16	2009	Don't know/ Haven't heard enough	17
province	16	2009	Most of them	23
province	16	2009	None	21
province	16	2009	Some of them	33
province	17	2009	All of them	50
province	17	2009	Don't know/ Haven't heard enough	11
province	17	2009	Most of them	115
province	17	2009	None	24
province	17	2009	Some of them	88
country	ZW	2009	None	147
country	ZW	2009	All of them	484
country	ZW	2009	Most of them	914
country	ZW	2009	Don't know/ Haven't heard enough	107
country	ZW	2009	Some of them	748
\.


--
-- Name: corruption_police pk_corruption_police; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_police
    ADD CONSTRAINT pk_corruption_police PRIMARY KEY (geo_level, geo_code, geo_version, corruption_police);


--
-- PostgreSQL database dump complete
--

