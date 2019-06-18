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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_access_electricity DROP CONSTRAINT IF EXISTS pk_workers_hostel_access_electricity;
DROP TABLE IF EXISTS public.workers_hostel_access_electricity;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_access_electricity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_access_electricity (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_access_electricity character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_access_electricity; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_access_electricity (geo_level, geo_code, geo_version, workers_hostel_access_electricity, total) FROM stdin;
\.


--
-- Name: workers_hostel_access_electricity pk_workers_hostel_access_electricity; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_access_electricity
    ADD CONSTRAINT pk_workers_hostel_access_electricity PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_access_electricity);


--
-- PostgreSQL database dump complete
--

