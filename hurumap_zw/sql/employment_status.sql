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
province	10	2009	No (looking)	53
province	10	2009	No (not looking)	41
province	10	2009	Yes, full time	41
province	10	2009	Yes, part time	17
province	19	2009	No (looking)	153
province	19	2009	No (not looking)	109
province	19	2009	Yes, full time	133
province	19	2009	Yes, part time	53
province	11	2009	No (looking)	72
province	11	2009	No (not looking)	164
province	11	2009	Yes, full time	34
province	11	2009	Yes, part time	34
province	12	2009	No (looking)	32
province	12	2009	No (not looking)	48
province	12	2009	Yes, full time	82
province	12	2009	Yes, part time	46
province	13	2009	No (looking)	55
province	13	2009	No (not looking)	92
province	13	2009	Yes, full time	48
province	13	2009	Yes, part time	53
province	14	2009	No (looking)	95
province	14	2009	No (not looking)	102
province	14	2009	Yes, full time	45
province	14	2009	Yes, part time	30
province	18	2009	No (looking)	61
province	18	2009	No (not looking)	156
province	18	2009	Yes, full time	16
province	18	2009	Yes, part time	15
province	15	2009	No (looking)	45
province	15	2009	No (not looking)	59
province	15	2009	Yes, full time	8
province	15	2009	Yes, part time	16
province	16	2009	No (looking)	45
province	16	2009	No (not looking)	44
province	16	2009	Yes, full time	10
province	16	2009	Yes, part time	5
province	17	2009	No (looking)	62
province	17	2009	No (not looking)	125
province	17	2009	Yes, full time	69
province	17	2009	Yes, part time	32
country	ZW	2009	No (looking)	673
country	ZW	2009	Yes, full time	486
country	ZW	2009	No (not looking)	940
country	ZW	2009	Yes, part time	301
\.


--
-- Name: employment_status pk_employment_status; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employment_status
    ADD CONSTRAINT pk_employment_status PRIMARY KEY (geo_level, geo_code, geo_version, employment_status);


--
-- PostgreSQL database dump complete
--

