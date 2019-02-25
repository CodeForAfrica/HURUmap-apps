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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_household_services DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_household_services;
DROP TABLE IF EXISTS public.difficulty_to_obtain_household_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_household_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_household_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_household_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_household_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_household_services (geo_level, geo_code, geo_version, difficulty_to_obtain_household_services, total) FROM stdin;
region	1	2009	Difficult	7
region	1	2009	Easy	20
region	1	2009	No contact	91
region	1	2009	Very Easy	2
region	2	2009	Difficult	31
region	2	2009	Easy	25
region	2	2009	No contact	200
region	2	2009	Very Difficult	12
region	2	2009	Very Easy	5
region	3	2009	Difficult	5
region	3	2009	Easy	3
region	3	2009	No contact	84
region	3	2009	Very Difficult	4
region	4	2009	Difficult	1
region	4	2009	Easy	1
region	4	2009	No contact	66
region	4	2009	Very Easy	3
region	5	2009	Difficult	3
region	5	2009	Easy	3
region	5	2009	No contact	42
region	6	2009	Difficult	2
region	6	2009	Easy	1
region	6	2009	No contact	68
region	6	2009	Very Difficult	1
region	7	2009	Difficult	9
region	7	2009	Easy	4
region	7	2009	No contact	43
region	8	2009	Difficult	5
region	8	2009	Easy	2
region	8	2009	No contact	32
region	8	2009	Very Difficult	1
region	9	2009	Easy	2
region	9	2009	No contact	22
region	10	2009	No contact	96
region	11	2009	Difficult	2
region	11	2009	Easy	18
region	11	2009	No contact	62
region	11	2009	Very Difficult	4
region	11	2009	Very Easy	2
region	12	2009	Difficult	1
region	12	2009	No contact	7
region	13	2009	Difficult	1
region	13	2009	Easy	3
region	13	2009	No contact	20
region	14	2009	Difficult	5
region	14	2009	No contact	40
region	14	2009	Very Difficult	3
region	15	2009	Difficult	14
region	15	2009	Easy	4
region	15	2009	No contact	45
region	15	2009	Very Difficult	1
region	16	2009	Difficult	1
region	16	2009	Easy	3
region	16	2009	No contact	75
region	16	2009	Very Easy	1
region	17	2009	Difficult	3
region	17	2009	No contact	59
region	17	2009	Very Difficult	1
region	17	2009	Very Easy	1
region	30	2009	Difficult	29
region	30	2009	Easy	7
region	30	2009	No contact	73
region	30	2009	Very Difficult	3
region	18	2009	Difficult	8
region	18	2009	Easy	3
region	18	2009	No contact	107
region	18	2009	Very Difficult	2
region	19	2009	Difficult	11
region	19	2009	Easy	7
region	19	2009	No contact	50
region	19	2009	Very Difficult	2
region	19	2009	Very Easy	1
region	20	2009	Difficult	3
region	20	2009	Easy	7
region	20	2009	No contact	113
region	20	2009	Very Easy	1
region	21	2009	Difficult	1
region	21	2009	No contact	38
region	21	2009	Very Difficult	1
region	22	2009	Difficult	3
region	22	2009	Easy	4
region	22	2009	No contact	64
region	22	2009	Very Difficult	1
region	23	2009	Difficult	2
region	23	2009	Easy	1
region	23	2009	No contact	36
region	24	2009	Difficult	3
region	24	2009	Easy	1
region	24	2009	No contact	67
region	24	2009	Very Difficult	1
region	25	2009	Difficult	1
region	25	2009	No contact	70
region	25	2009	Very Easy	1
region	26	2009	No contact	63
region	26	2009	Very Easy	1
region	27	2009	Difficult	1
region	27	2009	No contact	63
region	31	2009	Difficult	1
region	31	2009	Easy	1
region	31	2009	No contact	69
region	31	2009	Very Easy	1
region	29	2009	Difficult	3
region	29	2009	Easy	1
region	29	2009	No contact	99
region	29	2009	Very Difficult	1
region	28	2009	Difficult	21
region	28	2009	Easy	6
region	28	2009	No contact	54
region	28	2009	Very Difficult	4
region	28	2009	Very Easy	3
country	TZ	2009	Very Easy	22
country	TZ	2009	No contact	2018
country	TZ	2009	Very Difficult	42
country	TZ	2009	Easy	127
country	TZ	2009	Difficult	177
\.


--
-- Name: difficulty_to_obtain_household_services pk_difficulty_to_obtain_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_household_services
    ADD CONSTRAINT pk_difficulty_to_obtain_household_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_household_services);


--
-- PostgreSQL database dump complete
--

