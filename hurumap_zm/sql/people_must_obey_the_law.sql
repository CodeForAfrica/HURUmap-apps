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

ALTER TABLE IF EXISTS ONLY public.people_must_obey_the_law DROP CONSTRAINT IF EXISTS pk_people_must_obey_the_law;
DROP TABLE IF EXISTS public.people_must_obey_the_law;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_must_obey_the_law; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_must_obey_the_law (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_must_obey_the_law character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_must_obey_the_law; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_must_obey_the_law (geo_level, geo_code, geo_version, people_must_obey_the_law, total) FROM stdin;
province	1	2010	Agree	44
province	1	2010	Disagree	19
province	1	2010	Don't Know	5
province	1	2010	Neither Agree Nor Disagree	6
province	1	2010	Strongly Agree	21
province	1	2010	Strongly Disagree	23
province	2	2010	Agree	81
province	2	2010	Disagree	27
province	2	2010	Don't Know	1
province	2	2010	Neither Agree Nor Disagree	14
province	2	2010	Strongly Agree	43
province	2	2010	Strongly Disagree	26
province	3	2010	Agree	56
province	3	2010	Disagree	20
province	3	2010	Don't Know	2
province	3	2010	Neither Agree Nor Disagree	1
province	3	2010	Strongly Agree	39
province	3	2010	Strongly Disagree	18
province	4	2010	Agree	36
province	4	2010	Disagree	5
province	4	2010	Neither Agree Nor Disagree	3
province	4	2010	Strongly Agree	36
province	4	2010	Strongly Disagree	7
province	5	2010	Agree	91
province	5	2010	Disagree	30
province	5	2010	Don't Know	4
province	5	2010	Neither Agree Nor Disagree	8
province	5	2010	Strongly Agree	54
province	5	2010	Strongly Disagree	37
province	6	2010	Agree	31
province	6	2010	Disagree	9
province	6	2010	Don't Know	1
province	6	2010	Neither Agree Nor Disagree	4
province	6	2010	Strongly Agree	17
province	6	2010	Strongly Disagree	1
province	8	2010	Agree	48
province	8	2010	Disagree	6
province	8	2010	Neither Agree Nor Disagree	2
province	8	2010	Strongly Agree	5
province	8	2010	Strongly Disagree	3
province	7	2010	Agree	39
province	7	2010	Disagree	18
province	7	2010	Don't Know	1
province	7	2010	Neither Agree Nor Disagree	4
province	7	2010	Strongly Agree	29
province	7	2010	Strongly Disagree	5
province	9	2010	Agree	77
province	9	2010	Disagree	19
province	9	2010	Neither Agree Nor Disagree	2
province	9	2010	Strongly Agree	28
province	9	2010	Strongly Disagree	10
province	10	2010	Agree	18
province	10	2010	Disagree	5
province	10	2010	Don't Know	3
province	10	2010	Neither Agree Nor Disagree	6
province	10	2010	Strongly Agree	32
province	10	2010	Strongly Disagree	16
country	ZM	2010	Neither Agree Nor Disagree	50
country	ZM	2010	Disagree	158
country	ZM	2010	Strongly Agree	304
country	ZM	2010	Agree	521
country	ZM	2010	Strongly Disagree	146
country	ZM	2010	Don't Know	17
\.


--
-- Name: people_must_obey_the_law pk_people_must_obey_the_law; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_obey_the_law
    ADD CONSTRAINT pk_people_must_obey_the_law PRIMARY KEY (geo_level, geo_code, geo_version, people_must_obey_the_law);


--
-- PostgreSQL database dump complete
--

