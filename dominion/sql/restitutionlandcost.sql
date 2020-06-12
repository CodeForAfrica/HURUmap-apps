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
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.restitutionlandcost DROP CONSTRAINT IF EXISTS pk_restitutionlandcost;
DROP TABLE IF EXISTS public.restitutionlandcost;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionlandcost; Type: TABLE; Schema: public;
--

CREATE TABLE public.restitutionlandcost (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionlandcost character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionlandcost; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionlandcost (geo_level, geo_code, geo_version, restitutionlandcost, year, total) FROM stdin;
level1	ZA_1_002	2009	landcost	2017/2018	0
level1	ZA_1_004	2009	landcost	2017/2018	0
level1	ZA_1_007	2009	landcost	2017/2018	0
level1	ZA_1_009	2009	landcost	2017/2018	29795000
level1	ZA_1_005	2009	landcost	2017/2018	3950000
level1	ZA_1_008	2009	landcost	2017/2018	15300000
level1	ZA_1_003	2009	landcost	2017/2018	0
level1	ZA_1_006	2009	landcost	2017/2018	0
level1	ZA_1_001	2009	landcost	2017/2018	19100
country	ZA	2009	landcost	2017/2018	49064100
\.


ALTER TABLE ONLY public.restitutionlandcost
    ADD CONSTRAINT pk_restitutionlandcost PRIMARY KEY (geo_level, geo_code, geo_version, restitutionlandcost, year);

--
-- PostgreSQL database dump complete
--
