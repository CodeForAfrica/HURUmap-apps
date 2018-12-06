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

ALTER TABLE IF EXISTS ONLY public.pay_bribe_for_document_or_permit DROP CONSTRAINT IF EXISTS pk_pay_bribe_for_document_or_permit;
DROP TABLE IF EXISTS public.pay_bribe_for_document_or_permit;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_for_document_or_permit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_for_document_or_permit (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_for_document_or_permit character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_for_document_or_permit; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_for_document_or_permit (geo_level, geo_code, geo_version, pay_bribe_for_document_or_permit, total) FROM stdin;
region	114	2014	A Few times	6
region	114	2014	Never	364
region	114	2014	No contact	238
region	114	2014	Often	4
region	114	2014	Once or Twice	52
region	115	2014	A Few times	10
region	115	2014	Don't know	2
region	115	2014	Never	213
region	115	2014	No contact	354
region	115	2014	Often	3
region	115	2014	Once or Twice	42
region	116	2014	A Few times	8
region	116	2014	Don't know	1
region	116	2014	Never	264
region	116	2014	No contact	218
region	116	2014	Often	2
region	116	2014	Once or Twice	11
region	117	2014	A Few times	11
region	117	2014	Never	410
region	117	2014	No contact	137
region	117	2014	Often	3
region	117	2014	Once or Twice	47
country	UG	2014	Often	12
country	UG	2014	Never	1251
country	UG	2014	A Few times	35
country	UG	2014	Once or Twice	152
country	UG	2014	No contact	947
country	UG	2014	Don't know	3
\.


--
-- Name: pay_bribe_for_document_or_permit pk_pay_bribe_for_document_or_permit; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_document_or_permit
    ADD CONSTRAINT pk_pay_bribe_for_document_or_permit PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_document_or_permit);


--
-- PostgreSQL database dump complete
--

