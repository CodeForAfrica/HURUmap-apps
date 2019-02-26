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
province	10	2009	Don't know	4
province	10	2009	MDC Renewal Team [Tendai Biti]	1
province	10	2009	Movement for Democratic Change-Ncube [MDC-N]	8
province	10	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	40
province	10	2009	Refused to answer	32
province	10	2009	Would not vote	35
province	10	2009	Zimbabwe Africa People's Union-Dabengwa [ZANU-Dabengwa]	2
province	10	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	30
province	19	2009	Don't know	13
province	19	2009	Mavambo.Kusile.Dawn [MKD]	4
province	19	2009	Movement for Democratic Change-Mutambara [MDC-M]	1
province	19	2009	Movement for Democratic Change-Ncube [MDC-N]	2
province	19	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	113
province	19	2009	Other	1
province	19	2009	Refused to answer	130
province	19	2009	Would not vote	25
province	19	2009	Zimbabwe Africa People's Union-Dabengwa [ZANU-Dabengwa]	1
province	19	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	157
province	11	2009	Don't know	22
province	11	2009	MDC Renewal Team [Tendai Biti]	10
province	11	2009	Mavambo.Kusile.Dawn [MKD]	1
province	11	2009	Movement for Democratic Change-Mutambara [MDC-M]	2
province	11	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	83
province	11	2009	Other	2
province	11	2009	Refused to answer	56
province	11	2009	Would not vote	13
province	11	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	115
province	12	2009	Don't know	3
province	12	2009	MDC Renewal Team [Tendai Biti]	1
province	12	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	20
province	12	2009	Refused to answer	58
province	12	2009	Would not vote	4
province	12	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	122
province	13	2009	Don't know	11
province	13	2009	Mavambo.Kusile.Dawn [MKD]	2
province	13	2009	Movement for Democratic Change-Ncube [MDC-N]	1
province	13	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	44
province	13	2009	Refused to answer	69
province	13	2009	Would not vote	12
province	13	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	109
province	14	2009	Don't know	17
province	14	2009	MDC Renewal Team [Tendai Biti]	1
province	14	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	28
province	14	2009	Other	2
province	14	2009	Refused to answer	60
province	14	2009	Would not vote	5
province	14	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	159
province	18	2009	Don't know	3
province	18	2009	Movement for Democratic Change-Mutambara [MDC-M]	1
province	18	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	56
province	18	2009	Other	3
province	18	2009	Refused to answer	44
province	18	2009	Would not vote	6
province	18	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	135
province	15	2009	Don't know	6
province	15	2009	Movement for Democratic Change-Ncube [MDC-N]	1
province	15	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	21
province	15	2009	Other	1
province	15	2009	Refused to answer	30
province	15	2009	Would not vote	15
province	15	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	54
province	16	2009	MDC Renewal Team [Tendai Biti]	1
province	16	2009	Movement for Democratic Change-Ncube [MDC-N]	1
province	16	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	28
province	16	2009	Other	2
province	16	2009	Refused to answer	16
province	16	2009	Would not vote	4
province	16	2009	Zimbabwe Africa People's Union-Dabengwa [ZANU-Dabengwa]	2
province	16	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	50
province	17	2009	Don't know	5
province	17	2009	MDC Renewal Team [Tendai Biti]	1
province	17	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	63
province	17	2009	Refused to answer	72
province	17	2009	Would not vote	11
province	17	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	136
country	ZW	2009	Movement for Democratic Change-Ncube [MDC-N]	13
country	ZW	2009	Would not vote	130
country	ZW	2009	Mavambo.Kusile.Dawn [MKD]	7
country	ZW	2009	Refused to answer	567
country	ZW	2009	Movement for Democratic Change-Mutambara [MDC-M]	4
country	ZW	2009	Other	11
country	ZW	2009	Movement for Democratic Change-Tsvangirai [MDC-T]	496
country	ZW	2009	MDC Renewal Team [Tendai Biti]	15
country	ZW	2009	Zimbabwe African National Union-Patriotic Front [ZANU-PF]	1067
country	ZW	2009	Zimbabwe Africa People's Union-Dabengwa [ZANU-Dabengwa]	5
country	ZW	2009	Don't know	84
\.


--
-- Name: vote_for_which_party pk_vote_for_which_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vote_for_which_party
    ADD CONSTRAINT pk_vote_for_which_party PRIMARY KEY (geo_level, geo_code, geo_version, vote_for_which_party);


--
-- PostgreSQL database dump complete
--

