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

ALTER TABLE IF EXISTS ONLY public.people_must_pay_taxes DROP CONSTRAINT IF EXISTS pk_people_must_pay_taxes;
DROP TABLE IF EXISTS public.people_must_pay_taxes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_must_pay_taxes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_must_pay_taxes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_must_pay_taxes character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_must_pay_taxes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_must_pay_taxes (geo_level, geo_code, geo_version, people_must_pay_taxes, total) FROM stdin;
region	1	2009	Agree	48
region	1	2009	Disagree	26
region	1	2009	Don't Know	2
region	1	2009	Neither Agree Nor Disagree	9
region	1	2009	Strongly Agree	22
region	1	2009	Strongly Disagree	13
region	2	2009	Agree	145
region	2	2009	Disagree	21
region	2	2009	Don't Know	3
region	2	2009	Neither Agree Nor Disagree	20
region	2	2009	Strongly Agree	61
region	2	2009	Strongly Disagree	22
region	3	2009	Agree	36
region	3	2009	Disagree	9
region	3	2009	Don't Know	12
region	3	2009	Neither Agree Nor Disagree	14
region	3	2009	Strongly Agree	24
region	3	2009	Strongly Disagree	1
region	4	2009	Agree	33
region	4	2009	Disagree	15
region	4	2009	Don't Know	3
region	4	2009	Neither Agree Nor Disagree	5
region	4	2009	Strongly Agree	10
region	4	2009	Strongly Disagree	5
region	5	2009	Agree	25
region	5	2009	Disagree	7
region	5	2009	Don't Know	6
region	5	2009	Neither Agree Nor Disagree	1
region	5	2009	Strongly Agree	7
region	5	2009	Strongly Disagree	1
region	6	2009	Agree	29
region	6	2009	Disagree	17
region	6	2009	Neither Agree Nor Disagree	9
region	6	2009	Strongly Agree	9
region	6	2009	Strongly Disagree	8
region	7	2009	Agree	34
region	7	2009	Disagree	1
region	7	2009	Neither Agree Nor Disagree	1
region	7	2009	Strongly Agree	20
region	8	2009	Agree	20
region	8	2009	Disagree	2
region	8	2009	Don't Know	1
region	8	2009	Strongly Agree	15
region	8	2009	Strongly Disagree	2
region	9	2009	Agree	20
region	9	2009	Don't Know	1
region	9	2009	Strongly Agree	3
region	10	2009	Agree	44
region	10	2009	Disagree	24
region	10	2009	Don't Know	3
region	10	2009	Neither Agree Nor Disagree	7
region	10	2009	Strongly Agree	12
region	10	2009	Strongly Disagree	6
region	11	2009	Agree	38
region	11	2009	Disagree	13
region	11	2009	Don't Know	1
region	11	2009	Neither Agree Nor Disagree	1
region	11	2009	Strongly Agree	28
region	11	2009	Strongly Disagree	7
region	12	2009	Agree	5
region	12	2009	Strongly Agree	3
region	13	2009	Agree	17
region	13	2009	Strongly Agree	5
region	13	2009	Strongly Disagree	2
region	14	2009	Agree	29
region	14	2009	Disagree	5
region	14	2009	Neither Agree Nor Disagree	2
region	14	2009	Strongly Agree	3
region	14	2009	Strongly Disagree	9
region	15	2009	Agree	19
region	15	2009	Disagree	5
region	15	2009	Don't Know	1
region	15	2009	Neither Agree Nor Disagree	14
region	15	2009	Strongly Agree	21
region	15	2009	Strongly Disagree	4
region	16	2009	Agree	33
region	16	2009	Disagree	14
region	16	2009	Don't Know	2
region	16	2009	Neither Agree Nor Disagree	2
region	16	2009	Strongly Agree	22
region	16	2009	Strongly Disagree	7
region	17	2009	Agree	46
region	17	2009	Don't Know	1
region	17	2009	Neither Agree Nor Disagree	1
region	17	2009	Strongly Agree	14
region	17	2009	Strongly Disagree	2
region	30	2009	Agree	64
region	30	2009	Disagree	2
region	30	2009	Neither Agree Nor Disagree	1
region	30	2009	Strongly Agree	45
region	18	2009	Agree	36
region	18	2009	Disagree	6
region	18	2009	Don't Know	24
region	18	2009	Neither Agree Nor Disagree	20
region	18	2009	Strongly Agree	33
region	18	2009	Strongly Disagree	1
region	19	2009	Agree	47
region	19	2009	Disagree	1
region	19	2009	Neither Agree Nor Disagree	3
region	19	2009	Strongly Agree	15
region	19	2009	Strongly Disagree	5
region	20	2009	Agree	72
region	20	2009	Disagree	23
region	20	2009	Don't Know	1
region	20	2009	Neither Agree Nor Disagree	7
region	20	2009	Strongly Agree	17
region	20	2009	Strongly Disagree	4
region	21	2009	Agree	23
region	21	2009	Disagree	2
region	21	2009	Don't Know	3
region	21	2009	Neither Agree Nor Disagree	2
region	21	2009	Strongly Agree	8
region	21	2009	Strongly Disagree	2
region	22	2009	Agree	40
region	22	2009	Disagree	11
region	22	2009	Don't Know	2
region	22	2009	Neither Agree Nor Disagree	14
region	22	2009	Strongly Agree	4
region	22	2009	Strongly Disagree	1
region	23	2009	Agree	25
region	23	2009	Don't Know	3
region	23	2009	Neither Agree Nor Disagree	3
region	23	2009	Strongly Agree	8
region	24	2009	Agree	48
region	24	2009	Disagree	1
region	24	2009	Don't Know	5
region	24	2009	Neither Agree Nor Disagree	2
region	24	2009	Strongly Agree	14
region	24	2009	Strongly Disagree	2
region	25	2009	Agree	48
region	25	2009	Disagree	12
region	25	2009	Don't Know	2
region	25	2009	Neither Agree Nor Disagree	6
region	25	2009	Strongly Agree	1
region	25	2009	Strongly Disagree	3
region	26	2009	Agree	36
region	26	2009	Disagree	10
region	26	2009	Don't Know	3
region	26	2009	Neither Agree Nor Disagree	10
region	26	2009	Strongly Agree	1
region	26	2009	Strongly Disagree	4
region	27	2009	Agree	41
region	27	2009	Disagree	18
region	27	2009	Don't Know	1
region	27	2009	Neither Agree Nor Disagree	3
region	27	2009	Strongly Agree	1
region	31	2009	Agree	51
region	31	2009	Disagree	1
region	31	2009	Don't Know	2
region	31	2009	Neither Agree Nor Disagree	3
region	31	2009	Strongly Agree	12
region	31	2009	Strongly Disagree	3
region	29	2009	Agree	44
region	29	2009	Disagree	7
region	29	2009	Don't Know	9
region	29	2009	Neither Agree Nor Disagree	12
region	29	2009	Strongly Agree	26
region	29	2009	Strongly Disagree	6
region	28	2009	Agree	20
region	28	2009	Disagree	7
region	28	2009	Don't Know	3
region	28	2009	Neither Agree Nor Disagree	23
region	28	2009	Strongly Agree	28
region	28	2009	Strongly Disagree	7
country	TZ	2009	Neither Agree Nor Disagree	195
country	TZ	2009	Disagree	260
country	TZ	2009	Strongly Agree	492
country	TZ	2009	Agree	1216
country	TZ	2009	Strongly Disagree	127
country	TZ	2009	Don't Know	94
\.


--
-- Name: people_must_pay_taxes pk_people_must_pay_taxes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_pay_taxes
    ADD CONSTRAINT pk_people_must_pay_taxes PRIMARY KEY (geo_level, geo_code, geo_version, people_must_pay_taxes);


--
-- PostgreSQL database dump complete
--

