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
region	1	2009	A Few times	2
region	1	2009	Never	24
region	1	2009	No contact	91
region	1	2009	Once or Twice	3
region	2	2009	A Few times	6
region	2	2009	Never	44
region	2	2009	No contact	200
region	2	2009	Often	5
region	2	2009	Once or Twice	10
region	3	2009	Never	10
region	3	2009	No contact	84
region	3	2009	Often	1
region	3	2009	Once or Twice	1
region	4	2009	Never	5
region	4	2009	No contact	66
region	5	2009	Never	6
region	5	2009	No contact	42
region	6	2009	Never	3
region	6	2009	No contact	68
region	7	2009	Never	13
region	7	2009	No contact	43
region	8	2009	Never	8
region	8	2009	No contact	32
region	9	2009	Never	2
region	9	2009	No contact	22
region	10	2009	No contact	96
region	11	2009	A Few times	1
region	11	2009	Never	25
region	11	2009	No contact	62
region	12	2009	Never	1
region	12	2009	No contact	7
region	13	2009	Never	4
region	13	2009	No contact	20
region	14	2009	A Few times	1
region	14	2009	Never	7
region	14	2009	No contact	40
region	15	2009	A Few times	4
region	15	2009	Never	13
region	15	2009	No contact	45
region	15	2009	Often	1
region	15	2009	Once or Twice	1
region	16	2009	Never	5
region	16	2009	No contact	75
region	17	2009	A Few times	1
region	17	2009	Never	4
region	17	2009	No contact	59
region	30	2009	Never	37
region	30	2009	No contact	73
region	30	2009	Once or Twice	2
region	18	2009	Never	11
region	18	2009	No contact	107
region	18	2009	Often	1
region	18	2009	Once or Twice	1
region	19	2009	Never	11
region	19	2009	No contact	50
region	19	2009	Once or Twice	10
region	20	2009	Never	11
region	20	2009	No contact	113
region	21	2009	Never	2
region	21	2009	No contact	38
region	22	2009	Never	4
region	22	2009	No contact	64
region	22	2009	Once or Twice	4
region	23	2009	Never	3
region	23	2009	No contact	36
region	24	2009	A Few times	1
region	24	2009	Never	4
region	24	2009	No contact	67
region	25	2009	Never	1
region	25	2009	No contact	70
region	25	2009	Often	1
region	26	2009	Never	1
region	26	2009	No contact	63
region	27	2009	No contact	63
region	27	2009	Once or Twice	1
region	31	2009	Never	2
region	31	2009	No contact	69
region	31	2009	Once or Twice	1
region	29	2009	A Few times	1
region	29	2009	Never	4
region	29	2009	No contact	99
region	28	2009	A Few times	2
region	28	2009	Never	22
region	28	2009	No contact	54
region	28	2009	Often	3
region	28	2009	Once or Twice	7
country	TZ	2009	Once or Twice	41
country	TZ	2009	Never	287
country	TZ	2009	No contact	2018
country	TZ	2009	A Few times	19
country	TZ	2009	Often	12
\.


--
-- Name: pay_bribe_for_household_services pk_pay_bribe_for_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_household_services
    ADD CONSTRAINT pk_pay_bribe_for_household_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_household_services);


--
-- PostgreSQL database dump complete
--

