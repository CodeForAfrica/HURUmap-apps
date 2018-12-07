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
province	1	2010	No (looking)	39
province	1	2010	No (not looking)	51
province	1	2010	Yes, full time	13
province	1	2010	Yes, part time	17
province	2	2010	Don't know	1
province	2	2010	No (looking)	80
province	2	2010	No (not looking)	62
province	2	2010	Yes, full time	33
province	2	2010	Yes, part time	16
province	3	2010	No (looking)	25
province	3	2010	No (not looking)	71
province	3	2010	Yes, full time	35
province	3	2010	Yes, part time	5
province	4	2010	No (looking)	19
province	4	2010	No (not looking)	44
province	4	2010	Yes, full time	18
province	4	2010	Yes, part time	5
province	5	2010	Don't know	5
province	5	2010	No (looking)	60
province	5	2010	No (not looking)	71
province	5	2010	Yes, full time	49
province	5	2010	Yes, part time	38
province	6	2010	No (looking)	14
province	6	2010	No (not looking)	31
province	6	2010	Yes, full time	10
province	6	2010	Yes, part time	9
province	8	2010	No (looking)	14
province	8	2010	No (not looking)	32
province	8	2010	Yes, full time	11
province	8	2010	Yes, part time	7
province	7	2010	No (looking)	31
province	7	2010	No (not looking)	53
province	7	2010	Yes, full time	7
province	7	2010	Yes, part time	5
province	9	2010	Don't know	3
province	9	2010	No (looking)	42
province	9	2010	No (not looking)	61
province	9	2010	Yes, full time	15
province	9	2010	Yes, part time	15
province	10	2010	No (looking)	22
province	10	2010	No (not looking)	25
province	10	2010	Yes, full time	27
province	10	2010	Yes, part time	6
country	ZM	2010	No (looking)	346
country	ZM	2010	Yes, full time	218
country	ZM	2010	No (not looking)	501
country	ZM	2010	Don't know	9
country	ZM	2010	Yes, part time	123
\.


--
-- Name: employment_status pk_employment_status; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employment_status
    ADD CONSTRAINT pk_employment_status PRIMARY KEY (geo_level, geo_code, geo_version, employment_status);


--
-- PostgreSQL database dump complete
--

