--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 12:27:24 EAT

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
-- TOC entry 198 (class 1259 OID 80413)
-- Name: numberofsectionaltitleownersbynationality; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberofsectionaltitleownersbynationality (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by nationality" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberofsectionaltitleownersbynationality OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80413)
-- Dependencies: 198
-- Data for Name: numberofsectionaltitleownersbynationality; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberofsectionaltitleownersbynationality (geo_level, geo_code, geo_version, "number of sectional title owners by nationality", total) FROM stdin;
province	EC	2011	South African	24096
province	FS	2011	South African	23009
province	GT	2011	South African	299462
province	KZN	2011	South African	100693
province	LM	2011	South African	7800
province	MP	2011	South African	9368
province	NW	2011	South African	16951
province	NC	2011	South African	700
province	WC	2011	South African	85069
country	ZA	2011	South African	567148
province	EC	2011	Foreign	5352
province	FS	2011	Foreign	2524
province	GT	2011	Foreign	47401
province	KZN	2011	Foreign	49624
province	LM	2011	Foreign	571
province	MP	2011	Foreign	2058
province	NW	2011	Foreign	1031
province	NC	2011	Foreign	111
province	WC	2011	Foreign	24000
country	ZA	2011	Foreign	132672
province	EC	2011	Other	714
province	FS	2011	Other	311
province	GT	2011	Other	13939
province	KZN	2011	Other	3789
province	LM	2011	Other	236
province	MP	2011	Other	292
province	NW	2011	Other	412
province	NC	2011	Other	6
province	WC	2011	Other	7447
country	ZA	2011	Other	27146
\.


-- Completed on 2018-08-23 12:27:24 EAT

--
-- PostgreSQL database dump complete
--

