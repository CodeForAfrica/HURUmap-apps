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

ALTER TABLE IF EXISTS ONLY public.elections_to_remove_leaders_from_office DROP CONSTRAINT IF EXISTS pk_elections_to_remove_leaders_from_office;
DROP TABLE IF EXISTS public.elections_to_remove_leaders_from_office;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elections_to_remove_leaders_from_office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elections_to_remove_leaders_from_office (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    elections_to_remove_leaders_from_office character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: elections_to_remove_leaders_from_office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elections_to_remove_leaders_from_office (geo_level, geo_code, geo_version, elections_to_remove_leaders_from_office, total) FROM stdin;
province	10	2009	Don't know	3
province	10	2009	Not at all well	49
province	10	2009	Not very well	51
province	10	2009	Very well	9
province	10	2009	Well	40
province	19	2009	Don't know	15
province	19	2009	Not at all well	105
province	19	2009	Not very well	195
province	19	2009	Very well	33
province	19	2009	Well	100
province	11	2009	Don't know	27
province	11	2009	Not at all well	79
province	11	2009	Not very well	108
province	11	2009	Very well	32
province	11	2009	Well	58
province	12	2009	Don't know	11
province	12	2009	Not at all well	30
province	12	2009	Not very well	72
province	12	2009	Very well	36
province	12	2009	Well	59
province	13	2009	Don't know	10
province	13	2009	Not at all well	59
province	13	2009	Not very well	86
province	13	2009	Very well	42
province	13	2009	Well	51
province	14	2009	Don't know	33
province	14	2009	Not at all well	23
province	14	2009	Not very well	73
province	14	2009	Very well	49
province	14	2009	Well	94
province	18	2009	Don't know	4
province	18	2009	Not at all well	50
province	18	2009	Not very well	95
province	18	2009	Very well	31
province	18	2009	Well	68
province	15	2009	Don't know	22
province	15	2009	Not at all well	14
province	15	2009	Not very well	46
province	15	2009	Very well	9
province	15	2009	Well	37
province	16	2009	Don't know	12
province	16	2009	Not at all well	16
province	16	2009	Not very well	34
province	16	2009	Very well	17
province	16	2009	Well	25
province	17	2009	Don't know	16
province	17	2009	Not at all well	65
province	17	2009	Not very well	86
province	17	2009	Very well	48
province	17	2009	Well	73
country	ZW	2009	Not very well	846
country	ZW	2009	Well	605
country	ZW	2009	Don't know	153
country	ZW	2009	Not at all well	490
country	ZW	2009	Very well	306
\.


--
-- Name: elections_to_remove_leaders_from_office pk_elections_to_remove_leaders_from_office; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_to_remove_leaders_from_office
    ADD CONSTRAINT pk_elections_to_remove_leaders_from_office PRIMARY KEY (geo_level, geo_code, geo_version, elections_to_remove_leaders_from_office);


--
-- PostgreSQL database dump complete
--

