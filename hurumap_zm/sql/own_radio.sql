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

ALTER TABLE IF EXISTS ONLY public.own_radio DROP CONSTRAINT IF EXISTS pk_own_radio;
DROP TABLE IF EXISTS public.own_radio;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_radio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_radio (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_radio character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_radio; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_radio (geo_level, geo_code, geo_version, own_radio, total) FROM stdin;
province	1	2010	No, don't own	20
province	1	2010	Yes, do own	100
province	2	2010	No, don't own	49
province	2	2010	Yes, do own	143
province	3	2010	No, don't own	47
province	3	2010	Yes, do own	89
province	4	2010	No, don't own	38
province	4	2010	Yes, do own	48
province	5	2010	Don't know	3
province	5	2010	No, don't own	52
province	5	2010	Yes, do own	168
province	6	2010	No, don't own	10
province	6	2010	Yes, do own	54
province	8	2010	No, don't own	20
province	8	2010	Yes, do own	44
province	7	2010	No, don't own	42
province	7	2010	Yes, do own	54
province	9	2010	No, don't own	36
province	9	2010	Yes, do own	99
province	10	2010	No, don't own	18
province	10	2010	Yes, do own	62
country	ZM	2010	Yes, do own	861
country	ZM	2010	No, don't own	332
country	ZM	2010	Don't know	3
\.


--
-- Name: own_radio pk_own_radio; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_radio
    ADD CONSTRAINT pk_own_radio PRIMARY KEY (geo_level, geo_code, geo_version, own_radio);


--
-- PostgreSQL database dump complete
--

