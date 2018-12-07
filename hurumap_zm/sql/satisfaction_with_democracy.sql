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
province	1	2010	Do not know	7
province	1	2010	Fairly satisfied	44
province	1	2010	Not at all satisfied	13
province	1	2010	Not very satisfied	28
province	1	2010	Very satisfied	28
province	2	2010	Do not know	3
province	2	2010	Fairly satisfied	81
province	2	2010	Not at all satisfied	23
province	2	2010	Not very satisfied	40
province	2	2010	Very satisfied	45
province	3	2010	Do not know	40
province	3	2010	Fairly satisfied	23
province	3	2010	Not very satisfied	13
province	3	2010	Very satisfied	60
province	4	2010	Do not know	3
province	4	2010	Fairly satisfied	34
province	4	2010	Not at all satisfied	5
province	4	2010	Not very satisfied	11
province	4	2010	Very satisfied	34
province	5	2010	Do not know	23
province	5	2010	Fairly satisfied	81
province	5	2010	Not at all satisfied	14
province	5	2010	Not very satisfied	51
province	5	2010	The country is not a democracy	2
province	5	2010	Very satisfied	53
province	6	2010	Do not know	9
province	6	2010	Fairly satisfied	20
province	6	2010	Not at all satisfied	2
province	6	2010	Not very satisfied	11
province	6	2010	Very satisfied	22
province	8	2010	Do not know	3
province	8	2010	Fairly satisfied	21
province	8	2010	Not at all satisfied	3
province	8	2010	Not very satisfied	23
province	8	2010	Very satisfied	14
province	7	2010	Do not know	10
province	7	2010	Fairly satisfied	25
province	7	2010	Not at all satisfied	8
province	7	2010	Not very satisfied	14
province	7	2010	Very satisfied	39
province	9	2010	Do not know	4
province	9	2010	Fairly satisfied	26
province	9	2010	Not at all satisfied	19
province	9	2010	Not very satisfied	55
province	9	2010	The country is not a democracy	1
province	9	2010	Very satisfied	31
province	10	2010	Do not know	3
province	10	2010	Fairly satisfied	20
province	10	2010	Not at all satisfied	10
province	10	2010	Not very satisfied	33
province	10	2010	Very satisfied	14
country	ZM	2010	The country is not a democracy	3
country	ZM	2010	Not very satisfied	279
country	ZM	2010	Do not know	105
country	ZM	2010	Fairly satisfied	375
country	ZM	2010	Not at all satisfied	97
country	ZM	2010	Very satisfied	340
\.


--
-- Name: satisfaction_with_democracy pk_satisfaction_with_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.satisfaction_with_democracy
    ADD CONSTRAINT pk_satisfaction_with_democracy PRIMARY KEY (geo_level, geo_code, geo_version, satisfaction_with_democracy);


--
-- PostgreSQL database dump complete
--

