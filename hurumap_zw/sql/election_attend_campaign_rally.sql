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

ALTER TABLE IF EXISTS ONLY public.election_attend_campaign_rally DROP CONSTRAINT IF EXISTS pk_election_attend_campaign_rally;
DROP TABLE IF EXISTS public.election_attend_campaign_rally;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_attend_campaign_rally; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_attend_campaign_rally (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_attend_campaign_rally character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_attend_campaign_rally; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_attend_campaign_rally (geo_level, geo_code, geo_version, election_attend_campaign_rally, total) FROM stdin;
province	10	2009	No	108
province	10	2009	Yes	44
province	19	2009	No	302
province	19	2009	Yes	146
province	11	2009	No	113
province	11	2009	Yes	191
province	12	2009	No	62
province	12	2009	Yes	146
province	13	2009	No	100
province	13	2009	Yes	148
province	14	2009	No	159
province	14	2009	Yes	113
province	18	2009	Don't know	1
province	18	2009	No	113
province	18	2009	Yes	134
province	15	2009	No	78
province	15	2009	Yes	50
province	16	2009	No	54
province	16	2009	Yes	50
province	17	2009	No	118
province	17	2009	Yes	170
country	ZW	2009	Yes	1192
country	ZW	2009	No	1207
country	ZW	2009	Don't know	1
\.


--
-- Name: election_attend_campaign_rally pk_election_attend_campaign_rally; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_attend_campaign_rally
    ADD CONSTRAINT pk_election_attend_campaign_rally PRIMARY KEY (geo_level, geo_code, geo_version, election_attend_campaign_rally);


--
-- PostgreSQL database dump complete
--

