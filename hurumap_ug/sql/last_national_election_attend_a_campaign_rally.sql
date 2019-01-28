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

ALTER TABLE IF EXISTS ONLY public.election_attend_a_campaign_rally DROP CONSTRAINT IF EXISTS pk_election_attend_a_campaign_rally;
DROP TABLE IF EXISTS public.election_attend_a_campaign_rally;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_attend_a_campaign_rally; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_attend_a_campaign_rally (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_attend_a_campaign_rally character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_attend_a_campaign_rally; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_attend_a_campaign_rally (geo_level, geo_code, geo_version, election_attend_a_campaign_rally, total) FROM stdin;
region	114	2014	Don't know	1
region	114	2014	No	361
region	114	2014	Yes	302
region	115	2014	Don't know	1
region	115	2014	No	286
region	115	2014	Yes	337
region	116	2014	Don't know	1
region	116	2014	No	199
region	116	2014	Yes	304
region	117	2014	No	294
region	117	2014	Yes	314
country	UG	2014	Yes	1257
country	UG	2014	No	1140
country	UG	2014	Don't know	3
\.


--
-- Name: election_attend_a_campaign_rally pk_election_attend_a_campaign_rally; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_attend_a_campaign_rally
    ADD CONSTRAINT pk_election_attend_a_campaign_rally PRIMARY KEY (geo_level, geo_code, geo_version, election_attend_a_campaign_rally);


--
-- PostgreSQL database dump complete
--

