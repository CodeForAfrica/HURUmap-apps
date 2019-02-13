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

ALTER TABLE IF EXISTS ONLY public.election_attend_campaign_meeting DROP CONSTRAINT IF EXISTS pk_election_attend_campaign_meeting;
DROP TABLE IF EXISTS public.election_attend_campaign_meeting;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_attend_campaign_meeting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_attend_campaign_meeting (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_attend_campaign_meeting character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_attend_campaign_meeting; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_attend_campaign_meeting (geo_level, geo_code, geo_version, election_attend_campaign_meeting, total) FROM stdin;
province	10	2009	No	133
province	10	2009	Yes	19
province	19	2009	Don�t know	1
province	19	2009	No	385
province	19	2009	Yes	61
province	11	2009	No	216
province	11	2009	Yes	88
province	12	2009	No	148
province	12	2009	Yes	60
province	13	2009	No	165
province	13	2009	Yes	83
province	14	2009	No	161
province	14	2009	Yes	111
province	18	2009	Don�t know	2
province	18	2009	No	185
province	18	2009	Yes	61
province	15	2009	No	120
province	15	2009	Yes	8
province	16	2009	No	82
province	16	2009	Yes	22
province	17	2009	No	219
province	17	2009	Yes	69
country	ZW	2009	Yes	582
country	ZW	2009	No	1814
country	ZW	2009	Don�t know	3
\.


--
-- Name: election_attend_campaign_meeting pk_election_attend_campaign_meeting; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_attend_campaign_meeting
    ADD CONSTRAINT pk_election_attend_campaign_meeting PRIMARY KEY (geo_level, geo_code, geo_version, election_attend_campaign_meeting);


--
-- PostgreSQL database dump complete
--

