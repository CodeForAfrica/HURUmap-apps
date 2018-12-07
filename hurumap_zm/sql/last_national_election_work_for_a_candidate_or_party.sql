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

ALTER TABLE IF EXISTS ONLY public.last_national_election_work_for_a_candidate_or_party DROP CONSTRAINT IF EXISTS pk_last_national_election_work_for_a_candidate_or_party;
DROP TABLE IF EXISTS public.last_national_election_work_for_a_candidate_or_party;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: last_national_election_work_for_a_candidate_or_party; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.last_national_election_work_for_a_candidate_or_party (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    last_national_election_work_for_a_candidate_or_party character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: last_national_election_work_for_a_candidate_or_party; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.last_national_election_work_for_a_candidate_or_party (geo_level, geo_code, geo_version, last_national_election_work_for_a_candidate_or_party, total) FROM stdin;
province	1	2010	No	103
province	1	2010	Yes	15
province	2	2010	No	166
province	2	2010	Yes	26
province	3	2010	No	107
province	3	2010	Yes	29
province	4	2010	Don't know	1
province	4	2010	No	74
province	4	2010	Yes	12
province	5	2010	Don't know	2
province	5	2010	No	204
province	5	2010	Yes	18
province	6	2010	No	54
province	6	2010	Yes	10
province	8	2010	No	58
province	8	2010	Yes	6
province	7	2010	Don't know	1
province	7	2010	No	78
province	7	2010	Yes	17
province	9	2010	No	122
province	9	2010	Yes	14
province	10	2010	Don't know	1
province	10	2010	No	64
province	10	2010	Yes	15
country	ZM	2010	Yes	162
country	ZM	2010	No	1030
country	ZM	2010	Don't know	5
\.


--
-- Name: last_national_election_work_for_a_candidate_or_party pk_last_national_election_work_for_a_candidate_or_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.last_national_election_work_for_a_candidate_or_party
    ADD CONSTRAINT pk_last_national_election_work_for_a_candidate_or_party PRIMARY KEY (geo_level, geo_code, geo_version, last_national_election_work_for_a_candidate_or_party);


--
-- PostgreSQL database dump complete
--

