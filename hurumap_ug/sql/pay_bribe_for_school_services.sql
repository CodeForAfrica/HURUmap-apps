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

ALTER TABLE IF EXISTS ONLY public.pay_bribe_for_school_services DROP CONSTRAINT IF EXISTS pk_pay_bribe_for_school_services;
DROP TABLE IF EXISTS public.pay_bribe_for_school_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_for_school_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_for_school_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_for_school_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_for_school_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_for_school_services (geo_level, geo_code, geo_version, pay_bribe_for_school_services, total) FROM stdin;
region	114	2014	A Few times	9
region	114	2014	Don't know	1
region	114	2014	Never	232
region	114	2014	No contact	374
region	114	2014	Often	9
region	114	2014	Once or Twice	39
region	115	2014	A Few times	43
region	115	2014	Don't know	3
region	115	2014	Never	212
region	115	2014	No contact	299
region	115	2014	Often	18
region	115	2014	Once or Twice	49
region	116	2014	A Few times	16
region	116	2014	Never	257
region	116	2014	No contact	212
region	116	2014	Often	6
region	116	2014	Once or Twice	13
region	117	2014	A Few times	11
region	117	2014	Don't know	1
region	117	2014	Never	298
region	117	2014	No contact	269
region	117	2014	Often	2
region	117	2014	Once or Twice	27
country	UG	2014	Often	35
country	UG	2014	Never	999
country	UG	2014	A Few times	79
country	UG	2014	Once or Twice	128
country	UG	2014	No contact	1154
country	UG	2014	Don't know	5
\.


--
-- Name: pay_bribe_for_school_services pk_pay_bribe_for_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_school_services
    ADD CONSTRAINT pk_pay_bribe_for_school_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_school_services);


--
-- PostgreSQL database dump complete
--

