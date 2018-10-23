--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS public.landsalesdistributionaveragetrends;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionaveragetrends; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributionaveragetrends (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total numeric
);


ALTER TABLE public.landsalesdistributionaveragetrends OWNER TO our_land;

--
-- Data for Name: landsalesdistributionaveragetrends; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributionaveragetrends (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	Under 1.5K	-3
country	ZA	2016	1,501-3K	0
country	ZA	2016	3,001-5K	0.2
country	ZA	2016	5,001-10K	-0.4
country	ZA	2016	10,001-20K	-0.1
country	ZA	2016	20,001-30K	0.2
country	ZA	2016	30,001-40K	0
country	ZA	2016	40,001-50K	0
country	ZA	2016	50,001-100K	0
country	ZA	2016	100,001-150K	-0.2
country	ZA	2016	150,001-200K	-0.3
country	ZA	2016	200,001-300K	-0.2
country	ZA	2016	300,001-500K	0.4
country	ZA	2016	500,001-800K	0.6
country	ZA	2016	800,001-1M	0.5
country	ZA	2016	Above 1M	-19.3
province	EC	2016	Under 1.5K	-1.7
province	EC	2016	1,501-3K	-0.8
province	EC	2016	3,001-5K	1.7
province	EC	2016	5,001-10K	-0.8
province	EC	2016	10,001-20K	-0.8
province	EC	2016	20,001-30K	-0.1
province	EC	2016	30,001-40K	1.4
province	EC	2016	40,001-50K	0.3
province	EC	2016	50,001-100K	1.3
province	EC	2016	100,001-150K	1.6
province	EC	2016	150,001-200K	-2
province	EC	2016	200,001-300K	0.7
province	EC	2016	300,001-500K	1.7
province	EC	2016	500,001-800K	-9.8
province	EC	2016	800,001-1M	\N
province	EC	2016	Above 1M	\N
province	FS	2016	Under 1.5K	-7.2
province	FS	2016	1,501-3K	-1
province	FS	2016	3,001-5K	1.4
province	FS	2016	5,001-10K	-1.3
province	FS	2016	10,001-20K	-0.5
province	FS	2016	20,001-30K	-0.9
province	FS	2016	30,001-40K	-0.1
province	FS	2016	40,001-50K	-1.6
province	FS	2016	50,001-100K	-1.6
province	FS	2016	100,001-150K	0.3
province	FS	2016	150,001-200K	-1.5
province	FS	2016	200,001-300K	-1.6
province	FS	2016	300,001-500K	-8.5
province	FS	2016	500,001-800K	\N
province	FS	2016	800,001-1M	\N
province	FS	2016	Above 1M	\N
province	GT	2016	Under 1.5K	3.8
province	GT	2016	1,501-3K	\N
province	GT	2016	3,001-5K	0.2
province	GT	2016	5,001-10K	-2.2
province	GT	2016	10,001-20K	0.8
province	GT	2016	20,001-30K	0.4
province	GT	2016	30,001-40K	0.1
province	GT	2016	40,001-50K	-0.3
province	GT	2016	50,001-100K	1.8
province	GT	2016	100,001-150K	1
province	GT	2016	150,001-200K	0
province	GT	2016	200,001-300K	0.7
province	GT	2016	300,001-500K	-1.6
province	GT	2016	500,001-800K	-0.8
province	GT	2016	800,001-1M	\N
province	GT	2016	Above 1M	-2.2
province	KZN	2016	Under 1.5K	-11.6
province	KZN	2016	1,501-3K	3.6
province	KZN	2016	3,001-5K	1.3
province	KZN	2016	5,001-10K	0.7
province	KZN	2016	10,001-20K	-0.2
province	KZN	2016	20,001-30K	-0.6
province	KZN	2016	30,001-40K	-0.5
province	KZN	2016	40,001-50K	0.2
province	KZN	2016	50,001-100K	0
province	KZN	2016	100,001-150K	-0.4
province	KZN	2016	150,001-200K	0.8
province	KZN	2016	200,001-300K	-0.1
province	KZN	2016	300,001-500K	0.7
province	KZN	2016	500,001-800K	1.9
province	KZN	2016	800,001-1M	\N
province	KZN	2016	Above 1M	-21.8
province	LIM	2016	Under 1.5K	13.8
province	LIM	2016	1,501-3K	2
province	LIM	2016	3,001-5K	-0.8
province	LIM	2016	5,001-10K	-1.4
province	LIM	2016	10,001-20K	-0.1
province	LIM	2016	20,001-30K	-0.7
province	LIM	2016	30,001-40K	-0.5
province	LIM	2016	40,001-50K	-0.2
province	LIM	2016	50,001-100K	0.8
province	LIM	2016	100,001-150K	-1.9
province	LIM	2016	150,001-200K	0
province	LIM	2016	200,001-300K	-1.4
province	LIM	2016	300,001-500K	-0.4
province	LIM	2016	500,001-800K	3.9
province	LIM	2016	800,001-1M	\N
province	LIM	2016	Above 1M	\N
province	MP	2016	Under 1.5K	\N
province	MP	2016	1,501-3K	2.5
province	MP	2016	3,001-5K	1.1
province	MP	2016	5,001-10K	0.3
province	MP	2016	10,001-20K	0.9
province	MP	2016	20,001-30K	2
province	MP	2016	30,001-40K	1.3
province	MP	2016	40,001-50K	-0.1
province	MP	2016	50,001-100K	-1
province	MP	2016	100,001-150K	0.7
province	MP	2016	150,001-200K	2
province	MP	2016	200,001-300K	0.8
province	MP	2016	300,001-500K	0.4
province	MP	2016	500,001-800K	1.6
province	MP	2016	800,001-1M	\N
province	MP	2016	Above 1M	\N
province	NC	2016	Under 1.5K	-2.9
province	NC	2016	1,501-3K	-0.7
province	NC	2016	3,001-5K	-1.4
province	NC	2016	5,001-10K	1.1
province	NC	2016	10,001-20K	0.5
province	NC	2016	20,001-30K	\N
province	NC	2016	30,001-40K	\N
province	NC	2016	40,001-50K	\N
province	NC	2016	50,001-100K	-2.5
province	NC	2016	100,001-150K	-0.9
province	NC	2016	150,001-200K	-0.6
province	NC	2016	200,001-300K	0.3
province	NC	2016	300,001-500K	0.1
province	NC	2016	500,001-800K	-2.9
province	NC	2016	800,001-1M	\N
province	NC	2016	Above 1M	\N
province	NW	2016	Under 1.5K	13.4
province	NW	2016	1,501-3K	1.2
province	NW	2016	3,001-5K	-0.2
province	NW	2016	5,001-10K	1.7
province	NW	2016	10,001-20K	-0.1
province	NW	2016	20,001-30K	-0.6
province	NW	2016	30,001-40K	0
province	NW	2016	40,001-50K	0.2
province	NW	2016	50,001-100K	-0.3
province	NW	2016	100,001-150K	0.7
province	NW	2016	150,001-200K	0.3
province	NW	2016	200,001-300K	1.9
province	NW	2016	300,001-500K	0.4
province	NW	2016	500,001-800K	-1.1
province	NW	2016	800,001-1M	0.1
province	NW	2016	Above 1M	\N
province	WC	2016	Under 1.5K	0.2
province	WC	2016	1,501-3K	0.1
province	WC	2016	3,001-5K	0.7
province	WC	2016	5,001-10K	-0.8
province	WC	2016	10,001-20K	0
province	WC	2016	20,001-30K	0.8
province	WC	2016	30,001-40K	0.5
province	WC	2016	40,001-50K	-0.1
province	WC	2016	50,001-100K	-0.8
province	WC	2016	100,001-150K	-1
province	WC	2016	150,001-200K	0.5
province	WC	2016	200,001-300K	-0.5
province	WC	2016	300,001-500K	0.6
province	WC	2016	500,001-800K	-2.3
province	WC	2016	800,001-1M	\N
province	WC	2016	Above 1M	6.6
\.


--
-- PostgreSQL database dump complete
--
