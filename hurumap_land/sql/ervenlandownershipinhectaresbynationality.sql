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


ALTER TABLE IF EXISTS ONLY public.ervenlandownershipinhectaresbynationality DROP CONSTRAINT IF EXISTS pk_ervenlandownershipinhectaresbynationality;
DROP TABLE IF EXISTS public.ervenlandownershipinhectaresbynationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ervenlandownershipinhectaresbynationality; Type: TABLE; Schema: public
--

CREATE TABLE public.ervenlandownershipinhectaresbynationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "erven land ownership in hectares by nationality" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: ervenlandownershipinhectaresbynationality; Type: TABLE DATA; Schema: public
--

COPY public.ervenlandownershipinhectaresbynationality (geo_level, geo_code, geo_version, "erven land ownership in hectares by nationality", total) FROM stdin;
province	EC	2016	South African	54932
province	FS	2016	South African	22571
province	GT	2016	South African	78463
province	KZN	2016	South African	59749
province	MP	2016	South African	18401
province	NW	2016	South African	15709
province	NC	2016	South African	169595
province	WC	2016	South African	133227
country	ZA	2016	South African	570009
province	EC	2016	Foreign	1416
province	FS	2016	Foreign	630
province	GT	2016	Foreign	5860
province	KZN	2016	Foreign	2992
province	MP	2016	Foreign	673
province	NW	2016	Foreign	443
province	NC	2016	Foreign	3447
province	WC	2016	Foreign	4825
country	ZA	2016	Foreign	20649
province	EC	2016	Co-ownership	1952
province	FS	2016	Co-ownership	724
province	GT	2016	Co-ownership	5313
province	KZN	2016	Co-ownership	3802
province	MP	2016	Co-ownership	727
province	NW	2016	Co-ownership	547
province	NC	2016	Co-ownership	2304
province	WC	2016	Co-ownership	2826
country	ZA	2016	Co-ownership	18667
province	EC	2016	Other	81538
province	FS	2016	Other	2610
province	GT	2016	Other	4621
province	KZN	2016	Other	11192
province	MP	2016	Other	913
province	NW	2016	Other	989
province	NC	2016	Other	9057
province	WC	2016	Other	364
country	ZA	2016	Other	113342
province	LIM	2016	South African	17361
province	LIM	2016	Foreign	361
province	LIM	2016	Co-ownership	472
province	LIM	2016	Other	2058
\.


--
-- Name: ervenlandownershipinhectaresbynationality pk_ervenlandownershipinhectaresbynationality; Type: CONSTRAINT; Schema: public
--

ALTER TABLE IF EXISTS ONLY public.ervenlandownershipinhectaresbynationality
    ADD CONSTRAINT pk_ervenlandownershipinhectaresbynationality PRIMARY KEY (geo_level, geo_code, geo_version, "erven land ownership in hectares by nationality");


--
-- PostgreSQL database dump complete
--
