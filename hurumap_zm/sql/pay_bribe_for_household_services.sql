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
province	1	2010	A Few times	6
province	1	2010	Don�t know	3
province	1	2010	Missing	3
province	1	2010	Never	148
province	1	2010	No contact	665
province	1	2010	Once or Twice	6
province	2	2010	Never	8
province	2	2010	No contact	23
province	2	2010	Once or Twice	1
province	3	2010	A Few times	1
province	3	2010	Missing	1
province	3	2010	Never	8
province	3	2010	No contact	30
province	4	2010	Missing	1
province	4	2010	Never	2
province	4	2010	No contact	37
province	6	2010	Never	2
province	6	2010	No contact	46
province	8	2010	Never	1
province	8	2010	No contact	23
province	7	2010	Never	1
province	7	2010	No contact	47
province	9	2010	Never	8
province	9	2010	No contact	70
province	9	2010	Often	1
province	9	2010	Once or Twice	1
province	10	2010	A Few times	1
province	10	2010	Missing	1
province	10	2010	Never	6
province	10	2010	No contact	48
country	ZM	2010	Often	1
country	ZM	2010	Missing	6
country	ZM	2010	Never	184
country	ZM	2010	A Few times	8
country	ZM	2010	Once or Twice	8
country	ZM	2010	No contact	989
country	ZM	2010	Don�t know	3
\.


--
-- Name: pay_bribe_for_household_services pk_pay_bribe_for_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_household_services
    ADD CONSTRAINT pk_pay_bribe_for_household_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_household_services);


--
-- PostgreSQL database dump complete
--

