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
province	1	2010	Don't know	8
province	1	2010	Missing	3
province	1	2010	No, don't own	702
province	1	2010	Yes, do own	118
province	2	2010	No, don't own	27
province	2	2010	Yes, do own	5
province	3	2010	No, don't own	36
province	3	2010	Yes, do own	4
province	4	2010	Missing	1
province	4	2010	No, don't own	38
province	4	2010	Yes, do own	1
province	6	2010	Missing	1
province	6	2010	No, don't own	41
province	6	2010	Yes, do own	6
province	8	2010	No, don't own	20
province	8	2010	Yes, do own	4
province	7	2010	No, don't own	35
province	7	2010	Yes, do own	13
province	9	2010	Don't know	1
province	9	2010	No, don't own	65
province	9	2010	Yes, do own	14
province	10	2010	No, don't own	46
province	10	2010	Yes, do own	10
country	ZM	2010	Yes, do own	175
country	ZM	2010	No, don't own	1010
country	ZM	2010	Don't know	9
country	ZM	2010	Missing	5
\.


--
-- Name: own_motor_vehicle pk_own_motor_vehicle; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_motor_vehicle
    ADD CONSTRAINT pk_own_motor_vehicle PRIMARY KEY (geo_level, geo_code, geo_version, own_motor_vehicle);


--
-- PostgreSQL database dump complete
--

