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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_positive_or_negative DROP CONSTRAINT IF EXISTS pk_chinas_influence_positive_or_negative;
DROP TABLE IF EXISTS public.chinas_influence_positive_or_negative;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_positive_or_negative; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_positive_or_negative (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_positive_or_negative character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_positive_or_negative; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_positive_or_negative (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative, total) FROM stdin;
province	10	2009	Don't know / Haven't heard enough	8
province	10	2009	Neither positive nor negative	29
province	10	2009	Somewhat negative	19
province	10	2009	Somewhat positive	42
province	10	2009	Very negative	41
province	10	2009	Very positive	13
province	19	2009	Don't know / Haven't heard enough	12
province	19	2009	Neither positive nor negative	33
province	19	2009	Somewhat negative	102
province	19	2009	Somewhat positive	167
province	19	2009	Very negative	70
province	19	2009	Very positive	64
province	11	2009	Don't know / Haven't heard enough	44
province	11	2009	Neither positive nor negative	51
province	11	2009	Somewhat negative	38
province	11	2009	Somewhat positive	93
province	11	2009	Very negative	34
province	11	2009	Very positive	44
province	12	2009	Don't know / Haven't heard enough	17
province	12	2009	Neither positive nor negative	14
province	12	2009	Somewhat negative	37
province	12	2009	Somewhat positive	78
province	12	2009	Very negative	28
province	12	2009	Very positive	34
province	13	2009	Don't know / Haven't heard enough	25
province	13	2009	Neither positive nor negative	38
province	13	2009	Somewhat negative	24
province	13	2009	Somewhat positive	80
province	13	2009	Very negative	25
province	13	2009	Very positive	56
province	14	2009	Don't know / Haven't heard enough	17
province	14	2009	Neither positive nor negative	26
province	14	2009	Somewhat negative	25
province	14	2009	Somewhat positive	109
province	14	2009	Very negative	31
province	14	2009	Very positive	64
province	18	2009	Don't know / Haven't heard enough	12
province	18	2009	Neither positive nor negative	35
province	18	2009	Somewhat negative	60
province	18	2009	Somewhat positive	72
province	18	2009	Very negative	34
province	18	2009	Very positive	35
province	15	2009	Don't know / Haven't heard enough	33
province	15	2009	Neither positive nor negative	11
province	15	2009	Somewhat negative	25
province	15	2009	Somewhat positive	27
province	15	2009	Very negative	7
province	15	2009	Very positive	25
province	16	2009	Don't know / Haven't heard enough	22
province	16	2009	Neither positive nor negative	10
province	16	2009	Somewhat negative	29
province	16	2009	Somewhat positive	14
province	16	2009	Very negative	23
province	16	2009	Very positive	6
province	17	2009	Don't know / Haven't heard enough	15
province	17	2009	Neither positive nor negative	36
province	17	2009	Somewhat negative	45
province	17	2009	Somewhat positive	81
province	17	2009	Very negative	49
province	17	2009	Very positive	62
country	ZW	2009	Don't know / Haven't heard enough	205
country	ZW	2009	Somewhat positive	763
country	ZW	2009	Somewhat negative	404
country	ZW	2009	Neither positive nor negative	283
country	ZW	2009	Very negative	342
country	ZW	2009	Very positive	403
\.


--
-- Name: chinas_influence_positive_or_negative pk_chinas_influence_positive_or_negative; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_positive_or_negative
    ADD CONSTRAINT pk_chinas_influence_positive_or_negative PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative);


--
-- PostgreSQL database dump complete
--

