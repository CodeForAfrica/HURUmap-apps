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

ALTER TABLE IF EXISTS ONLY public.redistributedlandnumhectares DROP CONSTRAINT IF EXISTS pk_redistributedlandnumhectares;
DROP TABLE IF EXISTS public.redistributedlandnumhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: redistributedlandnumhectares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redistributedlandnumhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    redistributedland character varying(100) NOT NULL,
    total numeric
);


--
-- Data for Name: redistributedlandnumhectares; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redistributedlandnumhectares (geo_level, geo_code, geo_version, redistributedland, total) FROM stdin;
level1	ZA_1_002	2009	number of hectares	1314.69
level1	ZA_1_004	2009	number of hectares	11735.83
level1	ZA_1_007	2009	number of hectares	1256.14
level1	ZA_1_009	2009	number of hectares	13770.03
level1	ZA_1_005	2009	number of hectares	7337.09
level1	ZA_1_008	2009	number of hectares	6704.34
level1	ZA_1_003	2009	number of hectares	34037.19
level1	ZA_1_006	2009	number of hectares	15017.18
level1	ZA_1_001	2009	number of hectares	859.87
country	ZA	2009	number of hectares	92032.35
\.


--
-- Name: redistributedlandnumhectares pk_redistributedlandnumhectares; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redistributedlandnumhectares
    ADD CONSTRAINT pk_redistributedlandnumhectares PRIMARY KEY (geo_level, geo_code, geo_version, redistributedland);


--
-- PostgreSQL database dump complete
--
