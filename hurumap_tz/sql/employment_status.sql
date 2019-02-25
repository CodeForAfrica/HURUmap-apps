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

ALTER TABLE IF EXISTS ONLY public.employment_status DROP CONSTRAINT IF EXISTS pk_employment_status;
DROP TABLE IF EXISTS public.employment_status;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employment_status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employment_status (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    employment_status character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: employment_status; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employment_status (geo_level, geo_code, geo_version, employment_status, total) FROM stdin;
region	1	2009	No (looking)	10
region	1	2009	No (not looking)	48
region	1	2009	Yes, full time	45
region	1	2009	Yes, part time	17
region	2	2009	Don't know	1
region	2	2009	No (looking)	50
region	2	2009	No (not looking)	62
region	2	2009	Yes, full time	83
region	2	2009	Yes, part time	77
region	3	2009	No (looking)	7
region	3	2009	No (not looking)	2
region	3	2009	Yes, full time	74
region	3	2009	Yes, part time	13
region	4	2009	No (looking)	11
region	4	2009	No (not looking)	5
region	4	2009	Yes, full time	46
region	4	2009	Yes, part time	9
region	5	2009	No (not looking)	12
region	5	2009	Yes, full time	27
region	5	2009	Yes, part time	9
region	6	2009	No (looking)	8
region	6	2009	No (not looking)	18
region	6	2009	Yes, full time	32
region	6	2009	Yes, part time	14
region	7	2009	No (looking)	4
region	7	2009	No (not looking)	4
region	7	2009	Yes, full time	28
region	7	2009	Yes, part time	20
region	8	2009	No (looking)	1
region	8	2009	No (not looking)	6
region	8	2009	Yes, full time	15
region	8	2009	Yes, part time	18
region	9	2009	Yes, full time	24
region	10	2009	No (looking)	25
region	10	2009	No (not looking)	23
region	10	2009	Yes, full time	12
region	10	2009	Yes, part time	36
region	11	2009	No (looking)	19
region	11	2009	No (not looking)	41
region	11	2009	Yes, full time	14
region	11	2009	Yes, part time	14
region	12	2009	No (looking)	1
region	12	2009	No (not looking)	3
region	12	2009	Yes, full time	1
region	12	2009	Yes, part time	3
region	13	2009	No (looking)	2
region	13	2009	No (not looking)	3
region	13	2009	Yes, full time	12
region	13	2009	Yes, part time	7
region	14	2009	No (not looking)	11
region	14	2009	Yes, full time	13
region	14	2009	Yes, part time	24
region	15	2009	Don't know	1
region	15	2009	No (looking)	15
region	15	2009	No (not looking)	26
region	15	2009	Yes, full time	17
region	15	2009	Yes, part time	5
region	16	2009	No (looking)	14
region	16	2009	No (not looking)	8
region	16	2009	Yes, full time	52
region	16	2009	Yes, part time	6
region	17	2009	No (looking)	1
region	17	2009	No (not looking)	4
region	17	2009	Yes, full time	39
region	17	2009	Yes, part time	20
region	30	2009	No (looking)	13
region	30	2009	No (not looking)	21
region	30	2009	Yes, full time	37
region	30	2009	Yes, part time	41
region	18	2009	No (looking)	6
region	18	2009	No (not looking)	4
region	18	2009	Yes, full time	100
region	18	2009	Yes, part time	10
region	19	2009	No (not looking)	6
region	19	2009	Yes, full time	30
region	19	2009	Yes, part time	35
region	20	2009	No (looking)	11
region	20	2009	No (not looking)	18
region	20	2009	Yes, full time	85
region	20	2009	Yes, part time	10
region	21	2009	No (looking)	1
region	21	2009	No (not looking)	8
region	21	2009	Yes, full time	25
region	21	2009	Yes, part time	6
region	22	2009	No (looking)	4
region	22	2009	No (not looking)	20
region	22	2009	Yes, full time	18
region	22	2009	Yes, part time	30
region	23	2009	Yes, full time	37
region	23	2009	Yes, part time	2
region	24	2009	No (looking)	1
region	24	2009	No (not looking)	3
region	24	2009	Yes, full time	53
region	24	2009	Yes, part time	15
region	25	2009	No (looking)	8
region	25	2009	No (not looking)	5
region	25	2009	Yes, full time	19
region	25	2009	Yes, part time	40
region	26	2009	No (looking)	16
region	26	2009	No (not looking)	19
region	26	2009	Yes, full time	9
region	26	2009	Yes, part time	20
region	27	2009	No (looking)	10
region	27	2009	No (not looking)	22
region	27	2009	Yes, full time	9
region	27	2009	Yes, part time	23
region	31	2009	No (looking)	1
region	31	2009	No (not looking)	5
region	31	2009	Yes, full time	49
region	31	2009	Yes, part time	17
region	29	2009	No (looking)	5
region	29	2009	No (not looking)	7
region	29	2009	Yes, full time	76
region	29	2009	Yes, part time	16
region	28	2009	No (looking)	25
region	28	2009	No (not looking)	35
region	28	2009	Yes, full time	20
region	28	2009	Yes, part time	8
country	TZ	2009	No (looking)	269
country	TZ	2009	Yes, full time	1101
country	TZ	2009	No (not looking)	449
country	TZ	2009	Don't know	2
country	TZ	2009	Yes, part time	565
\.


--
-- Name: employment_status pk_employment_status; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employment_status
    ADD CONSTRAINT pk_employment_status PRIMARY KEY (geo_level, geo_code, geo_version, employment_status);


--
-- PostgreSQL database dump complete
--

