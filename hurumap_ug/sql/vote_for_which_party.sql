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

ALTER TABLE IF EXISTS ONLY public.vote_for_which_party DROP CONSTRAINT IF EXISTS pk_vote_for_which_party;
DROP TABLE IF EXISTS public.vote_for_which_party;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: vote_for_which_party; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vote_for_which_party (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    vote_for_which_party character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: vote_for_which_party; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.vote_for_which_party (geo_level, geo_code, geo_version, vote_for_which_party, total) FROM stdin;
region	114	2014	Democratic Party (DP)	55
region	114	2014	Don't know	66
region	114	2014	Forum for Democratic Change (FDC)	77
region	114	2014	Inter party Coalition (IPC)	2
region	114	2014	National Resistance Movement (NRM)	326
region	114	2014	Refused to answer	74
region	114	2014	The Justice Forum (JEEMA)	2
region	114	2014	Uganda Federal Alliance (UFA)	1
region	114	2014	Uganda Peoples Congress (UPC)	6
region	114	2014	Would not vote	55
region	115	2014	Democratic Party (DP)	7
region	115	2014	Don't know	51
region	115	2014	Forum for Democratic Change (FDC)	60
region	115	2014	Inter party Coalition (IPC)	1
region	115	2014	National Resistance Movement (NRM)	433
region	115	2014	Other	4
region	115	2014	Refused to answer	34
region	115	2014	Social Democratic Party (SDP)	1
region	115	2014	Uganda Peoples Congress (UPC)	12
region	115	2014	Would not vote	21
region	116	2014	Don't know	36
region	116	2014	Forum for Democratic Change (FDC)	23
region	116	2014	National Resistance Movement (NRM)	360
region	116	2014	Other	3
region	116	2014	Refused to answer	56
region	116	2014	Uganda Peoples Congress (UPC)	20
region	116	2014	Would not vote	6
region	117	2014	Democratic Party (DP)	3
region	117	2014	Don't know	16
region	117	2014	Forum for Democratic Change (FDC)	53
region	117	2014	National Resistance Movement (NRM)	466
region	117	2014	Other	15
region	117	2014	Refused to answer	49
region	117	2014	Uganda Peoples Congress (UPC)	3
region	117	2014	Would not vote	3
country	UG	2014	National Resistance Movement (NRM)	1585
country	UG	2014	Uganda Peoples Congress (UPC)	41
country	UG	2014	Social Democratic Party (SDP)	1
country	UG	2014	Would not vote	85
country	UG	2014	Refused to answer	213
country	UG	2014	The Justice Forum (JEEMA)	2
country	UG	2014	Uganda Federal Alliance (UFA)	1
country	UG	2014	Other	22
country	UG	2014	Inter party Coalition (IPC)	3
country	UG	2014	Democratic Party (DP)	65
country	UG	2014	Don't know	169
country	UG	2014	Forum for Democratic Change (FDC)	213
\.


--
-- Name: vote_for_which_party pk_vote_for_which_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vote_for_which_party
    ADD CONSTRAINT pk_vote_for_which_party PRIMARY KEY (geo_level, geo_code, geo_version, vote_for_which_party);


--
-- PostgreSQL database dump complete
--

