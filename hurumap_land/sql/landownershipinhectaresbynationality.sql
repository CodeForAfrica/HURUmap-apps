--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;


ALTER TABLE IF EXISTS ONLY public.landownershipinhectaresbynationality DROP CONSTRAINT IF EXISTS pk_landownershipinhectaresbynationality;
DROP TABLE IF EXISTS public.landownershipinhectaresbynationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landownershipinhectaresbynationality; Type: TABLE; Schema: public
--

CREATE TABLE public.landownershipinhectaresbynationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "land ownership in hectares by nationality" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landownershipinhectaresbynationality; Type: TABLE DATA; Schema: public
--

COPY public.landownershipinhectaresbynationality (geo_level, geo_code, geo_version, "land ownership in hectares by nationality", total) FROM stdin;
province	EC	2016	South African	4308421
province	FS	2016	South African	4700599
province	GT	2016	South African	392636
province	KZN	2016	South African	1140986
province	MP	2016	South African	1328961
province	NW	2016	South African	2978894
province	NC	2016	South African	14126948
province	WC	2016	South African	3496840
country	ZA	2016	South African	33996255
province	EC	2016	Foreign	47444
province	FS	2016	Foreign	72538
province	GT	2016	Foreign	45117
province	KZN	2016	Foreign	43666
province	MP	2016	Foreign	27291
province	NW	2016	Foreign	56055
province	NC	2016	Foreign	294779
province	WC	2016	Foreign	112238
country	ZA	2016	Foreign	769284
province	EC	2016	Co-ownership	77355
province	FS	2016	Co-ownership	58502
province	GT	2016	Co-ownership	14268
province	KZN	2016	Co-ownership	102666
province	MP	2016	Co-ownership	35769
province	NW	2016	Co-ownership	143346
province	NC	2016	Co-ownership	321317
province	WC	2016	Co-ownership	112964
country	ZA	2016	Co-ownership	933728
province	EC	2016	Other	178308
province	FS	2016	Other	177626
province	GT	2016	Other	10648
province	KZN	2016	Other	330176
province	MP	2016	Other	49131
province	NW	2016	Other	132914
province	NC	2016	Other	267958
province	WC	2016	Other	141951
country	ZA	2016	Other	1379023
province	LIM	2016	South African	1521969
province	LIM	2016	Foreign	70157
province	LIM	2016	Co-ownership	67541
province	LIM	2016	Other	90310
\.


--
-- Name: landownershipinhectaresbynationality pk_landownershipinhectaresbynationality; Type: CONSTRAINT; Schema: public
--

ALTER TABLE IF EXISTS ONLY public.landownershipinhectaresbynationality
    ADD CONSTRAINT pk_landownershipinhectaresbynationality PRIMARY KEY (geo_level, geo_code, geo_version, "land ownership in hectares by nationality");


--
-- PostgreSQL database dump complete
--

