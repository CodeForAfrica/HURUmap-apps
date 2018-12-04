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
province	1	2010	A few times a month	29
province	1	2010	A few times a week	68
province	1	2010	Don't know	3
province	1	2010	Everyday	570
province	1	2010	Less than once a month	5
province	1	2010	Missing	2
province	1	2010	Never	154
province	2	2010	A few times a week	2
province	2	2010	Everyday	26
province	2	2010	Never	4
province	3	2010	A few times a month	4
province	3	2010	A few times a week	2
province	3	2010	Everyday	24
province	3	2010	Never	10
province	4	2010	A few times a week	5
province	4	2010	Everyday	23
province	4	2010	Less than once a month	1
province	4	2010	Missing	1
province	4	2010	Never	10
province	6	2010	A few times a month	1
province	6	2010	A few times a week	5
province	6	2010	Everyday	32
province	6	2010	Never	10
province	8	2010	Everyday	15
province	8	2010	Never	9
province	7	2010	A few times a month	3
province	7	2010	A few times a week	13
province	7	2010	Everyday	19
province	7	2010	Never	13
province	9	2010	A few times a month	2
province	9	2010	A few times a week	7
province	9	2010	Don't know	1
province	9	2010	Everyday	55
province	9	2010	Less than once a month	1
province	9	2010	Never	14
province	10	2010	A few times a month	3
province	10	2010	A few times a week	11
province	10	2010	Don't know	1
province	10	2010	Everyday	40
province	10	2010	Never	1
country	ZM	2010	A few times a month	42
country	ZM	2010	Less than once a month	7
country	ZM	2010	Missing	3
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

