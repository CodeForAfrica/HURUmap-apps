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
province	10	2009	All of them	20
province	10	2009	Don't know/ Haven't heard enough	4
province	10	2009	Most of them	58
province	10	2009	None	10
province	10	2009	Some of them	60
province	19	2009	All of them	75
province	19	2009	Don't know/ Haven't heard enough	12
province	19	2009	Most of them	187
province	19	2009	None	12
province	19	2009	Some of them	162
province	11	2009	All of them	20
province	11	2009	Don't know/ Haven't heard enough	32
province	11	2009	Most of them	110
province	11	2009	None	18
province	11	2009	Some of them	124
province	12	2009	All of them	5
province	12	2009	Don't know/ Haven't heard enough	38
province	12	2009	Most of them	69
province	12	2009	None	20
province	12	2009	Some of them	76
province	13	2009	All of them	26
province	13	2009	Don't know/ Haven't heard enough	14
province	13	2009	Most of them	67
province	13	2009	None	15
province	13	2009	Some of them	126
province	14	2009	All of them	8
province	14	2009	Don't know/ Haven't heard enough	27
province	14	2009	Most of them	50
province	14	2009	None	42
province	14	2009	Some of them	144
province	18	2009	All of them	13
province	18	2009	Don't know/ Haven't heard enough	15
province	18	2009	Most of them	63
province	18	2009	None	34
province	18	2009	Some of them	123
province	15	2009	All of them	13
province	15	2009	Don't know/ Haven't heard enough	46
province	15	2009	Most of them	22
province	15	2009	None	21
province	15	2009	Some of them	26
province	16	2009	All of them	5
province	16	2009	Don't know/ Haven't heard enough	33
province	16	2009	Most of them	9
province	16	2009	None	14
province	16	2009	Some of them	43
province	17	2009	All of them	40
province	17	2009	Don't know/ Haven't heard enough	65
province	17	2009	Most of them	71
province	17	2009	None	10
province	17	2009	Some of them	102
country	ZW	2009	None	196
country	ZW	2009	All of them	225
country	ZW	2009	Most of them	706
country	ZW	2009	Don't know/ Haven't heard enough	286
country	ZW	2009	Some of them	986
\.


--
-- Name: corruption_business_executives pk_corruption_business_executives; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_business_executives
    ADD CONSTRAINT pk_corruption_business_executives PRIMARY KEY (geo_level, geo_code, geo_version, corruption_business_executives);


--
-- PostgreSQL database dump complete
--

