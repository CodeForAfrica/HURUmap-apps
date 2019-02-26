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

ALTER TABLE IF EXISTS ONLY public.election_work_for_candidate_or_party DROP CONSTRAINT IF EXISTS pk_election_work_for_candidate_or_party;
DROP TABLE IF EXISTS public.election_work_for_candidate_or_party;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_work_for_candidate_or_party; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_work_for_candidate_or_party (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_work_for_candidate_or_party character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_work_for_candidate_or_party; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_work_for_candidate_or_party (geo_level, geo_code, geo_version, election_work_for_candidate_or_party, total) FROM stdin;
region	1	2009	No	104
region	1	2009	Yes	16
region	2	2009	No	243
region	2	2009	Yes	30
region	3	2009	No	84
region	3	2009	Yes	12
region	4	2009	No	66
region	4	2009	Yes	5
region	5	2009	Don't know	1
region	5	2009	No	42
region	5	2009	Yes	5
region	6	2009	No	67
region	6	2009	Yes	5
region	7	2009	No	52
region	7	2009	Yes	4
region	8	2009	No	35
region	8	2009	Yes	5
region	9	2009	No	23
region	9	2009	Yes	1
region	10	2009	No	87
region	10	2009	Yes	9
region	11	2009	No	64
region	11	2009	Yes	24
region	12	2009	No	7
region	12	2009	Yes	1
region	13	2009	No	22
region	13	2009	Yes	2
region	14	2009	No	39
region	14	2009	Yes	9
region	15	2009	No	54
region	15	2009	Yes	10
region	16	2009	No	69
region	16	2009	Yes	11
region	17	2009	No	62
region	17	2009	Yes	2
region	30	2009	No	93
region	30	2009	Yes	19
region	18	2009	No	105
region	18	2009	Yes	15
region	19	2009	No	64
region	19	2009	Yes	7
region	20	2009	No	103
region	20	2009	Yes	21
region	21	2009	No	40
region	22	2009	No	61
region	22	2009	Yes	11
region	23	2009	No	39
region	24	2009	No	64
region	24	2009	Yes	8
region	25	2009	No	72
region	26	2009	No	64
region	27	2009	No	59
region	27	2009	Yes	5
region	31	2009	No	69
region	31	2009	Yes	3
region	29	2009	No	87
region	29	2009	Yes	17
region	28	2009	No	63
region	28	2009	Yes	25
country	TZ	2009	Yes	282
country	TZ	2009	No	2103
country	TZ	2009	Don't know	1
\.


--
-- Name: election_work_for_candidate_or_party pk_election_work_for_candidate_or_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_work_for_candidate_or_party
    ADD CONSTRAINT pk_election_work_for_candidate_or_party PRIMARY KEY (geo_level, geo_code, geo_version, election_work_for_candidate_or_party);


--
-- PostgreSQL database dump complete
--

