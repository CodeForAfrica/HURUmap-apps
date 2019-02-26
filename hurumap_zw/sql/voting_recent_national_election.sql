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

ALTER TABLE IF EXISTS ONLY public.voting_recent_national_election DROP CONSTRAINT IF EXISTS pk_voting_recent_national_election;
DROP TABLE IF EXISTS public.voting_recent_national_election;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: voting_recent_national_election; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.voting_recent_national_election (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    voting_recent_national_election character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: voting_recent_national_election; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.voting_recent_national_election (geo_level, geo_code, geo_version, voting_recent_national_election, total) FROM stdin;
province	10	2009	Did not vote for some other reason	11
province	10	2009	You could not find the polling station	1
province	10	2009	You decided not to vote	9
province	10	2009	You did not have time to vote	5
province	10	2009	You voted in the elections	96
province	10	2009	You were not registered to vote	22
province	10	2009	You were prevented from voting	2
province	10	2009	You were too young to vote	6
province	19	2009	Did not vote for some other reason	26
province	19	2009	Don't Know / Can't remember	1
province	19	2009	You could not find the polling station	6
province	19	2009	You decided not to vote	31
province	19	2009	You did not have time to vote	32
province	19	2009	You did not vote because your name not in the register	17
province	19	2009	You voted in the elections	251
province	19	2009	You were not registered to vote	56
province	19	2009	You were prevented from voting	12
province	19	2009	You were too young to vote	16
province	11	2009	Did not vote for some other reason	10
province	11	2009	You could not find the polling station	1
province	11	2009	You decided not to vote	12
province	11	2009	You did not have time to vote	4
province	11	2009	You did not vote because your name not in the register	10
province	11	2009	You voted in the elections	220
province	11	2009	You were not registered to vote	20
province	11	2009	You were prevented from voting	4
province	11	2009	You were too young to vote	23
province	12	2009	Did not vote for some other reason	12
province	12	2009	You decided not to vote	7
province	12	2009	You did not have time to vote	1
province	12	2009	You did not vote because your name not in the register	3
province	12	2009	You voted in the elections	166
province	12	2009	You were not registered to vote	12
province	12	2009	You were prevented from voting	2
province	12	2009	You were too young to vote	5
province	13	2009	Did not vote for some other reason	10
province	13	2009	Don't Know / Can't remember	1
province	13	2009	You decided not to vote	26
province	13	2009	You did not have time to vote	1
province	13	2009	You did not vote because your name not in the register	7
province	13	2009	You voted in the elections	177
province	13	2009	You were not registered to vote	19
province	13	2009	You were prevented from voting	2
province	13	2009	You were too young to vote	5
province	14	2009	Did not vote for some other reason	25
province	14	2009	You could not find the polling station	3
province	14	2009	You decided not to vote	8
province	14	2009	You did not have time to vote	3
province	14	2009	You did not vote because your name not in the register	6
province	14	2009	You voted in the elections	193
province	14	2009	You were not registered to vote	18
province	14	2009	You were prevented from voting	6
province	14	2009	You were too young to vote	10
province	18	2009	Did not vote for some other reason	12
province	18	2009	You decided not to vote	13
province	18	2009	You did not have time to vote	3
province	18	2009	You did not vote because your name not in the register	2
province	18	2009	You voted in the elections	204
province	18	2009	You were not registered to vote	9
province	18	2009	You were prevented from voting	2
province	18	2009	You were too young to vote	3
province	15	2009	Did not vote for some other reason	12
province	15	2009	Don't Know / Can't remember	2
province	15	2009	You decided not to vote	5
province	15	2009	You did not have time to vote	1
province	15	2009	You did not vote because your name not in the register	2
province	15	2009	You voted in the elections	101
province	15	2009	You were not registered to vote	1
province	15	2009	You were too young to vote	4
province	16	2009	Did not vote for some other reason	10
province	16	2009	You could not find the polling station	1
province	16	2009	You decided not to vote	3
province	16	2009	You did not have time to vote	1
province	16	2009	You voted in the elections	77
province	16	2009	You were not registered to vote	4
province	16	2009	You were prevented from voting	1
province	16	2009	You were too young to vote	7
province	17	2009	Did not vote for some other reason	19
province	17	2009	You decided not to vote	13
province	17	2009	You did not have time to vote	4
province	17	2009	You did not vote because your name not in the register	6
province	17	2009	You voted in the elections	229
province	17	2009	You were not registered to vote	9
province	17	2009	You were too young to vote	8
country	ZW	2009	You decided not to vote	127
country	ZW	2009	You could not find the polling station	12
country	ZW	2009	You did not have time to vote	55
country	ZW	2009	You voted in the elections	1714
country	ZW	2009	Don't Know / Can't remember	4
country	ZW	2009	Did not vote for some other reason	147
country	ZW	2009	You did not vote because your name not in the register	53
country	ZW	2009	You were prevented from voting	31
country	ZW	2009	You were not registered to vote	170
country	ZW	2009	You were too young to vote	87
\.


--
-- Name: voting_recent_national_election pk_voting_recent_national_election; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voting_recent_national_election
    ADD CONSTRAINT pk_voting_recent_national_election PRIMARY KEY (geo_level, geo_code, geo_version, voting_recent_national_election);


--
-- PostgreSQL database dump complete
--

