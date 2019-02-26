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
region	1	2009	Did not vote for some other reason	5
region	1	2009	You could not find the polling station	16
region	1	2009	You decided not to vote	23
region	1	2009	You did not have time to vote	5
region	1	2009	You voted in the elections	61
region	1	2009	You were not registered to vote	5
region	1	2009	You were too young to vote	5
region	2	2009	Did not vote for some other reason	12
region	2	2009	Don't Know / Can't remember	9
region	2	2009	You could not find the polling station	8
region	2	2009	You decided not to vote	28
region	2	2009	You did not have time to vote	10
region	2	2009	You did not vote because your name not in the register	4
region	2	2009	You voted in the elections	157
region	2	2009	You were not registered to vote	16
region	2	2009	You were too young to vote	29
region	3	2009	Did not vote for some other reason	19
region	3	2009	Don't Know / Can't remember	2
region	3	2009	You decided not to vote	2
region	3	2009	You did not vote because your name not in the register	2
region	3	2009	You voted in the elections	58
region	3	2009	You were not registered to vote	2
region	3	2009	You were prevented from voting	1
region	3	2009	You were too young to vote	10
region	4	2009	Did not vote for some other reason	1
region	4	2009	You decided not to vote	5
region	4	2009	You did not vote because your name not in the register	4
region	4	2009	You voted in the elections	47
region	4	2009	You were not registered to vote	5
region	4	2009	You were too young to vote	9
region	5	2009	Did not vote for some other reason	3
region	5	2009	Don't Know / Can't remember	1
region	5	2009	You decided not to vote	1
region	5	2009	You did not have time to vote	2
region	5	2009	You voted in the elections	36
region	5	2009	You were not registered to vote	2
region	5	2009	You were too young to vote	3
region	6	2009	Did not vote for some other reason	2
region	6	2009	You could not find the polling station	1
region	6	2009	You decided not to vote	5
region	6	2009	You did not have time to vote	3
region	6	2009	You did not vote because your name not in the register	3
region	6	2009	You voted in the elections	44
region	6	2009	You were not registered to vote	1
region	6	2009	You were too young to vote	13
region	7	2009	You decided not to vote	3
region	7	2009	You voted in the elections	46
region	7	2009	You were prevented from voting	2
region	7	2009	You were too young to vote	5
region	8	2009	Did not vote for some other reason	3
region	8	2009	You voted in the elections	36
region	8	2009	You were too young to vote	1
region	9	2009	Did not vote for some other reason	1
region	9	2009	You voted in the elections	22
region	9	2009	You were too young to vote	1
region	10	2009	Did not vote for some other reason	6
region	10	2009	You decided not to vote	2
region	10	2009	You did not have time to vote	5
region	10	2009	You voted in the elections	70
region	10	2009	You were not registered to vote	6
region	10	2009	You were prevented from voting	2
region	10	2009	You were too young to vote	5
region	11	2009	Did not vote for some other reason	6
region	11	2009	You could not find the polling station	14
region	11	2009	You decided not to vote	20
region	11	2009	You did not have time to vote	5
region	11	2009	You voted in the elections	36
region	11	2009	You were not registered to vote	4
region	11	2009	You were prevented from voting	3
region	12	2009	You did not vote because your name not in the register	1
region	12	2009	You voted in the elections	7
region	13	2009	Don't Know / Can't remember	1
region	13	2009	You decided not to vote	2
region	13	2009	You voted in the elections	20
region	13	2009	You were too young to vote	1
region	14	2009	You decided not to vote	4
region	14	2009	You voted in the elections	40
region	14	2009	You were not registered to vote	1
region	14	2009	You were too young to vote	3
region	15	2009	Did not vote for some other reason	11
region	15	2009	Don't Know / Can't remember	1
region	15	2009	You could not find the polling station	4
region	15	2009	You decided not to vote	4
region	15	2009	You did not have time to vote	2
region	15	2009	You did not vote because your name not in the register	1
region	15	2009	You voted in the elections	23
region	15	2009	You were not registered to vote	1
region	15	2009	You were prevented from voting	12
region	15	2009	You were too young to vote	5
region	16	2009	Did not vote for some other reason	7
region	16	2009	Don't Know / Can't remember	1
region	16	2009	You decided not to vote	3
region	16	2009	You did not vote because your name not in the register	1
region	16	2009	You voted in the elections	57
region	16	2009	You were not registered to vote	3
region	16	2009	You were too young to vote	8
region	17	2009	You decided not to vote	1
region	17	2009	You did not have time to vote	1
region	17	2009	You did not vote because your name not in the register	1
region	17	2009	You voted in the elections	55
region	17	2009	You were too young to vote	6
region	30	2009	Did not vote for some other reason	5
region	30	2009	You decided not to vote	5
region	30	2009	You voted in the elections	96
region	30	2009	You were not registered to vote	1
region	30	2009	You were too young to vote	5
region	18	2009	Did not vote for some other reason	14
region	18	2009	You could not find the polling station	1
region	18	2009	You decided not to vote	4
region	18	2009	You did not vote because your name not in the register	2
region	18	2009	You voted in the elections	85
region	18	2009	You were not registered to vote	2
region	18	2009	You were too young to vote	12
region	19	2009	You decided not to vote	4
region	19	2009	You did not have time to vote	1
region	19	2009	You did not vote because your name not in the register	1
region	19	2009	You voted in the elections	62
region	19	2009	You were not registered to vote	1
region	19	2009	You were too young to vote	2
region	20	2009	Did not vote for some other reason	4
region	20	2009	You could not find the polling station	1
region	20	2009	You decided not to vote	3
region	20	2009	You did not have time to vote	1
region	20	2009	You did not vote because your name not in the register	1
region	20	2009	You voted in the elections	92
region	20	2009	You were not registered to vote	11
region	20	2009	You were too young to vote	11
region	21	2009	Did not vote for some other reason	2
region	21	2009	You could not find the polling station	1
region	21	2009	You decided not to vote	4
region	21	2009	You voted in the elections	28
region	21	2009	You were not registered to vote	1
region	21	2009	You were too young to vote	4
region	22	2009	Did not vote for some other reason	3
region	22	2009	Don't Know / Can't remember	1
region	22	2009	You could not find the polling station	2
region	22	2009	You decided not to vote	2
region	22	2009	You did not have time to vote	1
region	22	2009	You voted in the elections	60
region	22	2009	You were not registered to vote	1
region	22	2009	You were prevented from voting	1
region	22	2009	You were too young to vote	1
region	23	2009	Did not vote for some other reason	3
region	23	2009	You could not find the polling station	3
region	23	2009	You decided not to vote	1
region	23	2009	You did not have time to vote	1
region	23	2009	You voted in the elections	29
region	23	2009	You were too young to vote	2
region	24	2009	Did not vote for some other reason	3
region	24	2009	You decided not to vote	3
region	24	2009	You did not have time to vote	5
region	24	2009	You voted in the elections	56
region	24	2009	You were not registered to vote	1
region	24	2009	You were too young to vote	4
region	25	2009	Did not vote for some other reason	3
region	25	2009	You decided not to vote	2
region	25	2009	You did not have time to vote	2
region	25	2009	You voted in the elections	52
region	25	2009	You were not registered to vote	5
region	25	2009	You were too young to vote	8
region	26	2009	Did not vote for some other reason	3
region	26	2009	You decided not to vote	1
region	26	2009	You did not have time to vote	2
region	26	2009	You did not vote because your name not in the register	3
region	26	2009	You voted in the elections	49
region	26	2009	You were not registered to vote	4
region	26	2009	You were too young to vote	2
region	27	2009	Did not vote for some other reason	1
region	27	2009	You did not have time to vote	2
region	27	2009	You voted in the elections	53
region	27	2009	You were not registered to vote	7
region	27	2009	You were too young to vote	1
region	31	2009	Did not vote for some other reason	3
region	31	2009	You decided not to vote	2
region	31	2009	You did not have time to vote	4
region	31	2009	You did not vote because your name not in the register	1
region	31	2009	You voted in the elections	54
region	31	2009	You were not registered to vote	2
region	31	2009	You were too young to vote	6
region	29	2009	Did not vote for some other reason	9
region	29	2009	Don't Know / Can't remember	12
region	29	2009	You did not have time to vote	7
region	29	2009	You voted in the elections	52
region	29	2009	You were not registered to vote	1
region	29	2009	You were too young to vote	23
region	28	2009	Did not vote for some other reason	16
region	28	2009	Don't Know / Can't remember	8
region	28	2009	You could not find the polling station	13
region	28	2009	You decided not to vote	4
region	28	2009	You did not have time to vote	1
region	28	2009	You did not vote because your name not in the register	1
region	28	2009	You voted in the elections	34
region	28	2009	You were prevented from voting	5
region	28	2009	You were too young to vote	6
country	TZ	2009	You decided not to vote	138
country	TZ	2009	You could not find the polling station	64
country	TZ	2009	You did not have time to vote	60
country	TZ	2009	You voted in the elections	1617
country	TZ	2009	Don't Know / Can't remember	36
country	TZ	2009	Did not vote for some other reason	145
country	TZ	2009	You did not vote because your name not in the register	26
country	TZ	2009	You were prevented from voting	26
country	TZ	2009	You were not registered to vote	83
country	TZ	2009	You were too young to vote	191
\.


--
-- Name: voting_recent_national_election pk_voting_recent_national_election; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voting_recent_national_election
    ADD CONSTRAINT pk_voting_recent_national_election PRIMARY KEY (geo_level, geo_code, geo_version, voting_recent_national_election);


--
-- PostgreSQL database dump complete
--

