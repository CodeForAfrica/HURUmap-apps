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

ALTER TABLE IF EXISTS ONLY public.freeness_and_fairness_of_the_last_national_election DROP CONSTRAINT IF EXISTS pk_freeness_and_fairness_of_the_last_national_election;
DROP TABLE IF EXISTS public.freeness_and_fairness_of_the_last_national_election;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: freeness_and_fairness_of_the_last_national_election; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.freeness_and_fairness_of_the_last_national_election (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    freeness_and_fairness_of_the_last_national_election character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: freeness_and_fairness_of_the_last_national_election; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.freeness_and_fairness_of_the_last_national_election (geo_level, geo_code, geo_version, freeness_and_fairness_of_the_last_national_election, total) FROM stdin;
region	114	2014	Completely free and fair	216
region	114	2014	Do not understand the question	3
region	114	2014	Don't know	127
region	114	2014	Free and fair, but with minor problems	118
region	114	2014	Free and fair, with major problems	65
region	114	2014	Not free and fair	135
region	115	2014	Completely free and fair	296
region	115	2014	Do not understand the question	1
region	115	2014	Don't know	68
region	115	2014	Free and fair, but with minor problems	152
region	115	2014	Free and fair, with major problems	75
region	115	2014	Not free and fair	32
region	116	2014	Completely free and fair	247
region	116	2014	Don't know	53
region	116	2014	Free and fair, but with minor problems	113
region	116	2014	Free and fair, with major problems	51
region	116	2014	Not free and fair	40
region	117	2014	Completely free and fair	366
region	117	2014	Do not understand the question	3
region	117	2014	Don't know	50
region	117	2014	Free and fair, but with minor problems	137
region	117	2014	Free and fair, with major problems	34
region	117	2014	Not free and fair	18
country	UG	2014	Free and fair, with major problems	225
country	UG	2014	Free and fair, but with minor problems	520
country	UG	2014	Don't know	298
country	UG	2014	Do not understand the question	7
country	UG	2014	Not free and fair	225
country	UG	2014	Completely free and fair	1125
\.


--
-- Name: freeness_and_fairness_of_the_last_national_election pk_freeness_and_fairness_of_the_last_national_election; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freeness_and_fairness_of_the_last_national_election
    ADD CONSTRAINT pk_freeness_and_fairness_of_the_last_national_election PRIMARY KEY (geo_level, geo_code, geo_version, freeness_and_fairness_of_the_last_national_election);


--
-- PostgreSQL database dump complete
--

