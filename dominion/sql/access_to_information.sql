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

ALTER TABLE IF EXISTS ONLY public.access_to_information DROP CONSTRAINT IF EXISTS pk_access_to_information;
DROP TABLE IF EXISTS public.access_to_information;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: access_to_information; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.access_to_information (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    access_to_information character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: access_to_information; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.access_to_information (geo_level, geo_code, geo_version, access_to_information, total) FROM stdin;
province	EC	2016	Not at all likely	37
province	EC	2016	Not very likely	8
province	EC	2016	Somewhat likely	21
province	EC	2016	Very likely	25
province	EC	2016	Refused	0
province	EC	2016	Don't know/Haven't heard	9
province	FS	2016	Not at all likely	18
province	FS	2016	Not very likely	17
province	FS	2016	Somewhat likely	39
province	FS	2016	Very likely	18
province	FS	2016	Refused	0
province	FS	2016	Don't know/Haven't heard	7
province	GT	2016	Not at all likely	50
province	GT	2016	Not very likely	16
province	GT	2016	Somewhat likely	18
province	GT	2016	Very likely	13
province	GT	2016	Refused	0
province	GT	2016	Don't know/Haven't heard	2
province	KZN	2016	Not at all likely	36
province	KZN	2016	Not very likely	19
province	KZN	2016	Somewhat likely	27
province	KZN	2016	Very likely	9
province	KZN	2016	Refused	0
province	KZN	2016	Don't know/Haven't heard	10
province	LIM	2016	Not at all likely	37
province	LIM	2016	Not very likely	17
province	LIM	2016	Somewhat likely	8
province	LIM	2016	Very likely	29
province	LIM	2016	Refused	0
province	LIM	2016	Don't know/Haven't heard	8
province	MP	2016	Not at all likely	42
province	MP	2016	Not very likely	9
province	MP	2016	Somewhat likely	16
province	MP	2016	Very likely	21
province	MP	2016	Refused	0
province	MP	2016	Don't know/Haven't heard	12
province	NW	2016	Not at all likely	36
province	NW	2016	Not very likely	15
province	NW	2016	Somewhat likely	33
province	NW	2016	Very likely	10
province	NW	2016	Refused	0
province	NW	2016	Don't know/Haven't heard	6
province	NC	2016	Not at all likely	44
province	NC	2016	Not very likely	20
province	NC	2016	Somewhat likely	20
province	NC	2016	Very likely	15
province	NC	2016	Refused	0
province	NC	2016	Don't know/Haven't heard	2
province	WC	2016	Not at all likely	39
province	WC	2016	Not very likely	16
province	WC	2016	Somewhat likely	17
province	WC	2016	Very likely	19
province	WC	2016	Refused	0
province	WC	2016	Don't know/Haven't heard	10
country	ZA	2016	Don't know/Haven't heard	65
country	ZA	2016	Not at all likely	339
country	ZA	2016	Not very likely	138
country	ZA	2016	Refused	0
country	ZA	2016	Somewhat likely	200
country	ZA	2016	Very likely	158
\.


--
-- Name: access_to_information pk_access_to_information; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.access_to_information
    ADD CONSTRAINT pk_access_to_information PRIMARY KEY (geo_level, geo_code, geo_version, access_to_information);


--
-- PostgreSQL database dump complete
--

