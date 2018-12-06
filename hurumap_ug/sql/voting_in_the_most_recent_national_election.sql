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
region	114	2014	Did not vote for some other reason	29
region	114	2014	You could not find the polling station	4
region	114	2014	You decided not to vote	35
region	114	2014	You did not have time to vote	13
region	114	2014	You did not vote because your name not in the register	13
region	114	2014	You voted in the elections	427
region	114	2014	You were not registered to vote	45
region	114	2014	You were prevented from voting	2
region	114	2014	You were too young to vote	96
region	115	2014	Did not vote for some other reason	21
region	115	2014	Don't Know / Can't remember	8
region	115	2014	You decided not to vote	42
region	115	2014	You did not have time to vote	11
region	115	2014	You did not vote because your name not in the register	23
region	115	2014	You voted in the elections	399
region	115	2014	You were not registered to vote	42
region	115	2014	You were prevented from voting	2
region	115	2014	You were too young to vote	76
region	116	2014	Did not vote for some other reason	13
region	116	2014	You could not find the polling station	4
region	116	2014	You decided not to vote	19
region	116	2014	You did not have time to vote	4
region	116	2014	You did not vote because your name not in the register	12
region	116	2014	You voted in the elections	341
region	116	2014	You were not registered to vote	31
region	116	2014	You were prevented from voting	5
region	116	2014	You were too young to vote	75
region	117	2014	Did not vote for some other reason	13
region	117	2014	You could not find the polling station	4
region	117	2014	You decided not to vote	23
region	117	2014	You did not have time to vote	3
region	117	2014	You did not vote because your name not in the register	5
region	117	2014	You voted in the elections	462
region	117	2014	You were not registered to vote	31
region	117	2014	You were prevented from voting	2
region	117	2014	You were too young to vote	65
country	UG	2014	You decided not to vote	119
country	UG	2014	You could not find the polling station	12
country	UG	2014	You did not have time to vote	31
country	UG	2014	You voted in the elections	1629
country	UG	2014	Don't Know / Can't remember	8
country	UG	2014	Did not vote for some other reason	76
country	UG	2014	You did not vote because your name not in the register	53
country	UG	2014	You were prevented from voting	11
country	UG	2014	You were not registered to vote	149
country	UG	2014	You were too young to vote	312
\.


--
-- Name: voting_in_the_most_recent_national_election pk_voting_in_the_most_recent_national_election; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voting_in_the_most_recent_national_election
    ADD CONSTRAINT pk_voting_in_the_most_recent_national_election PRIMARY KEY (geo_level, geo_code, geo_version, voting_in_the_most_recent_national_election);


--
-- PostgreSQL database dump complete
--

