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
province	10	2009	No, don't own	11
province	10	2009	Yes, do own	141
province	19	2009	No, don't own	51
province	19	2009	Yes, do own	397
province	11	2009	No, don't own	53
province	11	2009	Yes, do own	251
province	12	2009	No, don't own	51
province	12	2009	Yes, do own	157
province	13	2009	No, don't own	48
province	13	2009	Yes, do own	200
province	14	2009	No, don't own	45
province	14	2009	Yes, do own	227
province	18	2009	No, don't own	48
province	18	2009	Yes, do own	200
province	15	2009	No, don't own	41
province	15	2009	Yes, do own	87
province	16	2009	No, don't own	15
province	16	2009	Yes, do own	89
province	17	2009	No, don't own	29
province	17	2009	Yes, do own	259
country	ZW	2009	Yes, do own	2008
country	ZW	2009	No, don't own	392
\.


--
-- Name: own_mobile_phone pk_own_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_mobile_phone
    ADD CONSTRAINT pk_own_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, own_mobile_phone);


--
-- PostgreSQL database dump complete
--

