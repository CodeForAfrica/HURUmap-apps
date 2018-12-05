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
province	1	2010	A Few times	7
province	1	2010	Don't know	1
province	1	2010	Never	291
province	1	2010	No contact	476
province	1	2010	Often	8
province	1	2010	Once or Twice	31
province	2	2010	Never	13
province	2	2010	No contact	16
province	2	2010	Often	1
province	2	2010	Once or Twice	2
province	3	2010	Never	15
province	3	2010	No contact	21
province	3	2010	Often	2
province	3	2010	Once or Twice	1
province	4	2010	Never	14
province	4	2010	No contact	25
province	6	2010	Never	17
province	6	2010	No contact	29
province	6	2010	Once or Twice	2
province	8	2010	Never	6
province	8	2010	No contact	18
province	7	2010	Never	9
province	7	2010	No contact	29
province	7	2010	Once or Twice	2
province	9	2010	Never	33
province	9	2010	No contact	44
province	9	2010	Once or Twice	2
province	10	2010	Never	30
province	10	2010	No contact	24
province	10	2010	Often	1
province	10	2010	Once or Twice	1
country	ZM	2010	Often	12
country	ZM	2010	Never	428
country	ZM	2010	A Few times	7
country	ZM	2010	Once or Twice	41
country	ZM	2010	No contact	682
country	ZM	2010	Don't know	1
\.


--
-- Name: pay_bribe_for_school_services pk_pay_bribe_for_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_school_services
    ADD CONSTRAINT pk_pay_bribe_for_school_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_school_services);


--
-- PostgreSQL database dump complete
--

