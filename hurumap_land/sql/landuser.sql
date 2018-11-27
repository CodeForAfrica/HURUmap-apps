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

ALTER TABLE IF EXISTS ONLY public.landuser DROP CONSTRAINT IF EXISTS pk_landuser;
DROP TABLE IF EXISTS public.landuser;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landuser (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_user character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landuser; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landuser (geo_level, geo_code, geo_version, land_user, total) FROM stdin;
province	GT	2016	Government department	46850
province	GT	2016	Municipality	61400
province	GT	2016	Organization	6898
province	GT	2016	Private person	21086
province	GT	2016	Public entity	2335
province	GT	2016	Traditional authority	7033
province	GT	2016	Unknown	90162
province	KZN	2016	Government department	178079
province	KZN	2016	Municipality	54217
province	KZN	2016	Organization	39129
province	KZN	2016	Private person	19906
province	KZN	2016	Public entity	14321
province	KZN	2016	Traditional authority	544213
province	KZN	2016	Unknown	74361
province	LIM	2016	Government department	2923146
province	LIM	2016	Municipality	507827
province	LIM	2016	Organization	195505
province	LIM	2016	Private person	309158
province	LIM	2016	Public entity	32244
province	LIM	2016	Traditional authority	3483784
province	LIM	2016	Unknown	620652
province	NW	2016	Government department	358256
province	NW	2016	Municipality	675578
province	NW	2016	Organization	55031
province	NW	2016	Private person	242701
province	NW	2016	Public entity	44162
province	NW	2016	Traditional authority	927200
province	NW	2016	Unknown	1036711
province	NC	2016	Government department	752638
province	NC	2016	Municipality	1337719
province	NC	2016	Organization	96373
province	NC	2016	Private person	122787
province	NC	2016	Public entity	57888
province	NC	2016	Traditional authority	16511
province	NC	2016	Unknown	394313
province	WC	2016	Government department	331936
province	WC	2016	Municipality	790445
province	WC	2016	Organization	766
province	WC	2016	Private person	531
province	WC	2016	Public entity	1257
province	WC	2016	Traditional authority	148
province	WC	2016	Unknown	46923
province	MP	2016	Government department	390812
province	MP	2016	Municipality	48249
province	MP	2016	Organization	52897
province	MP	2016	Private person	91471
province	MP	2016	Public entity	62802
province	MP	2016	Traditional authority	108655
province	MP	2016	Unknown	298219
province	FS	2016	Government department	554216
province	FS	2016	Municipality	323661
province	FS	2016	Organization	27483
province	FS	2016	Private person	39939
province	FS	2016	Public entity	34987
province	FS	2016	Traditional authority	63413
province	FS	2016	Unknown	270639
province	EC	2016	Government department	232044
province	EC	2016	Municipality	103328
province	EC	2016	Organization	57402
province	EC	2016	Private person	78451
province	EC	2016	Public entity	205412
province	EC	2016	Traditional authority	72480
province	EC	2016	Unknown	800231
country	ZA	2016	Government department	2844831
country	ZA	2016	Municipality	3394597
country	ZA	2016	Organization	335979
country	ZA	2016	Private person	616872
country	ZA	2016	Public entity	423164
country	ZA	2016	Traditional authority	1739653
country	ZA	2016	Unknown	3011559
\.


--
-- Name: landuser pk_landuser; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landuser
    ADD CONSTRAINT pk_landuser PRIMARY KEY (geo_level, geo_code, geo_version, land_user);


--
-- PostgreSQL database dump complete
--

