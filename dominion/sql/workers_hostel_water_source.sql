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
level1	ZA_1_008	2009	Piped (tap) water in dwelling	3692
level1	ZA_1_008	2009	Piped (tap) water on site or in yard	15230
level1	ZA_1_008	2009	Borehole on site	752
level1	ZA_1_008	2009	Rain-water tank on site	2315
level1	ZA_1_008	2009	Neighbour's tap	0
level1	ZA_1_008	2009	Public/communal tap	4450
level1	ZA_1_008	2009	Water-carrier/tanker	0
level1	ZA_1_008	2009	Water vendor	0
level1	ZA_1_008	2009	Borehole outside yard	0
level1	ZA_1_008	2009	Flowing water/stream/river	0
level1	ZA_1_008	2009	Stagnant water/dam/pool	0
level1	ZA_1_008	2009	Well	0
level1	ZA_1_008	2009	Spring	0
level1	ZA_1_008	2009	Other	0
level1	ZA_1_003	2009	Piped (tap) water in dwelling	14889
level1	ZA_1_003	2009	Piped (tap) water on site or in yard	4269
level1	ZA_1_003	2009	Borehole on site	0
level1	ZA_1_003	2009	Rain-water tank on site	0
level1	ZA_1_003	2009	Neighbour's tap	0
level1	ZA_1_003	2009	Public/communal tap	6442
level1	ZA_1_003	2009	Water-carrier/tanker	0
level1	ZA_1_003	2009	Water vendor	0
level1	ZA_1_003	2009	Borehole outside yard	0
level1	ZA_1_003	2009	Flowing water/stream/river	619
level1	ZA_1_003	2009	Stagnant water/dam/pool	0
level1	ZA_1_003	2009	Well	0
level1	ZA_1_003	2009	Spring	6153
level1	ZA_1_003	2009	Other	0
level1	ZA_1_006	2009	Piped (tap) water in dwelling	16819
level1	ZA_1_006	2009	Piped (tap) water on site or in yard	9752
level1	ZA_1_006	2009	Borehole on site	2006
level1	ZA_1_006	2009	Rain-water tank on site	0
level1	ZA_1_006	2009	Neighbour's tap	0
level1	ZA_1_006	2009	Public/communal tap	0
level1	ZA_1_006	2009	Water-carrier/tanker	0
level1	ZA_1_006	2009	Water vendor	0
level1	ZA_1_006	2009	Borehole outside yard	1215
level1	ZA_1_006	2009	Flowing water/stream/river	317
level1	ZA_1_006	2009	Stagnant water/dam/pool	0
level1	ZA_1_006	2009	Well	0
level1	ZA_1_006	2009	Spring	0
level1	ZA_1_006	2009	Other	0
level1	ZA_1_002	2009	Piped (tap) water in dwelling	3474
level1	ZA_1_002	2009	Piped (tap) water on site or in yard	1721
level1	ZA_1_002	2009	Borehole on site	0
level1	ZA_1_002	2009	Rain-water tank on site	0
level1	ZA_1_002	2009	Neighbour's tap	0
level1	ZA_1_002	2009	Public/communal tap	0
level1	ZA_1_002	2009	Water-carrier/tanker	0
level1	ZA_1_002	2009	Water vendor	0
level1	ZA_1_002	2009	Borehole outside yard	0
level1	ZA_1_002	2009	Flowing water/stream/river	0
level1	ZA_1_002	2009	Stagnant water/dam/pool	0
level1	ZA_1_002	2009	Well	0
level1	ZA_1_002	2009	Spring	0
level1	ZA_1_002	2009	Other	0
level1	ZA_1_001	2009	Piped (tap) water in dwelling	15436
level1	ZA_1_001	2009	Piped (tap) water on site or in yard	19540
level1	ZA_1_001	2009	Borehole on site	14494
level1	ZA_1_001	2009	Rain-water tank on site	0
level1	ZA_1_001	2009	Neighbour's tap	0
level1	ZA_1_001	2009	Public/communal tap	5920
level1	ZA_1_001	2009	Water-carrier/tanker	866
level1	ZA_1_001	2009	Water vendor	0
level1	ZA_1_001	2009	Borehole outside yard	8067
level1	ZA_1_001	2009	Flowing water/stream/river	4165
level1	ZA_1_001	2009	Stagnant water/dam/pool	0
level1	ZA_1_001	2009	Well	0
level1	ZA_1_001	2009	Spring	10019
level1	ZA_1_001	2009	Other	0
level1	ZA_1_007	2009	Piped (tap) water in dwelling	12451
level1	ZA_1_007	2009	Piped (tap) water on site or in yard	5601
level1	ZA_1_007	2009	Borehole on site	0
level1	ZA_1_007	2009	Rain-water tank on site	0
level1	ZA_1_007	2009	Neighbour's tap	0
level1	ZA_1_007	2009	Public/communal tap	749
level1	ZA_1_007	2009	Water-carrier/tanker	0
level1	ZA_1_007	2009	Water vendor	0
level1	ZA_1_007	2009	Borehole outside yard	0
level1	ZA_1_007	2009	Flowing water/stream/river	0
level1	ZA_1_007	2009	Stagnant water/dam/pool	0
level1	ZA_1_007	2009	Well	0
level1	ZA_1_007	2009	Spring	0
level1	ZA_1_007	2009	Other	0
level1	ZA_1_009	2009	Piped (tap) water in dwelling	82218
level1	ZA_1_009	2009	Piped (tap) water on site or in yard	53096
level1	ZA_1_009	2009	Borehole on site	733
level1	ZA_1_009	2009	Rain-water tank on site	0
level1	ZA_1_009	2009	Neighbour's tap	0
level1	ZA_1_009	2009	Public/communal tap	2657
level1	ZA_1_009	2009	Water-carrier/tanker	3143
level1	ZA_1_009	2009	Water vendor	0
level1	ZA_1_009	2009	Borehole outside yard	0
level1	ZA_1_009	2009	Flowing water/stream/river	0
level1	ZA_1_009	2009	Stagnant water/dam/pool	0
level1	ZA_1_009	2009	Well	0
level1	ZA_1_009	2009	Spring	0
level1	ZA_1_009	2009	Other	0
level1	ZA_1_004	2009	Piped (tap) water in dwelling	25195
level1	ZA_1_004	2009	Piped (tap) water on site or in yard	20378
level1	ZA_1_004	2009	Borehole on site	4615
level1	ZA_1_004	2009	Rain-water tank on site	499
level1	ZA_1_004	2009	Neighbour's tap	611
level1	ZA_1_004	2009	Public/communal tap	743
level1	ZA_1_004	2009	Water-carrier/tanker	0
level1	ZA_1_004	2009	Water vendor	0
level1	ZA_1_004	2009	Borehole outside yard	2872
level1	ZA_1_004	2009	Flowing water/stream/river	0
level1	ZA_1_004	2009	Stagnant water/dam/pool	0
level1	ZA_1_004	2009	Well	0
level1	ZA_1_004	2009	Spring	0
level1	ZA_1_004	2009	Other	0
level1	ZA_1_005	2009	Piped (tap) water in dwelling	1846
level1	ZA_1_005	2009	Piped (tap) water on site or in yard	15959
level1	ZA_1_005	2009	Borehole on site	11400
level1	ZA_1_005	2009	Rain-water tank on site	0
level1	ZA_1_005	2009	Neighbour's tap	0
level1	ZA_1_005	2009	Public/communal tap	11699
level1	ZA_1_005	2009	Water-carrier/tanker	0
level1	ZA_1_005	2009	Water vendor	0
level1	ZA_1_005	2009	Borehole outside yard	0
level1	ZA_1_005	2009	Flowing water/stream/river	0
level1	ZA_1_005	2009	Stagnant water/dam/pool	0
level1	ZA_1_005	2009	Well	0
level1	ZA_1_005	2009	Spring	0
level1	ZA_1_005	2009	Other	0
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
