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

ALTER TABLE IF EXISTS ONLY public.pay_bribe_for_treatment_at_public_clinic_or_hospital DROP CONSTRAINT IF EXISTS pk_pay_bribe_for_treatment_at_public_clinic_or_hospital;
DROP TABLE IF EXISTS public.pay_bribe_for_treatment_at_public_clinic_or_hospital;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_for_treatment_at_public_clinic_or_hospital; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_for_treatment_at_public_clinic_or_hospital (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_for_treatment_at_public_clinic_or_hospital character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_for_treatment_at_public_clinic_or_hospital; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_for_treatment_at_public_clinic_or_hospital (geo_level, geo_code, geo_version, pay_bribe_for_treatment_at_public_clinic_or_hospital, total) FROM stdin;
province	1	2010	A Few times	14
province	1	2010	Never	530
province	1	2010	No contact	246
province	1	2010	Often	2
province	1	2010	Once or Twice	17
province	2	2010	A Few times	1
province	2	2010	Never	27
province	2	2010	No contact	3
province	2	2010	Once or Twice	1
province	3	2010	Never	26
province	3	2010	No contact	13
province	4	2010	Never	25
province	4	2010	No contact	14
province	6	2010	Never	30
province	6	2010	No contact	13
province	6	2010	Once or Twice	2
province	8	2010	Never	16
province	8	2010	No contact	8
province	7	2010	Never	20
province	7	2010	No contact	17
province	9	2010	A Few times	1
province	9	2010	Never	62
province	9	2010	No contact	15
province	9	2010	Often	1
province	9	2010	Once or Twice	1
province	10	2010	A Few times	1
province	10	2010	Never	40
province	10	2010	No contact	14
province	10	2010	Once or Twice	1
country	ZM	2010	Often	3
country	ZM	2010	Never	776
country	ZM	2010	A Few times	17
country	ZM	2010	Once or Twice	22
country	ZM	2010	No contact	343
\.


--
-- Name: pay_bribe_for_treatment_at_public_clinic_or_hospital pk_pay_bribe_for_treatment_at_public_clinic_or_hospital; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_treatment_at_public_clinic_or_hospital
    ADD CONSTRAINT pk_pay_bribe_for_treatment_at_public_clinic_or_hospital PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_treatment_at_public_clinic_or_hospital);


--
-- PostgreSQL database dump complete
--

