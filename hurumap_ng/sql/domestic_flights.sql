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

ALTER TABLE IF EXISTS ONLY public.domestic_flights DROP CONSTRAINT IF EXISTS domestic_flights_pkey;
DROP TABLE IF EXISTS public.domestic_flights;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: domestic_flights; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.domestic_flights (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    flight character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: domestic_flights; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.domestic_flights (geo_level, geo_code, geo_version, flight, total) FROM stdin;
state	15	2016	Arrivals	14579
state	15	2016	Departure	13977
state	29	2016	Arrivals	1035
state	29	2016	Departure	1040
state	5	2016	Arrivals	191
state	5	2016	Departure	205
state	12	2016	Arrivals	1388
state	12	2016	Departure	1459
state	9	2016	Arrivals	446
state	9	2016	Departure	354
state	14	2016	Arrivals	539
state	14	2016	Departure	569
state	16	2016	Arrivals	186
state	16	2016	Departure	203
state	31	2016	Arrivals	288
state	31	2016	Departure	322
state	24	2016	Arrivals	475
state	24	2016	Departure	463
state	32	2016	Arrivals	190
state	32	2016	Departure	224
state	19	2016	Arrivals	1249
state	19	2016	Departure	1240
state	20	2016	Arrivals	1335
state	20	2016	Departure	713
state	21	2016	Arrivals	382
state	21	2016	Departure	421
state	22	2016	Arrivals	80
state	22	2016	Departure	82
state	25	2016	Arrivals	32611
state	25	2016	Departure	32458
state	10	2016	Arrivals	12380
state	10	2016	Departure	11786
state	17	2016	Arrivals	1092
state	17	2016	Departure	1110
state	33	2016	Arrivals	4130
state	33	2016	Departure	4253
state	34	2016	Arrivals	930
state	34	2016	Departure	1022
state	3	2016	Arrivals	366
state	3	2016	Departure	411
state	2	2016	Arrivals	292
state	2	2016	Departure	286
country	NG	2016	Arrivals	6412834
country	NG	2016	Departure	6378805
\.


--
-- Name: domestic_flights domestic_flights_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domestic_flights
    ADD CONSTRAINT domestic_flights_pkey PRIMARY KEY (geo_level, geo_code, geo_version, flight);


--
-- PostgreSQL database dump complete
--
