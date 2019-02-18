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
province	10	2009	A Few times	1
province	10	2009	Never	51
province	10	2009	No contact	93
province	10	2009	Often	1
province	10	2009	Once or Twice	6
province	19	2009	A Few times	2
province	19	2009	Never	146
province	19	2009	No contact	282
province	19	2009	Often	1
province	19	2009	Once or Twice	12
province	11	2009	A Few times	2
province	11	2009	Never	117
province	11	2009	No contact	180
province	11	2009	Once or Twice	4
province	12	2009	A Few times	2
province	12	2009	Never	95
province	12	2009	No contact	107
province	12	2009	Once or Twice	1
province	13	2009	A Few times	1
province	13	2009	Never	96
province	13	2009	No contact	148
province	13	2009	Once or Twice	3
province	14	2009	Don't know	1
province	14	2009	Never	131
province	14	2009	No contact	129
province	14	2009	Once or Twice	6
province	18	2009	Never	86
province	18	2009	No contact	149
province	18	2009	Often	1
province	18	2009	Once or Twice	11
province	15	2009	Never	38
province	15	2009	No contact	84
province	16	2009	Never	48
province	16	2009	No contact	55
province	17	2009	A Few times	4
province	17	2009	Never	120
province	17	2009	No contact	154
province	17	2009	Often	1
province	17	2009	Once or Twice	9
country	ZW	2009	Often	4
country	ZW	2009	Never	928
country	ZW	2009	A Few times	12
country	ZW	2009	Once or Twice	52
country	ZW	2009	No contact	1381
country	ZW	2009	Don't know	1
\.


--
-- Name: pay_bribe_for_school_services pk_pay_bribe_for_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_school_services
    ADD CONSTRAINT pk_pay_bribe_for_school_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_school_services);


--
-- PostgreSQL database dump complete
--

