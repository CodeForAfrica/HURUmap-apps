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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_ownership DROP CONSTRAINT IF EXISTS pk_workers_hostel_ownership;
DROP TABLE IF EXISTS public.workers_hostel_ownership;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_ownership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_ownership (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_ownership character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_ownership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_ownership (geo_level, geo_code, geo_version, workers_hostel_ownership, total) FROM stdin;
\.


--
-- Name: workers_hostel_ownership pk_workers_hostel_ownership; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_ownership
    ADD CONSTRAINT pk_workers_hostel_ownership PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_ownership);


--
-- PostgreSQL database dump complete
--

