--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.transport_air_fare DROP CONSTRAINT IF EXISTS transport_air_fare_pkey;
DROP TABLE IF EXISTS public.transport_air_fare;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: transport_air_fare; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.transport_air_fare (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    month character varying(10) NOT NULL,
    year character varying(12) NOT NULL,
    total numeric
);


--
-- Data for Name: transport_air_fare; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.transport_air_fare (geo_level, geo_code, geo_version, month, year, total) FROM stdin;
\.


--
-- Name: transport_air_fare transport_air_fare_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transport_air_fare
    ADD CONSTRAINT transport_air_fare_pkey PRIMARY KEY (geo_level, geo_code, geo_version, month, year);


--
-- PostgreSQL database dump complete
--
