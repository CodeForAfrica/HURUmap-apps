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

ALTER TABLE IF EXISTS ONLY public.education_of_respondent DROP CONSTRAINT IF EXISTS pk_education_of_respondent;
DROP TABLE IF EXISTS public.education_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: education_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.education_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    education_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: education_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.education_of_respondent (geo_level, geo_code, geo_version, education_of_respondent, total) FROM stdin;
province	1	2010	Informal schooling only	4
province	1	2010	No formal schooling	62
province	1	2010	Post-graduate	2
province	1	2010	Post-secondary qualifications, other than university	77
province	1	2010	Primary school completed	136
province	1	2010	Secondary school / high school completed	158
province	1	2010	Some primary schooling	145
province	1	2010	Some secondary school / high school	218
province	1	2010	Some university	13
province	1	2010	University completed	14
province	2	2010	No formal schooling	1
province	2	2010	Post-secondary qualifications, other than university	3
province	2	2010	Primary school completed	6
province	2	2010	Secondary school / high school completed	6
province	2	2010	Some primary schooling	3
province	2	2010	Some secondary school / high school	12
province	2	2010	Some university	1
province	3	2010	No formal schooling	8
province	3	2010	Post-secondary qualifications, other than university	2
province	3	2010	Primary school completed	5
province	3	2010	Secondary school / high school completed	4
province	3	2010	Some primary schooling	13
province	3	2010	Some secondary school / high school	6
province	3	2010	University completed	2
province	4	2010	No formal schooling	3
province	4	2010	Post-secondary qualifications, other than university	5
province	4	2010	Primary school completed	1
province	4	2010	Secondary school / high school completed	5
province	4	2010	Some primary schooling	7
province	4	2010	Some secondary school / high school	18
province	6	2010	Informal schooling only	1
province	6	2010	No formal schooling	6
province	6	2010	Post-secondary qualifications, other than university	3
province	6	2010	Primary school completed	12
province	6	2010	Secondary school / high school completed	7
province	6	2010	Some primary schooling	9
province	6	2010	Some secondary school / high school	9
province	6	2010	Some university	1
province	8	2010	No formal schooling	3
province	8	2010	Post-secondary qualifications, other than university	2
province	8	2010	Primary school completed	4
province	8	2010	Secondary school / high school completed	4
province	8	2010	Some primary schooling	6
province	8	2010	Some secondary school / high school	5
province	7	2010	Informal schooling only	2
province	7	2010	No formal schooling	5
province	7	2010	Post-secondary qualifications, other than university	5
province	7	2010	Primary school completed	10
province	7	2010	Secondary school / high school completed	2
province	7	2010	Some primary schooling	13
province	7	2010	Some secondary school / high school	10
province	7	2010	Some university	1
province	9	2010	No formal schooling	2
province	9	2010	Post-secondary qualifications, other than university	14
province	9	2010	Primary school completed	23
province	9	2010	Secondary school / high school completed	9
province	9	2010	Some primary schooling	9
province	9	2010	Some secondary school / high school	21
province	9	2010	Some university	1
province	10	2010	Informal schooling only	2
province	10	2010	No formal schooling	1
province	10	2010	Post-secondary qualifications, other than university	12
province	10	2010	Primary school completed	9
province	10	2010	Secondary school / high school completed	9
province	10	2010	Some primary schooling	10
province	10	2010	Some secondary school / high school	13
country	ZM	2010	Some secondary school / high school	312
country	ZM	2010	Some primary schooling	215
country	ZM	2010	No formal schooling	91
country	ZM	2010	University completed	16
country	ZM	2010	Informal schooling only	9
country	ZM	2010	Some university	17
country	ZM	2010	Post-secondary qualifications, other than university	123
country	ZM	2010	Post-graduate	2
country	ZM	2010	Primary school completed	206
country	ZM	2010	Secondary school / high school completed	204
\.


--
-- Name: education_of_respondent pk_education_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.education_of_respondent
    ADD CONSTRAINT pk_education_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, education_of_respondent);


--
-- PostgreSQL database dump complete
--

