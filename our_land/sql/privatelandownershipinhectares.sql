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


DROP TABLE IF EXISTS public.privatelandownershipinhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: privatelandownershipinhectares; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.privatelandownershipinhectares (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "private land ownership in hectares" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.privatelandownershipinhectares OWNER TO our_land;

--
-- Data for Name: privatelandownershipinhectares; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.privatelandownershipinhectares (geo_level, geo_code, geo_version, "private land ownership in hectares", total) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

