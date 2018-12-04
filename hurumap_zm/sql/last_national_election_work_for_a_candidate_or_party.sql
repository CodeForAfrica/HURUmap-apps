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
province	1	2010	Don�t know	4
province	1	2010	Missing	2
province	1	2010	No	720
province	1	2010	Yes	105
province	2	2010	No	28
province	2	2010	Yes	4
province	3	2010	No	30
province	3	2010	Yes	10
province	4	2010	No	34
province	4	2010	Yes	6
province	6	2010	No	41
province	6	2010	Yes	7
province	8	2010	No	22
province	8	2010	Yes	2
province	7	2010	Don�t know	1
province	7	2010	No	39
province	7	2010	Yes	8
province	9	2010	No	69
province	9	2010	Yes	11
province	10	2010	No	47
province	10	2010	Yes	9
country	ZM	2010	No	1030
country	ZM	2010	Yes	162
country	ZM	2010	Missing	2
country	ZM	2010	Don�t know	5
\.


--
-- Name: last_national_election_work_for_a_candidate_or_party pk_last_national_election_work_for_a_candidate_or_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.last_national_election_work_for_a_candidate_or_party
    ADD CONSTRAINT pk_last_national_election_work_for_a_candidate_or_party PRIMARY KEY (geo_level, geo_code, geo_version, last_national_election_work_for_a_candidate_or_party);


--
-- PostgreSQL database dump complete
--

