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

ALTER TABLE IF EXISTS ONLY public.prepaid_metres DROP CONSTRAINT IF EXISTS prepaid_metres_pkey;
DROP TABLE IF EXISTS public.prepaid_metres;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: prepaid_metres; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.prepaid_metres (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    city character varying(10) NOT NULL,
    total integer
);


--
-- Data for Name: prepaid_metres; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.prepaid_metres (geo_level, geo_code, geo_version, city, total) FROM stdin;
state	2	2016	Yola	37702
state	12	2016	Benin	287995
state	14	2016	Enugu	141465
state	15	2016	Abuja	295641
state	19	2016	Kaduna	139547
state	20	2016	Kano	65711
state	25	2016	Eko	161382
state	25	2016	Ikeja	160813
country	NG	2016	Nigeria	1669675
state	31	2016	Ibadan	256804
state	32	2016	Jos	55444
state	33	2016	PH	67172
\.


--
-- Name: prepaid_metres prepaid_metres_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prepaid_metres
    ADD CONSTRAINT prepaid_metres_pkey PRIMARY KEY (geo_level, geo_code, geo_version, city);


--
-- PostgreSQL database dump complete
--
