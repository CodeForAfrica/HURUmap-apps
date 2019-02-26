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

ALTER TABLE IF EXISTS ONLY public.pay_bribe_for_household_services DROP CONSTRAINT IF EXISTS pk_pay_bribe_for_household_services;
DROP TABLE IF EXISTS public.pay_bribe_for_household_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_for_household_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_for_household_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_for_household_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_for_household_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_for_household_services (geo_level, geo_code, geo_version, pay_bribe_for_household_services, total) FROM stdin;
province	10	2009	Never	20
province	10	2009	No contact	132
province	19	2009	A Few times	7
province	19	2009	Never	95
province	19	2009	No contact	330
province	19	2009	Often	1
province	19	2009	Once or Twice	11
province	11	2009	A Few times	1
province	11	2009	Never	21
province	11	2009	No contact	281
province	11	2009	Once or Twice	1
province	12	2009	A Few times	1
province	12	2009	Never	2
province	12	2009	No contact	202
province	12	2009	Once or Twice	2
province	13	2009	Never	7
province	13	2009	No contact	240
province	13	2009	Once or Twice	1
province	14	2009	Never	34
province	14	2009	No contact	235
province	14	2009	Once or Twice	3
province	18	2009	Never	23
province	18	2009	No contact	224
province	18	2009	Once or Twice	1
province	15	2009	Never	7
province	15	2009	No contact	121
province	16	2009	Never	3
province	16	2009	No contact	101
province	17	2009	Never	50
province	17	2009	No contact	238
country	ZW	2009	Once or Twice	19
country	ZW	2009	Never	262
country	ZW	2009	No contact	2104
country	ZW	2009	A Few times	9
country	ZW	2009	Often	1
\.


--
-- Name: pay_bribe_for_household_services pk_pay_bribe_for_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_household_services
    ADD CONSTRAINT pk_pay_bribe_for_household_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_household_services);


--
-- PostgreSQL database dump complete
--

