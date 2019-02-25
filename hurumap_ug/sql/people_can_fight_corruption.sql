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
region	114	2014	Agree	148
region	114	2014	Disagree	57
region	114	2014	Don't Know	23
region	114	2014	Neither Agree Nor Disagree	12
region	114	2014	Strongly Agree	153
region	114	2014	Strongly Disagree	271
region	115	2014	Agree	112
region	115	2014	Disagree	68
region	115	2014	Don't Know	30
region	115	2014	Neither Agree Nor Disagree	21
region	115	2014	Strongly Agree	129
region	115	2014	Strongly Disagree	264
region	116	2014	Agree	158
region	116	2014	Disagree	105
region	116	2014	Don't Know	11
region	116	2014	Neither Agree Nor Disagree	12
region	116	2014	Strongly Agree	115
region	116	2014	Strongly Disagree	103
region	117	2014	Agree	184
region	117	2014	Disagree	68
region	117	2014	Don't Know	22
region	117	2014	Neither Agree Nor Disagree	27
region	117	2014	Strongly Agree	82
region	117	2014	Strongly Disagree	225
country	UG	2014	Neither Agree Nor Disagree	72
country	UG	2014	Disagree	298
country	UG	2014	Strongly Agree	479
country	UG	2014	Agree	602
country	UG	2014	Strongly Disagree	863
country	UG	2014	Don't Know	86
\.


--
-- Name: people_can_fight_corruption pk_people_can_fight_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_can_fight_corruption
    ADD CONSTRAINT pk_people_can_fight_corruption PRIMARY KEY (geo_level, geo_code, geo_version, people_can_fight_corruption);


--
-- PostgreSQL database dump complete
--

