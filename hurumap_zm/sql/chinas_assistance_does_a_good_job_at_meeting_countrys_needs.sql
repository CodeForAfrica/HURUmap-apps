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

ALTER TABLE IF EXISTS ONLY public.chinas_assistance_does_a_good_job_at_meeting_countrys_needs DROP CONSTRAINT IF EXISTS pk_chinas_assistance_does_a_good_job_at_meeting_countrys_needs;
DROP TABLE IF EXISTS public.chinas_assistance_does_a_good_job_at_meeting_countrys_needs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_assistance_does_a_good_job_at_meeting_countrys_needs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_assistance_does_a_good_job_at_meeting_countrys_needs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_assistance_does_a_good_job_at_meeting_countrys_needs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_assistance_does_a_good_job_at_meeting_countrys_needs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_assistance_does_a_good_job_at_meeting_countrys_needs (geo_level, geo_code, geo_version, chinas_assistance_does_a_good_job_at_meeting_countrys_needs, total) FROM stdin;
province	1	2010	China doesn't give development assistance to the country	5
province	1	2010	Don't know / Haven't heard enough	83
province	1	2010	Neither good nor bad job	48
province	1	2010	Somewhat bad job	43
province	1	2010	Somewhat good job	269
province	1	2010	Very bad job	60
province	1	2010	Very good job	323
province	2	2010	China doesn't give development assistance to the country	1
province	2	2010	Neither good nor bad job	5
province	2	2010	Somewhat bad job	1
province	2	2010	Somewhat good job	11
province	2	2010	Very bad job	6
province	2	2010	Very good job	8
province	3	2010	Don't know / Haven't heard enough	12
province	3	2010	Neither good nor bad job	2
province	3	2010	Somewhat bad job	1
province	3	2010	Somewhat good job	10
province	3	2010	Very bad job	1
province	3	2010	Very good job	14
province	4	2010	Don't know / Haven't heard enough	6
province	4	2010	Neither good nor bad job	3
province	4	2010	Somewhat bad job	1
province	4	2010	Somewhat good job	12
province	4	2010	Very bad job	1
province	4	2010	Very good job	16
province	6	2010	Don't know / Haven't heard enough	9
province	6	2010	Neither good nor bad job	7
province	6	2010	Somewhat bad job	2
province	6	2010	Somewhat good job	11
province	6	2010	Very good job	19
province	8	2010	Don't know / Haven't heard enough	3
province	8	2010	Somewhat bad job	1
province	8	2010	Somewhat good job	6
province	8	2010	Very good job	14
province	7	2010	Don't know / Haven't heard enough	5
province	7	2010	Neither good nor bad job	8
province	7	2010	Somewhat bad job	5
province	7	2010	Somewhat good job	15
province	7	2010	Very bad job	3
province	7	2010	Very good job	12
province	9	2010	Don't know / Haven't heard enough	2
province	9	2010	Neither good nor bad job	16
province	9	2010	Somewhat bad job	7
province	9	2010	Somewhat good job	22
province	9	2010	Very bad job	9
province	9	2010	Very good job	24
province	10	2010	Don't know / Haven't heard enough	1
province	10	2010	Neither good nor bad job	16
province	10	2010	Somewhat bad job	1
province	10	2010	Somewhat good job	7
province	10	2010	Very bad job	1
province	10	2010	Very good job	30
country	ZM	2010	Very bad job	81
country	ZM	2010	Don't know / Haven't heard enough	121
country	ZM	2010	Somewhat bad job	62
country	ZM	2010	Very good job	460
country	ZM	2010	Somewhat good job	363
country	ZM	2010	Neither good nor bad job	105
country	ZM	2010	China doesn't give development assistance to the country	6
\.


--
-- Name: chinas_assistance_does_a_good_job_at_meeting_countrys_needs pk_chinas_assistance_does_a_good_job_at_meeting_countrys_needs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_assistance_does_a_good_job_at_meeting_countrys_needs
    ADD CONSTRAINT pk_chinas_assistance_does_a_good_job_at_meeting_countrys_needs PRIMARY KEY (geo_level, geo_code, geo_version, chinas_assistance_does_a_good_job_at_meeting_countrys_needs);


--
-- PostgreSQL database dump complete
--

