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
province	1	2010	Don't know	97
province	1	2010	Forum for Democrasy and Development (FDD)	7
province	1	2010	Heritage Party (HP)	1
province	1	2010	Movement for Multiparty Democracy (MMD)	60
province	1	2010	National Restoration Party (NAREP)	19
province	1	2010	Other	5
province	1	2010	Patriotic Front (PF)	296
province	1	2010	Refused to answer	115
province	1	2010	United National Independence Party (UNIP)	7
province	1	2010	United Party for National Development (UPND)	151
province	1	2010	Would not vote	70
province	2	2010	Don't know	4
province	2	2010	Forum for Democrasy and Development (FDD)	1
province	2	2010	Movement for Multiparty Democracy (MMD)	4
province	2	2010	National Restoration Party (NAREP)	1
province	2	2010	Patriotic Front (PF)	11
province	2	2010	Refused to answer	7
province	2	2010	United Party for National Development (UPND)	1
province	2	2010	Would not vote	3
province	3	2010	Don't know	5
province	3	2010	Movement for Multiparty Democracy (MMD)	19
province	3	2010	Patriotic Front (PF)	8
province	3	2010	Refused to answer	4
province	3	2010	United Party for National Development (UPND)	4
province	4	2010	Don't know	3
province	4	2010	Movement for Multiparty Democracy (MMD)	2
province	4	2010	National Restoration Party (NAREP)	1
province	4	2010	Patriotic Front (PF)	29
province	4	2010	Refused to answer	3
province	4	2010	Would not vote	1
province	6	2010	Don't know	5
province	6	2010	Forum for Democrasy and Development (FDD)	1
province	6	2010	Movement for Multiparty Democracy (MMD)	8
province	6	2010	Patriotic Front (PF)	22
province	6	2010	Refused to answer	9
province	6	2010	United Party for National Development (UPND)	1
province	6	2010	Would not vote	2
province	8	2010	Don't know	3
province	8	2010	Movement for Multiparty Democracy (MMD)	1
province	8	2010	Patriotic Front (PF)	5
province	8	2010	Refused to answer	5
province	8	2010	United Party for National Development (UPND)	9
province	8	2010	Would not vote	1
province	7	2010	Don't know	2
province	7	2010	Movement for Multiparty Democracy (MMD)	3
province	7	2010	National Restoration Party (NAREP)	1
province	7	2010	Other	1
province	7	2010	Patriotic Front (PF)	30
province	7	2010	Refused to answer	7
province	7	2010	United Party for National Development (UPND)	1
province	7	2010	Would not vote	2
province	9	2010	Don't know	2
province	9	2010	Patriotic Front (PF)	14
province	9	2010	Refused to answer	17
province	9	2010	United National Independence Party (UNIP)	4
province	9	2010	United Party for National Development (UPND)	42
province	9	2010	Would not vote	1
province	10	2010	Alliance for Democracy and Development (ADD)	9
province	10	2010	Don't know	2
province	10	2010	Movement for Multiparty Democracy (MMD)	3
province	10	2010	Other	1
province	10	2010	Patriotic Front (PF)	7
province	10	2010	Refused to answer	8
province	10	2010	United National Independence Party (UNIP)	1
province	10	2010	United Party for National Development (UPND)	20
province	10	2010	Would not vote	5
country	ZM	2010	Patriotic Front (PF)	422
country	ZM	2010	Refused to answer	175
country	ZM	2010	Movement for Multiparty Democracy (MMD)	100
country	ZM	2010	United Party for National Development (UPND)	229
country	ZM	2010	Forum for Democrasy and Development (FDD)	9
country	ZM	2010	Heritage Party (HP)	1
country	ZM	2010	National Restoration Party (NAREP)	22
country	ZM	2010	Would not vote	85
country	ZM	2010	Alliance for Democracy and Development (ADD)	9
country	ZM	2010	United National Independence Party (UNIP)	12
country	ZM	2010	Other	7
country	ZM	2010	Don't know	123
\.


--
-- Name: vote_for_which_party pk_vote_for_which_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vote_for_which_party
    ADD CONSTRAINT pk_vote_for_which_party PRIMARY KEY (geo_level, geo_code, geo_version, vote_for_which_party);


--
-- PostgreSQL database dump complete
--

