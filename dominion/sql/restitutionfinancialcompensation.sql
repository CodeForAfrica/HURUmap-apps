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

ALTER TABLE IF EXISTS ONLY public.restitutionfinancialcompensation DROP CONSTRAINT IF EXISTS pk_restitutionfinancialcompensation;
DROP TABLE IF EXISTS public.restitutionfinancialcompensation;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionfinancialcompensation; Type: TABLE; Schema: public;
--

CREATE TABLE public.restitutionfinancialcompensation (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionfinancialcompensation character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionfinancialcompensation; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionfinancialcompensation (geo_level, geo_code, geo_version, restitutionfinancialcompensation, year, total) FROM stdin;
level1	ZA_1_003	2009	financial compensation	2017/2018	119737376.2
level1	ZA_1_002	2009	financial compensation	2017/2018	0
level1	ZA_1_009	2009	financial compensation	2017/2018	11495331.1
level1	ZA_1_001	2009	financial compensation	2017/2018	426535925
level1	ZA_1_005	2009	financial compensation	2017/2018	241701978
level1	ZA_1_004	2009	financial compensation	2017/2018	24520268.41
level1	ZA_1_006	2009	financial compensation	2017/2018	3415113.67
level1	ZA_1_007	2009	financial compensation	2017/2018	31074701.26
level1	ZA_1_008	2009	financial compensation	2017/2018	16474489.42
country	ZA	2009	financial compensation	2017/2018	874955183.1
\.


ALTER TABLE ONLY public.restitutionfinancialcompensation
    ADD CONSTRAINT pk_restitutionfinancialcompensation PRIMARY KEY (geo_level, geo_code, geo_version, restitutionfinancialcompensation, year);

--
-- PostgreSQL database dump complete
--
