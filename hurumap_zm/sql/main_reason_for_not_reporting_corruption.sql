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
province	1	2010	Corruption is normal / Everyone does it	7
province	1	2010	Corruption is too difficult to prove	12
province	1	2010	Don't know	5
province	1	2010	It's government's money, so it's not our problem	1
province	1	2010	It's too expensive to report	2
province	1	2010	Most people do report incidents of corruption	1
province	1	2010	Nothing will be done / It wouldn't make a difference	17
province	1	2010	Other	2
province	1	2010	People are afraid of the consequences	40
province	1	2010	People don't have enough time to report it	2
province	1	2010	People don't know how to report it	1
province	1	2010	People don't know where to report it	13
province	1	2010	The officials where they would report to are also corrupt	11
province	1	2010	They would implicate themselves as bribe-givers	6
province	2	2010	Corruption is normal / Everyone does it	14
province	2	2010	Corruption is too difficult to prove	8
province	2	2010	Don't know	5
province	2	2010	It's too expensive to report	4
province	2	2010	Most people do report incidents of corruption	1
province	2	2010	Nothing will be done / It wouldn't make a difference	30
province	2	2010	Other	3
province	2	2010	People are afraid of the consequences	56
province	2	2010	People don't have enough time to report it	5
province	2	2010	People don't know how to report it	8
province	2	2010	People don't know where to report it	19
province	2	2010	The officials where they would report to are also corrupt	32
province	2	2010	They would implicate themselves as bribe-givers	7
province	3	2010	Corruption is normal / Everyone does it	8
province	3	2010	Corruption is too difficult to prove	5
province	3	2010	Don't know	10
province	3	2010	It's too expensive to report	3
province	3	2010	Most people do report incidents of corruption	4
province	3	2010	Nothing will be done / It wouldn't make a difference	19
province	3	2010	Other	2
province	3	2010	People are afraid of the consequences	68
province	3	2010	People don't know how to report it	2
province	3	2010	People don't know where to report it	10
province	3	2010	The officials where they would report to are also corrupt	3
province	3	2010	They would implicate themselves as bribe-givers	2
province	4	2010	Corruption is normal / Everyone does it	3
province	4	2010	Corruption is too difficult to prove	1
province	4	2010	Don't know	5
province	4	2010	It's too expensive to report	1
province	4	2010	Most people do report incidents of corruption	1
province	4	2010	Nothing will be done / It wouldn't make a difference	11
province	4	2010	Other	5
province	4	2010	People are afraid of the consequences	44
province	4	2010	People don't have enough time to report it	3
province	4	2010	People don't know how to report it	3
province	4	2010	People don't know where to report it	5
province	4	2010	The officials where they would report to are also corrupt	3
province	4	2010	They would implicate themselves as bribe-givers	2
province	5	2010	Corruption is normal / Everyone does it	8
province	5	2010	Corruption is too difficult to prove	7
province	5	2010	Don't know	15
province	5	2010	It's too expensive to report	5
province	5	2010	Most people do report incidents of corruption	12
province	5	2010	Nothing will be done / It wouldn't make a difference	45
province	5	2010	Other	7
province	5	2010	People are afraid of the consequences	60
province	5	2010	People don't have enough time to report it	8
province	5	2010	People don't know how to report it	16
province	5	2010	People don't know where to report it	25
province	5	2010	The officials where they would report to are also corrupt	11
province	5	2010	They would implicate themselves as bribe-givers	5
province	6	2010	Corruption is normal / Everyone does it	6
province	6	2010	Corruption is too difficult to prove	4
province	6	2010	Don't know	6
province	6	2010	It's too expensive to report	2
province	6	2010	Nothing will be done / It wouldn't make a difference	8
province	6	2010	Other	2
province	6	2010	People are afraid of the consequences	22
province	6	2010	People don't know how to report it	2
province	6	2010	People don't know where to report it	5
province	6	2010	The officials where they would report to are also corrupt	4
province	6	2010	They would implicate themselves as bribe-givers	3
province	8	2010	Corruption is normal / Everyone does it	2
province	8	2010	Corruption is too difficult to prove	1
province	8	2010	Don't know	2
province	8	2010	Nothing will be done / It wouldn't make a difference	11
province	8	2010	Other	6
province	8	2010	People are afraid of the consequences	16
province	8	2010	People don't have enough time to report it	6
province	8	2010	People don't know how to report it	3
province	8	2010	People don't know where to report it	8
province	8	2010	The officials where they would report to are also corrupt	8
province	8	2010	They would implicate themselves as bribe-givers	1
province	7	2010	Corruption is too difficult to prove	3
province	7	2010	Don't know	11
province	7	2010	It's too expensive to report	7
province	7	2010	Most people do report incidents of corruption	1
province	7	2010	Nothing will be done / It wouldn't make a difference	11
province	7	2010	Other	6
province	7	2010	People are afraid of the consequences	40
province	7	2010	People don't know how to report it	4
province	7	2010	People don't know where to report it	10
province	7	2010	The officials where they would report to are also corrupt	1
province	7	2010	They would implicate themselves as bribe-givers	2
province	9	2010	Corruption is normal / Everyone does it	7
province	9	2010	Corruption is too difficult to prove	3
province	9	2010	Don't know	8
province	9	2010	It's government's money, so it's not our problem	1
province	9	2010	It's too expensive to report	5
province	9	2010	Most people do report incidents of corruption	1
province	9	2010	Nothing will be done / It wouldn't make a difference	15
province	9	2010	Other	1
province	9	2010	People are afraid of the consequences	55
province	9	2010	People don't have enough time to report it	5
province	9	2010	People don't know how to report it	7
province	9	2010	People don't know where to report it	18
province	9	2010	The officials where they would report to are also corrupt	4
province	9	2010	They would implicate themselves as bribe-givers	6
province	10	2010	Corruption is normal / Everyone does it	1
province	10	2010	Corruption is too difficult to prove	5
province	10	2010	Don't know	6
province	10	2010	It's too expensive to report	5
province	10	2010	Nothing will be done / It wouldn't make a difference	18
province	10	2010	Other	3
province	10	2010	People are afraid of the consequences	11
province	10	2010	People don't have enough time to report it	1
province	10	2010	People don't know how to report it	6
province	10	2010	People don't know where to report it	11
province	10	2010	The officials where they would report to are also corrupt	7
province	10	2010	They would implicate themselves as bribe-givers	6
country	ZM	2010	People are afraid of the consequences	412
country	ZM	2010	It's government's money, so it's not our problem	2
country	ZM	2010	They would implicate themselves as bribe-givers	40
country	ZM	2010	Corruption is too difficult to prove	49
country	ZM	2010	The officials where they would report to are also corrupt	84
country	ZM	2010	Most people do report incidents of corruption	21
country	ZM	2010	Nothing will be done / It wouldn't make a difference	185
country	ZM	2010	People don't know where to report it	124
country	ZM	2010	It's too expensive to report	34
country	ZM	2010	People don't have enough time to report it	30
country	ZM	2010	Corruption is normal / Everyone does it	56
country	ZM	2010	Other	37
country	ZM	2010	Don't know	73
country	ZM	2010	People don't know how to report it	52
\.


--
-- Name: main_reason_for_not_reporting_corruption pk_main_reason_for_not_reporting_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_reason_for_not_reporting_corruption
    ADD CONSTRAINT pk_main_reason_for_not_reporting_corruption PRIMARY KEY (geo_level, geo_code, geo_version, main_reason_for_not_reporting_corruption);


--
-- PostgreSQL database dump complete
--

