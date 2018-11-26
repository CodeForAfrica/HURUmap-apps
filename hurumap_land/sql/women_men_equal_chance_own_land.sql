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

ALTER TABLE IF EXISTS ONLY public.women_men_equal_chance_own_land DROP CONSTRAINT IF EXISTS pk_women_men_equal_chance_own_land;
DROP TABLE IF EXISTS public.women_men_equal_chance_own_land;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: women_men_equal_chance_own_land; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.women_men_equal_chance_own_land (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    women_men_equal_chance_own_land character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: women_men_equal_chance_own_land; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.women_men_equal_chance_own_land (geo_level, geo_code, geo_version, women_men_equal_chance_own_land, total) FROM stdin;
country	ZA	2016	Strongly Disagree	108
country	ZA	2016	Disagree	194
country	ZA	2016	Neither Agree Nor Disagree	101
country	ZA	2016	Agree	726
country	ZA	2016	Strongly Agree	656
country	ZA	2016	Refused	3
country	ZA	2016	Don't know	41
\.


--
-- Name: women_men_equal_chance_own_land pk_women_men_equal_chance_own_land; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.women_men_equal_chance_own_land
    ADD CONSTRAINT pk_women_men_equal_chance_own_land PRIMARY KEY (geo_level, geo_code, geo_version, women_men_equal_chance_own_land);


--
-- PostgreSQL database dump complete
--

