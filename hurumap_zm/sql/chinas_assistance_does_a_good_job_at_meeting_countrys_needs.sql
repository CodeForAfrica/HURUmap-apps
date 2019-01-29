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
province	1	2010	Don't know / Haven't heard enough	23
province	1	2010	Neither good nor bad job	6
province	1	2010	Somewhat bad job	6
province	1	2010	Somewhat good job	29
province	1	2010	Very bad job	8
province	1	2010	Very good job	48
province	2	2010	China doesn't give development assistance to the country	3
province	2	2010	Neither good nor bad job	13
province	2	2010	Somewhat bad job	12
province	2	2010	Somewhat good job	73
province	2	2010	Very bad job	26
province	2	2010	Very good job	65
province	3	2010	Don't know / Haven't heard enough	32
province	3	2010	Neither good nor bad job	8
province	3	2010	Somewhat bad job	3
province	3	2010	Somewhat good job	28
province	3	2010	Very bad job	3
province	3	2010	Very good job	62
province	4	2010	Don't know / Haven't heard enough	12
province	4	2010	Neither good nor bad job	6
province	4	2010	Somewhat bad job	2
province	4	2010	Somewhat good job	28
province	4	2010	Very bad job	3
province	4	2010	Very good job	35
province	5	2010	China doesn't give development assistance to the country	3
province	5	2010	Don't know / Haven't heard enough	9
province	5	2010	Neither good nor bad job	14
province	5	2010	Somewhat bad job	15
province	5	2010	Somewhat good job	82
province	5	2010	Very bad job	14
province	5	2010	Very good job	87
province	6	2010	Don't know / Haven't heard enough	12
province	6	2010	Neither good nor bad job	7
province	6	2010	Somewhat bad job	3
province	6	2010	Somewhat good job	17
province	6	2010	Very good job	25
province	8	2010	Don't know / Haven't heard enough	8
province	8	2010	Neither good nor bad job	1
province	8	2010	Somewhat bad job	1
province	8	2010	Somewhat good job	19
province	8	2010	Very bad job	1
province	8	2010	Very good job	34
province	7	2010	Don't know / Haven't heard enough	19
province	7	2010	Neither good nor bad job	12
province	7	2010	Somewhat bad job	10
province	7	2010	Somewhat good job	26
province	7	2010	Very bad job	6
province	7	2010	Very good job	23
province	9	2010	Don't know / Haven't heard enough	5
province	9	2010	Neither good nor bad job	17
province	9	2010	Somewhat bad job	8
province	9	2010	Somewhat good job	43
province	9	2010	Very bad job	19
province	9	2010	Very good job	44
province	10	2010	Don't know / Haven't heard enough	1
province	10	2010	Neither good nor bad job	21
province	10	2010	Somewhat bad job	2
province	10	2010	Somewhat good job	18
province	10	2010	Very bad job	1
province	10	2010	Very good job	37
country	ZM	2010	Very bad job	81
country	ZM	2010	Don't know / Haven't heard enough	121
country	ZM	2010	Somewhat bad job	62
country	ZM	2010	Very good job	460
country	ZM	2010	Somewhat good job	363
country	ZM	2010	Neither good nor bad job	105
country	ZM	2010	China doesn't give development assistance to the country	6
\.


--
-- Name: chinas_assistance_meets_countrys_needs pk_chinas_assistance_meets_countrys_needs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_assistance_meets_countrys_needs
    ADD CONSTRAINT pk_chinas_assistance_meets_countrys_needs PRIMARY KEY (geo_level, geo_code, geo_version, chinas_assistance_meets_countrys_needs);


--
-- PostgreSQL database dump complete
--

