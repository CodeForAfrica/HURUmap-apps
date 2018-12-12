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
province	1	2010	Agree	38
province	1	2010	Disagree	7
province	1	2010	Don't Know	26
province	1	2010	Neither Agree Nor Disagree	5
province	1	2010	Strongly Agree	24
province	1	2010	Strongly Disagree	18
province	2	2010	Agree	86
province	2	2010	Disagree	30
province	2	2010	Don't Know	5
province	2	2010	Neither Agree Nor Disagree	11
province	2	2010	Strongly Agree	43
province	2	2010	Strongly Disagree	17
province	3	2010	Agree	57
province	3	2010	Disagree	20
province	3	2010	Don't Know	31
province	3	2010	Strongly Agree	17
province	3	2010	Strongly Disagree	11
province	4	2010	Agree	36
province	4	2010	Disagree	2
province	4	2010	Don't Know	4
province	4	2010	Neither Agree Nor Disagree	6
province	4	2010	Strongly Agree	31
province	4	2010	Strongly Disagree	8
province	5	2010	Agree	100
province	5	2010	Disagree	25
province	5	2010	Don't Know	8
province	5	2010	Neither Agree Nor Disagree	11
province	5	2010	Strongly Agree	69
province	5	2010	Strongly Disagree	11
province	6	2010	Agree	21
province	6	2010	Disagree	9
province	6	2010	Don't Know	8
province	6	2010	Neither Agree Nor Disagree	4
province	6	2010	Strongly Agree	19
province	6	2010	Strongly Disagree	2
province	8	2010	Agree	49
province	8	2010	Disagree	4
province	8	2010	Neither Agree Nor Disagree	1
province	8	2010	Strongly Agree	7
province	8	2010	Strongly Disagree	3
province	7	2010	Agree	30
province	7	2010	Disagree	18
province	7	2010	Don't Know	5
province	7	2010	Neither Agree Nor Disagree	10
province	7	2010	Strongly Agree	27
province	7	2010	Strongly Disagree	6
province	9	2010	Agree	79
province	9	2010	Disagree	16
province	9	2010	Don't Know	1
province	9	2010	Neither Agree Nor Disagree	5
province	9	2010	Strongly Agree	25
province	9	2010	Strongly Disagree	10
province	10	2010	Agree	18
province	10	2010	Disagree	3
province	10	2010	Don't Know	14
province	10	2010	Neither Agree Nor Disagree	6
province	10	2010	Strongly Agree	23
province	10	2010	Strongly Disagree	16
country	ZM	2010	Neither Agree Nor Disagree	59
country	ZM	2010	Disagree	134
country	ZM	2010	Strongly Agree	285
country	ZM	2010	Agree	514
country	ZM	2010	Strongly Disagree	102
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

