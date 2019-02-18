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
province	10	2009	Agree	33
province	10	2009	Disagree	21
province	10	2009	Don't Know	5
province	10	2009	Neither Agree Nor Disagree	5
province	10	2009	Strongly Agree	56
province	10	2009	Strongly Disagree	32
province	19	2009	Agree	107
province	19	2009	Disagree	81
province	19	2009	Don't Know	1
province	19	2009	Neither Agree Nor Disagree	11
province	19	2009	Strongly Agree	110
province	19	2009	Strongly Disagree	138
province	11	2009	Agree	85
province	11	2009	Disagree	66
province	11	2009	Don't Know	12
province	11	2009	Neither Agree Nor Disagree	24
province	11	2009	Strongly Agree	21
province	11	2009	Strongly Disagree	96
province	12	2009	Agree	44
province	12	2009	Disagree	29
province	12	2009	Don't Know	4
province	12	2009	Neither Agree Nor Disagree	4
province	12	2009	Strongly Agree	51
province	12	2009	Strongly Disagree	76
province	13	2009	Agree	58
province	13	2009	Disagree	30
province	13	2009	Neither Agree Nor Disagree	14
province	13	2009	Strongly Agree	36
province	13	2009	Strongly Disagree	110
province	14	2009	Agree	48
province	14	2009	Disagree	30
province	14	2009	Don't Know	7
province	14	2009	Neither Agree Nor Disagree	15
province	14	2009	Strongly Agree	42
province	14	2009	Strongly Disagree	130
province	18	2009	Agree	54
province	18	2009	Disagree	40
province	18	2009	Don't Know	6
province	18	2009	Neither Agree Nor Disagree	17
province	18	2009	Strongly Agree	32
province	18	2009	Strongly Disagree	98
province	15	2009	Agree	26
province	15	2009	Disagree	11
province	15	2009	Don't Know	10
province	15	2009	Neither Agree Nor Disagree	21
province	15	2009	Strongly Agree	4
province	15	2009	Strongly Disagree	56
province	16	2009	Agree	24
province	16	2009	Disagree	8
province	16	2009	Don't Know	2
province	16	2009	Neither Agree Nor Disagree	3
province	16	2009	Strongly Agree	30
province	16	2009	Strongly Disagree	37
province	17	2009	Agree	84
province	17	2009	Disagree	25
province	17	2009	Don't Know	6
province	17	2009	Neither Agree Nor Disagree	32
province	17	2009	Strongly Agree	66
province	17	2009	Strongly Disagree	75
country	ZW	2009	Neither Agree Nor Disagree	146
country	ZW	2009	Disagree	341
country	ZW	2009	Strongly Agree	448
country	ZW	2009	Agree	563
country	ZW	2009	Strongly Disagree	848
country	ZW	2009	Don't Know	53
\.


--
-- Name: people_can_fight_corruption pk_people_can_fight_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_can_fight_corruption
    ADD CONSTRAINT pk_people_can_fight_corruption PRIMARY KEY (geo_level, geo_code, geo_version, people_can_fight_corruption);


--
-- PostgreSQL database dump complete
--

