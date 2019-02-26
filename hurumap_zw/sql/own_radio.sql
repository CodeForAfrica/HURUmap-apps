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
province	10	2009	No, don't own	53
province	10	2009	Yes, do own	99
province	19	2009	No, don't own	109
province	19	2009	Yes, do own	339
province	11	2009	No, don't own	92
province	11	2009	Yes, do own	212
province	12	2009	No, don't own	50
province	12	2009	Yes, do own	158
province	13	2009	No, don't own	97
province	13	2009	Yes, do own	151
province	14	2009	No, don't own	91
province	14	2009	Yes, do own	181
province	18	2009	No, don't own	116
province	18	2009	Yes, do own	132
province	15	2009	No, don't own	79
province	15	2009	Yes, do own	49
province	16	2009	No, don't own	46
province	16	2009	Yes, do own	58
province	17	2009	No, don't own	71
province	17	2009	Yes, do own	217
country	ZW	2009	Yes, do own	1596
country	ZW	2009	No, don't own	804
\.


--
-- Name: own_radio pk_own_radio; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_radio
    ADD CONSTRAINT pk_own_radio PRIMARY KEY (geo_level, geo_code, geo_version, own_radio);


--
-- PostgreSQL database dump complete
--

