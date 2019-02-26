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
province	10	2009	No formal schooling	5
province	10	2009	Post-graduate	3
province	10	2009	Post-secondary qualifications, other than university	21
province	10	2009	Primary school completed	13
province	10	2009	Secondary school / high school completed	70
province	10	2009	Some primary schooling	4
province	10	2009	Some secondary school / high school	21
province	10	2009	Some university	4
province	10	2009	University completed	11
province	19	2009	No formal schooling	5
province	19	2009	Post-graduate	9
province	19	2009	Post-secondary qualifications, other than university	85
province	19	2009	Primary school completed	24
province	19	2009	Secondary school / high school completed	211
province	19	2009	Some primary schooling	10
province	19	2009	Some secondary school / high school	62
province	19	2009	Some university	6
province	19	2009	University completed	36
province	11	2009	Informal schooling only	4
province	11	2009	No formal schooling	39
province	11	2009	Post-graduate	2
province	11	2009	Post-secondary qualifications, other than university	26
province	11	2009	Primary school completed	38
province	11	2009	Secondary school / high school completed	95
province	11	2009	Some primary schooling	32
province	11	2009	Some secondary school / high school	56
province	11	2009	Some university	4
province	11	2009	University completed	8
province	12	2009	No formal schooling	22
province	12	2009	Post-secondary qualifications, other than university	18
province	12	2009	Primary school completed	25
province	12	2009	Secondary school / high school completed	65
province	12	2009	Some primary schooling	22
province	12	2009	Some secondary school / high school	55
province	12	2009	Some university	1
province	13	2009	No formal schooling	11
province	13	2009	Post-secondary qualifications, other than university	9
province	13	2009	Primary school completed	35
province	13	2009	Secondary school / high school completed	84
province	13	2009	Some primary schooling	33
province	13	2009	Some secondary school / high school	73
province	13	2009	Some university	3
province	14	2009	Informal schooling only	1
province	14	2009	No formal schooling	21
province	14	2009	Post-secondary qualifications, other than university	5
province	14	2009	Primary school completed	49
province	14	2009	Secondary school / high school completed	95
province	14	2009	Some primary schooling	27
province	14	2009	Some secondary school / high school	73
province	14	2009	University completed	1
province	18	2009	No formal schooling	17
province	18	2009	Post-secondary qualifications, other than university	6
province	18	2009	Primary school completed	58
province	18	2009	Secondary school / high school completed	74
province	18	2009	Some primary schooling	43
province	18	2009	Some secondary school / high school	39
province	18	2009	Some university	5
province	18	2009	University completed	6
province	15	2009	No formal schooling	20
province	15	2009	Post-secondary qualifications, other than university	1
province	15	2009	Primary school completed	30
province	15	2009	Secondary school / high school completed	24
province	15	2009	Some primary schooling	25
province	15	2009	Some secondary school / high school	27
province	15	2009	University completed	1
province	16	2009	No formal schooling	10
province	16	2009	Post-secondary qualifications, other than university	2
province	16	2009	Primary school completed	22
province	16	2009	Secondary school / high school completed	25
province	16	2009	Some primary schooling	11
province	16	2009	Some secondary school / high school	33
province	16	2009	Some university	1
province	17	2009	No formal schooling	11
province	17	2009	Post-graduate	8
province	17	2009	Post-secondary qualifications, other than university	44
province	17	2009	Primary school completed	35
province	17	2009	Secondary school / high school completed	72
province	17	2009	Some primary schooling	26
province	17	2009	Some secondary school / high school	78
province	17	2009	Some university	4
province	17	2009	University completed	10
country	ZW	2009	Some secondary school / high school	517
country	ZW	2009	Some primary schooling	233
country	ZW	2009	No formal schooling	161
country	ZW	2009	University completed	73
country	ZW	2009	Informal schooling only	5
country	ZW	2009	Some university	28
country	ZW	2009	Post-secondary qualifications, other than university	217
country	ZW	2009	Post-graduate	22
country	ZW	2009	Primary school completed	329
country	ZW	2009	Secondary school / high school completed	815
\.


--
-- Name: education_of_respondent pk_education_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.education_of_respondent
    ADD CONSTRAINT pk_education_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, education_of_respondent);


--
-- PostgreSQL database dump complete
--

