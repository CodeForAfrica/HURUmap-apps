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
region	1	2009	Agree	23
region	1	2009	Disagree	12
region	1	2009	Don't Know	1
region	1	2009	Neither Agree Nor Disagree	40
region	1	2009	Strongly Agree	21
region	1	2009	Strongly Disagree	23
region	2	2009	Agree	105
region	2	2009	Disagree	38
region	2	2009	Don't Know	4
region	2	2009	Neither Agree Nor Disagree	29
region	2	2009	Strongly Agree	50
region	2	2009	Strongly Disagree	45
region	3	2009	Agree	31
region	3	2009	Disagree	20
region	3	2009	Don't Know	8
region	3	2009	Neither Agree Nor Disagree	4
region	3	2009	Strongly Agree	14
region	3	2009	Strongly Disagree	19
region	4	2009	Agree	29
region	4	2009	Disagree	12
region	4	2009	Neither Agree Nor Disagree	4
region	4	2009	Strongly Agree	17
region	4	2009	Strongly Disagree	9
region	5	2009	Agree	21
region	5	2009	Disagree	11
region	5	2009	Don't Know	5
region	5	2009	Neither Agree Nor Disagree	1
region	5	2009	Strongly Agree	2
region	5	2009	Strongly Disagree	8
region	6	2009	Agree	39
region	6	2009	Disagree	13
region	6	2009	Neither Agree Nor Disagree	7
region	6	2009	Strongly Agree	9
region	6	2009	Strongly Disagree	4
region	7	2009	Agree	21
region	7	2009	Disagree	10
region	7	2009	Strongly Agree	12
region	7	2009	Strongly Disagree	13
region	8	2009	Agree	22
region	8	2009	Disagree	8
region	8	2009	Don't Know	1
region	8	2009	Strongly Agree	7
region	8	2009	Strongly Disagree	2
region	9	2009	Agree	13
region	9	2009	Disagree	5
region	9	2009	Strongly Agree	5
region	9	2009	Strongly Disagree	1
region	10	2009	Agree	27
region	10	2009	Disagree	35
region	10	2009	Don't Know	5
region	10	2009	Neither Agree Nor Disagree	1
region	10	2009	Strongly Agree	13
region	10	2009	Strongly Disagree	15
region	11	2009	Agree	12
region	11	2009	Disagree	6
region	11	2009	Don't Know	3
region	11	2009	Neither Agree Nor Disagree	25
region	11	2009	Strongly Agree	17
region	11	2009	Strongly Disagree	25
region	12	2009	Agree	3
region	12	2009	Disagree	2
region	12	2009	Neither Agree Nor Disagree	1
region	12	2009	Strongly Agree	2
region	13	2009	Agree	11
region	13	2009	Disagree	1
region	13	2009	Strongly Agree	9
region	13	2009	Strongly Disagree	3
region	14	2009	Agree	29
region	14	2009	Disagree	7
region	14	2009	Neither Agree Nor Disagree	2
region	14	2009	Strongly Agree	5
region	14	2009	Strongly Disagree	5
region	15	2009	Agree	16
region	15	2009	Disagree	4
region	15	2009	Don't Know	3
region	15	2009	Neither Agree Nor Disagree	13
region	15	2009	Strongly Agree	9
region	15	2009	Strongly Disagree	19
region	16	2009	Agree	13
region	16	2009	Disagree	25
region	16	2009	Don't Know	1
region	16	2009	Neither Agree Nor Disagree	4
region	16	2009	Strongly Agree	28
region	16	2009	Strongly Disagree	9
region	17	2009	Agree	38
region	17	2009	Disagree	5
region	17	2009	Neither Agree Nor Disagree	1
region	17	2009	Strongly Agree	19
region	17	2009	Strongly Disagree	1
region	30	2009	Agree	44
region	30	2009	Disagree	19
region	30	2009	Neither Agree Nor Disagree	1
region	30	2009	Strongly Agree	25
region	30	2009	Strongly Disagree	23
region	18	2009	Agree	63
region	18	2009	Disagree	13
region	18	2009	Don't Know	9
region	18	2009	Neither Agree Nor Disagree	3
region	18	2009	Strongly Agree	19
region	18	2009	Strongly Disagree	13
region	19	2009	Agree	50
region	19	2009	Disagree	7
region	19	2009	Strongly Agree	12
region	19	2009	Strongly Disagree	2
region	20	2009	Agree	40
region	20	2009	Disagree	23
region	20	2009	Neither Agree Nor Disagree	8
region	20	2009	Strongly Agree	32
region	20	2009	Strongly Disagree	21
region	21	2009	Agree	18
region	21	2009	Disagree	8
region	21	2009	Don't Know	2
region	21	2009	Strongly Agree	9
region	21	2009	Strongly Disagree	3
region	22	2009	Agree	19
region	22	2009	Disagree	25
region	22	2009	Don't Know	2
region	22	2009	Neither Agree Nor Disagree	6
region	22	2009	Strongly Agree	6
region	22	2009	Strongly Disagree	14
region	23	2009	Agree	18
region	23	2009	Disagree	6
region	23	2009	Neither Agree Nor Disagree	4
region	23	2009	Strongly Agree	11
region	24	2009	Agree	39
region	24	2009	Disagree	6
region	24	2009	Don't Know	1
region	24	2009	Neither Agree Nor Disagree	3
region	24	2009	Strongly Agree	15
region	24	2009	Strongly Disagree	8
region	25	2009	Agree	19
region	25	2009	Disagree	28
region	25	2009	Strongly Agree	13
region	25	2009	Strongly Disagree	12
region	26	2009	Agree	20
region	26	2009	Disagree	20
region	26	2009	Don't Know	1
region	26	2009	Neither Agree Nor Disagree	3
region	26	2009	Strongly Agree	3
region	26	2009	Strongly Disagree	17
region	27	2009	Agree	17
region	27	2009	Disagree	27
region	27	2009	Strongly Agree	7
region	27	2009	Strongly Disagree	13
region	31	2009	Agree	34
region	31	2009	Disagree	8
region	31	2009	Neither Agree Nor Disagree	2
region	31	2009	Strongly Agree	25
region	31	2009	Strongly Disagree	3
region	29	2009	Agree	36
region	29	2009	Disagree	16
region	29	2009	Don't Know	8
region	29	2009	Neither Agree Nor Disagree	16
region	29	2009	Strongly Agree	16
region	29	2009	Strongly Disagree	12
region	28	2009	Agree	19
region	28	2009	Disagree	6
region	28	2009	Don't Know	4
region	28	2009	Neither Agree Nor Disagree	20
region	28	2009	Strongly Agree	16
region	28	2009	Strongly Disagree	23
country	TZ	2009	Neither Agree Nor Disagree	198
country	TZ	2009	Disagree	426
country	TZ	2009	Strongly Agree	448
country	TZ	2009	Agree	889
country	TZ	2009	Strongly Disagree	365
country	TZ	2009	Don't Know	58
\.


--
-- Name: people_can_fight_corruption pk_people_can_fight_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_can_fight_corruption
    ADD CONSTRAINT pk_people_can_fight_corruption PRIMARY KEY (geo_level, geo_code, geo_version, people_can_fight_corruption);


--
-- PostgreSQL database dump complete
--

