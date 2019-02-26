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
province	10	2009	Corruption is normal / Everyone does it	22
province	10	2009	Corruption is too difficult to prove	5
province	10	2009	Don't know	5
province	10	2009	Most people do report incidents of corruption	5
province	10	2009	Nothing will be done / It wouldn't make a difference	33
province	10	2009	People are afraid of the consequences	46
province	10	2009	People don't have enough time to report it	3
province	10	2009	People don't know how to report it	3
province	10	2009	People don't know where to report it	4
province	10	2009	The officials where they would report to are also corrupt	21
province	10	2009	They would implicate themselves as bribe-givers	5
province	19	2009	Corruption is normal / Everyone does it	81
province	19	2009	Corruption is too difficult to prove	20
province	19	2009	Don't know	5
province	19	2009	It's government's money, so it's not our problem	1
province	19	2009	It's too expensive to report	5
province	19	2009	Most people do report incidents of corruption	20
province	19	2009	Nothing will be done / It wouldn't make a difference	86
province	19	2009	Other	1
province	19	2009	People are afraid of the consequences	111
province	19	2009	People don't have enough time to report it	6
province	19	2009	People don't know how to report it	8
province	19	2009	People don't know where to report it	14
province	19	2009	The officials where they would report to are also corrupt	48
province	19	2009	They would implicate themselves as bribe-givers	42
province	11	2009	Corruption is normal / Everyone does it	65
province	11	2009	Corruption is too difficult to prove	12
province	11	2009	Don't know	24
province	11	2009	It's too expensive to report	7
province	11	2009	Most people do report incidents of corruption	4
province	11	2009	Nothing will be done / It wouldn't make a difference	75
province	11	2009	Other	1
province	11	2009	People are afraid of the consequences	39
province	11	2009	People don't have enough time to report it	2
province	11	2009	People don't know how to report it	24
province	11	2009	People don't know where to report it	25
province	11	2009	The officials where they would report to are also corrupt	18
province	11	2009	They would implicate themselves as bribe-givers	8
province	12	2009	Corruption is normal / Everyone does it	25
province	12	2009	Corruption is too difficult to prove	8
province	12	2009	Don't know	10
province	12	2009	It's too expensive to report	1
province	12	2009	Most people do report incidents of corruption	13
province	12	2009	Nothing will be done / It wouldn't make a difference	35
province	12	2009	Other	2
province	12	2009	People are afraid of the consequences	72
province	12	2009	People don't have enough time to report it	3
province	12	2009	People don't know how to report it	8
province	12	2009	People don't know where to report it	8
province	12	2009	Refused	1
province	12	2009	The officials where they would report to are also corrupt	18
province	12	2009	They would implicate themselves as bribe-givers	4
province	13	2009	Corruption is normal / Everyone does it	33
province	13	2009	Corruption is too difficult to prove	6
province	13	2009	Don't know	8
province	13	2009	It's government's money, so it's not our problem	1
province	13	2009	It's too expensive to report	9
province	13	2009	Most people do report incidents of corruption	6
province	13	2009	Nothing will be done / It wouldn't make a difference	54
province	13	2009	Other	1
province	13	2009	People are afraid of the consequences	73
province	13	2009	People don't have enough time to report it	4
province	13	2009	People don't know how to report it	18
province	13	2009	People don't know where to report it	15
province	13	2009	The officials where they would report to are also corrupt	11
province	13	2009	They would implicate themselves as bribe-givers	9
province	14	2009	Corruption is normal / Everyone does it	24
province	14	2009	Corruption is too difficult to prove	6
province	14	2009	Don't know	15
province	14	2009	It's too expensive to report	7
province	14	2009	Most people do report incidents of corruption	7
province	14	2009	Nothing will be done / It wouldn't make a difference	51
province	14	2009	Other	7
province	14	2009	People are afraid of the consequences	92
province	14	2009	People don't have enough time to report it	4
province	14	2009	People don't know how to report it	10
province	14	2009	People don't know where to report it	10
province	14	2009	Refused	4
province	14	2009	The officials where they would report to are also corrupt	25
province	14	2009	They would implicate themselves as bribe-givers	10
province	18	2009	Corruption is normal / Everyone does it	38
province	18	2009	Corruption is too difficult to prove	3
province	18	2009	Don't know	6
province	18	2009	It's government's money, so it's not our problem	1
province	18	2009	It's too expensive to report	11
province	18	2009	Most people do report incidents of corruption	8
province	18	2009	Nothing will be done / It wouldn't make a difference	47
province	18	2009	People are afraid of the consequences	73
province	18	2009	People don't have enough time to report it	3
province	18	2009	People don't know how to report it	6
province	18	2009	People don't know where to report it	32
province	18	2009	The officials where they would report to are also corrupt	18
province	18	2009	They would implicate themselves as bribe-givers	2
province	15	2009	Corruption is normal / Everyone does it	18
province	15	2009	Corruption is too difficult to prove	2
province	15	2009	Don't know	18
province	15	2009	It's too expensive to report	1
province	15	2009	Most people do report incidents of corruption	10
province	15	2009	Nothing will be done / It wouldn't make a difference	35
province	15	2009	People are afraid of the consequences	24
province	15	2009	People don't have enough time to report it	1
province	15	2009	People don't know how to report it	6
province	15	2009	People don't know where to report it	11
province	15	2009	The officials where they would report to are also corrupt	2
province	16	2009	Corruption is normal / Everyone does it	10
province	16	2009	Corruption is too difficult to prove	6
province	16	2009	Don't know	11
province	16	2009	It's too expensive to report	2
province	16	2009	Most people do report incidents of corruption	16
province	16	2009	Nothing will be done / It wouldn't make a difference	17
province	16	2009	People are afraid of the consequences	14
province	16	2009	People don't have enough time to report it	2
province	16	2009	People don't know how to report it	9
province	16	2009	People don't know where to report it	8
province	16	2009	Refused	1
province	16	2009	The officials where they would report to are also corrupt	8
province	17	2009	Corruption is normal / Everyone does it	30
province	17	2009	Corruption is too difficult to prove	13
province	17	2009	Don't know	11
province	17	2009	It's government's money, so it's not our problem	1
province	17	2009	It's too expensive to report	12
province	17	2009	Most people do report incidents of corruption	30
province	17	2009	Nothing will be done / It wouldn't make a difference	57
province	17	2009	People are afraid of the consequences	52
province	17	2009	People don't have enough time to report it	2
province	17	2009	People don't know how to report it	12
province	17	2009	People don't know where to report it	15
province	17	2009	The officials where they would report to are also corrupt	44
province	17	2009	They would implicate themselves as bribe-givers	9
country	ZW	2009	People are afraid of the consequences	596
country	ZW	2009	It's government's money, so it's not our problem	4
country	ZW	2009	They would implicate themselves as bribe-givers	89
country	ZW	2009	Corruption is too difficult to prove	81
country	ZW	2009	Refused	6
country	ZW	2009	Most people do report incidents of corruption	119
country	ZW	2009	Nothing will be done / It wouldn't make a difference	490
country	ZW	2009	People don't know where to report it	142
country	ZW	2009	It's too expensive to report	55
country	ZW	2009	People don't have enough time to report it	30
country	ZW	2009	Corruption is normal / Everyone does it	346
country	ZW	2009	The officials where they would report to are also corrupt	213
country	ZW	2009	Other	12
country	ZW	2009	Don't know	113
country	ZW	2009	People don't know how to report it	104
\.


--
-- Name: main_reason_for_not_reporting_corruption pk_main_reason_for_not_reporting_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_reason_for_not_reporting_corruption
    ADD CONSTRAINT pk_main_reason_for_not_reporting_corruption PRIMARY KEY (geo_level, geo_code, geo_version, main_reason_for_not_reporting_corruption);


--
-- PostgreSQL database dump complete
--

