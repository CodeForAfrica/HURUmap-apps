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


ALTER TABLE IF EXISTS ONLY public.numberofsectionaltitleownersbynationality DROP CONSTRAINT IF EXISTS pk_numberofsectionaltitleownersbynationality;
DROP TABLE IF EXISTS public.numberofsectionaltitleownersbynationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofsectionaltitleownersbynationality; Type: TABLE; Schema: public
--

CREATE TABLE public.numberofsectionaltitleownersbynationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by nationality" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofsectionaltitleownersbynationality; Type: TABLE DATA; Schema: public
--

COPY public.numberofsectionaltitleownersbynationality (geo_level, geo_code, geo_version, "number of sectional title owners by nationality", total) FROM stdin;
province	EC	2016	South African	24096
province	FS	2016	South African	23009
province	GT	2016	South African	299462
province	KZN	2016	South African	100693
province	MP	2016	South African	9368
province	NW	2016	South African	16951
province	NC	2016	South African	700
province	WC	2016	South African	85069
country	ZA	2016	South African	567148
province	EC	2016	Foreign	5352
province	FS	2016	Foreign	2524
province	GT	2016	Foreign	47401
province	KZN	2016	Foreign	49624
province	MP	2016	Foreign	2058
province	NW	2016	Foreign	1031
province	NC	2016	Foreign	111
province	WC	2016	Foreign	24000
country	ZA	2016	Foreign	132672
province	EC	2016	Other	714
province	FS	2016	Other	311
province	GT	2016	Other	13939
province	KZN	2016	Other	3789
province	MP	2016	Other	292
province	NW	2016	Other	412
province	NC	2016	Other	6
province	WC	2016	Other	7447
country	ZA	2016	Other	27146
province	LIM	2016	South African	7800
province	LIM	2016	Foreign	571
province	LIM	2016	Other	236
\.


--
-- Name: numberofsectionaltitleownersbynationality pk_numberofsectionaltitleownersbynationality; Type: CONSTRAINT; Schema: public
--

ALTER TABLE IF EXISTS ONLY public.numberofsectionaltitleownersbynationality
    ADD CONSTRAINT pk_numberofsectionaltitleownersbynationality PRIMARY KEY (geo_level, geo_code, geo_version, "number of sectional title owners by nationality");


--
-- PostgreSQL database dump complete
--

