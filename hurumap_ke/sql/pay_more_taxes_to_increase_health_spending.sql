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

ALTER TABLE IF EXISTS ONLY public.pay_more_taxes_to_increase_health_spending DROP CONSTRAINT IF EXISTS pk_pay_more_taxes_to_increase_health_spending;
DROP TABLE IF EXISTS public.pay_more_taxes_to_increase_health_spending;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_more_taxes_to_increase_health_spending; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_more_taxes_to_increase_health_spending (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_more_taxes_to_increase_health_spending character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_more_taxes_to_increase_health_spending; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_more_taxes_to_increase_health_spending (geo_level, geo_code, geo_version, pay_more_taxes_to_increase_health_spending, total) FROM stdin;
county	39	2009	Don't know	1
county	7	2009	Don't know	3
county	11	2009	Don't know	1
county	34	2009	Don't know	2
county	3	2009	Don't know	1
county	15	2009	Don't know	3
county	31	2009	Don't know	1
county	16	2009	Don't know	3
county	17	2009	Don't know	2
county	9	2009	Don't know	2
county	10	2009	Don't know	1
county	12	2009	Don't know	2
county	47	2009	Don't know	1
county	32	2009	Don't know	1
county	4	2009	Don't know	2
county	23	2009	Don't know	1
county	38	2009	Don't know	2
county	8	2009	Don't know	5
county	30	2009	It depends	5
county	39	2009	It depends	1
county	40	2009	It depends	1
county	28	2009	It depends	3
county	14	2009	It depends	1
county	7	2009	It depends	3
county	11	2009	It depends	1
county	34	2009	It depends	6
county	42	2009	It depends	1
county	15	2009	It depends	1
county	31	2009	It depends	2
county	16	2009	It depends	3
county	9	2009	It depends	3
county	12	2009	It depends	2
county	47	2009	It depends	10
county	32	2009	It depends	1
county	29	2009	It depends	5
county	19	2009	It depends	1
county	25	2009	It depends	2
county	6	2009	It depends	1
county	26	2009	It depends	1
county	23	2009	It depends	11
county	27	2009	It depends	8
county	38	2009	It depends	1
county	24	2009	It depends	3
county	30	2009	Neither support nor oppose	3
county	36	2009	Neither support nor oppose	1
county	39	2009	Neither support nor oppose	6
county	40	2009	Neither support nor oppose	4
county	28	2009	Neither support nor oppose	2
county	14	2009	Neither support nor oppose	4
county	7	2009	Neither support nor oppose	1
county	43	2009	Neither support nor oppose	2
county	11	2009	Neither support nor oppose	1
county	34	2009	Neither support nor oppose	7
county	37	2009	Neither support nor oppose	12
county	35	2009	Neither support nor oppose	2
county	22	2009	Neither support nor oppose	12
county	3	2009	Neither support nor oppose	1
county	20	2009	Neither support nor oppose	2
county	45	2009	Neither support nor oppose	3
county	42	2009	Neither support nor oppose	8
county	15	2009	Neither support nor oppose	8
county	2	2009	Neither support nor oppose	1
county	16	2009	Neither support nor oppose	9
county	17	2009	Neither support nor oppose	1
county	9	2009	Neither support nor oppose	4
county	10	2009	Neither support nor oppose	5
county	12	2009	Neither support nor oppose	16
county	44	2009	Neither support nor oppose	4
county	1	2009	Neither support nor oppose	3
county	21	2009	Neither support nor oppose	8
county	47	2009	Neither support nor oppose	13
county	32	2009	Neither support nor oppose	4
county	29	2009	Neither support nor oppose	4
county	33	2009	Neither support nor oppose	2
county	46	2009	Neither support nor oppose	2
county	18	2009	Neither support nor oppose	4
county	25	2009	Neither support nor oppose	1
county	41	2009	Neither support nor oppose	15
county	13	2009	Neither support nor oppose	6
county	23	2009	Neither support nor oppose	1
county	27	2009	Neither support nor oppose	2
county	38	2009	Neither support nor oppose	6
county	8	2009	Neither support nor oppose	1
county	30	2009	Somewhat oppose	7
county	36	2009	Somewhat oppose	8
county	39	2009	Somewhat oppose	17
county	40	2009	Somewhat oppose	9
county	28	2009	Somewhat oppose	1
county	14	2009	Somewhat oppose	3
county	7	2009	Somewhat oppose	6
county	43	2009	Somewhat oppose	5
county	11	2009	Somewhat oppose	1
county	34	2009	Somewhat oppose	8
county	37	2009	Somewhat oppose	22
county	35	2009	Somewhat oppose	10
county	22	2009	Somewhat oppose	28
county	3	2009	Somewhat oppose	9
county	20	2009	Somewhat oppose	5
county	45	2009	Somewhat oppose	8
county	42	2009	Somewhat oppose	8
county	15	2009	Somewhat oppose	7
county	2	2009	Somewhat oppose	8
county	31	2009	Somewhat oppose	2
county	5	2009	Somewhat oppose	2
county	16	2009	Somewhat oppose	13
county	17	2009	Somewhat oppose	7
county	9	2009	Somewhat oppose	18
county	10	2009	Somewhat oppose	2
county	12	2009	Somewhat oppose	10
county	44	2009	Somewhat oppose	6
county	1	2009	Somewhat oppose	14
county	21	2009	Somewhat oppose	8
county	47	2009	Somewhat oppose	60
county	32	2009	Somewhat oppose	15
county	29	2009	Somewhat oppose	5
county	33	2009	Somewhat oppose	8
county	46	2009	Somewhat oppose	6
county	18	2009	Somewhat oppose	5
county	19	2009	Somewhat oppose	9
county	41	2009	Somewhat oppose	5
county	6	2009	Somewhat oppose	2
county	4	2009	Somewhat oppose	1
county	13	2009	Somewhat oppose	3
county	26	2009	Somewhat oppose	17
county	23	2009	Somewhat oppose	5
county	27	2009	Somewhat oppose	4
county	38	2009	Somewhat oppose	7
county	8	2009	Somewhat oppose	6
county	24	2009	Somewhat oppose	1
county	30	2009	Somewhat support	3
county	36	2009	Somewhat support	7
county	39	2009	Somewhat support	12
county	40	2009	Somewhat support	4
county	28	2009	Somewhat support	4
county	14	2009	Somewhat support	10
county	7	2009	Somewhat support	2
county	43	2009	Somewhat support	6
county	11	2009	Somewhat support	1
county	34	2009	Somewhat support	11
county	37	2009	Somewhat support	10
county	35	2009	Somewhat support	8
county	22	2009	Somewhat support	10
county	3	2009	Somewhat support	3
county	20	2009	Somewhat support	13
county	45	2009	Somewhat support	2
county	42	2009	Somewhat support	3
county	15	2009	Somewhat support	9
county	2	2009	Somewhat support	4
county	31	2009	Somewhat support	1
county	16	2009	Somewhat support	2
county	17	2009	Somewhat support	5
county	9	2009	Somewhat support	4
county	10	2009	Somewhat support	1
county	12	2009	Somewhat support	15
county	44	2009	Somewhat support	3
county	1	2009	Somewhat support	4
county	21	2009	Somewhat support	5
county	47	2009	Somewhat support	27
county	32	2009	Somewhat support	23
county	29	2009	Somewhat support	10
county	33	2009	Somewhat support	8
county	46	2009	Somewhat support	4
county	18	2009	Somewhat support	9
county	19	2009	Somewhat support	6
county	25	2009	Somewhat support	1
county	41	2009	Somewhat support	4
county	6	2009	Somewhat support	3
county	13	2009	Somewhat support	5
county	26	2009	Somewhat support	9
county	23	2009	Somewhat support	4
county	27	2009	Somewhat support	7
county	38	2009	Somewhat support	6
county	8	2009	Somewhat support	1
county	24	2009	Somewhat support	4
county	30	2009	Strongly oppose	11
county	36	2009	Strongly oppose	28
county	39	2009	Strongly oppose	26
county	40	2009	Strongly oppose	20
county	28	2009	Strongly oppose	6
county	14	2009	Strongly oppose	15
county	7	2009	Strongly oppose	17
county	43	2009	Strongly oppose	35
county	11	2009	Strongly oppose	3
county	34	2009	Strongly oppose	14
county	37	2009	Strongly oppose	48
county	35	2009	Strongly oppose	16
county	22	2009	Strongly oppose	48
county	3	2009	Strongly oppose	47
county	20	2009	Strongly oppose	8
county	45	2009	Strongly oppose	55
county	42	2009	Strongly oppose	34
county	15	2009	Strongly oppose	26
county	2	2009	Strongly oppose	26
county	31	2009	Strongly oppose	16
county	5	2009	Strongly oppose	4
county	16	2009	Strongly oppose	40
county	17	2009	Strongly oppose	29
county	9	2009	Strongly oppose	14
county	10	2009	Strongly oppose	7
county	12	2009	Strongly oppose	33
county	44	2009	Strongly oppose	32
county	1	2009	Strongly oppose	43
county	21	2009	Strongly oppose	28
county	47	2009	Strongly oppose	116
county	32	2009	Strongly oppose	53
county	29	2009	Strongly oppose	19
county	33	2009	Strongly oppose	29
county	46	2009	Strongly oppose	27
county	18	2009	Strongly oppose	15
county	19	2009	Strongly oppose	21
county	25	2009	Strongly oppose	4
county	41	2009	Strongly oppose	23
county	6	2009	Strongly oppose	8
county	4	2009	Strongly oppose	5
county	13	2009	Strongly oppose	10
county	26	2009	Strongly oppose	11
county	23	2009	Strongly oppose	20
county	27	2009	Strongly oppose	29
county	38	2009	Strongly oppose	7
county	8	2009	Strongly oppose	17
county	24	2009	Strongly oppose	10
county	30	2009	Strongly support	3
county	36	2009	Strongly support	4
county	39	2009	Strongly support	17
county	40	2009	Strongly support	2
county	14	2009	Strongly support	7
county	43	2009	Strongly support	8
county	37	2009	Strongly support	4
county	35	2009	Strongly support	4
county	22	2009	Strongly support	22
county	3	2009	Strongly support	3
county	20	2009	Strongly support	12
county	45	2009	Strongly support	4
county	42	2009	Strongly support	2
county	15	2009	Strongly support	2
county	2	2009	Strongly support	1
county	31	2009	Strongly support	2
county	5	2009	Strongly support	2
county	16	2009	Strongly support	2
county	17	2009	Strongly support	12
county	9	2009	Strongly support	3
county	12	2009	Strongly support	7
county	44	2009	Strongly support	3
county	1	2009	Strongly support	8
county	21	2009	Strongly support	15
county	47	2009	Strongly support	21
county	32	2009	Strongly support	7
county	29	2009	Strongly support	5
county	33	2009	Strongly support	1
county	46	2009	Strongly support	1
county	18	2009	Strongly support	7
county	19	2009	Strongly support	11
county	41	2009	Strongly support	1
county	6	2009	Strongly support	2
county	26	2009	Strongly support	10
county	23	2009	Strongly support	6
county	27	2009	Strongly support	6
county	38	2009	Strongly support	3
county	8	2009	Strongly support	2
county	24	2009	Strongly support	6
\.


--
-- Name: pay_more_taxes_to_increase_health_spending pk_pay_more_taxes_to_increase_health_spending; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_more_taxes_to_increase_health_spending
    ADD CONSTRAINT pk_pay_more_taxes_to_increase_health_spending PRIMARY KEY (geo_level, geo_code, geo_version, pay_more_taxes_to_increase_health_spending);


--
-- PostgreSQL database dump complete
--

