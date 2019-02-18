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
province	10	2009	No	142
province	10	2009	Yes	10
province	19	2009	No	426
province	19	2009	Yes	21
province	11	2009	No	268
province	11	2009	Yes	36
province	12	2009	No	192
province	12	2009	Yes	16
province	13	2009	No	227
province	13	2009	Yes	21
province	14	2009	No	240
province	14	2009	Yes	32
province	18	2009	Don't know	1
province	18	2009	No	242
province	18	2009	Yes	5
province	15	2009	No	125
province	15	2009	Yes	3
province	16	2009	No	101
province	16	2009	Yes	3
province	17	2009	No	261
province	17	2009	Yes	27
country	ZW	2009	Yes	174
country	ZW	2009	No	2224
country	ZW	2009	Don't know	1
\.


--
-- Name: election_work_for_candidate_or_party pk_election_work_for_candidate_or_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_work_for_candidate_or_party
    ADD CONSTRAINT pk_election_work_for_candidate_or_party PRIMARY KEY (geo_level, geo_code, geo_version, election_work_for_candidate_or_party);


--
-- PostgreSQL database dump complete
--

