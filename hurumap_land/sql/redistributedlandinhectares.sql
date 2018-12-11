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

ALTER TABLE IF EXISTS ONLY public.redistributedlandinhectares DROP CONSTRAINT IF EXISTS pk_redistributedlandinhectares;
DROP TABLE IF EXISTS public.redistributedlandinhectares;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: redistributedlandinhectares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redistributedlandinhectares (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    redistributedland character varying(100) NOT NULL,
    total numeric
);


--
-- Data for Name: redistributedlandinhectares; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redistributedlandinhectares (geo_level, geo_code, geo_version, redistributedland, total) FROM stdin;
province	EC	2016	number of hectares	1314.69
province	FS	2016	number of hectares	11735.83
province	GT	2016	number of hectares	1256.14
province	KZN	2016	number of hectares	13770.03
province	LIM	2016	number of hectares	7337.09
province	MP	2016	number of hectares	6704.34
province	NC	2016	number of hectares	34037.19
province	NW	2016	number of hectares	15017.18
province	WC	2016	number of hectares	859.87
country	ZA	2016	number of hectares	92032.35
province	EC	2016	cost in rands	21044000
province	FS	2016	cost in rands	97579394
province	GT	2016	cost in rands	23040935
province	KZN	2016	cost in rands	134494665
province	LIM	2016	cost in rands	15115000
province	MP	2016	cost in rands	65116000
province	NC	2016	cost in rands	79750000
province	NW	2016	cost in rands	61115000.01
province	WC	2016	cost in rands	14800000
country	ZA	2016	cost in rands	512054994
province	EC	2016	average cost per hectares	16006.77
province	FS	2016	average cost per hectares	8314.66
province	GT	2016	average cost per hectares	18342.58
province	KZN	2016	average cost per hectares	9767.2
province	LIM	2016	average cost per hectares	2060.08
province	MP	2016	average cost per hectares	9712.52
province	NC	2016	average cost per hectares	2343.03
province	NW	2016	average cost per hectares	4069.67
province	WC	2016	average cost per hectares	17212
country	ZA	2016	average cost per hectares	5563.86
\.


--
-- Name: redistributedlandinhectares pk_redistributedlandinhectares; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redistributedlandinhectares
    ADD CONSTRAINT pk_redistributedlandinhectares PRIMARY KEY (geo_level, geo_code, geo_version, redistributedlandinhectares);


--
-- PostgreSQL database dump complete
--
