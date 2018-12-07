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
region	114	2014	A Few times	3
region	114	2014	Never	58
region	114	2014	No contact	587
region	114	2014	Often	2
region	114	2014	Once or Twice	14
region	115	2014	A Few times	11
region	115	2014	Don't know	3
region	115	2014	Never	122
region	115	2014	No contact	460
region	115	2014	Often	3
region	115	2014	Once or Twice	25
region	116	2014	A Few times	7
region	116	2014	Don't know	2
region	116	2014	Never	88
region	116	2014	No contact	393
region	116	2014	Often	4
region	116	2014	Once or Twice	10
region	117	2014	A Few times	7
region	117	2014	Never	167
region	117	2014	No contact	417
region	117	2014	Often	3
region	117	2014	Once or Twice	14
country	UG	2014	Often	12
country	UG	2014	Never	435
country	UG	2014	A Few times	28
country	UG	2014	Once or Twice	63
country	UG	2014	No contact	1857
country	UG	2014	Don't know	5
\.


--
-- Name: pay_bribe_for_household_services pk_pay_bribe_for_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_household_services
    ADD CONSTRAINT pk_pay_bribe_for_household_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_household_services);


--
-- PostgreSQL database dump complete
--

