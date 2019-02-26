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

ALTER TABLE IF EXISTS ONLY public.pay_bribe_treatment_public_health DROP CONSTRAINT IF EXISTS pk_pay_bribe_treatment_public_health;
DROP TABLE IF EXISTS public.pay_bribe_treatment_public_health;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_treatment_public_health; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_treatment_public_health (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_treatment_public_health character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_treatment_public_health; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_treatment_public_health (geo_level, geo_code, geo_version, pay_bribe_treatment_public_health, total) FROM stdin;
region	1	2009	A Few times	2
region	1	2009	Never	61
region	1	2009	No contact	42
region	1	2009	Often	3
region	1	2009	Once or Twice	11
region	2	2009	A Few times	13
region	2	2009	Never	118
region	2	2009	No contact	90
region	2	2009	Often	8
region	2	2009	Once or Twice	39
region	3	2009	A Few times	3
region	3	2009	Never	76
region	3	2009	No contact	5
region	3	2009	Often	4
region	3	2009	Once or Twice	8
region	4	2009	A Few times	2
region	4	2009	Never	36
region	4	2009	No contact	17
region	4	2009	Often	6
region	4	2009	Once or Twice	9
region	5	2009	A Few times	1
region	5	2009	Never	28
region	5	2009	No contact	15
region	5	2009	Once or Twice	4
region	6	2009	Never	41
region	6	2009	No contact	30
region	7	2009	A Few times	2
region	7	2009	Never	48
region	7	2009	No contact	2
region	7	2009	Often	1
region	7	2009	Once or Twice	3
region	8	2009	Never	37
region	8	2009	No contact	2
region	8	2009	Often	1
region	9	2009	Never	18
region	9	2009	No contact	6
region	10	2009	A Few times	1
region	10	2009	Never	46
region	10	2009	No contact	47
region	10	2009	Once or Twice	2
region	11	2009	A Few times	2
region	11	2009	Never	40
region	11	2009	No contact	39
region	11	2009	Often	2
region	11	2009	Once or Twice	4
region	12	2009	Never	6
region	12	2009	No contact	2
region	13	2009	Never	20
region	13	2009	No contact	3
region	13	2009	Once or Twice	1
region	14	2009	A Few times	1
region	14	2009	Never	36
region	14	2009	No contact	9
region	14	2009	Often	1
region	14	2009	Once or Twice	1
region	15	2009	A Few times	4
region	15	2009	Never	28
region	15	2009	No contact	23
region	15	2009	Often	3
region	15	2009	Once or Twice	6
region	16	2009	A Few times	4
region	16	2009	Never	41
region	16	2009	No contact	22
region	16	2009	Often	5
region	16	2009	Once or Twice	8
region	17	2009	Never	38
region	17	2009	No contact	25
region	17	2009	Often	1
region	30	2009	A Few times	6
region	30	2009	Never	92
region	30	2009	No contact	8
region	30	2009	Once or Twice	6
region	18	2009	A Few times	5
region	18	2009	Never	92
region	18	2009	No contact	14
region	18	2009	Often	3
region	18	2009	Once or Twice	6
region	19	2009	A Few times	3
region	19	2009	Never	31
region	19	2009	No contact	14
region	19	2009	Often	5
region	19	2009	Once or Twice	18
region	20	2009	A Few times	3
region	20	2009	Never	64
region	20	2009	No contact	43
region	20	2009	Often	4
region	20	2009	Once or Twice	7
region	21	2009	Never	23
region	21	2009	No contact	13
region	21	2009	Often	1
region	21	2009	Once or Twice	3
region	22	2009	A Few times	2
region	22	2009	Never	49
region	22	2009	No contact	15
region	22	2009	Often	1
region	22	2009	Once or Twice	4
region	23	2009	Never	24
region	23	2009	No contact	13
region	23	2009	Often	1
region	23	2009	Once or Twice	1
region	24	2009	A Few times	1
region	24	2009	Never	48
region	24	2009	No contact	19
region	24	2009	Often	1
region	24	2009	Once or Twice	3
region	25	2009	A Few times	2
region	25	2009	Never	31
region	25	2009	No contact	23
region	25	2009	Often	5
region	25	2009	Once or Twice	11
region	26	2009	Never	28
region	26	2009	No contact	27
region	26	2009	Often	2
region	26	2009	Once or Twice	6
region	27	2009	Never	39
region	27	2009	No contact	23
region	27	2009	Once or Twice	2
region	31	2009	A Few times	1
region	31	2009	Never	44
region	31	2009	No contact	21
region	31	2009	Often	4
region	31	2009	Once or Twice	2
region	29	2009	A Few times	8
region	29	2009	Never	58
region	29	2009	No contact	19
region	29	2009	Often	3
region	29	2009	Once or Twice	15
region	28	2009	A Few times	4
region	28	2009	Never	47
region	28	2009	No contact	24
region	28	2009	Often	1
region	28	2009	Once or Twice	11
country	TZ	2009	Once or Twice	191
country	TZ	2009	Never	1388
country	TZ	2009	No contact	655
country	TZ	2009	A Few times	70
country	TZ	2009	Often	66
\.


--
-- Name: pay_bribe_treatment_public_health pk_pay_bribe_treatment_public_health; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_treatment_public_health
    ADD CONSTRAINT pk_pay_bribe_treatment_public_health PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_treatment_public_health);


--
-- PostgreSQL database dump complete
--

