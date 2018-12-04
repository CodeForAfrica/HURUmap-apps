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
province	1	2010	Don't know	3
province	1	2010	Missing	1
province	1	2010	No, don't own	236
province	1	2010	Yes, do own	591
province	2	2010	No, don't own	4
province	2	2010	Yes, do own	28
province	3	2010	No, don't own	14
province	3	2010	Yes, do own	26
province	4	2010	Missing	1
province	4	2010	No, don't own	19
province	4	2010	Yes, do own	20
province	6	2010	No, don't own	8
province	6	2010	Yes, do own	40
province	8	2010	No, don't own	6
province	8	2010	Yes, do own	18
province	7	2010	No, don't own	15
province	7	2010	Yes, do own	33
province	9	2010	Missing	1
province	9	2010	No, don't own	16
province	9	2010	Yes, do own	63
province	10	2010	No, don't own	14
province	10	2010	Yes, do own	42
country	ZM	2010	Yes, do own	861
country	ZM	2010	No, don't own	332
country	ZM	2010	Don't know	3
country	ZM	2010	Missing	3
\.


--
-- Name: own_radio pk_own_radio; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_radio
    ADD CONSTRAINT pk_own_radio PRIMARY KEY (geo_level, geo_code, geo_version, own_radio);


--
-- PostgreSQL database dump complete
--

