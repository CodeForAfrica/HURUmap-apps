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

ALTER TABLE IF EXISTS ONLY public.voting_in_the_most_recent_national_election DROP CONSTRAINT IF EXISTS pk_voting_in_the_most_recent_national_election;
DROP TABLE IF EXISTS public.voting_in_the_most_recent_national_election;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: voting_in_the_most_recent_national_election; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.voting_in_the_most_recent_national_election (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    voting_in_the_most_recent_national_election character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: voting_in_the_most_recent_national_election; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.voting_in_the_most_recent_national_election (geo_level, geo_code, geo_version, voting_in_the_most_recent_national_election, total) FROM stdin;
province	1	2010	Did not vote for some other reason	65
province	1	2010	Don't Know / Can't remember	5
province	1	2010	You could not find the polling station	8
province	1	2010	You decided not to vote	68
province	1	2010	You did not have time to vote	24
province	1	2010	You did not vote because your name not in the register	10
province	1	2010	You voted in the elections	493
province	1	2010	You were not registered to vote	71
province	1	2010	You were prevented from voting	6
province	1	2010	You were too young to vote	81
province	2	2010	Did not vote for some other reason	2
province	2	2010	Don't Know / Can't remember	1
province	2	2010	You decided not to vote	3
province	2	2010	You did not have time to vote	2
province	2	2010	You voted in the elections	18
province	2	2010	You were not registered to vote	2
province	2	2010	You were too young to vote	4
province	3	2010	Did not vote for some other reason	6
province	3	2010	You could not find the polling station	1
province	3	2010	You decided not to vote	2
province	3	2010	You did not have time to vote	2
province	3	2010	You voted in the elections	21
province	3	2010	You were not registered to vote	6
province	3	2010	You were too young to vote	2
province	4	2010	Did not vote for some other reason	2
province	4	2010	You could not find the polling station	1
province	4	2010	You voted in the elections	16
province	4	2010	You were not registered to vote	11
province	4	2010	You were too young to vote	10
province	6	2010	Did not vote for some other reason	2
province	6	2010	You could not find the polling station	2
province	6	2010	You decided not to vote	4
province	6	2010	You did not vote because your name not in the register	1
province	6	2010	You voted in the elections	29
province	6	2010	You were not registered to vote	4
province	6	2010	You were too young to vote	6
province	8	2010	Did not vote for some other reason	3
province	8	2010	You could not find the polling station	1
province	8	2010	You decided not to vote	2
province	8	2010	You voted in the elections	17
province	8	2010	You were too young to vote	1
province	7	2010	Did not vote for some other reason	3
province	7	2010	You decided not to vote	2
province	7	2010	You did not have time to vote	2
province	7	2010	You voted in the elections	31
province	7	2010	You were not registered to vote	5
province	7	2010	You were too young to vote	5
province	9	2010	Did not vote for some other reason	2
province	9	2010	You decided not to vote	8
province	9	2010	You did not have time to vote	1
province	9	2010	You did not vote because your name not in the register	1
province	9	2010	You voted in the elections	53
province	9	2010	You were not registered to vote	11
province	9	2010	You were too young to vote	4
province	10	2010	Did not vote for some other reason	1
province	10	2010	You could not find the polling station	1
province	10	2010	You decided not to vote	1
province	10	2010	You did not have time to vote	4
province	10	2010	You voted in the elections	45
province	10	2010	You were not registered to vote	3
province	10	2010	You were too young to vote	1
country	ZM	2010	You decided not to vote	90
country	ZM	2010	You could not find the polling station	14
country	ZM	2010	You did not have time to vote	35
country	ZM	2010	You voted in the elections	723
country	ZM	2010	Don't Know / Can't remember	6
country	ZM	2010	Did not vote for some other reason	86
country	ZM	2010	You did not vote because your name not in the register	12
country	ZM	2010	You were prevented from voting	6
country	ZM	2010	You were not registered to vote	113
country	ZM	2010	You were too young to vote	114
\.


--
-- Name: voting_in_the_most_recent_national_election pk_voting_in_the_most_recent_national_election; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voting_in_the_most_recent_national_election
    ADD CONSTRAINT pk_voting_in_the_most_recent_national_election PRIMARY KEY (geo_level, geo_code, geo_version, voting_in_the_most_recent_national_election);


--
-- PostgreSQL database dump complete
--

