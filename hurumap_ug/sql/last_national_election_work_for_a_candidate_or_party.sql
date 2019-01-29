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

ALTER TABLE IF EXISTS ONLY public.election_work_for_a_candidate_or_party DROP CONSTRAINT IF EXISTS pk_election_work_for_a_candidate_or_party;
DROP TABLE IF EXISTS public.election_work_for_a_candidate_or_party;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_work_for_a_candidate_or_party; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_work_for_a_candidate_or_party (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_work_for_a_candidate_or_party character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_work_for_a_candidate_or_party; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_work_for_a_candidate_or_party (geo_level, geo_code, geo_version, election_work_for_a_candidate_or_party, total) FROM stdin;
region	114	2014	Don't know	1
region	114	2014	No	526
region	114	2014	Yes	137
region	115	2014	Don't know	3
region	115	2014	No	468
region	115	2014	Yes	153
region	116	2014	Don't know	3
region	116	2014	No	403
region	116	2014	Yes	97
region	117	2014	Don't know	1
region	117	2014	No	484
region	117	2014	Yes	123
country	UG	2014	No	1881
country	UG	2014	Yes	510
country	UG	2014	Don't know	8
\.


--
-- Name: election_work_for_a_candidate_or_party pk_election_work_for_a_candidate_or_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_work_for_a_candidate_or_party
    ADD CONSTRAINT pk_election_work_for_a_candidate_or_party PRIMARY KEY (geo_level, geo_code, geo_version, election_work_for_a_candidate_or_party);


--
-- PostgreSQL database dump complete
--

