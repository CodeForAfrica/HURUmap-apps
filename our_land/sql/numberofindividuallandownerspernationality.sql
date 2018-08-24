--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 12:22:53 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 202 (class 1259 OID 80430)
-- Name: numberoflandownerspernationality; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberoflandownerspernationality (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of land owners per nationality" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberoflandownerspernationality OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80430)
-- Dependencies: 202
-- Data for Name: numberoflandownerspernationality; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberoflandownerspernationality (geo_level, geo_code, geo_version, "number of land owners per nationality", total) FROM stdin;
province	EC	2011	South African	8616
province	FS	2011	South African	13765
province	GT	2011	South African	40734
province	KZN	2011	South African	19807
province	LM	2011	South African	12424
province	MP	2011	South African	10774
province	NW	2011	South African	17067
province	NC	2011	South African	6601
province	WC	2011	South African	13705
country	ZA	2011	South African	143493
province	EC	2011	Foreign	545
province	FS	2011	Foreign	536
province	GT	2011	Foreign	5099
province	KZN	2011	Foreign	1647
province	LM	2011	Foreign	995
province	MP	2011	Foreign	845
province	NW	2011	Foreign	828
province	NC	2011	Foreign	253
province	WC	2011	Foreign	1465
country	ZA	2011	Foreign	12213
province	EC	2011	Other	2519
province	FS	2011	Other	876
province	GT	2011	Other	1758
province	KZN	2011	Other	8538
province	LM	2011	Other	2494
province	MP	2011	Other	1401
province	NW	2011	Other	6226
province	NC	2011	Other	333
province	WC	2011	Other	1681
country	ZA	2011	Other	25826
\.


-- Completed on 2018-08-23 12:22:53 EAT

--
-- PostgreSQL database dump complete
--

