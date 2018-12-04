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

ALTER TABLE IF EXISTS ONLY public.own_mobile_phone DROP CONSTRAINT IF EXISTS pk_own_mobile_phone;
DROP TABLE IF EXISTS public.own_mobile_phone;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_mobile_phone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_mobile_phone (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_mobile_phone character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_mobile_phone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_mobile_phone (geo_level, geo_code, geo_version, own_mobile_phone, total) FROM stdin;
province	1	2010	Don't know	3
province	1	2010	Missing	2
province	1	2010	No, don't own	217
province	1	2010	Yes, do own	609
province	2	2010	No, don't own	8
province	2	2010	Yes, do own	24
province	3	2010	No, don't own	17
province	3	2010	Yes, do own	23
province	4	2010	Missing	1
province	4	2010	No, don't own	14
province	4	2010	Yes, do own	25
province	6	2010	No, don't own	12
province	6	2010	Yes, do own	36
province	8	2010	No, don't own	9
province	8	2010	Yes, do own	15
province	7	2010	No, don't own	18
province	7	2010	Yes, do own	30
province	9	2010	No, don't own	18
province	9	2010	Yes, do own	62
province	10	2010	No, don't own	8
province	10	2010	Yes, do own	48
country	ZM	2010	Yes, do own	872
country	ZM	2010	No, don't own	321
country	ZM	2010	Don't know	3
country	ZM	2010	Missing	3
\.


--
-- Name: own_mobile_phone pk_own_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_mobile_phone
    ADD CONSTRAINT pk_own_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, own_mobile_phone);


--
-- PostgreSQL database dump complete
--

