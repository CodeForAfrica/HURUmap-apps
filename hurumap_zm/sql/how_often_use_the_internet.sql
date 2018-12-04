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
province	1	2010	A few times a month	27
province	1	2010	A few times a week	55
province	1	2010	Don't know	23
province	1	2010	Everyday	97
province	1	2010	Less than once a month	11
province	1	2010	Missing	1
province	1	2010	Never	617
province	2	2010	A few times a month	2
province	2	2010	Don't know	2
province	2	2010	Everyday	9
province	2	2010	Never	19
province	3	2010	A few times a month	1
province	3	2010	A few times a week	4
province	3	2010	Never	35
province	4	2010	A few times a month	2
province	4	2010	A few times a week	2
province	4	2010	Everyday	3
province	4	2010	Less than once a month	2
province	4	2010	Missing	1
province	4	2010	Never	30
province	6	2010	A few times a month	2
province	6	2010	A few times a week	2
province	6	2010	Don't know	1
province	6	2010	Everyday	1
province	6	2010	Never	42
province	8	2010	A few times a week	2
province	8	2010	Everyday	3
province	8	2010	Less than once a month	1
province	8	2010	Never	18
province	7	2010	A few times a month	1
province	7	2010	A few times a week	1
province	7	2010	Don't know	5
province	7	2010	Everyday	3
province	7	2010	Never	38
province	9	2010	A few times a month	3
province	9	2010	A few times a week	5
province	9	2010	Don't know	2
province	9	2010	Everyday	6
province	9	2010	Never	64
province	10	2010	A few times a month	3
province	10	2010	A few times a week	3
province	10	2010	Don't know	1
province	10	2010	Everyday	3
province	10	2010	Less than once a month	3
province	10	2010	Never	43
country	ZM	2010	A few times a month	41
country	ZM	2010	Less than once a month	17
country	ZM	2010	Missing	2
country	ZM	2010	Never	906
country	ZM	2010	Don't know	34
country	ZM	2010	A few times a week	74
country	ZM	2010	Everyday	125
\.


--
-- Name: how_often_use_the_internet pk_how_often_use_the_internet; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_the_internet
    ADD CONSTRAINT pk_how_often_use_the_internet PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_the_internet);


--
-- PostgreSQL database dump complete
--

