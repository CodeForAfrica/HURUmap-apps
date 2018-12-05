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

ALTER TABLE IF EXISTS ONLY public.last_national_election_attend_a_campaign_rally DROP CONSTRAINT IF EXISTS pk_last_national_election_attend_a_campaign_rally;
DROP TABLE IF EXISTS public.last_national_election_attend_a_campaign_rally;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: last_national_election_attend_a_campaign_rally; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.last_national_election_attend_a_campaign_rally (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    last_national_election_attend_a_campaign_rally character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: last_national_election_attend_a_campaign_rally; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.last_national_election_attend_a_campaign_rally (geo_level, geo_code, geo_version, last_national_election_attend_a_campaign_rally, total) FROM stdin;
province	1	2010	Don't know	2
province	1	2010	No	508
province	1	2010	Yes	320
province	2	2010	No	20
province	2	2010	Yes	12
province	3	2010	No	20
province	3	2010	Yes	20
province	4	2010	No	24
province	4	2010	Yes	16
province	6	2010	No	30
province	6	2010	Yes	17
province	8	2010	No	18
province	8	2010	Yes	6
province	7	2010	No	29
province	7	2010	Yes	19
province	9	2010	No	52
province	9	2010	Yes	28
province	10	2010	No	29
province	10	2010	Yes	27
country	ZM	2010	No	730
country	ZM	2010	Yes	465
country	ZM	2010	Don't know	2
\.


--
-- Name: last_national_election_attend_a_campaign_rally pk_last_national_election_attend_a_campaign_rally; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.last_national_election_attend_a_campaign_rally
    ADD CONSTRAINT pk_last_national_election_attend_a_campaign_rally PRIMARY KEY (geo_level, geo_code, geo_version, last_national_election_attend_a_campaign_rally);


--
-- PostgreSQL database dump complete
--

