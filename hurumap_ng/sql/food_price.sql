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

ALTER TABLE IF EXISTS ONLY public.food_price DROP CONSTRAINT IF EXISTS food_price_pkey;
DROP TABLE IF EXISTS public.food_price;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: food_price; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.food_price (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: food_price; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.food_price (geo_level, geo_code, geo_version, year, total) FROM stdin;

\.


--
-- Name: food_price food_price_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.food_price
    ADD CONSTRAINT food_price_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
