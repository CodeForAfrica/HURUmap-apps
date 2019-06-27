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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_living_condition DROP CONSTRAINT IF EXISTS pk_workers_hostel_living_condition;
DROP TABLE IF EXISTS public.workers_hostel_living_condition;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_living_condition; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_living_condition (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_living_condition character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_living_condition; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_living_condition (geo_level, geo_code, geo_version, workers_hostel_living_condition, total) FROM stdin;
province	WC	2009	Cluster house in complex	15813
country	ZA	2009	Cluster house in complex	121353
province	NC	2009	Cluster house in complex	9753
province	NW	2009	Cluster house in complex	3943
province	MP	2009	Cluster house in complex	13843
province	LIM	2009	Cluster house in complex	22911
province	KZN	2009	Cluster house in complex	23059
province	GT	2009	Cluster house in complex	31411
province	FS	2009	Cluster house in complex	0
province	EC	2009	Cluster house in complex	619
province	WC	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
country	ZA	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	NC	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	NW	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	MP	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	LIM	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	KZN	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	GT	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	FS	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	EC	2009	Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm.	0
province	WC	2009	Dwelling/house/flat/room in backyard	0
country	ZA	2009	Dwelling/house/flat/room in backyard	33278
province	NC	2009	Dwelling/house/flat/room in backyard	0
province	NW	2009	Dwelling/house/flat/room in backyard	0
province	MP	2009	Dwelling/house/flat/room in backyard	4229
province	LIM	2009	Dwelling/house/flat/room in backyard	0
province	KZN	2009	Dwelling/house/flat/room in backyard	1326
province	GT	2009	Dwelling/house/flat/room in backyard	14837
province	FS	2009	Dwelling/house/flat/room in backyard	2481
province	EC	2009	Dwelling/house/flat/room in backyard	10405
province	WC	2009	Flat or apartment in a block of flats	1681
country	ZA	2009	Flat or apartment in a block of flats	41536
province	NC	2009	Flat or apartment in a block of flats	698
province	NW	2009	Flat or apartment in a block of flats	1521
province	MP	2009	Flat or apartment in a block of flats	1335
province	LIM	2009	Flat or apartment in a block of flats	11655
province	KZN	2009	Flat or apartment in a block of flats	18465
province	GT	2009	Flat or apartment in a block of flats	6182
province	FS	2009	Flat or apartment in a block of flats	0
province	EC	2009	Flat or apartment in a block of flats	0
province	WC	2009	Informal dwelling/shack in backyard	0
country	ZA	2009	Informal dwelling/shack in backyard	10825
province	NC	2009	Informal dwelling/shack in backyard	770
province	NW	2009	Informal dwelling/shack in backyard	0
province	MP	2009	Informal dwelling/shack in backyard	1225
province	LIM	2009	Informal dwelling/shack in backyard	0
province	KZN	2009	Informal dwelling/shack in backyard	1568
province	GT	2009	Informal dwelling/shack in backyard	3701
province	FS	2009	Informal dwelling/shack in backyard	0
province	EC	2009	Informal dwelling/shack in backyard	3561
province	WC	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
country	ZA	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	NC	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	NW	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	MP	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	LIM	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	KZN	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	GT	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	FS	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	EC	2009	Informal dwelling/shack not in backyard; e.g. in an informal/squatter settlement or on farm	0
province	WC	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
country	ZA	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	NC	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	NW	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	MP	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	LIM	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	KZN	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	GT	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	FS	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	EC	2009	Room/flatlet on a property or a larger dwelling servants’ quarters/granny flat	0
province	WC	2009	Semi-detached house	4358
country	ZA	2009	Semi-detached house	93311
province	NC	2009	Semi-detached house	3451
province	NW	2009	Semi-detached house	7814
province	MP	2009	Semi-detached house	19397
province	LIM	2009	Semi-detached house	1846
province	KZN	2009	Semi-detached house	3543
province	GT	2009	Semi-detached house	41334
province	FS	2009	Semi-detached house	994
province	EC	2009	Semi-detached house	10575
province	WC	2009	Town house (semi-detached house in complex)	4587
country	ZA	2009	Town house (semi-detached house in complex)	119752
province	NC	2009	Town house (semi-detached house in complex)	15437
province	NW	2009	Town house (semi-detached house in complex)	5522
province	MP	2009	Town house (semi-detached house in complex)	13808
province	LIM	2009	Town house (semi-detached house in complex)	4491
province	KZN	2009	Town house (semi-detached house in complex)	22592
province	GT	2009	Town house (semi-detached house in complex)	44381
province	FS	2009	Town house (semi-detached house in complex)	1721
province	EC	2009	Town house (semi-detached house in complex)	7213
province	WC	2009	Traditional dwelling/hut/structure made of traditional materials	0
country	ZA	2009	Traditional dwelling/hut/structure made of traditional materials	9029
province	NC	2009	Traditional dwelling/hut/structure made of traditional materials	0
province	NW	2009	Traditional dwelling/hut/structure made of traditional materials	0
province	MP	2009	Traditional dwelling/hut/structure made of traditional materials	1076
province	LIM	2009	Traditional dwelling/hut/structure made of traditional materials	0
province	KZN	2009	Traditional dwelling/hut/structure made of traditional materials	7953
province	GT	2009	Traditional dwelling/hut/structure made of traditional materials	0
province	FS	2009	Traditional dwelling/hut/structure made of traditional materials	0
province	EC	2009	Traditional dwelling/hut/structure made of traditional materials	0
\.


--
-- Name: workers_hostel_living_condition pk_workers_hostel_living_condition; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_living_condition
    ADD CONSTRAINT pk_workers_hostel_living_condition PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_living_condition);


--
-- PostgreSQL database dump complete
--
