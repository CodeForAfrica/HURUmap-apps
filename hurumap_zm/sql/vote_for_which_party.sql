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
province	1	2010	Don't know	18
province	1	2010	Forum for Democrasy and Development (FDD)	1
province	1	2010	Heritage Party (HP)	1
province	1	2010	Movement for Multiparty Democracy (MMD)	13
province	1	2010	Other	2
province	1	2010	Patriotic Front (PF)	26
province	1	2010	Refused to answer	24
province	1	2010	United National Independence Party (UNIP)	2
province	1	2010	United Party for National Development (UPND)	27
province	1	2010	Would not vote	6
province	2	2010	Don't know	17
province	2	2010	Forum for Democrasy and Development (FDD)	1
province	2	2010	Movement for Multiparty Democracy (MMD)	20
province	2	2010	National Restoration Party (NAREP)	7
province	2	2010	Patriotic Front (PF)	78
province	2	2010	Refused to answer	25
province	2	2010	United National Independence Party (UNIP)	2
province	2	2010	United Party for National Development (UPND)	11
province	2	2010	Would not vote	31
province	3	2010	Don't know	25
province	3	2010	Forum for Democrasy and Development (FDD)	2
province	3	2010	Movement for Multiparty Democracy (MMD)	26
province	3	2010	National Restoration Party (NAREP)	1
province	3	2010	Patriotic Front (PF)	46
province	3	2010	Refused to answer	18
province	3	2010	United Party for National Development (UPND)	12
province	3	2010	Would not vote	6
province	4	2010	Don't know	8
province	4	2010	Movement for Multiparty Democracy (MMD)	3
province	4	2010	National Restoration Party (NAREP)	1
province	4	2010	Other	1
province	4	2010	Patriotic Front (PF)	61
province	4	2010	Refused to answer	7
province	4	2010	Would not vote	5
province	5	2010	Don't know	25
province	5	2010	Forum for Democrasy and Development (FDD)	3
province	5	2010	Movement for Multiparty Democracy (MMD)	17
province	5	2010	National Restoration Party (NAREP)	12
province	5	2010	Patriotic Front (PF)	71
province	5	2010	Refused to answer	33
province	5	2010	United National Independence Party (UNIP)	2
province	5	2010	United Party for National Development (UPND)	43
province	5	2010	Would not vote	17
province	6	2010	Don't know	6
province	6	2010	Forum for Democrasy and Development (FDD)	1
province	6	2010	Movement for Multiparty Democracy (MMD)	10
province	6	2010	Patriotic Front (PF)	28
province	6	2010	Refused to answer	13
province	6	2010	United National Independence Party (UNIP)	1
province	6	2010	United Party for National Development (UPND)	1
province	6	2010	Would not vote	4
province	8	2010	Don't know	12
province	8	2010	Movement for Multiparty Democracy (MMD)	1
province	8	2010	Patriotic Front (PF)	17
province	8	2010	Refused to answer	7
province	8	2010	United Party for National Development (UPND)	25
province	8	2010	Would not vote	2
province	7	2010	Don't know	4
province	7	2010	Forum for Democrasy and Development (FDD)	1
province	7	2010	Movement for Multiparty Democracy (MMD)	4
province	7	2010	National Restoration Party (NAREP)	1
province	7	2010	Other	3
province	7	2010	Patriotic Front (PF)	62
province	7	2010	Refused to answer	11
province	7	2010	United Party for National Development (UPND)	2
province	7	2010	Would not vote	7
province	9	2010	Don't know	4
province	9	2010	Movement for Multiparty Democracy (MMD)	3
province	9	2010	Patriotic Front (PF)	22
province	9	2010	Refused to answer	25
province	9	2010	United National Independence Party (UNIP)	4
province	9	2010	United Party for National Development (UPND)	75
province	9	2010	Would not vote	1
province	10	2010	Alliance for Democracy and Development (ADD)	9
province	10	2010	Don't know	4
province	10	2010	Movement for Multiparty Democracy (MMD)	3
province	10	2010	Other	1
province	10	2010	Patriotic Front (PF)	11
province	10	2010	Refused to answer	12
province	10	2010	United National Independence Party (UNIP)	1
province	10	2010	United Party for National Development (UPND)	33
province	10	2010	Would not vote	6
country	ZM	2010	Patriotic Front (PF)	422
country	ZM	2010	Refused to answer	175
country	ZM	2010	Alliance for Democracy and Development (ADD)	9
country	ZM	2010	Movement for Multiparty Democracy (MMD)	100
country	ZM	2010	United Party for National Development (UPND)	229
country	ZM	2010	Forum for Democrasy and Development (FDD)	9
country	ZM	2010	Heritage Party (HP)	1
country	ZM	2010	National Restoration Party (NAREP)	22
country	ZM	2010	Would not vote	85
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

