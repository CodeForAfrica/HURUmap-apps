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
region	114	2014	Informal schooling only	4
region	114	2014	No formal schooling	61
region	114	2014	Post-secondary qualifications, other than university	36
region	114	2014	Primary school completed	105
region	114	2014	Secondary school / high school completed	99
region	114	2014	Some primary schooling	157
region	114	2014	Some secondary school / high school	157
region	114	2014	Some university	21
region	114	2014	University completed	24
region	115	2014	Don't know	1
region	115	2014	Informal schooling only	20
region	115	2014	No formal schooling	86
region	115	2014	Post-graduate	2
region	115	2014	Post-secondary qualifications, other than university	34
region	115	2014	Primary school completed	78
region	115	2014	Secondary school / high school completed	76
region	115	2014	Some primary schooling	181
region	115	2014	Some secondary school / high school	126
region	115	2014	Some university	9
region	115	2014	University completed	10
region	116	2014	Informal schooling only	2
region	116	2014	No formal schooling	104
region	116	2014	Post-graduate	1
region	116	2014	Post-secondary qualifications, other than university	31
region	116	2014	Primary school completed	71
region	116	2014	Secondary school / high school completed	43
region	116	2014	Some primary schooling	178
region	116	2014	Some secondary school / high school	70
region	116	2014	Some university	1
region	116	2014	University completed	2
region	117	2014	Informal schooling only	16
region	117	2014	No formal schooling	89
region	117	2014	Post-secondary qualifications, other than university	28
region	117	2014	Primary school completed	109
region	117	2014	Secondary school / high school completed	52
region	117	2014	Some primary schooling	208
region	117	2014	Some secondary school / high school	103
region	117	2014	Some university	1
region	117	2014	University completed	2
country	UG	2014	Some secondary school / high school	456
country	UG	2014	Some primary schooling	724
country	UG	2014	No formal schooling	340
country	UG	2014	University completed	38
country	UG	2014	Informal schooling only	42
country	UG	2014	Primary school completed	363
country	UG	2014	Some university	32
country	UG	2014	Post-secondary qualifications, other than university	129
country	UG	2014	Post-graduate	3
country	UG	2014	Don't know	1
country	UG	2014	Secondary school / high school completed	270
\.


--
-- Name: education_of_respondent pk_education_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.education_of_respondent
    ADD CONSTRAINT pk_education_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, education_of_respondent);


--
-- PostgreSQL database dump complete
--

