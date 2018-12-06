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

ALTER TABLE IF EXISTS ONLY public.last_national_election_attend_a_campaign_meeting DROP CONSTRAINT IF EXISTS pk_last_national_election_attend_a_campaign_meeting;
DROP TABLE IF EXISTS public.last_national_election_attend_a_campaign_meeting;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: last_national_election_attend_a_campaign_meeting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.last_national_election_attend_a_campaign_meeting (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    last_national_election_attend_a_campaign_meeting character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: last_national_election_attend_a_campaign_meeting; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.last_national_election_attend_a_campaign_meeting (geo_level, geo_code, geo_version, last_national_election_attend_a_campaign_meeting, total) FROM stdin;
region	114	2014	Don't know	1
region	114	2014	No	469
region	114	2014	Yes	194
region	115	2014	Don't know	2
region	115	2014	No	432
region	115	2014	Yes	190
region	116	2014	Don't know	1
region	116	2014	No	336
region	116	2014	Yes	166
region	117	2014	Don't know	2
region	117	2014	No	449
region	117	2014	Yes	157
country	UG	2014	No	1686
country	UG	2014	Yes	707
country	UG	2014	Don't know	6
\.


--
-- Name: last_national_election_attend_a_campaign_meeting pk_last_national_election_attend_a_campaign_meeting; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.last_national_election_attend_a_campaign_meeting
    ADD CONSTRAINT pk_last_national_election_attend_a_campaign_meeting PRIMARY KEY (geo_level, geo_code, geo_version, last_national_election_attend_a_campaign_meeting);


--
-- PostgreSQL database dump complete
--

