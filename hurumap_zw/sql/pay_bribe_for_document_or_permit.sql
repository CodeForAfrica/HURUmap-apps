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
province	10	2009	A Few times	5
province	10	2009	Never	47
province	10	2009	No contact	75
province	10	2009	Often	2
province	10	2009	Once or Twice	23
province	19	2009	A Few times	10
province	19	2009	Never	175
province	19	2009	No contact	220
province	19	2009	Often	6
province	19	2009	Once or Twice	33
province	11	2009	A Few times	11
province	11	2009	Never	82
province	11	2009	No contact	192
province	11	2009	Once or Twice	19
province	12	2009	A Few times	1
province	12	2009	Never	55
province	12	2009	No contact	118
province	12	2009	Often	1
province	12	2009	Once or Twice	33
province	13	2009	A Few times	2
province	13	2009	Never	65
province	13	2009	No contact	172
province	13	2009	Once or Twice	9
province	14	2009	Never	89
province	14	2009	No contact	160
province	14	2009	Once or Twice	22
province	18	2009	A Few times	8
province	18	2009	Never	80
province	18	2009	No contact	143
province	18	2009	Often	5
province	18	2009	Once or Twice	12
province	15	2009	Never	27
province	15	2009	No contact	94
province	15	2009	Often	1
province	15	2009	Once or Twice	4
province	16	2009	A Few times	1
province	16	2009	Never	52
province	16	2009	No contact	46
province	16	2009	Once or Twice	5
province	17	2009	A Few times	12
province	17	2009	Never	108
province	17	2009	No contact	131
province	17	2009	Often	4
province	17	2009	Once or Twice	33
country	ZW	2009	Once or Twice	193
country	ZW	2009	Never	780
country	ZW	2009	No contact	1351
country	ZW	2009	A Few times	50
country	ZW	2009	Often	19
\.


--
-- Name: pay_bribe_for_document_or_permit pk_pay_bribe_for_document_or_permit; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_document_or_permit
    ADD CONSTRAINT pk_pay_bribe_for_document_or_permit PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_document_or_permit);


--
-- PostgreSQL database dump complete
--

