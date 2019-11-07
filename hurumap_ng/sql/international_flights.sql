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

ALTER TABLE IF EXISTS ONLY public.international_flights DROP CONSTRAINT IF EXISTS international_flights_pkey;
DROP TABLE IF EXISTS public.international_flights;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: international_flights; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.international_flights (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    flight character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: international_flights; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.international_flights (geo_level, geo_code, geo_version, flight, total) FROM stdin;
state	15	2016	Arrivals	3689
state	15	2016	Departure	4847
state	20	2016	Arrivals	8200
state	20	2016	Departure	8005
state	25	2016	Arrivals	3791
state	25	2016	Departure	4097
state	33	2016	Arrivals	58
state	33	2016	Departure	24
country	NG	2016	Arrivals	15738
country	NG	2016	Departure	16973
\.


--
-- Name: international_flights international_flights_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.international_flights
    ADD CONSTRAINT international_flights_pkey PRIMARY KEY (geo_level, geo_code, geo_version, flight);


--
-- PostgreSQL database dump complete
--
