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

ALTER TABLE IF EXISTS ONLY public.own_television DROP CONSTRAINT IF EXISTS pk_own_television;
DROP TABLE IF EXISTS public.own_television;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_television; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_television (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_television character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_television; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_television (geo_level, geo_code, geo_version, own_television, total) FROM stdin;
region	1	2009	No, don't own	91
region	1	2009	Yes, do own	29
region	2	2009	No, don't own	79
region	2	2009	Yes, do own	194
region	3	2009	No, don't own	91
region	3	2009	Yes, do own	5
region	4	2009	No, don't own	59
region	4	2009	Yes, do own	12
region	5	2009	No, don't own	41
region	5	2009	Yes, do own	7
region	6	2009	No, don't own	56
region	6	2009	Yes, do own	16
region	7	2009	No, don't own	38
region	7	2009	Yes, do own	18
region	8	2009	No, don't own	23
region	8	2009	Yes, do own	17
region	9	2009	No, don't own	16
region	9	2009	Yes, do own	8
region	10	2009	No, don't own	90
region	10	2009	Yes, do own	6
region	11	2009	No, don't own	54
region	11	2009	Yes, do own	34
region	12	2009	No, don't own	6
region	12	2009	Yes, do own	2
region	13	2009	No, don't own	18
region	13	2009	Yes, do own	6
region	14	2009	No, don't own	48
region	15	2009	No, don't own	53
region	15	2009	Yes, do own	11
region	16	2009	No, don't own	64
region	16	2009	Yes, do own	16
region	17	2009	No, don't own	38
region	17	2009	Yes, do own	26
region	30	2009	No, don't own	33
region	30	2009	Yes, do own	79
region	18	2009	No, don't own	104
region	18	2009	Yes, do own	16
region	19	2009	No, don't own	61
region	19	2009	Yes, do own	10
region	20	2009	No, don't own	103
region	20	2009	Yes, do own	21
region	21	2009	No, don't own	30
region	21	2009	Yes, do own	10
region	22	2009	No, don't own	61
region	22	2009	Yes, do own	11
region	23	2009	No, don't own	34
region	23	2009	Yes, do own	5
region	24	2009	No, don't own	68
region	24	2009	Yes, do own	4
region	25	2009	No, don't own	60
region	25	2009	Yes, do own	12
region	26	2009	No, don't own	61
region	26	2009	Yes, do own	3
region	27	2009	No, don't own	55
region	27	2009	Yes, do own	9
region	31	2009	Don't know	1
region	31	2009	No, don't own	59
region	31	2009	Yes, do own	12
region	29	2009	No, don't own	93
region	29	2009	Yes, do own	11
region	28	2009	No, don't own	59
region	28	2009	Yes, do own	29
country	TZ	2009	Yes, do own	639
country	TZ	2009	No, don't own	1746
country	TZ	2009	Don't know	1
\.


--
-- Name: own_television pk_own_television; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_television
    ADD CONSTRAINT pk_own_television PRIMARY KEY (geo_level, geo_code, geo_version, own_television);


--
-- PostgreSQL database dump complete
--

