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
province	10	2009	Do not know	18
province	10	2009	Fairly satisfied	20
province	10	2009	Not at all satisfied	37
province	10	2009	Not very satisfied	49
province	10	2009	The country is not a democracy	21
province	10	2009	Very satisfied	7
province	19	2009	Do not know	34
province	19	2009	Fairly satisfied	102
province	19	2009	Not at all satisfied	111
province	19	2009	Not very satisfied	156
province	19	2009	The country is not a democracy	20
province	19	2009	Very satisfied	25
province	11	2009	Do not know	77
province	11	2009	Fairly satisfied	44
province	11	2009	Not at all satisfied	61
province	11	2009	Not very satisfied	73
province	11	2009	The country is not a democracy	7
province	11	2009	Very satisfied	42
province	12	2009	Do not know	18
province	12	2009	Fairly satisfied	65
province	12	2009	Not at all satisfied	29
province	12	2009	Not very satisfied	59
province	12	2009	The country is not a democracy	5
province	12	2009	Very satisfied	32
province	13	2009	Do not know	51
province	13	2009	Fairly satisfied	63
province	13	2009	Not at all satisfied	25
province	13	2009	Not very satisfied	74
province	13	2009	The country is not a democracy	19
province	13	2009	Very satisfied	16
province	14	2009	Do not know	47
province	14	2009	Fairly satisfied	81
province	14	2009	Not at all satisfied	30
province	14	2009	Not very satisfied	58
province	14	2009	The country is not a democracy	5
province	14	2009	Very satisfied	51
province	18	2009	Do not know	86
province	18	2009	Fairly satisfied	49
province	18	2009	Not at all satisfied	26
province	18	2009	Not very satisfied	46
province	18	2009	The country is not a democracy	25
province	18	2009	Very satisfied	16
province	15	2009	Do not know	41
province	15	2009	Fairly satisfied	24
province	15	2009	Not at all satisfied	14
province	15	2009	Not very satisfied	29
province	15	2009	The country is not a democracy	2
province	15	2009	Very satisfied	18
province	16	2009	Do not know	35
province	16	2009	Fairly satisfied	11
province	16	2009	Not at all satisfied	14
province	16	2009	Not very satisfied	24
province	16	2009	The country is not a democracy	9
province	16	2009	Very satisfied	11
province	17	2009	Do not know	22
province	17	2009	Fairly satisfied	71
province	17	2009	Not at all satisfied	44
province	17	2009	Not very satisfied	75
province	17	2009	The country is not a democracy	22
province	17	2009	Very satisfied	54
country	ZW	2009	The country is not a democracy	135
country	ZW	2009	Not very satisfied	643
country	ZW	2009	Do not know	429
country	ZW	2009	Fairly satisfied	530
country	ZW	2009	Not at all satisfied	391
country	ZW	2009	Very satisfied	272
\.


--
-- Name: satisfaction_with_democracy pk_satisfaction_with_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.satisfaction_with_democracy
    ADD CONSTRAINT pk_satisfaction_with_democracy PRIMARY KEY (geo_level, geo_code, geo_version, satisfaction_with_democracy);


--
-- PostgreSQL database dump complete
--

