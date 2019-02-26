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
region	1	2009	Corruption is normal / Everyone does it	10
region	1	2009	Corruption is too difficult to prove	3
region	1	2009	Don't know	3
region	1	2009	It's too expensive to report	10
region	1	2009	Most people do report incidents of corruption	1
region	1	2009	Nothing will be done / It wouldn't make a difference	38
region	1	2009	Other	2
region	1	2009	People are afraid of the consequences	26
region	1	2009	People don't have enough time to report it	3
region	1	2009	People don't know how to report it	10
region	1	2009	People don't know where to report it	7
region	1	2009	The officials where they would report to are also corrupt	3
region	1	2009	They would implicate themselves as bribe-givers	4
region	2	2009	Corruption is normal / Everyone does it	17
region	2	2009	Corruption is too difficult to prove	7
region	2	2009	Don't know	8
region	2	2009	It's too expensive to report	10
region	2	2009	Most people do report incidents of corruption	3
region	2	2009	Nothing will be done / It wouldn't make a difference	71
region	2	2009	Other	1
region	2	2009	People are afraid of the consequences	62
region	2	2009	People don't have enough time to report it	10
region	2	2009	People don't know how to report it	25
region	2	2009	People don't know where to report it	22
region	2	2009	The officials where they would report to are also corrupt	18
region	2	2009	They would implicate themselves as bribe-givers	19
region	3	2009	Corruption is normal / Everyone does it	5
region	3	2009	Corruption is too difficult to prove	2
region	3	2009	Don't know	22
region	3	2009	Most people do report incidents of corruption	1
region	3	2009	Nothing will be done / It wouldn't make a difference	8
region	3	2009	People are afraid of the consequences	37
region	3	2009	People don't know how to report it	4
region	3	2009	People don't know where to report it	8
region	3	2009	The officials where they would report to are also corrupt	7
region	3	2009	They would implicate themselves as bribe-givers	2
region	4	2009	Corruption is normal / Everyone does it	11
region	4	2009	Corruption is too difficult to prove	3
region	4	2009	Don't know	4
region	4	2009	It's too expensive to report	3
region	4	2009	Most people do report incidents of corruption	4
region	4	2009	Nothing will be done / It wouldn't make a difference	15
region	4	2009	People are afraid of the consequences	15
region	4	2009	People don't have enough time to report it	1
region	4	2009	People don't know how to report it	3
region	4	2009	People don't know where to report it	2
region	4	2009	The officials where they would report to are also corrupt	3
region	4	2009	They would implicate themselves as bribe-givers	7
region	5	2009	Corruption is normal / Everyone does it	2
region	5	2009	Corruption is too difficult to prove	1
region	5	2009	Don't know	2
region	5	2009	It's too expensive to report	1
region	5	2009	Most people do report incidents of corruption	1
region	5	2009	Nothing will be done / It wouldn't make a difference	11
region	5	2009	People are afraid of the consequences	8
region	5	2009	People don't have enough time to report it	5
region	5	2009	People don't know how to report it	5
region	5	2009	People don't know where to report it	10
region	5	2009	They would implicate themselves as bribe-givers	2
region	6	2009	Corruption is normal / Everyone does it	12
region	6	2009	Corruption is too difficult to prove	4
region	6	2009	Don't know	10
region	6	2009	It's too expensive to report	1
region	6	2009	Most people do report incidents of corruption	1
region	6	2009	Nothing will be done / It wouldn't make a difference	13
region	6	2009	People are afraid of the consequences	11
region	6	2009	People don't have enough time to report it	1
region	6	2009	People don't know how to report it	6
region	6	2009	People don't know where to report it	6
region	6	2009	The officials where they would report to are also corrupt	3
region	6	2009	They would implicate themselves as bribe-givers	4
region	7	2009	Corruption is normal / Everyone does it	12
region	7	2009	Corruption is too difficult to prove	2
region	7	2009	Don't know	3
region	7	2009	It's too expensive to report	3
region	7	2009	Nothing will be done / It wouldn't make a difference	8
region	7	2009	People are afraid of the consequences	14
region	7	2009	People don't know how to report it	8
region	7	2009	People don't know where to report it	5
region	7	2009	They would implicate themselves as bribe-givers	1
region	8	2009	Corruption is normal / Everyone does it	5
region	8	2009	Corruption is too difficult to prove	2
region	8	2009	Nothing will be done / It wouldn't make a difference	10
region	8	2009	People are afraid of the consequences	7
region	8	2009	People don't have enough time to report it	1
region	8	2009	People don't know how to report it	5
region	8	2009	People don't know where to report it	7
region	8	2009	They would implicate themselves as bribe-givers	3
region	9	2009	Don't know	2
region	9	2009	It's too expensive to report	3
region	9	2009	Nothing will be done / It wouldn't make a difference	5
region	9	2009	People are afraid of the consequences	1
region	9	2009	People don't know how to report it	5
region	9	2009	People don't know where to report it	5
region	9	2009	The officials where they would report to are also corrupt	3
region	10	2009	Corruption is normal / Everyone does it	4
region	10	2009	Corruption is too difficult to prove	5
region	10	2009	Don't know	14
region	10	2009	It's too expensive to report	4
region	10	2009	Most people do report incidents of corruption	1
region	10	2009	Nothing will be done / It wouldn't make a difference	13
region	10	2009	People are afraid of the consequences	21
region	10	2009	People don't have enough time to report it	3
region	10	2009	People don't know how to report it	6
region	10	2009	People don't know where to report it	11
region	10	2009	The officials where they would report to are also corrupt	10
region	10	2009	They would implicate themselves as bribe-givers	4
region	11	2009	Corruption is normal / Everyone does it	7
region	11	2009	Corruption is too difficult to prove	2
region	11	2009	Don't know	1
region	11	2009	It's too expensive to report	9
region	11	2009	Most people do report incidents of corruption	1
region	11	2009	Nothing will be done / It wouldn't make a difference	22
region	11	2009	Other	3
region	11	2009	People are afraid of the consequences	18
region	11	2009	People don't have enough time to report it	4
region	11	2009	People don't know how to report it	6
region	11	2009	People don't know where to report it	8
region	11	2009	The officials where they would report to are also corrupt	5
region	11	2009	They would implicate themselves as bribe-givers	2
region	12	2009	Nothing will be done / It wouldn't make a difference	4
region	12	2009	People are afraid of the consequences	1
region	12	2009	People don't know how to report it	1
region	12	2009	People don't know where to report it	2
region	13	2009	Corruption is too difficult to prove	1
region	13	2009	Don't know	3
region	13	2009	Nothing will be done / It wouldn't make a difference	3
region	13	2009	Other	1
region	13	2009	People are afraid of the consequences	6
region	13	2009	People don't know how to report it	3
region	13	2009	People don't know where to report it	5
region	13	2009	They would implicate themselves as bribe-givers	2
region	14	2009	Corruption is normal / Everyone does it	1
region	14	2009	Corruption is too difficult to prove	2
region	14	2009	It's government's money, so it's not our problem	1
region	14	2009	It's too expensive to report	1
region	14	2009	Nothing will be done / It wouldn't make a difference	3
region	14	2009	People are afraid of the consequences	10
region	14	2009	People don't have enough time to report it	5
region	14	2009	People don't know how to report it	7
region	14	2009	People don't know where to report it	11
region	14	2009	They would implicate themselves as bribe-givers	7
region	15	2009	Corruption is normal / Everyone does it	8
region	15	2009	Don't know	4
region	15	2009	It's too expensive to report	11
region	15	2009	Nothing will be done / It wouldn't make a difference	13
region	15	2009	Other	2
region	15	2009	People are afraid of the consequences	11
region	15	2009	People don't have enough time to report it	2
region	15	2009	People don't know how to report it	1
region	15	2009	People don't know where to report it	2
region	15	2009	The officials where they would report to are also corrupt	5
region	15	2009	They would implicate themselves as bribe-givers	5
region	16	2009	Corruption is normal / Everyone does it	11
region	16	2009	Corruption is too difficult to prove	2
region	16	2009	Don't know	6
region	16	2009	It's government's money, so it's not our problem	1
region	16	2009	Most people do report incidents of corruption	1
region	16	2009	Nothing will be done / It wouldn't make a difference	20
region	16	2009	Other	4
region	16	2009	People are afraid of the consequences	15
region	16	2009	People don't know how to report it	5
region	16	2009	People don't know where to report it	7
region	16	2009	The officials where they would report to are also corrupt	5
region	16	2009	They would implicate themselves as bribe-givers	3
region	17	2009	Corruption is normal / Everyone does it	6
region	17	2009	Corruption is too difficult to prove	1
region	17	2009	It's too expensive to report	4
region	17	2009	Most people do report incidents of corruption	2
region	17	2009	Nothing will be done / It wouldn't make a difference	10
region	17	2009	People are afraid of the consequences	9
region	17	2009	People don't have enough time to report it	6
region	17	2009	People don't know how to report it	7
region	17	2009	People don't know where to report it	6
region	17	2009	The officials where they would report to are also corrupt	9
region	17	2009	They would implicate themselves as bribe-givers	4
region	30	2009	Corruption is normal / Everyone does it	18
region	30	2009	Corruption is too difficult to prove	4
region	30	2009	Don't know	1
region	30	2009	It's too expensive to report	2
region	30	2009	Most people do report incidents of corruption	1
region	30	2009	Nothing will be done / It wouldn't make a difference	35
region	30	2009	People are afraid of the consequences	20
region	30	2009	People don't have enough time to report it	1
region	30	2009	People don't know how to report it	10
region	30	2009	People don't know where to report it	14
region	30	2009	The officials where they would report to are also corrupt	1
region	30	2009	They would implicate themselves as bribe-givers	5
region	18	2009	Corruption is normal / Everyone does it	5
region	18	2009	Corruption is too difficult to prove	3
region	18	2009	Don't know	24
region	18	2009	It's too expensive to report	2
region	18	2009	Nothing will be done / It wouldn't make a difference	13
region	18	2009	People are afraid of the consequences	39
region	18	2009	People don't have enough time to report it	1
region	18	2009	People don't know how to report it	6
region	18	2009	People don't know where to report it	7
region	18	2009	The officials where they would report to are also corrupt	9
region	18	2009	They would implicate themselves as bribe-givers	11
region	19	2009	Corruption is normal / Everyone does it	6
region	19	2009	Don't know	1
region	19	2009	It's government's money, so it's not our problem	1
region	19	2009	It's too expensive to report	6
region	19	2009	Nothing will be done / It wouldn't make a difference	10
region	19	2009	People are afraid of the consequences	16
region	19	2009	People don't have enough time to report it	4
region	19	2009	People don't know how to report it	11
region	19	2009	People don't know where to report it	10
region	19	2009	They would implicate themselves as bribe-givers	6
region	20	2009	Corruption is normal / Everyone does it	27
region	20	2009	Corruption is too difficult to prove	3
region	20	2009	Don't know	4
region	20	2009	It's too expensive to report	4
region	20	2009	Most people do report incidents of corruption	8
region	20	2009	Nothing will be done / It wouldn't make a difference	21
region	20	2009	Other	2
region	20	2009	People are afraid of the consequences	26
region	20	2009	People don't have enough time to report it	1
region	20	2009	People don't know how to report it	8
region	20	2009	People don't know where to report it	8
region	20	2009	The officials where they would report to are also corrupt	8
region	20	2009	They would implicate themselves as bribe-givers	4
region	21	2009	Corruption is normal / Everyone does it	1
region	21	2009	Corruption is too difficult to prove	1
region	21	2009	Don't know	1
region	21	2009	It's too expensive to report	4
region	21	2009	Most people do report incidents of corruption	1
region	21	2009	Nothing will be done / It wouldn't make a difference	6
region	21	2009	People are afraid of the consequences	9
region	21	2009	People don't have enough time to report it	1
region	21	2009	People don't know how to report it	5
region	21	2009	People don't know where to report it	10
region	21	2009	They would implicate themselves as bribe-givers	1
region	22	2009	Corruption is normal / Everyone does it	2
region	22	2009	Corruption is too difficult to prove	6
region	22	2009	Don't know	2
region	22	2009	It's too expensive to report	5
region	22	2009	Nothing will be done / It wouldn't make a difference	12
region	22	2009	People are afraid of the consequences	12
region	22	2009	People don't have enough time to report it	8
region	22	2009	People don't know how to report it	12
region	22	2009	People don't know where to report it	7
region	22	2009	The officials where they would report to are also corrupt	2
region	22	2009	They would implicate themselves as bribe-givers	4
region	23	2009	Corruption is normal / Everyone does it	4
region	23	2009	Don't know	3
region	23	2009	It's too expensive to report	3
region	23	2009	Most people do report incidents of corruption	1
region	23	2009	Nothing will be done / It wouldn't make a difference	6
region	23	2009	People are afraid of the consequences	1
region	23	2009	People don't have enough time to report it	2
region	23	2009	People don't know how to report it	6
region	23	2009	People don't know where to report it	7
region	23	2009	The officials where they would report to are also corrupt	6
region	24	2009	Corruption is normal / Everyone does it	4
region	24	2009	Corruption is too difficult to prove	1
region	24	2009	Don't know	1
region	24	2009	It's too expensive to report	3
region	24	2009	Most people do report incidents of corruption	2
region	24	2009	Nothing will be done / It wouldn't make a difference	10
region	24	2009	People are afraid of the consequences	18
region	24	2009	People don't have enough time to report it	5
region	24	2009	People don't know how to report it	7
region	24	2009	People don't know where to report it	20
region	24	2009	The officials where they would report to are also corrupt	1
region	25	2009	Corruption is normal / Everyone does it	2
region	25	2009	Corruption is too difficult to prove	4
region	25	2009	Don't know	3
region	25	2009	It's government's money, so it's not our problem	1
region	25	2009	Most people do report incidents of corruption	1
region	25	2009	Nothing will be done / It wouldn't make a difference	10
region	25	2009	People are afraid of the consequences	24
region	25	2009	People don't have enough time to report it	3
region	25	2009	People don't know how to report it	7
region	25	2009	People don't know where to report it	9
region	25	2009	The officials where they would report to are also corrupt	7
region	25	2009	They would implicate themselves as bribe-givers	1
region	26	2009	Corruption is normal / Everyone does it	2
region	26	2009	Corruption is too difficult to prove	6
region	26	2009	Don't know	11
region	26	2009	It's too expensive to report	3
region	26	2009	Most people do report incidents of corruption	1
region	26	2009	Nothing will be done / It wouldn't make a difference	6
region	26	2009	People are afraid of the consequences	15
region	26	2009	People don't have enough time to report it	1
region	26	2009	People don't know how to report it	6
region	26	2009	People don't know where to report it	6
region	26	2009	The officials where they would report to are also corrupt	2
region	26	2009	They would implicate themselves as bribe-givers	5
region	27	2009	Corruption is normal / Everyone does it	3
region	27	2009	Corruption is too difficult to prove	7
region	27	2009	Don't know	4
region	27	2009	It's too expensive to report	2
region	27	2009	Most people do report incidents of corruption	3
region	27	2009	Nothing will be done / It wouldn't make a difference	11
region	27	2009	People are afraid of the consequences	12
region	27	2009	People don't know how to report it	5
region	27	2009	People don't know where to report it	11
region	27	2009	The officials where they would report to are also corrupt	3
region	27	2009	They would implicate themselves as bribe-givers	3
region	31	2009	Corruption is normal / Everyone does it	3
region	31	2009	Corruption is too difficult to prove	4
region	31	2009	Don't know	3
region	31	2009	It's government's money, so it's not our problem	1
region	31	2009	It's too expensive to report	7
region	31	2009	Most people do report incidents of corruption	2
region	31	2009	Nothing will be done / It wouldn't make a difference	12
region	31	2009	People are afraid of the consequences	9
region	31	2009	People don't have enough time to report it	2
region	31	2009	People don't know how to report it	8
region	31	2009	People don't know where to report it	13
region	31	2009	The officials where they would report to are also corrupt	7
region	31	2009	They would implicate themselves as bribe-givers	1
region	29	2009	Corruption is normal / Everyone does it	8
region	29	2009	Corruption is too difficult to prove	5
region	29	2009	Don't know	17
region	29	2009	It's too expensive to report	3
region	29	2009	Nothing will be done / It wouldn't make a difference	11
region	29	2009	People are afraid of the consequences	25
region	29	2009	People don't have enough time to report it	1
region	29	2009	People don't know how to report it	7
region	29	2009	People don't know where to report it	13
region	29	2009	The officials where they would report to are also corrupt	7
region	29	2009	They would implicate themselves as bribe-givers	7
region	28	2009	Corruption is normal / Everyone does it	3
region	28	2009	Corruption is too difficult to prove	3
region	28	2009	Don't know	7
region	28	2009	It's too expensive to report	11
region	28	2009	Most people do report incidents of corruption	3
region	28	2009	Nothing will be done / It wouldn't make a difference	20
region	28	2009	People are afraid of the consequences	13
region	28	2009	People don't have enough time to report it	9
region	28	2009	People don't know how to report it	5
region	28	2009	People don't know where to report it	3
region	28	2009	The officials where they would report to are also corrupt	7
region	28	2009	They would implicate themselves as bribe-givers	4
country	TZ	2009	People are afraid of the consequences	511
country	TZ	2009	It's government's money, so it's not our problem	5
country	TZ	2009	They would implicate themselves as bribe-givers	121
country	TZ	2009	Corruption is too difficult to prove	84
country	TZ	2009	The officials where they would report to are also corrupt	131
country	TZ	2009	Most people do report incidents of corruption	39
country	TZ	2009	Nothing will be done / It wouldn't make a difference	450
country	TZ	2009	People don't know where to report it	262
country	TZ	2009	It's too expensive to report	115
country	TZ	2009	People don't have enough time to report it	80
country	TZ	2009	Corruption is normal / Everyone does it	199
country	TZ	2009	Other	15
country	TZ	2009	Don't know	164
country	TZ	2009	People don't know how to report it	210
\.


--
-- Name: main_reason_for_not_reporting_corruption pk_main_reason_for_not_reporting_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_reason_for_not_reporting_corruption
    ADD CONSTRAINT pk_main_reason_for_not_reporting_corruption PRIMARY KEY (geo_level, geo_code, geo_version, main_reason_for_not_reporting_corruption);


--
-- PostgreSQL database dump complete
--

