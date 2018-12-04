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

ALTER TABLE IF EXISTS ONLY public.people_can_fight_corruption DROP CONSTRAINT IF EXISTS pk_people_can_fight_corruption;
DROP TABLE IF EXISTS public.people_can_fight_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_can_fight_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_can_fight_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_can_fight_corruption character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_can_fight_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_can_fight_corruption (geo_level, geo_code, geo_version, people_can_fight_corruption, total) FROM stdin;
province	1	2010	Agree	234
province	1	2010	Disagree	125
province	1	2010	Don�t Know	36
province	1	2010	Neither Agree Nor Disagree	42
province	1	2010	Strongly Agree	210
province	1	2010	Strongly Disagree	184
province	2	2010	Agree	5
province	2	2010	Disagree	2
province	2	2010	Don�t Know	1
province	2	2010	Neither Agree Nor Disagree	2
province	2	2010	Strongly Agree	5
province	2	2010	Strongly Disagree	17
province	3	2010	Agree	7
province	3	2010	Disagree	6
province	3	2010	Don�t Know	7
province	3	2010	Neither Agree Nor Disagree	2
province	3	2010	Strongly Agree	5
province	3	2010	Strongly Disagree	13
province	4	2010	Agree	16
province	4	2010	Disagree	6
province	4	2010	Don�t Know	1
province	4	2010	Neither Agree Nor Disagree	3
province	4	2010	Strongly Agree	11
province	4	2010	Strongly Disagree	3
province	6	2010	Agree	16
province	6	2010	Disagree	5
province	6	2010	Don�t Know	3
province	6	2010	Neither Agree Nor Disagree	1
province	6	2010	Strongly Agree	15
province	6	2010	Strongly Disagree	8
province	8	2010	Agree	14
province	8	2010	Disagree	6
province	8	2010	Strongly Agree	3
province	8	2010	Strongly Disagree	1
province	7	2010	Agree	12
province	7	2010	Disagree	6
province	7	2010	Don�t Know	3
province	7	2010	Neither Agree Nor Disagree	4
province	7	2010	Strongly Agree	14
province	7	2010	Strongly Disagree	9
province	9	2010	Agree	24
province	9	2010	Disagree	19
province	9	2010	Neither Agree Nor Disagree	3
province	9	2010	Strongly Agree	11
province	9	2010	Strongly Disagree	23
province	10	2010	Agree	3
province	10	2010	Disagree	2
province	10	2010	Don�t Know	2
province	10	2010	Neither Agree Nor Disagree	4
province	10	2010	Strongly Agree	12
province	10	2010	Strongly Disagree	33
country	ZM	2010	Neither Agree Nor Disagree	61
country	ZM	2010	Disagree	177
country	ZM	2010	Strongly Agree	286
country	ZM	2010	Agree	331
country	ZM	2010	Strongly Disagree	291
country	ZM	2010	Don�t Know	53
\.


--
-- Name: people_can_fight_corruption pk_people_can_fight_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_can_fight_corruption
    ADD CONSTRAINT pk_people_can_fight_corruption PRIMARY KEY (geo_level, geo_code, geo_version, people_can_fight_corruption);


--
-- PostgreSQL database dump complete
--

