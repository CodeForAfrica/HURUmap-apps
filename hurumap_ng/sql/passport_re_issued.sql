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

ALTER TABLE IF EXISTS ONLY public.passport_re_issued DROP CONSTRAINT IF EXISTS passport_re_issued_pkey;
DROP TABLE IF EXISTS public.passport_re_issued;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: passport_re_issued; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.passport_re_issued (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    month character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: passport_re_issued; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.passport_re_issued (geo_level, geo_code, geo_version, month, total) FROM stdin;
\.


--
-- Name: passport_re_issued passport_re_issued_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.passport_re_issued
    ADD CONSTRAINT passport_re_issued_pkey PRIMARY KEY (geo_level, geo_code, geo_version, month);


--
-- PostgreSQL database dump complete
--
