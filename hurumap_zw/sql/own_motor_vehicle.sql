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

ALTER TABLE IF EXISTS ONLY public.own_motor_vehicle DROP CONSTRAINT IF EXISTS pk_own_motor_vehicle;
DROP TABLE IF EXISTS public.own_motor_vehicle;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_motor_vehicle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_motor_vehicle (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_motor_vehicle character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_motor_vehicle; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_motor_vehicle (geo_level, geo_code, geo_version, own_motor_vehicle, total) FROM stdin;
province	10	2009	No, don't own	117
province	10	2009	Yes, do own	35
province	19	2009	No, don't own	331
province	19	2009	Yes, do own	117
province	11	2009	No, don't own	264
province	11	2009	Yes, do own	40
province	12	2009	No, don't own	193
province	12	2009	Yes, do own	15
province	13	2009	No, don't own	237
province	13	2009	Yes, do own	11
province	14	2009	No, don't own	246
province	14	2009	Yes, do own	26
province	18	2009	No, don't own	236
province	18	2009	Yes, do own	12
province	15	2009	No, don't own	108
province	15	2009	Yes, do own	20
province	16	2009	No, don't own	100
province	16	2009	Yes, do own	4
province	17	2009	No, don't own	243
province	17	2009	Yes, do own	45
country	ZW	2009	Yes, do own	325
country	ZW	2009	No, don't own	2075
\.


--
-- Name: own_motor_vehicle pk_own_motor_vehicle; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_motor_vehicle
    ADD CONSTRAINT pk_own_motor_vehicle PRIMARY KEY (geo_level, geo_code, geo_version, own_motor_vehicle);


--
-- PostgreSQL database dump complete
--

