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
province	1	2010	Corruption is normal / Everyone does it	43
province	1	2010	Corruption is too difficult to prove	36
province	1	2010	Don't know	49
province	1	2010	It's government's money, so it's not our problem	1
province	1	2010	It's too expensive to report	19
province	1	2010	Most people do report incidents of corruption	20
province	1	2010	Nothing will be done / It wouldn't make a difference	131
province	1	2010	Other	21
province	1	2010	People are afraid of the consequences	279
province	1	2010	People don't have enough time to report it	23
province	1	2010	People don't know how to report it	38
province	1	2010	People don't know where to report it	90
province	1	2010	The officials where they would report to are also corrupt	57
province	1	2010	They would implicate themselves as bribe-givers	24
province	2	2010	Corruption is normal / Everyone does it	3
province	2	2010	Corruption is too difficult to prove	1
province	2	2010	Don't know	1
province	2	2010	Nothing will be done / It wouldn't make a difference	3
province	2	2010	Other	1
province	2	2010	People are afraid of the consequences	11
province	2	2010	People don't know where to report it	4
province	2	2010	The officials where they would report to are also corrupt	7
province	2	2010	They would implicate themselves as bribe-givers	1
province	3	2010	Don't know	4
province	3	2010	It's too expensive to report	1
province	3	2010	Most people do report incidents of corruption	1
province	3	2010	Nothing will be done / It wouldn't make a difference	9
province	3	2010	Other	1
province	3	2010	People are afraid of the consequences	19
province	3	2010	People don't know where to report it	3
province	3	2010	They would implicate themselves as bribe-givers	2
province	4	2010	Corruption is normal / Everyone does it	1
province	4	2010	Corruption is too difficult to prove	1
province	4	2010	Don't know	1
province	4	2010	Nothing will be done / It wouldn't make a difference	6
province	4	2010	Other	4
province	4	2010	People are afraid of the consequences	19
province	4	2010	People don't have enough time to report it	1
province	4	2010	People don't know how to report it	1
province	4	2010	People don't know where to report it	2
province	4	2010	The officials where they would report to are also corrupt	2
province	4	2010	They would implicate themselves as bribe-givers	2
province	6	2010	Corruption is normal / Everyone does it	6
province	6	2010	Corruption is too difficult to prove	3
province	6	2010	Don't know	3
province	6	2010	It's too expensive to report	2
province	6	2010	Nothing will be done / It wouldn't make a difference	4
province	6	2010	Other	2
province	6	2010	People are afraid of the consequences	17
province	6	2010	People don't know how to report it	2
province	6	2010	People don't know where to report it	5
province	6	2010	The officials where they would report to are also corrupt	3
province	6	2010	They would implicate themselves as bribe-givers	1
province	8	2010	Corruption is too difficult to prove	1
province	8	2010	Nothing will be done / It wouldn't make a difference	3
province	8	2010	Other	3
province	8	2010	People are afraid of the consequences	6
province	8	2010	People don't have enough time to report it	3
province	8	2010	People don't know how to report it	3
province	8	2010	The officials where they would report to are also corrupt	5
province	7	2010	Corruption is too difficult to prove	1
province	7	2010	Don't know	3
province	7	2010	It's too expensive to report	4
province	7	2010	Nothing will be done / It wouldn't make a difference	8
province	7	2010	Other	3
province	7	2010	People are afraid of the consequences	18
province	7	2010	People don't know how to report it	3
province	7	2010	People don't know where to report it	5
province	7	2010	The officials where they would report to are also corrupt	1
province	7	2010	They would implicate themselves as bribe-givers	2
province	9	2010	Corruption is normal / Everyone does it	3
province	9	2010	Corruption is too difficult to prove	2
province	9	2010	Don't know	6
province	9	2010	It's government's money, so it's not our problem	1
province	9	2010	It's too expensive to report	4
province	9	2010	Nothing will be done / It wouldn't make a difference	9
province	9	2010	Other	1
province	9	2010	People are afraid of the consequences	33
province	9	2010	People don't have enough time to report it	2
province	9	2010	People don't know how to report it	3
province	9	2010	People don't know where to report it	9
province	9	2010	The officials where they would report to are also corrupt	3
province	9	2010	They would implicate themselves as bribe-givers	4
province	10	2010	Corruption is too difficult to prove	4
province	10	2010	Don't know	6
province	10	2010	It's too expensive to report	4
province	10	2010	Nothing will be done / It wouldn't make a difference	12
province	10	2010	Other	1
province	10	2010	People are afraid of the consequences	10
province	10	2010	People don't have enough time to report it	1
province	10	2010	People don't know how to report it	2
province	10	2010	People don't know where to report it	6
province	10	2010	The officials where they would report to are also corrupt	6
province	10	2010	They would implicate themselves as bribe-givers	4
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

