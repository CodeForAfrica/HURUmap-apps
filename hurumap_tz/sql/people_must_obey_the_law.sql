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

ALTER TABLE IF EXISTS ONLY public.people_must_obey_the_law DROP CONSTRAINT IF EXISTS pk_people_must_obey_the_law;
DROP TABLE IF EXISTS public.people_must_obey_the_law;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_must_obey_the_law; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_must_obey_the_law (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_must_obey_the_law character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_must_obey_the_law; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_must_obey_the_law (geo_level, geo_code, geo_version, people_must_obey_the_law, total) FROM stdin;
region	1	2009	Agree	43
region	1	2009	Disagree	27
region	1	2009	Don't Know	1
region	1	2009	Neither Agree Nor Disagree	13
region	1	2009	Strongly Agree	25
region	1	2009	Strongly Disagree	11
region	2	2009	Agree	156
region	2	2009	Disagree	33
region	2	2009	Don't Know	2
region	2	2009	Neither Agree Nor Disagree	18
region	2	2009	Strongly Agree	41
region	2	2009	Strongly Disagree	22
region	3	2009	Agree	54
region	3	2009	Disagree	4
region	3	2009	Don't Know	1
region	3	2009	Neither Agree Nor Disagree	4
region	3	2009	Strongly Agree	33
region	4	2009	Agree	45
region	4	2009	Disagree	12
region	4	2009	Neither Agree Nor Disagree	2
region	4	2009	Strongly Agree	11
region	4	2009	Strongly Disagree	1
region	5	2009	Agree	28
region	5	2009	Disagree	7
region	5	2009	Don't Know	3
region	5	2009	Neither Agree Nor Disagree	1
region	5	2009	Strongly Agree	7
region	5	2009	Strongly Disagree	1
region	6	2009	Agree	46
region	6	2009	Disagree	14
region	6	2009	Neither Agree Nor Disagree	5
region	6	2009	Strongly Agree	6
region	6	2009	Strongly Disagree	1
region	7	2009	Agree	31
region	7	2009	Disagree	2
region	7	2009	Neither Agree Nor Disagree	1
region	7	2009	Strongly Agree	22
region	8	2009	Agree	19
region	8	2009	Don't Know	1
region	8	2009	Strongly Agree	17
region	8	2009	Strongly Disagree	3
region	9	2009	Agree	20
region	9	2009	Strongly Agree	4
region	10	2009	Agree	52
region	10	2009	Disagree	18
region	10	2009	Don't Know	2
region	10	2009	Neither Agree Nor Disagree	10
region	10	2009	Strongly Agree	13
region	10	2009	Strongly Disagree	1
region	11	2009	Agree	41
region	11	2009	Disagree	13
region	11	2009	Strongly Agree	26
region	11	2009	Strongly Disagree	8
region	12	2009	Agree	4
region	12	2009	Strongly Agree	4
region	13	2009	Agree	18
region	13	2009	Strongly Agree	5
region	13	2009	Strongly Disagree	1
region	14	2009	Agree	32
region	14	2009	Disagree	6
region	14	2009	Neither Agree Nor Disagree	1
region	14	2009	Strongly Agree	1
region	14	2009	Strongly Disagree	8
region	15	2009	Agree	19
region	15	2009	Disagree	6
region	15	2009	Don't Know	1
region	15	2009	Neither Agree Nor Disagree	13
region	15	2009	Strongly Agree	21
region	15	2009	Strongly Disagree	4
region	16	2009	Agree	34
region	16	2009	Disagree	20
region	16	2009	Neither Agree Nor Disagree	2
region	16	2009	Strongly Agree	19
region	16	2009	Strongly Disagree	5
region	17	2009	Agree	51
region	17	2009	Don't Know	1
region	17	2009	Neither Agree Nor Disagree	1
region	17	2009	Strongly Agree	11
region	30	2009	Agree	60
region	30	2009	Disagree	4
region	30	2009	Neither Agree Nor Disagree	1
region	30	2009	Strongly Agree	44
region	30	2009	Strongly Disagree	3
region	18	2009	Agree	52
region	18	2009	Disagree	5
region	18	2009	Don't Know	2
region	18	2009	Neither Agree Nor Disagree	13
region	18	2009	Strongly Agree	48
region	19	2009	Agree	45
region	19	2009	Neither Agree Nor Disagree	2
region	19	2009	Strongly Agree	18
region	19	2009	Strongly Disagree	6
region	20	2009	Agree	63
region	20	2009	Disagree	28
region	20	2009	Don't Know	1
region	20	2009	Neither Agree Nor Disagree	4
region	20	2009	Strongly Agree	22
region	20	2009	Strongly Disagree	6
region	21	2009	Agree	21
region	21	2009	Disagree	7
region	21	2009	Don't Know	1
region	21	2009	Neither Agree Nor Disagree	1
region	21	2009	Strongly Agree	8
region	21	2009	Strongly Disagree	2
region	22	2009	Agree	40
region	22	2009	Disagree	16
region	22	2009	Neither Agree Nor Disagree	12
region	22	2009	Strongly Agree	3
region	22	2009	Strongly Disagree	1
region	23	2009	Agree	25
region	23	2009	Don't Know	3
region	23	2009	Neither Agree Nor Disagree	4
region	23	2009	Strongly Agree	7
region	24	2009	Agree	50
region	24	2009	Disagree	6
region	24	2009	Don't Know	3
region	24	2009	Neither Agree Nor Disagree	2
region	24	2009	Strongly Agree	8
region	24	2009	Strongly Disagree	3
region	25	2009	Agree	48
region	25	2009	Disagree	14
region	25	2009	Neither Agree Nor Disagree	6
region	25	2009	Strongly Agree	3
region	25	2009	Strongly Disagree	1
region	26	2009	Agree	46
region	26	2009	Disagree	9
region	26	2009	Neither Agree Nor Disagree	6
region	26	2009	Strongly Agree	2
region	26	2009	Strongly Disagree	1
region	27	2009	Agree	37
region	27	2009	Disagree	19
region	27	2009	Neither Agree Nor Disagree	6
region	27	2009	Strongly Agree	1
region	27	2009	Strongly Disagree	1
region	31	2009	Agree	55
region	31	2009	Don't Know	1
region	31	2009	Neither Agree Nor Disagree	2
region	31	2009	Strongly Agree	12
region	31	2009	Strongly Disagree	2
region	29	2009	Agree	54
region	29	2009	Disagree	5
region	29	2009	Don't Know	1
region	29	2009	Neither Agree Nor Disagree	7
region	29	2009	Strongly Agree	33
region	29	2009	Strongly Disagree	4
region	28	2009	Agree	20
region	28	2009	Disagree	11
region	28	2009	Don't Know	3
region	28	2009	Neither Agree Nor Disagree	21
region	28	2009	Strongly Agree	27
region	28	2009	Strongly Disagree	6
country	TZ	2009	Neither Agree Nor Disagree	158
country	TZ	2009	Disagree	286
country	TZ	2009	Strongly Agree	502
country	TZ	2009	Agree	1309
country	TZ	2009	Strongly Disagree	102
country	TZ	2009	Don't Know	27
\.


--
-- Name: people_must_obey_the_law pk_people_must_obey_the_law; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_obey_the_law
    ADD CONSTRAINT pk_people_must_obey_the_law PRIMARY KEY (geo_level, geo_code, geo_version, people_must_obey_the_law);


--
-- PostgreSQL database dump complete
--

