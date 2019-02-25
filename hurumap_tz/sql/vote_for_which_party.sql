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
region	1	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	40
region	1	2009	Chama cha Mapinduzi	62
region	1	2009	Don't know	4
region	1	2009	Refused to answer	8
region	1	2009	Tanzania Labour Party (TLP)	2
region	1	2009	Would not vote	4
region	2	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	60
region	2	2009	Chama cha Mapinduzi	136
region	2	2009	Don't know	19
region	2	2009	Other	4
region	2	2009	Refused to answer	16
region	2	2009	Tanzania Democratic Alliance (TADEA)	1
region	2	2009	Tanzania Labour Party (TLP)	1
region	2	2009	The Civic United Front (CUF)	22
region	2	2009	The Progressive Party of Tanzania (PPT MAENDELEO)	1
region	2	2009	United People's Democratic Party (UPDP)	1
region	2	2009	Would not vote	12
region	3	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	4
region	3	2009	Chama cha Mapinduzi	72
region	3	2009	Don't know	16
region	3	2009	Other	1
region	3	2009	Refused to answer	1
region	3	2009	The Civic United Front (CUF)	1
region	3	2009	Would not vote	1
region	4	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	21
region	4	2009	Chama cha Mapinduzi	39
region	4	2009	Don't know	3
region	4	2009	Other	4
region	4	2009	Refused to answer	2
region	4	2009	The Civic United Front (CUF)	1
region	4	2009	Would not vote	1
region	5	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	8
region	5	2009	Chama cha Mapinduzi	37
region	5	2009	Don't know	3
region	6	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	22
region	6	2009	Chama cha Mapinduzi	38
region	6	2009	Don't know	4
region	6	2009	Other	1
region	6	2009	Refused to answer	5
region	6	2009	Would not vote	2
region	7	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	2
region	7	2009	Chama cha Mapinduzi	21
region	7	2009	Don't know	1
region	7	2009	Refused to answer	3
region	7	2009	The Civic United Front (CUF)	26
region	7	2009	United Democratic Party (UDP)	1
region	7	2009	Would not vote	2
region	8	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	1
region	8	2009	Chama cha Mapinduzi	25
region	8	2009	Refused to answer	1
region	8	2009	The Civic United Front (CUF)	12
region	8	2009	Would not vote	1
region	9	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	2
region	9	2009	Chama cha Mapinduzi	15
region	9	2009	Don't know	7
region	10	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	17
region	10	2009	Chama cha Mapinduzi	68
region	10	2009	Don't know	2
region	10	2009	National Convention for Construction and Reform (NCCR MAGEUZI)	1
region	10	2009	Other	3
region	10	2009	Refused to answer	3
region	10	2009	The Civic United Front (CUF)	1
region	10	2009	Would not vote	1
region	11	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	28
region	11	2009	Chama cha Mapinduzi	28
region	11	2009	Don't know	11
region	11	2009	Other	1
region	11	2009	Refused to answer	15
region	11	2009	Would not vote	4
region	12	2009	Chama cha Mapinduzi	3
region	12	2009	The Civic United Front (CUF)	5
region	13	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	1
region	13	2009	Chama cha Mapinduzi	13
region	13	2009	The Civic United Front (CUF)	7
region	13	2009	Would not vote	3
region	14	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	5
region	14	2009	Chama cha Mapinduzi	26
region	14	2009	Don't know	2
region	14	2009	The Civic United Front (CUF)	15
region	15	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	13
region	15	2009	Chama cha Mapinduzi	36
region	15	2009	Don't know	1
region	15	2009	National Convention for Construction and Reform (NCCR MAGEUZI)	1
region	15	2009	Refused to answer	8
region	15	2009	Would not vote	5
region	16	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	8
region	16	2009	Chama cha Mapinduzi	40
region	16	2009	Don't know	7
region	16	2009	National Convention for Construction and Reform (NCCR MAGEUZI)	1
region	16	2009	Other	6
region	16	2009	Refused to answer	16
region	16	2009	Tanzania Labour Party (TLP)	1
region	16	2009	The Civic United Front (CUF)	1
region	17	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	9
region	17	2009	Chama cha Mapinduzi	45
region	17	2009	Don't know	9
region	17	2009	Refused to answer	1
region	30	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	2
region	30	2009	Chama cha Mapinduzi	55
region	30	2009	National Convention for Construction and Reform (NCCR MAGEUZI)	1
region	30	2009	Refused to answer	5
region	30	2009	The Civic United Front (CUF)	36
region	30	2009	Would not vote	13
region	18	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	12
region	18	2009	Chama cha Mapinduzi	57
region	18	2009	Don't know	47
region	18	2009	Refused to answer	2
region	18	2009	The Civic United Front (CUF)	2
region	19	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	15
region	19	2009	Chama cha Mapinduzi	41
region	19	2009	Refused to answer	1
region	19	2009	The Civic United Front (CUF)	14
region	20	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	15
region	20	2009	Chama cha Mapinduzi	81
region	20	2009	Don't know	14
region	20	2009	Other	2
region	20	2009	Refused to answer	5
region	20	2009	The Civic United Front (CUF)	1
region	20	2009	United Democratic Party (UDP)	1
region	20	2009	Would not vote	5
region	21	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	9
region	21	2009	Chama cha Mapinduzi	19
region	21	2009	Don't know	8
region	21	2009	Refused to answer	2
region	21	2009	Would not vote	2
region	22	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	9
region	22	2009	Chama cha Mapinduzi	52
region	22	2009	Don't know	3
region	22	2009	Refused to answer	3
region	22	2009	The Civic United Front (CUF)	5
region	23	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	4
region	23	2009	Chama cha Mapinduzi	29
region	23	2009	Don't know	1
region	23	2009	Refused to answer	3
region	23	2009	Would not vote	2
region	24	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	3
region	24	2009	Chama cha Mapinduzi	61
region	24	2009	Don't know	4
region	24	2009	National Convention for Construction and Reform (NCCR MAGEUZI)	1
region	24	2009	Refused to answer	1
region	24	2009	The Civic United Front (CUF)	1
region	24	2009	Would not vote	1
region	25	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	15
region	25	2009	Chama cha Mapinduzi	52
region	25	2009	Don't know	1
region	25	2009	Refused to answer	3
region	25	2009	Would not vote	1
region	26	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	10
region	26	2009	Chama cha Mapinduzi	44
region	26	2009	Don't know	1
region	26	2009	Refused to answer	5
region	26	2009	Would not vote	4
region	27	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	10
region	27	2009	Chama cha Mapinduzi	47
region	27	2009	Refused to answer	7
region	31	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	8
region	31	2009	Chama cha Mapinduzi	51
region	31	2009	Don't know	10
region	31	2009	Refused to answer	2
region	31	2009	Would not vote	1
region	29	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	14
region	29	2009	Chama cha Mapinduzi	72
region	29	2009	Don't know	10
region	29	2009	Refused to answer	5
region	29	2009	The Civic United Front (CUF)	2
region	29	2009	Would not vote	1
region	28	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	7
region	28	2009	Chama cha Mapinduzi	53
region	28	2009	Don't know	8
region	28	2009	Refused to answer	10
region	28	2009	The Civic United Front (CUF)	2
region	28	2009	Would not vote	8
country	TZ	2009	Tanzania Democratic Alliance (TADEA)	1
country	TZ	2009	The Progressive Party of Tanzania (PPT MAENDELEO)	1
country	TZ	2009	The Civic United Front (CUF)	154
country	TZ	2009	United People's Democratic Party (UPDP)	1
country	TZ	2009	Refused to answer	133
country	TZ	2009	Tanzania Labour Party (TLP)	4
country	TZ	2009	Chama cha Demokrasia na Maendeleo (CHADEMA)	374
country	TZ	2009	Other	22
country	TZ	2009	Chama cha Mapinduzi	1418
country	TZ	2009	Would not vote	74
country	TZ	2009	National Convention for Construction and Reform (NCCR MAGEUZI)	5
country	TZ	2009	United Democratic Party (UDP)	2
country	TZ	2009	Don't know	196
\.


--
-- Name: vote_for_which_party pk_vote_for_which_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vote_for_which_party
    ADD CONSTRAINT pk_vote_for_which_party PRIMARY KEY (geo_level, geo_code, geo_version, vote_for_which_party);


--
-- PostgreSQL database dump complete
--

