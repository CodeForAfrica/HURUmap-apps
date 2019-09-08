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

ALTER TABLE IF EXISTS ONLY public.redistributedlandinhectares DROP CONSTRAINT IF EXISTS pk_redistributedlandinhectares;
DROP TABLE IF EXISTS public.redistributedlandinhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: redistributedlandinhectares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redistributedlandinhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    redistributedland character varying(100) NOT NULL,
    total numeric
);


--
-- Data for Name: redistributedlandinhectares; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redistributedlandinhectares (geo_level, geo_code, geo_version, redistributedland, total) FROM stdin;
level1	ZA_1_003	2009	average cost per hectares	16006.77
level1	ZA_1_002	2009	average cost per hectares	8314.66
level1	ZA_1_009	2009	average cost per hectares	18342.58
level1	ZA_1_001	2009	average cost per hectares	9767.2
level1	ZA_1_005	2009	average cost per hectares	2060.08
level1	ZA_1_004	2009	average cost per hectares	9712.52
level1	ZA_1_006	2009	average cost per hectares	2343.03
level1	ZA_1_007	2009	average cost per hectares	4069.67
level1	ZA_1_008	2009	average cost per hectares	17212
country	ZA	2009	average cost per hectares	5563.86
\.


--
-- Name: redistributedlandinhectares pk_redistributedlandinhectares; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redistributedlandinhectares
    ADD CONSTRAINT pk_redistributedlandinhectares PRIMARY KEY (geo_level, geo_code, geo_version, redistributedland);


--
-- PostgreSQL database dump complete
--
