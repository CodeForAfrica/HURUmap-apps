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
province	1	2010	Never	22
province	1	2010	No contact	92
province	1	2010	Once or Twice	5
province	2	2010	Never	47
province	2	2010	No contact	136
province	2	2010	Once or Twice	7
province	3	2010	Never	45
province	3	2010	No contact	86
province	3	2010	Often	1
province	3	2010	Once or Twice	3
province	4	2010	Don't know	1
province	4	2010	Never	13
province	4	2010	No contact	70
province	4	2010	Once or Twice	2
province	5	2010	A Few times	5
province	5	2010	Never	45
province	5	2010	No contact	157
province	5	2010	Often	4
province	5	2010	Once or Twice	12
province	6	2010	Never	7
province	6	2010	No contact	55
province	6	2010	Once or Twice	1
province	8	2010	Never	11
province	8	2010	No contact	53
province	7	2010	Never	3
province	7	2010	No contact	91
province	9	2010	A Few times	1
province	9	2010	Never	20
province	9	2010	No contact	112
province	9	2010	Often	1
province	9	2010	Once or Twice	2
province	10	2010	Don't know	1
province	10	2010	Never	26
province	10	2010	No contact	50
province	10	2010	Once or Twice	3
country	ZM	2010	Often	6
country	ZM	2010	Never	239
country	ZM	2010	A Few times	6
country	ZM	2010	Once or Twice	35
country	ZM	2010	No contact	902
country	ZM	2010	Don't know	2
\.


--
-- Name: pay_bribe_for_document_or_permit pk_pay_bribe_for_document_or_permit; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_document_or_permit
    ADD CONSTRAINT pk_pay_bribe_for_document_or_permit PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_document_or_permit);


--
-- PostgreSQL database dump complete
--

