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
region	1	2009	No	65
region	1	2009	Yes	55
region	2	2009	No	180
region	2	2009	Yes	93
region	3	2009	No	59
region	3	2009	Yes	37
region	4	2009	No	29
region	4	2009	Yes	42
region	5	2009	Don't know	1
region	5	2009	No	29
region	5	2009	Yes	18
region	6	2009	No	39
region	6	2009	Yes	33
region	7	2009	No	21
region	7	2009	Yes	35
region	8	2009	No	15
region	8	2009	Yes	25
region	9	2009	No	19
region	9	2009	Yes	5
region	10	2009	No	48
region	10	2009	Yes	48
region	11	2009	No	40
region	11	2009	Yes	48
region	12	2009	No	3
region	12	2009	Yes	5
region	13	2009	No	9
region	13	2009	Yes	15
region	14	2009	No	9
region	14	2009	Yes	39
region	15	2009	No	35
region	15	2009	Yes	29
region	16	2009	No	36
region	16	2009	Yes	44
region	17	2009	No	41
region	17	2009	Yes	23
region	30	2009	No	44
region	30	2009	Yes	68
region	18	2009	No	77
region	18	2009	Yes	43
region	19	2009	No	16
region	19	2009	Yes	55
region	20	2009	No	54
region	20	2009	Yes	70
region	21	2009	No	29
region	21	2009	Yes	11
region	22	2009	No	23
region	22	2009	Yes	49
region	23	2009	No	24
region	23	2009	Yes	15
region	24	2009	No	41
region	24	2009	Yes	31
region	25	2009	No	39
region	25	2009	Yes	33
region	26	2009	No	35
region	26	2009	Yes	29
region	27	2009	No	40
region	27	2009	Yes	24
region	31	2009	No	49
region	31	2009	Yes	23
region	29	2009	No	53
region	29	2009	Yes	51
region	28	2009	No	33
region	28	2009	Yes	55
country	TZ	2009	Yes	1151
country	TZ	2009	No	1234
country	TZ	2009	Don't know	1
\.


--
-- Name: election_attend_campaign_meeting pk_election_attend_campaign_meeting; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_attend_campaign_meeting
    ADD CONSTRAINT pk_election_attend_campaign_meeting PRIMARY KEY (geo_level, geo_code, geo_version, election_attend_campaign_meeting);


--
-- PostgreSQL database dump complete
--

