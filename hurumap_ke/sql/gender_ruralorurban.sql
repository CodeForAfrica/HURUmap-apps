--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.gender_ruralorurban DROP CONSTRAINT IF EXISTS gender_ruralorurban_pkey;
DROP TABLE IF EXISTS public.gender_ruralorurban;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: gender_ruralorurban; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE gender_ruralorurban (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "rural or urban" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: gender_ruralorurban; Type: TABLE DATA; Schema: public; Owner: -
--

COPY gender_ruralorurban (geo_level, geo_code, gender, "rural or urban", total) FROM stdin;
\.


--
-- Name: gender_ruralorurban gender_ruralorurban_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY gender_ruralorurban
    ADD CONSTRAINT gender_ruralorurban_pkey PRIMARY KEY (geo_level, geo_code, gender, "rural or urban");


--
-- PostgreSQL database dump complete
--

