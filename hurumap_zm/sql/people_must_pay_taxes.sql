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

ALTER TABLE IF EXISTS ONLY public.people_must_pay_taxes DROP CONSTRAINT IF EXISTS pk_people_must_pay_taxes;
DROP TABLE IF EXISTS public.people_must_pay_taxes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_must_pay_taxes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_must_pay_taxes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_must_pay_taxes character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_must_pay_taxes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_must_pay_taxes (geo_level, geo_code, geo_version, people_must_pay_taxes, total) FROM stdin;
province	1	2010	Agree	368
province	1	2010	Disagree	91
province	1	2010	Don't Know	72
province	1	2010	Neither Agree Nor Disagree	34
province	1	2010	Strongly Agree	196
province	1	2010	Strongly Disagree	68
province	2	2010	Agree	13
province	2	2010	Disagree	3
province	2	2010	Don't Know	2
province	2	2010	Neither Agree Nor Disagree	2
province	2	2010	Strongly Agree	8
province	2	2010	Strongly Disagree	4
province	3	2010	Agree	19
province	3	2010	Disagree	5
province	3	2010	Don't Know	9
province	3	2010	Strongly Agree	6
province	3	2010	Strongly Disagree	1
province	4	2010	Agree	13
province	4	2010	Disagree	2
province	4	2010	Don't Know	3
province	4	2010	Neither Agree Nor Disagree	3
province	4	2010	Strongly Agree	14
province	4	2010	Strongly Disagree	5
province	6	2010	Agree	17
province	6	2010	Disagree	8
province	6	2010	Don't Know	4
province	6	2010	Neither Agree Nor Disagree	1
province	6	2010	Strongly Agree	15
province	6	2010	Strongly Disagree	2
province	8	2010	Agree	21
province	8	2010	Disagree	1
province	8	2010	Neither Agree Nor Disagree	1
province	8	2010	Strongly Agree	1
province	7	2010	Agree	11
province	7	2010	Disagree	12
province	7	2010	Don't Know	2
province	7	2010	Neither Agree Nor Disagree	7
province	7	2010	Strongly Agree	12
province	7	2010	Strongly Disagree	4
province	9	2010	Agree	43
province	9	2010	Disagree	10
province	9	2010	Don't Know	1
province	9	2010	Neither Agree Nor Disagree	5
province	9	2010	Strongly Agree	15
province	9	2010	Strongly Disagree	6
province	10	2010	Agree	9
province	10	2010	Disagree	2
province	10	2010	Don't Know	9
province	10	2010	Neither Agree Nor Disagree	6
province	10	2010	Strongly Agree	18
province	10	2010	Strongly Disagree	12
country	ZM	2010	Neither Agree Nor Disagree	59
country	ZM	2010	Disagree	134
country	ZM	2010	Strongly Agree	285
country	ZM	2010	Strongly Disagree	102
country	ZM	2010	Agree	514
country	ZM	2010	Don't Know	102
\.


--
-- Name: people_must_pay_taxes pk_people_must_pay_taxes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_pay_taxes
    ADD CONSTRAINT pk_people_must_pay_taxes PRIMARY KEY (geo_level, geo_code, geo_version, people_must_pay_taxes);


--
-- PostgreSQL database dump complete
--

