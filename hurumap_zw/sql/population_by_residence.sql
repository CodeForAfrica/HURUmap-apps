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

ALTER TABLE IF EXISTS ONLY public.population_by_residence DROP CONSTRAINT IF EXISTS pk_population_by_residence;
DROP TABLE IF EXISTS public.population_by_residence;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: population_by_residence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.population_by_residence (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    residence character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: population_by_residence; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.population_by_residence (geo_level, geo_code, geo_version, residence, total) FROM stdin;
province	10	2009	Urban	738600
province	11	2009	Urban	286576
province	12	2009	Urban	112696
province	13	2009	Urban	152997
province	14	2009	Urban	329778
province	15	2009	Urban	39907
province	16	2009	Urban	109193
province	17	2009	Urban	482365
province	18	2009	Urban	146676
province	19	2009	Urban	1883938
country	ZW	2009	Urban	4282725
province	10	2009	Rural	0
province	11	2009	Rural	1575179
province	12	2009	Rural	1329248
province	13	2009	Rural	1213525
province	14	2009	Rural	1237671
province	15	2009	Rural	704933
province	16	2009	Rural	700881
province	17	2009	Rural	1031960
province	18	2009	Rural	1406469
province	19	2009	Rural	89967
country	ZW	2009	Rural	9289835
\.


--
-- Name: population_by_residence pk_population_by_residence; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.population_by_residence
    ADD CONSTRAINT pk_population_by_residence PRIMARY KEY (geo_level, geo_code, geo_version, residence);


--
-- PostgreSQL database dump complete
--

