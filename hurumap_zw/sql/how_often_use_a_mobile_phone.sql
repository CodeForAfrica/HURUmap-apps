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

ALTER TABLE IF EXISTS ONLY public.how_often_use_a_mobile_phone DROP CONSTRAINT IF EXISTS pk_how_often_use_a_mobile_phone;
DROP TABLE IF EXISTS public.how_often_use_a_mobile_phone;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_use_a_mobile_phone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_use_a_mobile_phone (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_use_a_mobile_phone character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_use_a_mobile_phone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_use_a_mobile_phone (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone, total) FROM stdin;
province	10	2009	A few times a week	16
province	10	2009	Everyday	126
province	10	2009	Never	10
province	19	2009	A few times a month	1
province	19	2009	A few times a week	25
province	19	2009	Everyday	411
province	19	2009	Never	10
province	11	2009	A few times a month	10
province	11	2009	A few times a week	57
province	11	2009	Everyday	187
province	11	2009	Less than once a month	4
province	11	2009	Never	46
province	12	2009	A few times a month	6
province	12	2009	A few times a week	50
province	12	2009	Everyday	112
province	12	2009	Less than once a month	1
province	12	2009	Never	39
province	13	2009	A few times a month	17
province	13	2009	A few times a week	54
province	13	2009	Everyday	142
province	13	2009	Less than once a month	5
province	13	2009	Never	30
province	14	2009	A few times a month	19
province	14	2009	A few times a week	66
province	14	2009	Everyday	151
province	14	2009	Less than once a month	2
province	14	2009	Never	34
province	18	2009	A few times a month	17
province	18	2009	A few times a week	91
province	18	2009	Everyday	106
province	18	2009	Less than once a month	6
province	18	2009	Never	28
province	15	2009	A few times a month	14
province	15	2009	A few times a week	28
province	15	2009	Everyday	59
province	15	2009	Never	27
province	16	2009	A few times a month	2
province	16	2009	A few times a week	21
province	16	2009	Everyday	68
province	16	2009	Never	13
province	17	2009	A few times a month	5
province	17	2009	A few times a week	37
province	17	2009	Everyday	223
province	17	2009	Less than once a month	3
province	17	2009	Never	20
country	ZW	2009	A few times a week	445
country	ZW	2009	Never	257
country	ZW	2009	A few times a month	91
country	ZW	2009	Less than once a month	21
country	ZW	2009	Everyday	1585
\.


--
-- Name: how_often_use_a_mobile_phone pk_how_often_use_a_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_a_mobile_phone
    ADD CONSTRAINT pk_how_often_use_a_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone);


--
-- PostgreSQL database dump complete
--

