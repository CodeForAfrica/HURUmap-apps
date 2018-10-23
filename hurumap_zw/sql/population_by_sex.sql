--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.population_by_sex DROP CONSTRAINT IF EXISTS pk_population_by_sex;
DROP TABLE IF EXISTS public.population_by_sex;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: population_by_sex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.population_by_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    sex character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: population_by_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.population_by_sex (geo_level, geo_code, geo_version, sex, total) FROM stdin;
province	10	2009	Male	337540
province	11	2009	Male	858269
province	12	2009	Male	692133
province	13	2009	Male	662763
province	14	2009	Male	783725
province	15	2009	Male	360503
province	16	2009	Male	412328
province	17	2009	Male	705675
province	18	2009	Male	733084
province	19	2009	Male	951423
country	ZW	2009	Male	6501256
province	10	2009	Female	401060
province	11	2009	Female	1003486
province	12	2009	Female	749811
province	13	2009	Female	703759
province	14	2009	Female	783725
province	15	2009	Female	384338
province	16	2009	Female	397746
province	17	2009	Female	808650
province	18	2009	Female	820061
province	19	2009	Female	1022483
country	ZW	2009	Female	7071304
\.


--
-- Name: population_by_sex pk_population_by_sex; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.population_by_sex
    ADD CONSTRAINT pk_population_by_sex PRIMARY KEY (geo_level, geo_code, geo_version, sex);


--
-- PostgreSQL database dump complete
--

