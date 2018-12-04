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
province	1	2010	Do not know	79
province	1	2010	Fairly satisfied	274
province	1	2010	Not at all satisfied	65
province	1	2010	Not very satisfied	177
province	1	2010	The country is not a democracy	3
province	1	2010	Very satisfied	233
province	2	2010	Fairly satisfied	13
province	2	2010	Not at all satisfied	3
province	2	2010	Not very satisfied	7
province	2	2010	Very satisfied	9
province	3	2010	Do not know	12
province	3	2010	Fairly satisfied	9
province	3	2010	Not very satisfied	5
province	3	2010	Very satisfied	14
province	4	2010	Do not know	2
province	4	2010	Fairly satisfied	16
province	4	2010	Not at all satisfied	3
province	4	2010	Not very satisfied	7
province	4	2010	Very satisfied	12
province	6	2010	Do not know	7
province	6	2010	Fairly satisfied	15
province	6	2010	Not at all satisfied	2
province	6	2010	Not very satisfied	9
province	6	2010	Very satisfied	15
province	8	2010	Do not know	2
province	8	2010	Fairly satisfied	6
province	8	2010	Not at all satisfied	1
province	8	2010	Not very satisfied	8
province	8	2010	Very satisfied	7
province	7	2010	Do not know	1
province	7	2010	Fairly satisfied	15
province	7	2010	Not at all satisfied	3
province	7	2010	Not very satisfied	10
province	7	2010	Very satisfied	19
province	9	2010	Fairly satisfied	14
province	9	2010	Not at all satisfied	12
province	9	2010	Not very satisfied	30
province	9	2010	Very satisfied	24
province	10	2010	Do not know	2
province	10	2010	Fairly satisfied	13
province	10	2010	Not at all satisfied	8
province	10	2010	Not very satisfied	26
province	10	2010	Very satisfied	7
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

