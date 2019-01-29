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

ALTER TABLE IF EXISTS ONLY public.chinas_assistance_meets_countrys_needs DROP CONSTRAINT IF EXISTS pk_chinas_assistance_meets_countrys_needs;
DROP TABLE IF EXISTS public.chinas_assistance_meets_countrys_needs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_assistance_meets_countrys_needs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_assistance_meets_countrys_needs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_assistance_meets_countrys_needs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_assistance_meets_countrys_needs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_assistance_meets_countrys_needs (geo_level, geo_code, geo_version, chinas_assistance_meets_countrys_needs, total) FROM stdin;
region	114	2014	China doesn't give development assistance to the country	7
region	114	2014	Don't know / Haven't heard enough	122
region	114	2014	Neither good nor bad job	30
region	114	2014	Somewhat bad job	95
region	114	2014	Somewhat good job	240
region	114	2014	Very bad job	38
region	114	2014	Very good job	132
region	115	2014	China doesn't give development assistance to the country	2
region	115	2014	Don't know / Haven't heard enough	217
region	115	2014	Neither good nor bad job	32
region	115	2014	Somewhat bad job	69
region	115	2014	Somewhat good job	187
region	115	2014	Very bad job	24
region	115	2014	Very good job	93
region	116	2014	China doesn't give development assistance to the country	3
region	116	2014	Don't know / Haven't heard enough	178
region	116	2014	Neither good nor bad job	21
region	116	2014	Somewhat bad job	48
region	116	2014	Somewhat good job	150
region	116	2014	Very bad job	25
region	116	2014	Very good job	79
region	117	2014	China doesn't give development assistance to the country	4
region	117	2014	Don't know / Haven't heard enough	209
region	117	2014	Neither good nor bad job	33
region	117	2014	Somewhat bad job	49
region	117	2014	Somewhat good job	187
region	117	2014	Very bad job	31
region	117	2014	Very good job	95
country	UG	2014	Very bad job	118
country	UG	2014	Don't know / Haven't heard enough	726
country	UG	2014	Somewhat bad job	261
country	UG	2014	Very good job	399
country	UG	2014	Somewhat good job	764
country	UG	2014	Neither good nor bad job	116
country	UG	2014	China doesn't give development assistance to the country	16
\.


--
-- Name: chinas_assistance_meets_countrys_needs pk_chinas_assistance_meets_countrys_needs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_assistance_meets_countrys_needs
    ADD CONSTRAINT pk_chinas_assistance_meets_countrys_needs PRIMARY KEY (geo_level, geo_code, geo_version, chinas_assistance_meets_countrys_needs);


--
-- PostgreSQL database dump complete
--

