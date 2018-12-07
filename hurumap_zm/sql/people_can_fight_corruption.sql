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
province	1	2010	Agree	32
province	1	2010	Disagree	12
province	1	2010	Don't Know	5
province	1	2010	Neither Agree Nor Disagree	9
province	1	2010	Strongly Agree	47
province	1	2010	Strongly Disagree	15
province	2	2010	Agree	46
province	2	2010	Disagree	32
province	2	2010	Don't Know	3
province	2	2010	Neither Agree Nor Disagree	9
province	2	2010	Strongly Agree	36
province	2	2010	Strongly Disagree	66
province	3	2010	Agree	23
province	3	2010	Disagree	17
province	3	2010	Don't Know	19
province	3	2010	Neither Agree Nor Disagree	5
province	3	2010	Strongly Agree	24
province	3	2010	Strongly Disagree	48
province	4	2010	Agree	38
province	4	2010	Disagree	12
province	4	2010	Don't Know	1
province	4	2010	Neither Agree Nor Disagree	7
province	4	2010	Strongly Agree	24
province	4	2010	Strongly Disagree	5
province	5	2010	Agree	71
province	5	2010	Disagree	27
province	5	2010	Don't Know	7
province	5	2010	Neither Agree Nor Disagree	14
province	5	2010	Strongly Agree	59
province	5	2010	Strongly Disagree	46
province	6	2010	Agree	21
province	6	2010	Disagree	8
province	6	2010	Don't Know	5
province	6	2010	Neither Agree Nor Disagree	3
province	6	2010	Strongly Agree	19
province	6	2010	Strongly Disagree	8
province	8	2010	Agree	33
province	8	2010	Disagree	11
province	8	2010	Don't Know	3
province	8	2010	Strongly Agree	9
province	8	2010	Strongly Disagree	8
province	7	2010	Agree	22
province	7	2010	Disagree	14
province	7	2010	Don't Know	7
province	7	2010	Neither Agree Nor Disagree	4
province	7	2010	Strongly Agree	31
province	7	2010	Strongly Disagree	18
province	9	2010	Agree	37
province	9	2010	Disagree	39
province	9	2010	Don't Know	1
province	9	2010	Neither Agree Nor Disagree	4
province	9	2010	Strongly Agree	18
province	9	2010	Strongly Disagree	37
province	10	2010	Agree	8
province	10	2010	Disagree	5
province	10	2010	Don't Know	2
province	10	2010	Neither Agree Nor Disagree	6
province	10	2010	Strongly Agree	19
province	10	2010	Strongly Disagree	40
country	ZM	2010	Neither Agree Nor Disagree	61
country	ZM	2010	Disagree	177
country	ZM	2010	Strongly Agree	286
country	ZM	2010	Agree	331
country	ZM	2010	Strongly Disagree	291
country	ZM	2010	Don't Know	53
\.


--
-- Name: people_can_fight_corruption pk_people_can_fight_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_can_fight_corruption
    ADD CONSTRAINT pk_people_can_fight_corruption PRIMARY KEY (geo_level, geo_code, geo_version, people_can_fight_corruption);


--
-- PostgreSQL database dump complete
--

