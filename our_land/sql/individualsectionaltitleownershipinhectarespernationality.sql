--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 12:34:57 EAT

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
-- TOC entry 197 (class 1259 OID 80409)
-- Name: sectionaltitleownershipinhectarespernationality; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.sectionaltitleownershipinhectarespernationality (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares per nationality" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.sectionaltitleownershipinhectarespernationality OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80409)
-- Dependencies: 197
-- Data for Name: sectionaltitleownershipinhectarespernationality; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.sectionaltitleownershipinhectarespernationality (geo_level, geo_code, geo_version, "sectional title ownership in hectares per nationality", total) FROM stdin;
province	EC	2011	South African	534
province	FS	2011	South African	1216
province	GT	2011	South African	3878
province	KZN	2011	South African	513
province	LM	2011	South African	1538
province	MP	2011	South African	85
province	NW	2011	South African	1132
province	NC	2011	South African	5
province	WC	2011	South African	403
country	ZA	2011	South African	9305
province	EC	2011	Foreign	135
province	FS	2011	Foreign	17
province	GT	2011	Foreign	498
province	KZN	2011	Foreign	386
province	LM	2011	Foreign	4
province	MP	2011	Foreign	6
province	NW	2011	Foreign	4
province	NC	2011	Foreign	1
province	WC	2011	Foreign	87
country	ZA	2011	Foreign	1138
province	EC	2011	Co-ownership	29
province	FS	2011	Co-ownership	18
province	GT	2011	Co-ownership	372
province	KZN	2011	Co-ownership	160
province	LM	2011	Co-ownership	4
province	MP	2011	Co-ownership	28
province	NW	2011	Co-ownership	8
province	NC	2011	Co-ownership	1
province	WC	2011	Co-ownership	104
country	ZA	2011	Co-ownership	724
province	EC	2011	Other	3
province	FS	2011	Other	1
province	GT	2011	Other	175
province	KZN	2011	Other	15
province	LM	2011	Other	1
province	MP	2011	Other	1
province	NW	2011	Other	2
province	NC	2011	Other	0
province	WC	2011	Other	31
country	ZA	2011	Other	229
\.


-- Completed on 2018-08-23 12:34:57 EAT

--
-- PostgreSQL database dump complete
--
