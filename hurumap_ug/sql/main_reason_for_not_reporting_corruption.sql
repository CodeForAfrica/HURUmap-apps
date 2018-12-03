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

ALTER TABLE IF EXISTS ONLY public.main_reason_for_not_reporting_corruption DROP CONSTRAINT IF EXISTS pk_main_reason_for_not_reporting_corruption;
DROP TABLE IF EXISTS public.main_reason_for_not_reporting_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: main_reason_for_not_reporting_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_reason_for_not_reporting_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    main_reason_for_not_reporting_corruption character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: main_reason_for_not_reporting_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_reason_for_not_reporting_corruption (geo_level, geo_code, geo_version, main_reason_for_not_reporting_corruption, total) FROM stdin;
region	114	2014	Corruption is normal / Everyone does it	86
region	114	2014	Corruption is too difficult to prove	20
region	114	2014	Don't know	59
region	114	2014	It's government's money, so it's not our problem	1
region	114	2014	It's too expensive to report	21
region	114	2014	Most people do report incidents of corruption	1
region	114	2014	Nothing will be done / It wouldn't make a difference	93
region	114	2014	Other	46
region	114	2014	People are afraid of the consequences	162
region	114	2014	People don't have enough time to report it	3
region	114	2014	People don't know how to report it	17
region	114	2014	People don't know where to report it	40
region	114	2014	The officials where they would report to are also corrupt	74
region	114	2014	They would implicate themselves as bribe-givers	41
region	115	2014	Corruption is normal / Everyone does it	52
region	115	2014	Corruption is too difficult to prove	21
region	115	2014	Don't know	29
region	115	2014	It's government's money, so it's not our problem	2
region	115	2014	It's too expensive to report	15
region	115	2014	Most people do report incidents of corruption	14
region	115	2014	Nothing will be done / It wouldn't make a difference	102
region	115	2014	Other	1
region	115	2014	People are afraid of the consequences	177
region	115	2014	People don't have enough time to report it	28
region	115	2014	People don't know how to report it	33
region	115	2014	People don't know where to report it	67
region	115	2014	The officials where they would report to are also corrupt	68
region	115	2014	They would implicate themselves as bribe-givers	15
region	116	2014	Corruption is normal / Everyone does it	17
region	116	2014	Corruption is too difficult to prove	32
region	116	2014	Don't know	61
region	116	2014	It's government's money, so it's not our problem	4
region	116	2014	It's too expensive to report	24
region	116	2014	Missing	1
region	116	2014	Most people do report incidents of corruption	2
region	116	2014	Nothing will be done / It wouldn't make a difference	68
region	116	2014	Other	6
region	116	2014	People are afraid of the consequences	177
region	116	2014	People don't have enough time to report it	7
region	116	2014	People don't know how to report it	26
region	116	2014	People don't know where to report it	20
region	116	2014	The officials where they would report to are also corrupt	51
region	116	2014	They would implicate themselves as bribe-givers	8
region	117	2014	Corruption is normal / Everyone does it	38
region	117	2014	Corruption is too difficult to prove	19
region	117	2014	Don't know	33
region	117	2014	It's government's money, so it's not our problem	6
region	117	2014	It's too expensive to report	16
region	117	2014	Most people do report incidents of corruption	12
region	117	2014	Nothing will be done / It wouldn't make a difference	85
region	117	2014	Other	3
region	117	2014	People are afraid of the consequences	201
region	117	2014	People don't have enough time to report it	6
region	117	2014	People don't know how to report it	39
region	117	2014	People don't know where to report it	71
region	117	2014	The officials where they would report to are also corrupt	63
region	117	2014	They would implicate themselves as bribe-givers	16
country	UG	2014	Missing	1
country	UG	2014	People are afraid of the consequences	717
country	UG	2014	It's government's money, so it's not our problem	13
country	UG	2014	They would implicate themselves as bribe-givers	80
country	UG	2014	Corruption is too difficult to prove	92
country	UG	2014	The officials where they would report to are also corrupt	256
country	UG	2014	Most people do report incidents of corruption	29
country	UG	2014	Nothing will be done / It wouldn't make a difference	348
country	UG	2014	People don't know where to report it	198
country	UG	2014	It's too expensive to report	76
country	UG	2014	People don't have enough time to report it	44
country	UG	2014	Corruption is normal / Everyone does it	193
country	UG	2014	Other	56
country	UG	2014	Don't know	182
country	UG	2014	People don't know how to report it	115
\.


--
-- Name: main_reason_for_not_reporting_corruption pk_main_reason_for_not_reporting_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_reason_for_not_reporting_corruption
    ADD CONSTRAINT pk_main_reason_for_not_reporting_corruption PRIMARY KEY (geo_level, geo_code, geo_version, main_reason_for_not_reporting_corruption);


--
-- PostgreSQL database dump complete
--

