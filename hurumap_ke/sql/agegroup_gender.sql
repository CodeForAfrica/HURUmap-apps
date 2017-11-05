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

ALTER TABLE IF EXISTS ONLY public.agegroup_gender DROP CONSTRAINT IF EXISTS agegroup_gender_pkey;
DROP TABLE IF EXISTS public.agegroup_gender;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agegroup_gender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE agegroup_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "age group" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: agegroup_gender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY agegroup_gender (geo_level, geo_code, gender, "age group", total) FROM stdin;
\.


--
-- Name: agegroup_gender agegroup_gender_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agegroup_gender
    ADD CONSTRAINT agegroup_gender_pkey PRIMARY KEY (geo_level, geo_code, gender, "age group");


--
-- PostgreSQL database dump complete
--

