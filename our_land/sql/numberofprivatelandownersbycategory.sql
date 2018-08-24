--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 12:24:45 EAT

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
-- TOC entry 182 (class 1259 OID 80349)
-- Name: numberofprivatelandownersbycategory; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberofprivatelandownersbycategory (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of private land owners by category" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberofprivatelandownersbycategory OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80349)
-- Dependencies: 182
-- Data for Name: numberofprivatelandownersbycategory; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberofprivatelandownersbycategory (geo_level, geo_code, geo_version, "number of private land owners by category", total) FROM stdin;
province	EC	2011	Individual	659469
province	FS	2011	Individual	484942
province	GT	2011	Individual	2031370
province	KZN	2011	Individual	812027
province	LM	2011	Individual	196256
province	MP	2011	Individual	336211
province	NW	2011	Individual	300486
province	NC	2011	Individual	195052
province	WC	2011	Individual	1134283
province	EC	2011	Company	10554
province	FS	2011	Company	8527
province	GT	2011	Company	61350
province	KZN	2011	Company	22079
province	LM	2011	Company	11521
province	MP	2011	Company	11569
province	NW	2011	Company	10873
province	NC	2011	Company	4308
province	WC	2011	Company	35281
province	EC	2011	Trust	11628
province	FS	2011	Trust	11061
province	GT	2011	Trust	23643
province	KZN	2011	Trust	16361
province	LM	2011	Trust	5372
province	MP	2011	Trust	6067
province	NW	2011	Trust	6839
province	NC	2011	Trust	4247
province	WC	2011	Trust	32996
province	EC	2011	CBOs	2785
province	FS	2011	CBOs	1520
province	GT	2011	CBOs	7761
province	KZN	2011	CBOs	3065
province	LM	2011	CBOs	1153
province	MP	2011	CBOs	1645
province	NW	2011	CBOs	1586
province	NC	2011	CBOs	1224
province	WC	2011	CBOs	5188
country	ZA	2011	Individual	6150096
country	ZA	2011	Company	176062
country	ZA	2011	Trust	118214
country	ZA	2011	CBOs	25927
\.


-- Completed on 2018-08-23 12:24:45 EAT

--
-- PostgreSQL database dump complete
--
