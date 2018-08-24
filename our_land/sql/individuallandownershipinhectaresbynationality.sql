--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 12:00:07 EAT

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
-- TOC entry 201 (class 1259 OID 80426)
-- Name: landownershipinhectaresbynationality; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landownershipinhectaresbynationality (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "land ownership in hectares by nationality" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.landownershipinhectaresbynationality OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80426)
-- Dependencies: 201
-- Data for Name: landownershipinhectaresbynationality; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landownershipinhectaresbynationality (geo_level, geo_code, geo_version, "land ownership in hectares by nationality", total) FROM stdin;
province	EC	2011	South African	4308421
province	FS	2011	South African	4700599
province	GT	2011	South African	392636
province	KZN	2011	South African	1140986
province	LM	2011	South African	1521969
province	MP	2011	South African	1328961
province	NW	2011	South African	2978894
province	NC	2011	South African	14126948
province	WC	2011	South African	3496840
country	ZA	2011	South African	33996255
province	EC	2011	Foreign	47444
province	FS	2011	Foreign	72538
province	GT	2011	Foreign	45117
province	KZN	2011	Foreign	43666
province	LM	2011	Foreign	70157
province	MP	2011	Foreign	27291
province	NW	2011	Foreign	56055
province	NC	2011	Foreign	294779
province	WC	2011	Foreign	112238
country	ZA	2011	Foreign	769284
province	EC	2011	Co-ownership	77355
province	FS	2011	Co-ownership	58502
province	GT	2011	Co-ownership	14268
province	KZN	2011	Co-ownership	102666
province	LM	2011	Co-ownership	67541
province	MP	2011	Co-ownership	35769
province	NW	2011	Co-ownership	143346
province	NC	2011	Co-ownership	321317
province	WC	2011	Co-ownership	112964
country	ZA	2011	Co-ownership	933728
province	EC	2011	Other	178308
province	FS	2011	Other	177626
province	GT	2011	Other	10648
province	KZN	2011	Other	330176
province	LM	2011	Other	90310
province	MP	2011	Other	49131
province	NW	2011	Other	132914
province	NC	2011	Other	267958
province	WC	2011	Other	141951
country	ZA	2011	Other	1379023
\.


-- Completed on 2018-08-23 12:00:07 EAT

--
-- PostgreSQL database dump complete
--

