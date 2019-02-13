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

ALTER TABLE IF EXISTS ONLY public.chinas_assistance_meets_country_needs DROP CONSTRAINT IF EXISTS pk_chinas_assistance_meets_country_needs;
DROP TABLE IF EXISTS public.chinas_assistance_meets_country_needs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_assistance_meets_country_needs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_assistance_meets_country_needs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_assistance_meets_country_needs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_assistance_meets_country_needs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_assistance_meets_country_needs (geo_level, geo_code, geo_version, chinas_assistance_meets_country_needs, total) FROM stdin;
province	10	2009	China doesn't give development assistance to the country	7
province	10	2009	Don't know / Haven't heard enough	11
province	10	2009	Neither good nor bad job	42
province	10	2009	Somewhat bad job	18
province	10	2009	Somewhat good job	39
province	10	2009	Very bad job	29
province	10	2009	Very good job	6
province	19	2009	China doesn't give development assistance to the country	6
province	19	2009	Don't know / Haven't heard enough	9
province	19	2009	Neither good nor bad job	33
province	19	2009	Somewhat bad job	109
province	19	2009	Somewhat good job	177
province	19	2009	Very bad job	69
province	19	2009	Very good job	44
province	11	2009	China doesn't give development assistance to the country	10
province	11	2009	Don't know / Haven't heard enough	40
province	11	2009	Neither good nor bad job	47
province	11	2009	Somewhat bad job	52
province	11	2009	Somewhat good job	94
province	11	2009	Very bad job	31
province	11	2009	Very good job	30
province	12	2009	China doesn't give development assistance to the country	1
province	12	2009	Don't know / Haven't heard enough	17
province	12	2009	Neither good nor bad job	22
province	12	2009	Somewhat bad job	33
province	12	2009	Somewhat good job	70
province	12	2009	Very bad job	28
province	12	2009	Very good job	37
province	13	2009	Don't know / Haven't heard enough	29
province	13	2009	Neither good nor bad job	38
province	13	2009	Somewhat bad job	19
province	13	2009	Somewhat good job	110
province	13	2009	Very bad job	23
province	13	2009	Very good job	29
province	14	2009	China doesn't give development assistance to the country	2
province	14	2009	Don't know / Haven't heard enough	18
province	14	2009	Neither good nor bad job	31
province	14	2009	Somewhat bad job	35
province	14	2009	Somewhat good job	112
province	14	2009	Very bad job	27
province	14	2009	Very good job	47
province	18	2009	China doesn't give development assistance to the country	3
province	18	2009	Don't know / Haven't heard enough	12
province	18	2009	Neither good nor bad job	43
province	18	2009	Somewhat bad job	60
province	18	2009	Somewhat good job	71
province	18	2009	Very bad job	31
province	18	2009	Very good job	28
province	15	2009	Don't know / Haven't heard enough	29
province	15	2009	Neither good nor bad job	15
province	15	2009	Somewhat bad job	20
province	15	2009	Somewhat good job	34
province	15	2009	Very bad job	16
province	15	2009	Very good job	14
province	16	2009	China doesn't give development assistance to the country	7
province	16	2009	Don't know / Haven't heard enough	22
province	16	2009	Neither good nor bad job	12
province	16	2009	Somewhat bad job	27
province	16	2009	Somewhat good job	11
province	16	2009	Very bad job	17
province	16	2009	Very good job	8
province	17	2009	China doesn't give development assistance to the country	8
province	17	2009	Don't know / Haven't heard enough	18
province	17	2009	Neither good nor bad job	51
province	17	2009	Somewhat bad job	37
province	17	2009	Somewhat good job	88
province	17	2009	Very bad job	39
province	17	2009	Very good job	47
country	ZW	2009	Very bad job	310
country	ZW	2009	Don't know / Haven't heard enough	205
country	ZW	2009	Somewhat bad job	410
country	ZW	2009	Very good job	290
country	ZW	2009	Somewhat good job	806
country	ZW	2009	Neither good nor bad job	334
country	ZW	2009	China doesn't give development assistance to the country	44
\.


--
-- Name: chinas_assistance_meets_country_needs pk_chinas_assistance_meets_country_needs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_assistance_meets_country_needs
    ADD CONSTRAINT pk_chinas_assistance_meets_country_needs PRIMARY KEY (geo_level, geo_code, geo_version, chinas_assistance_meets_country_needs);


--
-- PostgreSQL database dump complete
--

