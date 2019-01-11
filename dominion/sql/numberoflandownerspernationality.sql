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

ALTER TABLE IF EXISTS ONLY public.numberoflandownerspernationality DROP CONSTRAINT IF EXISTS pk_numberoflandownerspernationality;
DROP TABLE IF EXISTS public.numberoflandownerspernationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberoflandownerspernationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberoflandownerspernationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of land owners per nationality" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberoflandownerspernationality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberoflandownerspernationality (geo_level, geo_code, geo_version, "number of land owners per nationality", total) FROM stdin;
province	EC	2016	South African	8616
province	FS	2016	South African	13765
province	GT	2016	South African	40734
province	KZN	2016	South African	19807
province	MP	2016	South African	10774
province	NW	2016	South African	17067
province	NC	2016	South African	6601
province	WC	2016	South African	13705
country	ZA	2016	South African	143493
province	EC	2016	Foreign	545
province	FS	2016	Foreign	536
province	GT	2016	Foreign	5099
province	KZN	2016	Foreign	1647
province	MP	2016	Foreign	845
province	NW	2016	Foreign	828
province	NC	2016	Foreign	253
province	WC	2016	Foreign	1465
country	ZA	2016	Foreign	12213
province	EC	2016	Other	2519
province	FS	2016	Other	876
province	GT	2016	Other	1758
province	KZN	2016	Other	8538
province	MP	2016	Other	1401
province	NW	2016	Other	6226
province	NC	2016	Other	333
province	WC	2016	Other	1681
country	ZA	2016	Other	25826
province	LIM	2016	South African	12424
province	LIM	2016	Foreign	995
province	LIM	2016	Other	2494
\.


--
-- Name: numberoflandownerspernationality pk_numberoflandownerspernationality; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberoflandownerspernationality
    ADD CONSTRAINT pk_numberoflandownerspernationality PRIMARY KEY (geo_level, geo_code, geo_version, "number of land owners per nationality");


--
-- PostgreSQL database dump complete
--

