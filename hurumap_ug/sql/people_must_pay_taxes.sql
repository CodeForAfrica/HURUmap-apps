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

ALTER TABLE IF EXISTS ONLY public.people_must_pay_taxes DROP CONSTRAINT IF EXISTS pk_people_must_pay_taxes;
DROP TABLE IF EXISTS public.people_must_pay_taxes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_must_pay_taxes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_must_pay_taxes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_must_pay_taxes character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_must_pay_taxes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_must_pay_taxes (geo_level, geo_code, geo_version, people_must_pay_taxes, total) FROM stdin;
region	114	2014	Agree	298
region	114	2014	Disagree	88
region	114	2014	Don't Know	28
region	114	2014	Neither Agree Nor Disagree	21
region	114	2014	Strongly Agree	203
region	114	2014	Strongly Disagree	26
region	115	2014	Agree	277
region	115	2014	Disagree	48
region	115	2014	Don't Know	15
region	115	2014	Neither Agree Nor Disagree	18
region	115	2014	Strongly Agree	199
region	115	2014	Strongly Disagree	67
region	116	2014	Agree	170
region	116	2014	Disagree	62
region	116	2014	Don't Know	14
region	116	2014	Neither Agree Nor Disagree	30
region	116	2014	Strongly Agree	101
region	116	2014	Strongly Disagree	127
region	117	2014	Agree	237
region	117	2014	Disagree	38
region	117	2014	Don't Know	34
region	117	2014	Neither Agree Nor Disagree	34
region	117	2014	Strongly Agree	211
region	117	2014	Strongly Disagree	54
country	UG	2014	Neither Agree Nor Disagree	103
country	UG	2014	Disagree	236
country	UG	2014	Strongly Agree	714
country	UG	2014	Agree	982
country	UG	2014	Strongly Disagree	274
country	UG	2014	Don't Know	91
\.


--
-- Name: people_must_pay_taxes pk_people_must_pay_taxes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_pay_taxes
    ADD CONSTRAINT pk_people_must_pay_taxes PRIMARY KEY (geo_level, geo_code, geo_version, people_must_pay_taxes);


--
-- PostgreSQL database dump complete
--

