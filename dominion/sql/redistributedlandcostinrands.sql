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

ALTER TABLE IF EXISTS ONLY public.redistributedlandcostinrands DROP CONSTRAINT IF EXISTS pk_redistributedlandcostinrands;
DROP TABLE IF EXISTS public.redistributedlandcostinrands;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: redistributedlandcostinrands; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redistributedlandcostinrands (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    redistributedlandcostinrands numeric NOT NULL
);


--
-- Data for Name: redistributedlandcostinrands; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redistributedlandcostinrands (geo_level, geo_code, geo_version, redistributedlandcostinrands) FROM stdin;
level1	ZA_1_003	2016	21044000
level1	ZA_1_002	2016	97579394
level1	ZA_1_009	2016	23040935
level1	ZA_1_001	2016	134494665
level1	ZA_1_005	2016	15115000
level1	ZA_1_004	2016	65116000
level1	ZA_1_006	2016	79750000
level1	ZA_1_007	2016	61115000.01
level1	ZA_1_008	2016	14800000
country	ZA	2016	512054994
\.


--
-- Name: redistributedlandcostinrands pk_redistributedlandcostinrands; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redistributedlandcostinrands
    ADD CONSTRAINT pk_redistributedlandcostinrands PRIMARY KEY (geo_level, geo_code, geo_version, redistributedlandcostinrands);


--
-- PostgreSQL database dump complete
--

