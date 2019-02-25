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
province	10	2009	Agree	75
province	10	2009	Disagree	12
province	10	2009	Don't Know	3
province	10	2009	Neither Agree Nor Disagree	8
province	10	2009	Strongly Agree	41
province	10	2009	Strongly Disagree	13
province	19	2009	Agree	246
province	19	2009	Disagree	34
province	19	2009	Don't Know	8
province	19	2009	Neither Agree Nor Disagree	33
province	19	2009	Strongly Agree	106
province	19	2009	Strongly Disagree	21
province	11	2009	Agree	137
province	11	2009	Disagree	6
province	11	2009	Don't Know	19
province	11	2009	Neither Agree Nor Disagree	13
province	11	2009	Strongly Agree	124
province	11	2009	Strongly Disagree	5
province	12	2009	Agree	81
province	12	2009	Disagree	8
province	12	2009	Don't Know	17
province	12	2009	Neither Agree Nor Disagree	9
province	12	2009	Strongly Agree	91
province	12	2009	Strongly Disagree	2
province	13	2009	Agree	96
province	13	2009	Disagree	13
province	13	2009	Don't Know	11
province	13	2009	Neither Agree Nor Disagree	25
province	13	2009	Strongly Agree	96
province	13	2009	Strongly Disagree	7
province	14	2009	Agree	117
province	14	2009	Disagree	15
province	14	2009	Don't Know	3
province	14	2009	Neither Agree Nor Disagree	12
province	14	2009	Strongly Agree	119
province	14	2009	Strongly Disagree	6
province	18	2009	Agree	101
province	18	2009	Disagree	23
province	18	2009	Don't Know	6
province	18	2009	Neither Agree Nor Disagree	51
province	18	2009	Strongly Agree	46
province	18	2009	Strongly Disagree	21
province	15	2009	Agree	54
province	15	2009	Disagree	8
province	15	2009	Don't Know	18
province	15	2009	Neither Agree Nor Disagree	11
province	15	2009	Strongly Agree	32
province	15	2009	Strongly Disagree	5
province	16	2009	Agree	45
province	16	2009	Disagree	3
province	16	2009	Don't Know	7
province	16	2009	Neither Agree Nor Disagree	7
province	16	2009	Strongly Agree	36
province	16	2009	Strongly Disagree	6
province	17	2009	Agree	149
province	17	2009	Disagree	12
province	17	2009	Don't Know	8
province	17	2009	Neither Agree Nor Disagree	35
province	17	2009	Strongly Agree	75
province	17	2009	Strongly Disagree	9
country	ZW	2009	Neither Agree Nor Disagree	204
country	ZW	2009	Disagree	134
country	ZW	2009	Strongly Agree	766
country	ZW	2009	Agree	1101
country	ZW	2009	Strongly Disagree	95
country	ZW	2009	Don't Know	100
\.


--
-- Name: people_must_pay_taxes pk_people_must_pay_taxes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_pay_taxes
    ADD CONSTRAINT pk_people_must_pay_taxes PRIMARY KEY (geo_level, geo_code, geo_version, people_must_pay_taxes);


--
-- PostgreSQL database dump complete
--

