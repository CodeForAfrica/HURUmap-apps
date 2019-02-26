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

ALTER TABLE IF EXISTS ONLY public.how_often_use_the_internet DROP CONSTRAINT IF EXISTS pk_how_often_use_the_internet;
DROP TABLE IF EXISTS public.how_often_use_the_internet;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_use_the_internet; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_use_the_internet (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_use_the_internet character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_use_the_internet; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_use_the_internet (geo_level, geo_code, geo_version, how_often_use_the_internet, total) FROM stdin;
province	10	2009	A few times a month	2
province	10	2009	A few times a week	27
province	10	2009	Everyday	64
province	10	2009	Less than once a month	1
province	10	2009	Never	58
province	19	2009	A few times a month	35
province	19	2009	A few times a week	84
province	19	2009	Don't know	1
province	19	2009	Everyday	97
province	19	2009	Less than once a month	16
province	19	2009	Never	215
province	11	2009	A few times a month	12
province	11	2009	A few times a week	20
province	11	2009	Don't know	3
province	11	2009	Everyday	40
province	11	2009	Less than once a month	8
province	11	2009	Never	221
province	12	2009	A few times a month	8
province	12	2009	A few times a week	17
province	12	2009	Everyday	19
province	12	2009	Less than once a month	3
province	12	2009	Never	161
province	13	2009	A few times a month	6
province	13	2009	A few times a week	10
province	13	2009	Everyday	21
province	13	2009	Less than once a month	2
province	13	2009	Never	209
province	14	2009	A few times a month	5
province	14	2009	A few times a week	12
province	14	2009	Everyday	26
province	14	2009	Less than once a month	2
province	14	2009	Never	227
province	18	2009	A few times a month	5
province	18	2009	A few times a week	6
province	18	2009	Everyday	7
province	18	2009	Less than once a month	2
province	18	2009	Never	228
province	15	2009	A few times a week	5
province	15	2009	Everyday	4
province	15	2009	Less than once a month	2
province	15	2009	Never	117
province	16	2009	A few times a week	8
province	16	2009	Everyday	1
province	16	2009	Never	94
province	17	2009	A few times a month	11
province	17	2009	A few times a week	23
province	17	2009	Don't know	1
province	17	2009	Everyday	58
province	17	2009	Less than once a month	3
province	17	2009	Never	192
country	ZW	2009	A few times a month	84
country	ZW	2009	Less than once a month	39
country	ZW	2009	Never	1722
country	ZW	2009	Don't know	5
country	ZW	2009	A few times a week	212
country	ZW	2009	Everyday	337
\.


--
-- Name: how_often_use_the_internet pk_how_often_use_the_internet; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_the_internet
    ADD CONSTRAINT pk_how_often_use_the_internet PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_the_internet);


--
-- PostgreSQL database dump complete
--

