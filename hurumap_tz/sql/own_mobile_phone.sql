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

ALTER TABLE IF EXISTS ONLY public.own_mobile_phone DROP CONSTRAINT IF EXISTS pk_own_mobile_phone;
DROP TABLE IF EXISTS public.own_mobile_phone;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_mobile_phone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_mobile_phone (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_mobile_phone character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_mobile_phone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_mobile_phone (geo_level, geo_code, geo_version, own_mobile_phone, total) FROM stdin;
region	1	2009	No, don't own	46
region	1	2009	Yes, do own	74
region	2	2009	No, don't own	27
region	2	2009	Yes, do own	246
region	3	2009	No, don't own	34
region	3	2009	Yes, do own	62
region	4	2009	No, don't own	20
region	4	2009	Yes, do own	51
region	5	2009	No, don't own	15
region	5	2009	Yes, do own	33
region	6	2009	No, don't own	23
region	6	2009	Yes, do own	49
region	7	2009	No, don't own	6
region	7	2009	Yes, do own	50
region	8	2009	No, don't own	5
region	8	2009	Yes, do own	35
region	9	2009	No, don't own	2
region	9	2009	Yes, do own	22
region	10	2009	No, don't own	37
region	10	2009	Yes, do own	59
region	11	2009	No, don't own	29
region	11	2009	Yes, do own	59
region	12	2009	No, don't own	2
region	12	2009	Yes, do own	6
region	13	2009	No, don't own	4
region	13	2009	Yes, do own	20
region	14	2009	No, don't own	30
region	14	2009	Yes, do own	18
region	15	2009	No, don't own	31
region	15	2009	Yes, do own	33
region	16	2009	No, don't own	20
region	16	2009	Yes, do own	60
region	17	2009	No, don't own	2
region	17	2009	Yes, do own	62
region	30	2009	No, don't own	5
region	30	2009	Yes, do own	107
region	18	2009	No, don't own	36
region	18	2009	Yes, do own	84
region	19	2009	No, don't own	30
region	19	2009	Yes, do own	41
region	20	2009	No, don't own	32
region	20	2009	Yes, do own	92
region	21	2009	No, don't own	7
region	21	2009	Yes, do own	33
region	22	2009	No, don't own	12
region	22	2009	Yes, do own	60
region	23	2009	No, don't own	4
region	23	2009	Yes, do own	35
region	24	2009	No, don't own	11
region	24	2009	Yes, do own	61
region	25	2009	No, don't own	23
region	25	2009	Yes, do own	49
region	26	2009	No, don't own	21
region	26	2009	Yes, do own	43
region	27	2009	No, don't own	17
region	27	2009	Yes, do own	47
region	31	2009	No, don't own	8
region	31	2009	Yes, do own	64
region	29	2009	No, don't own	47
region	29	2009	Yes, do own	57
region	28	2009	No, don't own	37
region	28	2009	Yes, do own	51
country	TZ	2009	Yes, do own	1763
country	TZ	2009	No, don't own	623
\.


--
-- Name: own_mobile_phone pk_own_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_mobile_phone
    ADD CONSTRAINT pk_own_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, own_mobile_phone);


--
-- PostgreSQL database dump complete
--

