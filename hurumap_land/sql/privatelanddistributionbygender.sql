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

ALTER TABLE IF EXISTS ONLY public.privatelanddistributionbygender DROP CONSTRAINT IF EXISTS pk_privatelanddistributionbygender;
DROP TABLE IF EXISTS public.privatelanddistributionbygender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: privatelanddistributionbygender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.privatelanddistributionbygender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: privatelanddistributionbygender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.privatelanddistributionbygender (geo_level, geo_code, geo_version, land_ownership_by_gender, total) FROM stdin;
province	NC	2016	Not Identified	146520
province	NC	2016	Female	2083258
province	NC	2016	Male	9080590
province	FS	2016	Not Identified	139369
province	FS	2016	Female	777577
province	FS	2016	Male	3054269
province	MP	2016	Not Identified	28970
province	MP	2016	Female	255216
province	MP	2016	Male	878623
province	NW	2016	Not Identified	96562
province	NW	2016	Female	557662
province	NW	2016	Male	1821884
province	KZN	2016	Not Identified	111663
province	KZN	2016	Female	177720
province	KZN	2016	Male	896201
province	WC	2016	Not Identified	92210
province	WC	2016	Female	479140
province	WC	2016	Male	2465129
province	EC	2016	Not Identified	144898
province	EC	2016	Female	448733
province	EC	2016	Male	3364966
province	LIM	2016	Not Identified	49711
province	LIM	2016	Female	304717
province	LIM	2016	Male	942831
province	GT	2016	Not Identified	11193
province	GT	2016	Female	107135
province	GT	2016	Male	221760
country	ZA	2016	Not Identified	157713
country	ZA	2016	Female	2190393
country	ZA	2016	Male	9302350
\.


--
-- Name: privatelanddistributionbygender pk_privatelanddistributionbygender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.privatelanddistributionbygender
    ADD CONSTRAINT pk_privatelanddistributionbygender PRIMARY KEY (geo_level, geo_code, geo_version, gender);


--
-- PostgreSQL database dump complete
--

