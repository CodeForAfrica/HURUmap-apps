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

ALTER TABLE IF EXISTS ONLY public.satisfaction_with_democracy DROP CONSTRAINT IF EXISTS pk_satisfaction_with_democracy;
DROP TABLE IF EXISTS public.satisfaction_with_democracy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: satisfaction_with_democracy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.satisfaction_with_democracy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    satisfaction_with_democracy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: satisfaction_with_democracy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.satisfaction_with_democracy (geo_level, geo_code, geo_version, satisfaction_with_democracy, total) FROM stdin;
region	1	2009	Do not know	37
region	1	2009	Fairly satisfied	47
region	1	2009	Not at all satisfied	6
region	1	2009	Not very satisfied	21
region	1	2009	Very satisfied	9
region	2	2009	Do not know	42
region	2	2009	Fairly satisfied	154
region	2	2009	Not at all satisfied	16
region	2	2009	Not very satisfied	42
region	2	2009	The country is not a democracy	1
region	2	2009	Very satisfied	18
region	3	2009	Do not know	49
region	3	2009	Fairly satisfied	22
region	3	2009	Not at all satisfied	2
region	3	2009	Not very satisfied	1
region	3	2009	Very satisfied	22
region	4	2009	Do not know	11
region	4	2009	Fairly satisfied	42
region	4	2009	Not very satisfied	10
region	4	2009	Very satisfied	8
region	5	2009	Do not know	15
region	5	2009	Fairly satisfied	21
region	5	2009	Not at all satisfied	4
region	5	2009	Not very satisfied	4
region	5	2009	Very satisfied	4
region	6	2009	Do not know	11
region	6	2009	Fairly satisfied	39
region	6	2009	Not at all satisfied	4
region	6	2009	Not very satisfied	7
region	6	2009	The country is not a democracy	3
region	6	2009	Very satisfied	8
region	7	2009	Fairly satisfied	24
region	7	2009	Not at all satisfied	11
region	7	2009	Not very satisfied	6
region	7	2009	Very satisfied	15
region	8	2009	Do not know	1
region	8	2009	Fairly satisfied	23
region	8	2009	Not at all satisfied	4
region	8	2009	Not very satisfied	4
region	8	2009	Very satisfied	8
region	9	2009	Do not know	6
region	9	2009	Fairly satisfied	11
region	9	2009	Not very satisfied	4
region	9	2009	Very satisfied	3
region	10	2009	Do not know	23
region	10	2009	Fairly satisfied	41
region	10	2009	Not at all satisfied	4
region	10	2009	Not very satisfied	14
region	10	2009	The country is not a democracy	2
region	10	2009	Very satisfied	12
region	11	2009	Do not know	22
region	11	2009	Fairly satisfied	39
region	11	2009	Not at all satisfied	6
region	11	2009	Not very satisfied	13
region	11	2009	The country is not a democracy	1
region	11	2009	Very satisfied	7
region	12	2009	Fairly satisfied	5
region	12	2009	Not very satisfied	1
region	12	2009	Very satisfied	2
region	13	2009	Fairly satisfied	14
region	13	2009	Not at all satisfied	3
region	13	2009	Not very satisfied	3
region	13	2009	Very satisfied	4
region	14	2009	Do not know	3
region	14	2009	Fairly satisfied	41
region	14	2009	Not very satisfied	1
region	14	2009	Very satisfied	3
region	15	2009	Do not know	28
region	15	2009	Fairly satisfied	11
region	15	2009	Not at all satisfied	11
region	15	2009	Not very satisfied	9
region	15	2009	The country is not a democracy	2
region	15	2009	Very satisfied	3
region	16	2009	Do not know	3
region	16	2009	Fairly satisfied	42
region	16	2009	Not at all satisfied	4
region	16	2009	Not very satisfied	14
region	16	2009	Very satisfied	17
region	17	2009	Do not know	8
region	17	2009	Fairly satisfied	35
region	17	2009	Not at all satisfied	1
region	17	2009	Not very satisfied	8
region	17	2009	Very satisfied	12
region	30	2009	Do not know	1
region	30	2009	Fairly satisfied	74
region	30	2009	Not at all satisfied	10
region	30	2009	Not very satisfied	10
region	30	2009	Very satisfied	17
region	18	2009	Do not know	59
region	18	2009	Fairly satisfied	44
region	18	2009	Not at all satisfied	1
region	18	2009	Not very satisfied	8
region	18	2009	Very satisfied	8
region	19	2009	Do not know	2
region	19	2009	Fairly satisfied	54
region	19	2009	Not at all satisfied	4
region	19	2009	Not very satisfied	4
region	19	2009	Very satisfied	7
region	20	2009	Do not know	8
region	20	2009	Fairly satisfied	59
region	20	2009	Not at all satisfied	4
region	20	2009	Not very satisfied	10
region	20	2009	The country is not a democracy	1
region	20	2009	Very satisfied	42
region	21	2009	Do not know	6
region	21	2009	Fairly satisfied	18
region	21	2009	Not at all satisfied	4
region	21	2009	Not very satisfied	7
region	21	2009	Very satisfied	5
region	22	2009	Do not know	12
region	22	2009	Fairly satisfied	39
region	22	2009	Not at all satisfied	6
region	22	2009	Not very satisfied	7
region	22	2009	The country is not a democracy	1
region	22	2009	Very satisfied	7
region	23	2009	Do not know	8
region	23	2009	Fairly satisfied	20
region	23	2009	Not very satisfied	2
region	23	2009	The country is not a democracy	1
region	23	2009	Very satisfied	8
region	24	2009	Do not know	7
region	24	2009	Fairly satisfied	42
region	24	2009	Not at all satisfied	4
region	24	2009	Not very satisfied	3
region	24	2009	Very satisfied	16
region	25	2009	Do not know	8
region	25	2009	Fairly satisfied	37
region	25	2009	Not at all satisfied	4
region	25	2009	Not very satisfied	18
region	25	2009	Very satisfied	5
region	26	2009	Do not know	21
region	26	2009	Fairly satisfied	28
region	26	2009	Not at all satisfied	6
region	26	2009	Not very satisfied	6
region	26	2009	Very satisfied	3
region	27	2009	Do not know	11
region	27	2009	Fairly satisfied	43
region	27	2009	Not at all satisfied	4
region	27	2009	Not very satisfied	5
region	27	2009	Very satisfied	1
region	31	2009	Do not know	13
region	31	2009	Fairly satisfied	37
region	31	2009	Not at all satisfied	2
region	31	2009	Not very satisfied	9
region	31	2009	Very satisfied	11
region	29	2009	Do not know	56
region	29	2009	Fairly satisfied	36
region	29	2009	Not at all satisfied	2
region	29	2009	Not very satisfied	2
region	29	2009	Very satisfied	8
region	28	2009	Do not know	44
region	28	2009	Fairly satisfied	8
region	28	2009	Not at all satisfied	6
region	28	2009	Not very satisfied	17
region	28	2009	The country is not a democracy	1
region	28	2009	Very satisfied	12
country	TZ	2009	The country is not a democracy	13
country	TZ	2009	Not very satisfied	270
country	TZ	2009	Do not know	515
country	TZ	2009	Fairly satisfied	1150
country	TZ	2009	Not at all satisfied	133
country	TZ	2009	Very satisfied	305
\.


--
-- Name: satisfaction_with_democracy pk_satisfaction_with_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.satisfaction_with_democracy
    ADD CONSTRAINT pk_satisfaction_with_democracy PRIMARY KEY (geo_level, geo_code, geo_version, satisfaction_with_democracy);


--
-- PostgreSQL database dump complete
--

