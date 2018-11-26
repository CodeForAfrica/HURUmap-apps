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

ALTER TABLE IF EXISTS ONLY public.women_have_equal_right_to_land DROP CONSTRAINT IF EXISTS pk_women_have_equal_right_to_land;
DROP TABLE IF EXISTS public.women_have_equal_right_to_land;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: women_have_equal_right_to_land; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.women_have_equal_right_to_land (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    women_have_equal_right_to_land character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: women_have_equal_right_to_land; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.women_have_equal_right_to_land (geo_level, geo_code, geo_version, women_have_equal_right_to_land, total) FROM stdin;
country	ZA	2016	Strongly Disagree	124
country	ZA	2016	Disagree	201
country	ZA	2016	Neither Agree Nor Disagree	92
country	ZA	2016	Agree	629
country	ZA	2016	Strongly Agree	753
country	ZA	2016	Refused	2
country	ZA	2016	Don't know	28
\.


--
-- Name: women_have_equal_right_to_land pk_women_have_equal_right_to_land; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.women_have_equal_right_to_land
    ADD CONSTRAINT pk_women_have_equal_right_to_land PRIMARY KEY (geo_level, geo_code, geo_version, women_have_equal_right_to_land);


--
-- PostgreSQL database dump complete
--

