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
province	1	2010	Don't know	8
province	1	2010	Missing	1
province	1	2010	No (looking)	244
province	1	2010	No (not looking)	331
province	1	2010	Yes, full time	155
province	1	2010	Yes, part time	92
province	2	2010	No (looking)	12
province	2	2010	No (not looking)	13
province	2	2010	Yes, full time	5
province	2	2010	Yes, part time	2
province	3	2010	No (looking)	9
province	3	2010	No (not looking)	22
province	3	2010	Yes, full time	9
province	4	2010	Missing	1
province	4	2010	No (looking)	10
province	4	2010	No (not looking)	21
province	4	2010	Yes, full time	6
province	4	2010	Yes, part time	2
province	6	2010	No (looking)	9
province	6	2010	No (not looking)	25
province	6	2010	Yes, full time	7
province	6	2010	Yes, part time	7
province	8	2010	No (looking)	4
province	8	2010	No (not looking)	11
province	8	2010	Yes, full time	5
province	8	2010	Yes, part time	4
province	7	2010	No (looking)	14
province	7	2010	No (not looking)	26
province	7	2010	Yes, full time	5
province	7	2010	Yes, part time	3
province	9	2010	Don't know	1
province	9	2010	No (looking)	27
province	9	2010	No (not looking)	33
province	9	2010	Yes, full time	10
province	9	2010	Yes, part time	9
province	10	2010	No (looking)	17
province	10	2010	No (not looking)	19
province	10	2010	Yes, full time	16
province	10	2010	Yes, part time	4
country	ZM	2010	No (looking)	346
country	ZM	2010	Missing	2
country	ZM	2010	No (not looking)	501
country	ZM	2010	Yes, full time	218
country	ZM	2010	Yes, part time	123
country	ZM	2010	Don't know	9
\.


--
-- Name: employment_status pk_employment_status; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employment_status
    ADD CONSTRAINT pk_employment_status PRIMARY KEY (geo_level, geo_code, geo_version, employment_status);


--
-- PostgreSQL database dump complete
--

