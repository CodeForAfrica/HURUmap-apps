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
province	1	2010	No, don't own	103
province	1	2010	Yes, do own	15
province	2	2010	No, don't own	169
province	2	2010	Yes, do own	23
province	3	2010	Don't know	1
province	3	2010	No, don't own	117
province	3	2010	Yes, do own	18
province	4	2010	No, don't own	81
province	4	2010	Yes, do own	5
province	5	2010	Don't know	7
province	5	2010	No, don't own	178
province	5	2010	Yes, do own	38
province	6	2010	No, don't own	54
province	6	2010	Yes, do own	9
province	8	2010	No, don't own	57
province	8	2010	Yes, do own	7
province	7	2010	No, don't own	71
province	7	2010	Yes, do own	25
province	9	2010	Don't know	1
province	9	2010	No, don't own	114
province	9	2010	Yes, do own	21
province	10	2010	No, don't own	66
province	10	2010	Yes, do own	14
country	ZM	2010	Yes, do own	175
country	ZM	2010	No, don't own	1010
country	ZM	2010	Don't know	9
\.


--
-- Name: own_motor_vehicle pk_own_motor_vehicle; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_motor_vehicle
    ADD CONSTRAINT pk_own_motor_vehicle PRIMARY KEY (geo_level, geo_code, geo_version, own_motor_vehicle);


--
-- PostgreSQL database dump complete
--

