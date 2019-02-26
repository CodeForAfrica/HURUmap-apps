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
region	1	2009	A Few times	2
region	1	2009	Never	24
region	1	2009	No contact	91
region	1	2009	Once or Twice	2
region	2	2009	A Few times	8
region	2	2009	Never	85
region	2	2009	No contact	162
region	2	2009	Often	2
region	2	2009	Once or Twice	11
region	3	2009	Never	9
region	3	2009	No contact	86
region	3	2009	Once or Twice	1
region	4	2009	Never	8
region	4	2009	No contact	62
region	5	2009	Never	6
region	5	2009	No contact	41
region	6	2009	Never	3
region	6	2009	No contact	69
region	7	2009	Never	17
region	7	2009	No contact	39
region	8	2009	Never	7
region	8	2009	No contact	32
region	8	2009	Once or Twice	1
region	9	2009	Never	3
region	9	2009	No contact	21
region	10	2009	Never	6
region	10	2009	No contact	90
region	11	2009	Never	25
region	11	2009	No contact	61
region	11	2009	Often	1
region	11	2009	Once or Twice	1
region	12	2009	Never	1
region	12	2009	No contact	7
region	13	2009	Never	3
region	13	2009	No contact	21
region	14	2009	Never	18
region	14	2009	No contact	30
region	15	2009	A Few times	2
region	15	2009	Never	14
region	15	2009	No contact	43
region	15	2009	Once or Twice	5
region	16	2009	Never	5
region	16	2009	No contact	75
region	17	2009	Don't know	1
region	17	2009	Never	13
region	17	2009	No contact	50
region	30	2009	Never	35
region	30	2009	No contact	74
region	30	2009	Once or Twice	3
region	18	2009	Never	17
region	18	2009	No contact	101
region	18	2009	Once or Twice	2
region	19	2009	A Few times	1
region	19	2009	Never	18
region	19	2009	No contact	51
region	19	2009	Once or Twice	1
region	20	2009	Never	13
region	20	2009	No contact	106
region	20	2009	Once or Twice	4
region	21	2009	Never	7
region	21	2009	No contact	33
region	22	2009	A Few times	1
region	22	2009	Never	3
region	22	2009	No contact	65
region	22	2009	Once or Twice	3
region	23	2009	Never	6
region	23	2009	No contact	33
region	24	2009	Never	11
region	24	2009	No contact	61
region	25	2009	A Few times	1
region	25	2009	Never	3
region	25	2009	No contact	67
region	25	2009	Often	1
region	26	2009	Never	3
region	26	2009	No contact	61
region	27	2009	Never	2
region	27	2009	No contact	61
region	27	2009	Once or Twice	1
region	31	2009	Never	2
region	31	2009	No contact	69
region	31	2009	Once or Twice	1
region	29	2009	Never	15
region	29	2009	No contact	89
region	28	2009	A Few times	3
region	28	2009	Never	21
region	28	2009	No contact	54
region	28	2009	Once or Twice	10
country	TZ	2009	Often	4
country	TZ	2009	Never	403
country	TZ	2009	A Few times	18
country	TZ	2009	Once or Twice	46
country	TZ	2009	No contact	1905
country	TZ	2009	Don't know	1
\.


--
-- Name: pay_bribe_for_document_or_permit pk_pay_bribe_for_document_or_permit; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_document_or_permit
    ADD CONSTRAINT pk_pay_bribe_for_document_or_permit PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_document_or_permit);


--
-- PostgreSQL database dump complete
--

