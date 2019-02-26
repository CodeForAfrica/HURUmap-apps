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
region	1	2009	A Few times	2
region	1	2009	Never	50
region	1	2009	No contact	65
region	1	2009	Once or Twice	3
region	2	2009	A Few times	7
region	2	2009	Never	85
region	2	2009	No contact	143
region	2	2009	Often	5
region	2	2009	Once or Twice	25
region	3	2009	Never	56
region	3	2009	No contact	38
region	3	2009	Once or Twice	2
region	4	2009	A Few times	1
region	4	2009	Never	30
region	4	2009	No contact	39
region	4	2009	Once or Twice	1
region	5	2009	Never	20
region	5	2009	No contact	28
region	6	2009	Never	19
region	6	2009	No contact	52
region	7	2009	Never	33
region	7	2009	No contact	22
region	8	2009	Never	26
region	8	2009	No contact	14
region	9	2009	A Few times	1
region	9	2009	Never	11
region	9	2009	No contact	12
region	10	2009	Never	24
region	10	2009	No contact	70
region	11	2009	A Few times	1
region	11	2009	Never	37
region	11	2009	No contact	44
region	11	2009	Once or Twice	4
region	12	2009	Never	5
region	12	2009	No contact	3
region	13	2009	Never	14
region	13	2009	No contact	10
region	14	2009	Never	27
region	14	2009	No contact	21
region	15	2009	A Few times	5
region	15	2009	Never	26
region	15	2009	No contact	31
region	15	2009	Often	2
region	16	2009	A Few times	1
region	16	2009	Never	29
region	16	2009	No contact	45
region	16	2009	Often	1
region	16	2009	Once or Twice	4
region	17	2009	Never	27
region	17	2009	No contact	37
region	30	2009	Never	69
region	30	2009	No contact	37
region	30	2009	Once or Twice	6
region	18	2009	A Few times	1
region	18	2009	Never	73
region	18	2009	No contact	41
region	18	2009	Once or Twice	4
region	19	2009	A Few times	2
region	19	2009	Never	33
region	19	2009	No contact	23
region	19	2009	Once or Twice	12
region	20	2009	Never	52
region	20	2009	No contact	66
region	20	2009	Often	1
region	20	2009	Once or Twice	4
region	21	2009	Never	17
region	21	2009	No contact	22
region	21	2009	Once or Twice	1
region	22	2009	Never	36
region	22	2009	No contact	31
region	22	2009	Once or Twice	4
region	23	2009	A Few times	1
region	23	2009	Never	19
region	23	2009	No contact	19
region	24	2009	Never	40
region	24	2009	No contact	31
region	25	2009	Never	17
region	25	2009	No contact	51
region	25	2009	Often	1
region	25	2009	Once or Twice	3
region	26	2009	Never	12
region	26	2009	No contact	50
region	26	2009	Once or Twice	1
region	27	2009	Never	22
region	27	2009	No contact	40
region	27	2009	Often	1
region	27	2009	Once or Twice	1
region	31	2009	Never	40
region	31	2009	No contact	30
region	31	2009	Once or Twice	2
region	29	2009	A Few times	1
region	29	2009	Never	50
region	29	2009	No contact	48
region	29	2009	Often	1
region	29	2009	Once or Twice	3
region	28	2009	A Few times	7
region	28	2009	Never	38
region	28	2009	No contact	37
region	28	2009	Often	3
region	28	2009	Once or Twice	3
country	TZ	2009	Once or Twice	83
country	TZ	2009	Never	1037
country	TZ	2009	No contact	1200
country	TZ	2009	A Few times	30
country	TZ	2009	Often	15
\.


--
-- Name: pay_bribe_for_school_services pk_pay_bribe_for_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_school_services
    ADD CONSTRAINT pk_pay_bribe_for_school_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_school_services);


--
-- PostgreSQL database dump complete
--

