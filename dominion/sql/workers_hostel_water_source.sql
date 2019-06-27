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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_water_source DROP CONSTRAINT IF EXISTS pk_workers_hostel_water_source;
DROP TABLE IF EXISTS public.workers_hostel_water_source;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_water_source; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_water_source (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_water_source character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_water_source; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_water_source (geo_level, geo_code, geo_version, workers_hostel_water_source, total) FROM stdin;
province	WC	2009	Piped (tap) water in dwelling	3692
province	WC	2009	Piped (tap) water on site or in yard	15230
province	WC	2009	Borehole on site	752
province	WC	2009	Rain-water tank on site	2315
province	WC	2009	Neighbour's tap	0
province	WC	2009	Public/communal tap	4450
province	WC	2009	Water-carrier/tanker	0
province	WC	2009	Water vendor	0
province	WC	2009	Borehole outside yard	0
province	WC	2009	Flowing water/stream/river	0
province	WC	2009	Stagnant water/dam/pool	0
province	WC	2009	Well	0
province	WC	2009	Spring	0
province	WC	2009	Other	0
province	EC	2009	Piped (tap) water in dwelling	14889
province	EC	2009	Piped (tap) water on site or in yard	4269
province	EC	2009	Borehole on site	0
province	EC	2009	Rain-water tank on site	0
province	EC	2009	Neighbour's tap	0
province	EC	2009	Public/communal tap	6442
province	EC	2009	Water-carrier/tanker	0
province	EC	2009	Water vendor	0
province	EC	2009	Borehole outside yard	0
province	EC	2009	Flowing water/stream/river	619
province	EC	2009	Stagnant water/dam/pool	0
province	EC	2009	Well	0
province	EC	2009	Spring	6153
province	EC	2009	Other	0
province	NC	2009	Piped (tap) water in dwelling	16819
province	NC	2009	Piped (tap) water on site or in yard	9752
province	NC	2009	Borehole on site	2006
province	NC	2009	Rain-water tank on site	0
province	NC	2009	Neighbour's tap	0
province	NC	2009	Public/communal tap	0
province	NC	2009	Water-carrier/tanker	0
province	NC	2009	Water vendor	0
province	NC	2009	Borehole outside yard	1215
province	NC	2009	Flowing water/stream/river	317
province	NC	2009	Stagnant water/dam/pool	0
province	NC	2009	Well	0
province	NC	2009	Spring	0
province	NC	2009	Other	0
province	FS	2009	Piped (tap) water in dwelling	3474
province	FS	2009	Piped (tap) water on site or in yard	1721
province	FS	2009	Borehole on site	0
province	FS	2009	Rain-water tank on site	0
province	FS	2009	Neighbour's tap	0
province	FS	2009	Public/communal tap	0
province	FS	2009	Water-carrier/tanker	0
province	FS	2009	Water vendor	0
province	FS	2009	Borehole outside yard	0
province	FS	2009	Flowing water/stream/river	0
province	FS	2009	Stagnant water/dam/pool	0
province	FS	2009	Well	0
province	FS	2009	Spring	0
province	FS	2009	Other	0
province	KZN	2009	Piped (tap) water in dwelling	15436
province	KZN	2009	Piped (tap) water on site or in yard	19540
province	KZN	2009	Borehole on site	14494
province	KZN	2009	Rain-water tank on site	0
province	KZN	2009	Neighbour's tap	0
province	KZN	2009	Public/communal tap	5920
province	KZN	2009	Water-carrier/tanker	866
province	KZN	2009	Water vendor	0
province	KZN	2009	Borehole outside yard	8067
province	KZN	2009	Flowing water/stream/river	4165
province	KZN	2009	Stagnant water/dam/pool	0
province	KZN	2009	Well	0
province	KZN	2009	Spring	10019
province	KZN	2009	Other	0
province	NW	2009	Piped (tap) water in dwelling	12451
province	NW	2009	Piped (tap) water on site or in yard	5601
province	NW	2009	Borehole on site	0
province	NW	2009	Rain-water tank on site	0
province	NW	2009	Neighbour's tap	0
province	NW	2009	Public/communal tap	749
province	NW	2009	Water-carrier/tanker	0
province	NW	2009	Water vendor	0
province	NW	2009	Borehole outside yard	0
province	NW	2009	Flowing water/stream/river	0
province	NW	2009	Stagnant water/dam/pool	0
province	NW	2009	Well	0
province	NW	2009	Spring	0
province	NW	2009	Other	0
province	GT	2009	Piped (tap) water in dwelling	82218
province	GT	2009	Piped (tap) water on site or in yard	53096
province	GT	2009	Borehole on site	733
province	GT	2009	Rain-water tank on site	0
province	GT	2009	Neighbour's tap	0
province	GT	2009	Public/communal tap	2657
province	GT	2009	Water-carrier/tanker	3143
province	GT	2009	Water vendor	0
province	GT	2009	Borehole outside yard	0
province	GT	2009	Flowing water/stream/river	0
province	GT	2009	Stagnant water/dam/pool	0
province	GT	2009	Well	0
province	GT	2009	Spring	0
province	GT	2009	Other	0
province	MP	2009	Piped (tap) water in dwelling	25195
province	MP	2009	Piped (tap) water on site or in yard	20378
province	MP	2009	Borehole on site	4615
province	MP	2009	Rain-water tank on site	499
province	MP	2009	Neighbour's tap	611
province	MP	2009	Public/communal tap	743
province	MP	2009	Water-carrier/tanker	0
province	MP	2009	Water vendor	0
province	MP	2009	Borehole outside yard	2872
province	MP	2009	Flowing water/stream/river	0
province	MP	2009	Stagnant water/dam/pool	0
province	MP	2009	Well	0
province	MP	2009	Spring	0
province	MP	2009	Other	0
province	LIM	2009	Piped (tap) water in dwelling	1846
province	LIM	2009	Piped (tap) water on site or in yard	15959
province	LIM	2009	Borehole on site	11400
province	LIM	2009	Rain-water tank on site	0
province	LIM	2009	Neighbour's tap	0
province	LIM	2009	Public/communal tap	11699
province	LIM	2009	Water-carrier/tanker	0
province	LIM	2009	Water vendor	0
province	LIM	2009	Borehole outside yard	0
province	LIM	2009	Flowing water/stream/river	0
province	LIM	2009	Stagnant water/dam/pool	0
province	LIM	2009	Well	0
province	LIM	2009	Spring	0
province	LIM	2009	Other	0
country	ZA	2009	Piped (tap) water in dwelling	176020
country	ZA	2009	Piped (tap) water on site or in yard	145545
country	ZA	2009	Borehole on site	33999
country	ZA	2009	Rain-water tank on site	2814
country	ZA	2009	Neighbour's tap	611
country	ZA	2009	Public/communal tap	32660
country	ZA	2009	Water-carrier/tanker	4009
country	ZA	2009	Water vendor	0
country	ZA	2009	Borehole outside yard	12154
country	ZA	2009	Flowing water/stream/river	5101
country	ZA	2009	Stagnant water/dam/pool	0
country	ZA	2009	Well	0
country	ZA	2009	Spring	16172
country	ZA	2009	Other	0
\.


--
-- Name: workers_hostel_water_source pk_workers_hostel_water_source; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_water_source
    ADD CONSTRAINT pk_workers_hostel_water_source PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_water_source);


--
-- PostgreSQL database dump complete
--
