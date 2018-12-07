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
province	1	2010	A few times a month	2
province	1	2010	A few times a week	13
province	1	2010	Don't know	2
province	1	2010	Everyday	82
province	1	2010	Less than once a month	1
province	1	2010	Never	20
province	2	2010	A few times a month	2
province	2	2010	A few times a week	13
province	2	2010	Everyday	153
province	2	2010	Never	24
province	3	2010	A few times a month	18
province	3	2010	A few times a week	8
province	3	2010	Everyday	71
province	3	2010	Less than once a month	2
province	3	2010	Never	37
province	4	2010	A few times a month	4
province	4	2010	A few times a week	14
province	4	2010	Everyday	45
province	4	2010	Less than once a month	2
province	4	2010	Never	21
province	5	2010	A few times a month	1
province	5	2010	A few times a week	17
province	5	2010	Don't know	1
province	5	2010	Everyday	187
province	5	2010	Never	17
province	6	2010	A few times a month	1
province	6	2010	A few times a week	8
province	6	2010	Everyday	44
province	6	2010	Never	11
province	8	2010	A few times a month	5
province	8	2010	A few times a week	3
province	8	2010	Everyday	37
province	8	2010	Never	19
province	7	2010	A few times a month	3
province	7	2010	A few times a week	19
province	7	2010	Everyday	33
province	7	2010	Never	41
province	9	2010	A few times a month	3
province	9	2010	A few times a week	7
province	9	2010	Don't know	1
province	9	2010	Everyday	93
province	9	2010	Less than once a month	2
province	9	2010	Never	29
province	10	2010	A few times a month	3
province	10	2010	A few times a week	11
province	10	2010	Don't know	1
province	10	2010	Everyday	59
province	10	2010	Never	6
country	ZM	2010	A few times a month	42
country	ZM	2010	Less than once a month	7
country	ZM	2010	Never	225
country	ZM	2010	Don't know	5
country	ZM	2010	A few times a week	113
country	ZM	2010	Everyday	804
\.


--
-- Name: how_often_use_a_mobile_phone pk_how_often_use_a_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_a_mobile_phone
    ADD CONSTRAINT pk_how_often_use_a_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone);


--
-- PostgreSQL database dump complete
--

