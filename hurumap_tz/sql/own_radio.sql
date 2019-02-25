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

ALTER TABLE IF EXISTS ONLY public.own_radio DROP CONSTRAINT IF EXISTS pk_own_radio;
DROP TABLE IF EXISTS public.own_radio;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_radio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_radio (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_radio character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_radio; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_radio (geo_level, geo_code, geo_version, own_radio, total) FROM stdin;
region	1	2009	No, don't own	29
region	1	2009	Yes, do own	90
region	2	2009	No, don't own	42
region	2	2009	Yes, do own	231
region	3	2009	No, don't own	33
region	3	2009	Yes, do own	63
region	4	2009	No, don't own	24
region	4	2009	Yes, do own	47
region	5	2009	No, don't own	12
region	5	2009	Yes, do own	36
region	6	2009	No, don't own	22
region	6	2009	Yes, do own	50
region	7	2009	No, don't own	12
region	7	2009	Yes, do own	44
region	8	2009	No, don't own	3
region	8	2009	Yes, do own	37
region	9	2009	No, don't own	1
region	9	2009	Yes, do own	23
region	10	2009	No, don't own	34
region	10	2009	Yes, do own	62
region	11	2009	No, don't own	11
region	11	2009	Yes, do own	77
region	12	2009	No, don't own	2
region	12	2009	Yes, do own	6
region	13	2009	No, don't own	7
region	13	2009	Yes, do own	17
region	14	2009	No, don't own	14
region	14	2009	Yes, do own	34
region	15	2009	No, don't own	17
region	15	2009	Yes, do own	47
region	16	2009	No, don't own	27
region	16	2009	Yes, do own	53
region	17	2009	No, don't own	4
region	17	2009	Yes, do own	60
region	30	2009	No, don't own	14
region	30	2009	Yes, do own	98
region	18	2009	No, don't own	41
region	18	2009	Yes, do own	79
region	19	2009	No, don't own	14
region	19	2009	Yes, do own	57
region	20	2009	No, don't own	31
region	20	2009	Yes, do own	93
region	21	2009	No, don't own	6
region	21	2009	Yes, do own	34
region	22	2009	Don't know	1
region	22	2009	No, don't own	10
region	22	2009	Yes, do own	61
region	23	2009	No, don't own	4
region	23	2009	Yes, do own	35
region	24	2009	No, don't own	14
region	24	2009	Yes, do own	58
region	25	2009	No, don't own	26
region	25	2009	Yes, do own	46
region	26	2009	No, don't own	24
region	26	2009	Yes, do own	40
region	27	2009	No, don't own	19
region	27	2009	Yes, do own	45
region	31	2009	No, don't own	11
region	31	2009	Yes, do own	61
region	29	2009	No, don't own	41
region	29	2009	Yes, do own	63
region	28	2009	No, don't own	13
region	28	2009	Yes, do own	75
country	TZ	2009	Yes, do own	1822
country	TZ	2009	No, don't own	562
country	TZ	2009	Don't know	1
\.


--
-- Name: own_radio pk_own_radio; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_radio
    ADD CONSTRAINT pk_own_radio PRIMARY KEY (geo_level, geo_code, geo_version, own_radio);


--
-- PostgreSQL database dump complete
--

