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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_identity_document DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_identity_document;
DROP TABLE IF EXISTS public.difficulty_to_obtain_identity_document;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_identity_document; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_identity_document (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_identity_document character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_identity_document; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_identity_document (geo_level, geo_code, geo_version, difficulty_to_obtain_identity_document, total) FROM stdin;
region	1	2009	Difficult	3
region	1	2009	Easy	22
region	1	2009	No contact	91
region	1	2009	Very Difficult	1
region	1	2009	Very Easy	3
region	2	2009	Difficult	31
region	2	2009	Easy	55
region	2	2009	No contact	162
region	2	2009	Very Difficult	8
region	2	2009	Very Easy	17
region	3	2009	Difficult	1
region	3	2009	Easy	6
region	3	2009	No contact	86
region	3	2009	Very Difficult	3
region	4	2009	Difficult	3
region	4	2009	No contact	62
region	4	2009	Very Difficult	3
region	4	2009	Very Easy	3
region	5	2009	Difficult	3
region	5	2009	Easy	3
region	5	2009	No contact	41
region	5	2009	Very Easy	1
region	6	2009	Difficult	2
region	6	2009	Easy	1
region	6	2009	No contact	69
region	7	2009	Difficult	9
region	7	2009	Easy	5
region	7	2009	No contact	39
region	7	2009	Very Difficult	3
region	8	2009	Difficult	5
region	8	2009	Easy	2
region	8	2009	No contact	32
region	8	2009	Very Easy	1
region	9	2009	Difficult	1
region	9	2009	Easy	2
region	9	2009	No contact	21
region	10	2009	Difficult	1
region	10	2009	Easy	3
region	10	2009	No contact	90
region	10	2009	Very Difficult	1
region	10	2009	Very Easy	1
region	11	2009	Difficult	2
region	11	2009	Easy	20
region	11	2009	No contact	61
region	11	2009	Very Difficult	3
region	11	2009	Very Easy	2
region	12	2009	No contact	7
region	12	2009	Very Easy	1
region	13	2009	Difficult	3
region	13	2009	No contact	21
region	14	2009	Difficult	8
region	14	2009	Easy	4
region	14	2009	No contact	30
region	14	2009	Very Difficult	6
region	15	2009	Difficult	7
region	15	2009	Easy	11
region	15	2009	No contact	43
region	15	2009	Very Difficult	2
region	15	2009	Very Easy	1
region	16	2009	Difficult	3
region	16	2009	Easy	1
region	16	2009	No contact	75
region	16	2009	Very Difficult	1
region	17	2009	Difficult	4
region	17	2009	Don't Know	1
region	17	2009	Easy	4
region	17	2009	No contact	50
region	17	2009	Very Easy	5
region	30	2009	Difficult	24
region	30	2009	Easy	10
region	30	2009	No contact	74
region	30	2009	Very Difficult	3
region	30	2009	Very Easy	1
region	18	2009	Difficult	7
region	18	2009	Easy	9
region	18	2009	No contact	101
region	18	2009	Very Difficult	3
region	19	2009	Difficult	16
region	19	2009	Easy	2
region	19	2009	No contact	51
region	19	2009	Very Difficult	2
region	20	2009	Difficult	4
region	20	2009	Easy	8
region	20	2009	No contact	106
region	20	2009	Very Difficult	5
region	20	2009	Very Easy	1
region	21	2009	Difficult	3
region	21	2009	Easy	4
region	21	2009	No contact	33
region	22	2009	Difficult	2
region	22	2009	Easy	3
region	22	2009	No contact	65
region	22	2009	Very Difficult	1
region	22	2009	Very Easy	1
region	23	2009	Difficult	3
region	23	2009	Easy	3
region	23	2009	No contact	33
region	24	2009	Difficult	6
region	24	2009	Easy	3
region	24	2009	No contact	61
region	24	2009	Very Easy	2
region	25	2009	Difficult	1
region	25	2009	Easy	2
region	25	2009	No contact	67
region	25	2009	Very Difficult	2
region	26	2009	Easy	1
region	26	2009	No contact	61
region	26	2009	Very Difficult	1
region	26	2009	Very Easy	1
region	27	2009	Difficult	2
region	27	2009	Easy	1
region	27	2009	No contact	61
region	31	2009	Difficult	1
region	31	2009	Easy	1
region	31	2009	No contact	69
region	31	2009	Very Easy	1
region	29	2009	Difficult	4
region	29	2009	Easy	11
region	29	2009	No contact	89
region	28	2009	Difficult	16
region	28	2009	Easy	13
region	28	2009	No contact	54
region	28	2009	Very Difficult	4
region	28	2009	Very Easy	1
country	TZ	2009	Very Easy	43
country	TZ	2009	No contact	1905
country	TZ	2009	Easy	210
country	TZ	2009	Very Difficult	52
country	TZ	2009	Don't Know	1
country	TZ	2009	Difficult	175
\.


--
-- Name: difficulty_to_obtain_identity_document pk_difficulty_to_obtain_identity_document; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_identity_document
    ADD CONSTRAINT pk_difficulty_to_obtain_identity_document PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_identity_document);


--
-- PostgreSQL database dump complete
--

