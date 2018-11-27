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

ALTER TABLE IF EXISTS ONLY public.landuse DROP CONSTRAINT IF EXISTS pk_landuse;
DROP TABLE IF EXISTS public.landuse;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landuse; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landuse (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_use character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landuse; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landuse (geo_level, geo_code, geo_version, land_use, total) FROM stdin;
province	GT	2016	Agriculture & Fisheries	23249
province	GT	2016	Commercial	2264
province	GT	2016	Community Services	6111
province	GT	2016	Conservation	6383
province	GT	2016	Forestry	4549
province	GT	2016	Industrial & Storage	292
province	GT	2016	Mining	1254
province	GT	2016	Recreation and Leisure	99174
province	GT	2016	Residential	26837
province	GT	2016	Transport	17143
province	GT	2016	Undeveloped Land	31824
province	GT	2016	Utilities & Infrastructure	51
province	NC	2016	Agriculture & Fisheries	777021
province	NC	2016	Commercial	137457
province	NC	2016	Community Services	129221
province	NC	2016	Conservation	394149
province	NC	2016	Forestry	2380
province	NC	2016	Industrial & Storage	11765
province	NC	2016	Mining	13134
province	NC	2016	Recreation and Leisure	260472
province	NC	2016	Residential	703659
province	NC	2016	Transport	84372
province	NC	2016	Undeveloped Land	106441
province	NC	2016	Utilities & Infrastructure	40747
province	WC	2016	Agriculture & Fisheries	32266
province	WC	2016	Commercial	1932
province	WC	2016	Community Services	19448
province	WC	2016	Conservation	579029
province	WC	2016	Forestry	82491
province	WC	2016	Industrial & Storage	942
province	WC	2016	Mining	690
province	WC	2016	Recreation and Leisure	82524
province	WC	2016	Residential	23420
province	WC	2016	Transport	85126
province	WC	2016	Undeveloped Land	117290
province	WC	2016	Utilities & Infrastructure	40526
province	NW	2016	Agriculture & Fisheries	1215025
province	NW	2016	Commercial	17946
province	NW	2016	Community Services	94037
province	NW	2016	Conservation	161587
province	NW	2016	Forestry	145579
province	NW	2016	Industrial & Storage	4173
province	NW	2016	Mining	23640
province	NW	2016	Recreation and Leisure	595127
province	NW	2016	Residential	537567
province	NW	2016	Transport	22023
province	NW	2016	Undeveloped Land	448646
province	NW	2016	Utilities & Infrastructure	55072
province	MP	2016	Agriculture & Fisheries	153748
province	MP	2016	Commercial	7732
province	MP	2016	Community Services	22363
province	MP	2016	Conservation	66297
province	MP	2016	Forestry	150574
province	MP	2016	Industrial & Storage	9783
province	MP	2016	Mining	2897
province	MP	2016	Recreation and Leisure	318243
province	MP	2016	Residential	229299
province	MP	2016	Transport	19647
province	MP	2016	Undeveloped Land	36066
province	MP	2016	Utilities & Infrastructure	13376
province	KZN	2016	Agriculture & Fisheries	20701
province	KZN	2016	Commercial	8352
province	KZN	2016	Community Services	8174
province	KZN	2016	Conservation	73719
province	KZN	2016	Forestry	85039
province	KZN	2016	Industrial & Storage	1006
province	KZN	2016	Mining	6
province	KZN	2016	Recreation and Leisure	14671
province	KZN	2016	Residential	35
province	KZN	2016	Transport	34318
province	KZN	2016	Undeveloped Land	292668
province	KZN	2016	Utilities & Infrastructure	5962
province	EC	2016	Agriculture & Fisheries	132968
province	EC	2016	Commercial	19995
province	EC	2016	Community Services	34261
province	EC	2016	Conservation	231635
province	EC	2016	Forestry	239397
province	EC	2016	Industrial & Storage	1306
province	EC	2016	Mining	6975
province	EC	2016	Recreation and Leisure	272154
province	EC	2016	Residential	147790
province	EC	2016	Transport	40394
province	EC	2016	Undeveloped Land	389567
province	EC	2016	Utilities & Infrastructure	8482
province	LIM	2016	Agriculture & Fisheries	1466030
province	LIM	2016	Commercial	939810
province	LIM	2016	Community Services	1414370
province	LIM	2016	Conservation	165559
province	LIM	2016	Forestry	829207
province	LIM	2016	Industrial & Storage	17201
province	LIM	2016	Mining	2221
province	LIM	2016	Recreation and Leisure	937929
province	LIM	2016	Residential	1197261
province	LIM	2016	Transport	165729
province	LIM	2016	Undeveloped Land	539662
province	LIM	2016	Utilities & Infrastructure	283534
province	FS	2016	Agriculture & Fisheries	206043
province	FS	2016	Commercial	88783
province	FS	2016	Community Services	85142
province	FS	2016	Conservation	189350
province	FS	2016	Forestry	1052
province	FS	2016	Industrial & Storage	14407
province	FS	2016	Mining	2222
province	FS	2016	Recreation and Leisure	136016
province	FS	2016	Residential	238986
province	FS	2016	Transport	99473
province	FS	2016	Undeveloped Land	99499
province	FS	2016	Utilities & Infrastructure	44499
country	ZA	2016	Agriculture & Fisheries	4006350
country	ZA	2016	Commercial	1215919
country	ZA	2016	Community Services	1804953
country	ZA	2016	Conservation	1793989
country	ZA	2016	Forestry	1455229
country	ZA	2016	Industrial & Storage	59869
country	ZA	2016	Mining	53033
country	ZA	2016	Recreation and Leisure	2701639
country	ZA	2016	Residential	3104819
country	ZA	2016	Transport	533907
country	ZA	2016	Undeveloped Land	1768995
country	ZA	2016	Utilities & Infrastructure	486287
\.


--
-- Name: landuse pk_landuse; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landuse
    ADD CONSTRAINT pk_landuse PRIMARY KEY (geo_level, geo_code, geo_version, land_use);


--
-- PostgreSQL database dump complete
--

