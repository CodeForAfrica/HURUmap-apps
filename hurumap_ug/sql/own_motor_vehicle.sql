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
region	114	2014	Don't know	1
region	114	2014	No, don't own	555
region	114	2014	Yes, do own	108
region	115	2014	No, don't own	558
region	115	2014	Yes, do own	66
region	116	2014	No, don't own	417
region	116	2014	Yes, do own	87
region	117	2014	No, don't own	534
region	117	2014	Yes, do own	74
country	UG	2014	Yes, do own	335
country	UG	2014	No, don't own	2064
country	UG	2014	Don't know	1
\.


--
-- Name: own_motor_vehicle pk_own_motor_vehicle; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_motor_vehicle
    ADD CONSTRAINT pk_own_motor_vehicle PRIMARY KEY (geo_level, geo_code, geo_version, own_motor_vehicle);


--
-- PostgreSQL database dump complete
--

