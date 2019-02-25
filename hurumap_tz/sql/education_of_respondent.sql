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
region	1	2009	Informal schooling only	2
region	1	2009	No formal schooling	21
region	1	2009	Post-secondary qualifications, other than university	1
region	1	2009	Primary school completed	64
region	1	2009	Secondary school / high school completed	12
region	1	2009	Some primary schooling	10
region	1	2009	Some secondary school / high school	6
region	1	2009	Some university	1
region	1	2009	University completed	3
region	2	2009	Informal schooling only	4
region	2	2009	No formal schooling	7
region	2	2009	Post-graduate	5
region	2	2009	Post-secondary qualifications, other than university	13
region	2	2009	Primary school completed	115
region	2	2009	Secondary school / high school completed	66
region	2	2009	Some primary schooling	8
region	2	2009	Some secondary school / high school	25
region	2	2009	Some university	4
region	2	2009	University completed	26
region	3	2009	No formal schooling	9
region	3	2009	Post-secondary qualifications, other than university	3
region	3	2009	Primary school completed	56
region	3	2009	Secondary school / high school completed	12
region	3	2009	Some primary schooling	9
region	3	2009	Some secondary school / high school	6
region	3	2009	Some university	1
region	4	2009	No formal schooling	7
region	4	2009	Post-secondary qualifications, other than university	3
region	4	2009	Primary school completed	36
region	4	2009	Secondary school / high school completed	8
region	4	2009	Some primary schooling	13
region	4	2009	Some secondary school / high school	4
region	5	2009	No formal schooling	3
region	5	2009	Post-secondary qualifications, other than university	4
region	5	2009	Primary school completed	27
region	5	2009	Secondary school / high school completed	4
region	5	2009	Some primary schooling	5
region	5	2009	Some secondary school / high school	2
region	5	2009	Some university	3
region	6	2009	Informal schooling only	3
region	6	2009	No formal schooling	11
region	6	2009	Post-secondary qualifications, other than university	3
region	6	2009	Primary school completed	31
region	6	2009	Secondary school / high school completed	8
region	6	2009	Some primary schooling	10
region	6	2009	Some secondary school / high school	6
region	7	2009	Informal schooling only	2
region	7	2009	No formal schooling	7
region	7	2009	Post-secondary qualifications, other than university	3
region	7	2009	Primary school completed	11
region	7	2009	Secondary school / high school completed	7
region	7	2009	Some primary schooling	8
region	7	2009	Some secondary school / high school	18
region	8	2009	Informal schooling only	2
region	8	2009	No formal schooling	3
region	8	2009	Post-secondary qualifications, other than university	2
region	8	2009	Primary school completed	7
region	8	2009	Secondary school / high school completed	7
region	8	2009	Some primary schooling	3
region	8	2009	Some secondary school / high school	16
region	9	2009	No formal schooling	2
region	9	2009	Post-secondary qualifications, other than university	1
region	9	2009	Primary school completed	15
region	9	2009	Some primary schooling	2
region	9	2009	Some secondary school / high school	4
region	10	2009	No formal schooling	20
region	10	2009	Primary school completed	45
region	10	2009	Secondary school / high school completed	10
region	10	2009	Some primary schooling	18
region	10	2009	Some secondary school / high school	3
region	11	2009	No formal schooling	12
region	11	2009	Post-secondary qualifications, other than university	3
region	11	2009	Primary school completed	54
region	11	2009	Secondary school / high school completed	7
region	11	2009	Some primary schooling	5
region	11	2009	Some secondary school / high school	1
region	11	2009	Some university	2
region	11	2009	University completed	4
region	12	2009	Primary school completed	1
region	12	2009	Some primary schooling	1
region	12	2009	Some secondary school / high school	5
region	12	2009	Some university	1
region	13	2009	Informal schooling only	1
region	13	2009	Post-secondary qualifications, other than university	1
region	13	2009	Primary school completed	3
region	13	2009	Secondary school / high school completed	1
region	13	2009	Some primary schooling	2
region	13	2009	Some secondary school / high school	16
region	14	2009	Informal schooling only	1
region	14	2009	No formal schooling	5
region	14	2009	Primary school completed	24
region	14	2009	Secondary school / high school completed	2
region	14	2009	Some primary schooling	8
region	14	2009	Some secondary school / high school	8
region	15	2009	No formal schooling	12
region	15	2009	Post-secondary qualifications, other than university	2
region	15	2009	Primary school completed	33
region	15	2009	Secondary school / high school completed	5
region	15	2009	Some primary schooling	9
region	15	2009	Some secondary school / high school	2
region	15	2009	Some university	1
region	16	2009	Informal schooling only	4
region	16	2009	No formal schooling	9
region	16	2009	Post-secondary qualifications, other than university	1
region	16	2009	Primary school completed	44
region	16	2009	Secondary school / high school completed	10
region	16	2009	Some primary schooling	5
region	16	2009	Some secondary school / high school	3
region	16	2009	Some university	1
region	16	2009	University completed	3
region	17	2009	No formal schooling	3
region	17	2009	Post-secondary qualifications, other than university	5
region	17	2009	Primary school completed	36
region	17	2009	Secondary school / high school completed	11
region	17	2009	Some primary schooling	3
region	17	2009	Some secondary school / high school	6
region	30	2009	Informal schooling only	4
region	30	2009	No formal schooling	1
region	30	2009	Post-secondary qualifications, other than university	8
region	30	2009	Primary school completed	12
region	30	2009	Secondary school / high school completed	34
region	30	2009	Some primary schooling	3
region	30	2009	Some secondary school / high school	45
region	30	2009	Some university	4
region	30	2009	University completed	1
region	18	2009	No formal schooling	11
region	18	2009	Post-secondary qualifications, other than university	8
region	18	2009	Primary school completed	80
region	18	2009	Secondary school / high school completed	8
region	18	2009	Some primary schooling	7
region	18	2009	Some secondary school / high school	4
region	18	2009	Some university	1
region	18	2009	University completed	1
region	19	2009	No formal schooling	11
region	19	2009	Post-secondary qualifications, other than university	3
region	19	2009	Primary school completed	42
region	19	2009	Secondary school / high school completed	3
region	19	2009	Some primary schooling	5
region	19	2009	Some secondary school / high school	6
region	19	2009	Some university	1
region	20	2009	Informal schooling only	2
region	20	2009	No formal schooling	7
region	20	2009	Post-graduate	1
region	20	2009	Post-secondary qualifications, other than university	6
region	20	2009	Primary school completed	61
region	20	2009	Secondary school / high school completed	7
region	20	2009	Some primary schooling	20
region	20	2009	Some secondary school / high school	16
region	20	2009	Some university	1
region	20	2009	University completed	3
region	21	2009	No formal schooling	1
region	21	2009	Post-secondary qualifications, other than university	2
region	21	2009	Primary school completed	19
region	21	2009	Secondary school / high school completed	7
region	21	2009	Some primary schooling	4
region	21	2009	Some secondary school / high school	3
region	21	2009	Some university	1
region	21	2009	University completed	3
region	22	2009	Informal schooling only	3
region	22	2009	No formal schooling	4
region	22	2009	Primary school completed	46
region	22	2009	Secondary school / high school completed	9
region	22	2009	Some primary schooling	7
region	22	2009	Some secondary school / high school	3
region	23	2009	No formal schooling	2
region	23	2009	Primary school completed	22
region	23	2009	Some primary schooling	13
region	23	2009	Some secondary school / high school	1
region	23	2009	University completed	1
region	24	2009	Informal schooling only	1
region	24	2009	No formal schooling	6
region	24	2009	Post-secondary qualifications, other than university	2
region	24	2009	Primary school completed	48
region	24	2009	Secondary school / high school completed	5
region	24	2009	Some primary schooling	6
region	24	2009	Some secondary school / high school	3
region	24	2009	University completed	1
region	25	2009	No formal schooling	2
region	25	2009	Post-secondary qualifications, other than university	1
region	25	2009	Primary school completed	43
region	25	2009	Secondary school / high school completed	8
region	25	2009	Some primary schooling	15
region	25	2009	Some secondary school / high school	3
region	26	2009	No formal schooling	8
region	26	2009	Primary school completed	38
region	26	2009	Secondary school / high school completed	6
region	26	2009	Some primary schooling	10
region	26	2009	Some secondary school / high school	2
region	27	2009	Informal schooling only	1
region	27	2009	No formal schooling	9
region	27	2009	Primary school completed	39
region	27	2009	Secondary school / high school completed	5
region	27	2009	Some primary schooling	9
region	27	2009	Some secondary school / high school	1
region	31	2009	Informal schooling only	1
region	31	2009	No formal schooling	1
region	31	2009	Post-secondary qualifications, other than university	1
region	31	2009	Primary school completed	44
region	31	2009	Secondary school / high school completed	7
region	31	2009	Some primary schooling	9
region	31	2009	Some secondary school / high school	7
region	31	2009	Some university	1
region	31	2009	University completed	1
region	29	2009	No formal schooling	11
region	29	2009	Post-secondary qualifications, other than university	1
region	29	2009	Primary school completed	51
region	29	2009	Secondary school / high school completed	4
region	29	2009	Some primary schooling	31
region	29	2009	Some secondary school / high school	6
region	28	2009	Informal schooling only	4
region	28	2009	No formal schooling	14
region	28	2009	Post-secondary qualifications, other than university	1
region	28	2009	Primary school completed	45
region	28	2009	Secondary school / high school completed	14
region	28	2009	Some primary schooling	4
region	28	2009	Some secondary school / high school	6
country	TZ	2009	Some secondary school / high school	237
country	TZ	2009	Some primary schooling	262
country	TZ	2009	No formal schooling	219
country	TZ	2009	University completed	47
country	TZ	2009	Informal schooling only	35
country	TZ	2009	Some university	23
country	TZ	2009	Post-secondary qualifications, other than university	78
country	TZ	2009	Post-graduate	6
country	TZ	2009	Primary school completed	1192
country	TZ	2009	Secondary school / high school completed	287
\.


--
-- Name: education_of_respondent pk_education_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.education_of_respondent
    ADD CONSTRAINT pk_education_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, education_of_respondent);


--
-- PostgreSQL database dump complete
--

