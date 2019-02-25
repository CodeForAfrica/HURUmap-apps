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
region	1	2009	No, don't own	103
region	1	2009	Yes, do own	17
region	2	2009	No, don't own	208
region	2	2009	Yes, do own	65
region	3	2009	No, don't own	91
region	3	2009	Yes, do own	5
region	4	2009	No, don't own	63
region	4	2009	Yes, do own	8
region	5	2009	No, don't own	46
region	5	2009	Yes, do own	2
region	6	2009	No, don't own	68
region	6	2009	Yes, do own	4
region	7	2009	No, don't own	49
region	7	2009	Yes, do own	7
region	8	2009	No, don't own	37
region	8	2009	Yes, do own	3
region	9	2009	No, don't own	21
region	9	2009	Yes, do own	3
region	10	2009	No, don't own	92
region	10	2009	Yes, do own	4
region	11	2009	No, don't own	69
region	11	2009	Yes, do own	19
region	12	2009	No, don't own	8
region	13	2009	No, don't own	21
region	13	2009	Yes, do own	3
region	14	2009	No, don't own	46
region	14	2009	Yes, do own	2
region	15	2009	No, don't own	54
region	15	2009	Yes, do own	10
region	16	2009	No, don't own	75
region	16	2009	Yes, do own	5
region	17	2009	No, don't own	46
region	17	2009	Yes, do own	18
region	30	2009	No, don't own	89
region	30	2009	Yes, do own	23
region	18	2009	No, don't own	111
region	18	2009	Yes, do own	9
region	19	2009	No, don't own	66
region	19	2009	Yes, do own	5
region	20	2009	No, don't own	113
region	20	2009	Yes, do own	11
region	21	2009	No, don't own	32
region	21	2009	Yes, do own	8
region	22	2009	No, don't own	69
region	22	2009	Yes, do own	3
region	23	2009	No, don't own	35
region	23	2009	Yes, do own	4
region	24	2009	No, don't own	66
region	24	2009	Yes, do own	6
region	25	2009	No, don't own	67
region	25	2009	Yes, do own	5
region	26	2009	No, don't own	60
region	26	2009	Yes, do own	4
region	27	2009	No, don't own	58
region	27	2009	Yes, do own	6
region	31	2009	No, don't own	65
region	31	2009	Yes, do own	7
region	29	2009	No, don't own	102
region	29	2009	Yes, do own	2
region	28	2009	No, don't own	78
region	28	2009	Yes, do own	10
country	TZ	2009	Yes, do own	278
country	TZ	2009	No, don't own	2108
\.


--
-- Name: own_motor_vehicle pk_own_motor_vehicle; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_motor_vehicle
    ADD CONSTRAINT pk_own_motor_vehicle PRIMARY KEY (geo_level, geo_code, geo_version, own_motor_vehicle);


--
-- PostgreSQL database dump complete
--

