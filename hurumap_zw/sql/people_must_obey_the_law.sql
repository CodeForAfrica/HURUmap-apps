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
province	10	2009	Agree	72
province	10	2009	Disagree	8
province	10	2009	Don't Know	3
province	10	2009	Neither Agree Nor Disagree	11
province	10	2009	Strongly Agree	48
province	10	2009	Strongly Disagree	10
province	19	2009	Agree	247
province	19	2009	Disagree	36
province	19	2009	Don't Know	1
province	19	2009	Neither Agree Nor Disagree	10
province	19	2009	Strongly Agree	106
province	19	2009	Strongly Disagree	48
province	11	2009	Agree	138
province	11	2009	Disagree	5
province	11	2009	Don't Know	11
province	11	2009	Neither Agree Nor Disagree	6
province	11	2009	Strongly Agree	140
province	11	2009	Strongly Disagree	4
province	12	2009	Agree	65
province	12	2009	Disagree	12
province	12	2009	Neither Agree Nor Disagree	12
province	12	2009	Strongly Agree	119
province	13	2009	Agree	106
province	13	2009	Disagree	9
province	13	2009	Don't Know	5
province	13	2009	Neither Agree Nor Disagree	28
province	13	2009	Strongly Agree	96
province	13	2009	Strongly Disagree	4
province	14	2009	Agree	111
province	14	2009	Disagree	12
province	14	2009	Don't Know	1
province	14	2009	Neither Agree Nor Disagree	4
province	14	2009	Strongly Agree	141
province	14	2009	Strongly Disagree	3
province	18	2009	Agree	104
province	18	2009	Disagree	20
province	18	2009	Don't Know	1
province	18	2009	Neither Agree Nor Disagree	44
province	18	2009	Strongly Agree	70
province	18	2009	Strongly Disagree	9
province	15	2009	Agree	62
province	15	2009	Disagree	4
province	15	2009	Don't Know	2
province	15	2009	Neither Agree Nor Disagree	12
province	15	2009	Strongly Agree	48
province	16	2009	Agree	47
province	16	2009	Disagree	2
province	16	2009	Don't Know	3
province	16	2009	Neither Agree Nor Disagree	7
province	16	2009	Strongly Agree	42
province	16	2009	Strongly Disagree	3
province	17	2009	Agree	143
province	17	2009	Disagree	9
province	17	2009	Don't Know	4
province	17	2009	Neither Agree Nor Disagree	22
province	17	2009	Strongly Agree	105
province	17	2009	Strongly Disagree	5
country	ZW	2009	Neither Agree Nor Disagree	156
country	ZW	2009	Disagree	117
country	ZW	2009	Strongly Agree	915
country	ZW	2009	Agree	1095
country	ZW	2009	Strongly Disagree	86
country	ZW	2009	Don't Know	31
\.


--
-- Name: people_must_obey_the_law pk_people_must_obey_the_law; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_obey_the_law
    ADD CONSTRAINT pk_people_must_obey_the_law PRIMARY KEY (geo_level, geo_code, geo_version, people_must_obey_the_law);


--
-- PostgreSQL database dump complete
--

