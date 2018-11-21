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

ALTER TABLE IF EXISTS ONLY public.landownership DROP CONSTRAINT IF EXISTS pk_landownership;
DROP TABLE IF EXISTS public.landownership;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landownership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landownership (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    ownership character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landownership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landownership (geo_level, geo_code, geo_version, ownership, total) FROM stdin;
province	EC	2016	State Owned	1510553
province	FS	2016	State Owned	845084
province	GT	2016	State Owned	304137
province	KZN	2016	State Owned	4695245
province	LIM	2016	State Owned	2551790
province	MP	2016	State Owned	1875146
province	NW	2016	State Owned	2409778
province	NC	2016	State Owned	1829347
province	WC	2016	State Owned	1040801
country	ZA	2016	State Owned	17061882
province	EC	2016	Private Owned	11370084
province	FS	2016	Private Owned	11857160
province	GT	2016	Private Owned	1181518
province	KZN	2016	Private Owned	4297235
province	LIM	2016	Private Owned	8844083
province	MP	2016	Private Owned	4805344
province	NW	2016	Private Owned	7481942
province	NC	2016	Private Owned	35210998
province	WC	2016	Private Owned	11502427
country	ZA	2016	Private Owned	96550791
province	EC	2016	Unaccounted	4011063
province	FS	2016	Unaccounted	280356
province	GT	2016	Unaccounted	332145
province	KZN	2016	Unaccounted	340320
province	LIM	2016	Unaccounted	1179728
province	MP	2016	Unaccounted	969010
province	NW	2016	Unaccounted	596380
province	NC	2016	Unaccounted	248455
province	WC	2016	Unaccounted	403072
country	ZA	2016	Unaccounted	8360527
\.


--
-- Name: landownership pk_landownership; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landownership
    ADD CONSTRAINT pk_landownership PRIMARY KEY (geo_level, geo_code, geo_version, ownership);


--
-- PostgreSQL database dump complete
--

