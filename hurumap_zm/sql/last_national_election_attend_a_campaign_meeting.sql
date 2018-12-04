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
province	1	2010	Don�t know	2
province	1	2010	Missing	2
province	1	2010	No	641
province	1	2010	Yes	186
province	2	2010	Missing	1
province	2	2010	No	24
province	2	2010	Yes	7
province	3	2010	No	28
province	3	2010	Yes	12
province	4	2010	No	28
province	4	2010	Yes	12
province	6	2010	No	41
province	6	2010	Yes	7
province	8	2010	No	18
province	8	2010	Yes	6
province	7	2010	Don�t know	1
province	7	2010	No	36
province	7	2010	Yes	11
province	9	2010	No	58
province	9	2010	Yes	22
province	10	2010	No	38
province	10	2010	Yes	18
country	ZM	2010	No	912
country	ZM	2010	Yes	281
country	ZM	2010	Missing	3
country	ZM	2010	Don�t know	3
\.


--
-- Name: last_national_election_attend_a_campaign_meeting pk_last_national_election_attend_a_campaign_meeting; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.last_national_election_attend_a_campaign_meeting
    ADD CONSTRAINT pk_last_national_election_attend_a_campaign_meeting PRIMARY KEY (geo_level, geo_code, geo_version, last_national_election_attend_a_campaign_meeting);


--
-- PostgreSQL database dump complete
--

