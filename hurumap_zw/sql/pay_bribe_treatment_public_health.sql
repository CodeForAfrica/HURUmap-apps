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
province	10	2009	A Few times	1
province	10	2009	Never	70
province	10	2009	No contact	70
province	10	2009	Often	1
province	10	2009	Once or Twice	7
province	19	2009	Never	218
province	19	2009	No contact	212
province	19	2009	Often	1
province	19	2009	Once or Twice	16
province	11	2009	A Few times	1
province	11	2009	Never	145
province	11	2009	No contact	153
province	11	2009	Once or Twice	3
province	12	2009	Never	160
province	12	2009	No contact	40
province	12	2009	Once or Twice	6
province	13	2009	Never	139
province	13	2009	No contact	103
province	13	2009	Often	1
province	13	2009	Once or Twice	4
province	14	2009	A Few times	1
province	14	2009	Never	192
province	14	2009	No contact	70
province	14	2009	Often	1
province	14	2009	Once or Twice	5
province	18	2009	A Few times	6
province	18	2009	Never	143
province	18	2009	No contact	86
province	18	2009	Often	1
province	18	2009	Once or Twice	10
province	15	2009	Never	49
province	15	2009	No contact	75
province	16	2009	Never	65
province	16	2009	No contact	37
province	16	2009	Once or Twice	2
province	17	2009	Never	178
province	17	2009	No contact	105
province	17	2009	Often	1
province	17	2009	Once or Twice	4
country	ZW	2009	Once or Twice	57
country	ZW	2009	Never	1359
country	ZW	2009	No contact	951
country	ZW	2009	A Few times	9
country	ZW	2009	Often	6
\.


--
-- Name: pay_bribe_treatment_public_health pk_pay_bribe_treatment_public_health; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_treatment_public_health
    ADD CONSTRAINT pk_pay_bribe_treatment_public_health PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_treatment_public_health);


--
-- PostgreSQL database dump complete
--

