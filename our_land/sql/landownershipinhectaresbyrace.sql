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

ALTER TABLE ONLY public.landownershipinhectaresbyrace DROP CONSTRAINT pk_landownershipinhectaresbyrace;
DROP TABLE public.landownershipinhectaresbyrace;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landownershipinhectaresbyrace; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landownershipinhectaresbyrace (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "land ownership in hectares by race" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.landownershipinhectaresbyrace OWNER TO our_land;

--
-- Data for Name: landownershipinhectaresbyrace; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landownershipinhectaresbyrace (geo_level, geo_code, geo_version, "land ownership in hectares by race", total) FROM stdin;
province	EC	2011	White	3007709
province	FS	2011	White	3748192
province	GT	2011	White	275021
province	KZN	2011	White	853152
province	MP	2011	White	967634
province	NW	2011	White	2408880
province	NC	2011	White	11498449
province	WC	2011	White	2764652
province	EC	2011	African	250536
province	FS	2011	African	153080
province	GT	2011	African	30266
province	KZN	2011	African	270423
province	MP	2011	African	108792
province	NW	2011	African	198279
province	NC	2011	African	69350
province	WC	2011	African	53287
province	EC	2011	Coloured	773026
province	FS	2011	Coloured	646872
province	GT	2011	Coloured	81597
province	KZN	2011	Coloured	248286
province	MP	2011	Coloured	219792
province	NW	2011	Coloured	397552
province	NC	2011	Coloured	2222206
province	WC	2011	Coloured	561315
province	EC	2011	Indian	385685
province	FS	2011	Indian	246453
province	GT	2011	Indian	51332
province	KZN	2011	Indian	107723
province	MP	2011	Indian	83580
province	NW	2011	Indian	119744
province	NC	2011	Indian	746820
province	WC	2011	Indian	174865
province	EC	2011	Other	151849
province	FS	2011	Other	193548
province	GT	2011	Other	15925
province	KZN	2011	Other	72033
province	MP	2011	Other	41702
province	NW	2011	Other	114219
province	NC	2011	Other	414065
province	WC	2011	Other	195047
province	EC	2011	Co-own	42723
province	FS	2011	Co-own	21119
province	GT	2011	Co-own	8528
province	KZN	2011	Co-own	65875
province	MP	2011	Co-own	19652
province	NW	2011	Co-own	72536
province	NC	2011	Co-own	60112
province	WC	2011	Co-own	114827
country	ZA	2011	White	26663144
country	ZA	2011	African	1314873
country	ZA	2011	Coloured	5371383
country	ZA	2011	Indian	2031790
country	ZA	2011	Other	1271562
country	ZA	2011	Co-own	425537
province	LIM	2011	White	1139454
province	LIM	2011	African	180858
province	LIM	2011	Coloured	220738
province	LIM	2011	Indian	115588
province	LIM	2011	Other	73174
province	LIM	2011	Co-own	20165
\.


--
-- Name: landownershipinhectaresbyrace pk_landownershipinhectaresbyrace; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE ONLY public.landownershipinhectaresbyrace
    ADD CONSTRAINT pk_landownershipinhectaresbyrace PRIMARY KEY (geo_level, geo_code, geo_version, "land ownership in hectares by race");


--
-- PostgreSQL database dump complete
--

