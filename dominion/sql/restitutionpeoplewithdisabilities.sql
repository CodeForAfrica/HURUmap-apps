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

ALTER TABLE IF EXISTS ONLY public.restitutionpeoplewdisabilities DROP CONSTRAINT IF EXISTS pk_restitutionpeoplewdisabilities;
DROP TABLE IF EXISTS public.restitutionpeoplewdisabilities;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionpeoplewdisabilities; Type: TABLE; Schema: public;
--

CREATE TABLE public.restitutionpeoplewdisabilities (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionpeoplewdisabilities character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionpeoplewdisabilities; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionpeoplewdisabilities (geo_level, geo_code, geo_version, restitutionpeoplewdisabilities, year, total) FROM stdin;
level1	ZA_1_002	2009	people with disabilities	2017/2018	0
level1	ZA_1_004	2009	people with disabilities	2017/2018	0
level1	ZA_1_007	2009	people with disabilities	2017/2018	2
level1	ZA_1_009	2009	people with disabilities	2017/2018	55
level1	ZA_1_005	2009	people with disabilities	2017/2018	0
level1	ZA_1_008	2009	people with disabilities	2017/2018	0
level1	ZA_1_003	2009	people with disabilities	2017/2018	0
level1	ZA_1_006	2009	people with disabilities	2017/2018	0
level1	ZA_1_001	2009	people with disabilities	2017/2018	0
country	ZA	2009	people with disabilities	2017/2018	57
\.


ALTER TABLE ONLY public.restitutionpeoplewdisabilities
    ADD CONSTRAINT pk_restitutionpeoplewdisabilities PRIMARY KEY (geo_level, geo_code, geo_version, restitutionpeoplewdisabilities, year);

--
-- PostgreSQL database dump complete
--
