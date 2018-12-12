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
province	1	2010	Informal schooling only	1
province	1	2010	No formal schooling	5
province	1	2010	Post-secondary qualifications, other than university	11
province	1	2010	Primary school completed	22
province	1	2010	Secondary school / high school completed	30
province	1	2010	Some primary schooling	20
province	1	2010	Some secondary school / high school	29
province	1	2010	University completed	2
province	2	2010	No formal schooling	10
province	2	2010	Post-secondary qualifications, other than university	19
province	2	2010	Primary school completed	35
province	2	2010	Secondary school / high school completed	40
province	2	2010	Some primary schooling	20
province	2	2010	Some secondary school / high school	58
province	2	2010	Some university	7
province	2	2010	University completed	3
province	3	2010	Informal schooling only	2
province	3	2010	No formal schooling	23
province	3	2010	Post-graduate	1
province	3	2010	Post-secondary qualifications, other than university	4
province	3	2010	Primary school completed	16
province	3	2010	Secondary school / high school completed	11
province	3	2010	Some primary schooling	51
province	3	2010	Some secondary school / high school	23
province	3	2010	Some university	1
province	3	2010	University completed	4
province	4	2010	No formal schooling	6
province	4	2010	Post-secondary qualifications, other than university	8
province	4	2010	Primary school completed	8
province	4	2010	Secondary school / high school completed	15
province	4	2010	Some primary schooling	14
province	4	2010	Some secondary school / high school	35
province	5	2010	Informal schooling only	1
province	5	2010	No formal schooling	7
province	5	2010	Post-graduate	1
province	5	2010	Post-secondary qualifications, other than university	29
province	5	2010	Primary school completed	38
province	5	2010	Secondary school / high school completed	54
province	5	2010	Some primary schooling	22
province	5	2010	Some secondary school / high school	61
province	5	2010	Some university	6
province	5	2010	University completed	4
province	6	2010	Informal schooling only	1
province	6	2010	No formal schooling	6
province	6	2010	Post-secondary qualifications, other than university	5
province	6	2010	Primary school completed	13
province	6	2010	Secondary school / high school completed	14
province	6	2010	Some primary schooling	10
province	6	2010	Some secondary school / high school	14
province	6	2010	Some university	1
province	8	2010	No formal schooling	12
province	8	2010	Post-secondary qualifications, other than university	7
province	8	2010	Primary school completed	10
province	8	2010	Secondary school / high school completed	8
province	8	2010	Some primary schooling	16
province	8	2010	Some secondary school / high school	11
province	7	2010	Informal schooling only	2
province	7	2010	No formal schooling	14
province	7	2010	Post-secondary qualifications, other than university	6
province	7	2010	Primary school completed	18
province	7	2010	Secondary school / high school completed	3
province	7	2010	Some primary schooling	29
province	7	2010	Some secondary school / high school	23
province	7	2010	Some university	1
province	9	2010	No formal schooling	3
province	9	2010	Post-secondary qualifications, other than university	16
province	9	2010	Primary school completed	36
province	9	2010	Secondary school / high school completed	17
province	9	2010	Some primary schooling	20
province	9	2010	Some secondary school / high school	40
province	9	2010	Some university	1
province	9	2010	University completed	1
province	10	2010	Informal schooling only	2
province	10	2010	No formal schooling	5
province	10	2010	Post-secondary qualifications, other than university	18
province	10	2010	Primary school completed	10
province	10	2010	Secondary school / high school completed	12
province	10	2010	Some primary schooling	13
province	10	2010	Some secondary school / high school	18
province	10	2010	University completed	2
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

